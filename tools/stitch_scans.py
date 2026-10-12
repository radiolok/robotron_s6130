"""Stitch overlapping scans/photos of one schematic sheet into a single image.

Pieces may be rotated by any angle and have different resolution. Pairwise
SIFT matches give affine transforms; a maximum spanning tree over the match
graph places every piece into the frame of the reference piece. Pieces with
higher resolution are painted last, so the sharpest source wins.

    python3 tools/stitch_scans.py -o sheet.png --ref 2 p1.jpg p2.jpg p3.jpg ...
    python3 tools/stitch_scans.py -o sheet.png --ref 1 --rotate 180 ...

Requires opencv-contrib-python (or opencv-python >= 4.4) and numpy.
"""
import argparse
import itertools
import sys

import cv2
import numpy as np


def to3(m):
    return np.vstack([m, [0, 0, 1]])


def compose(a, b):
    """Affine a after b."""
    return (to3(a) @ to3(b))[:2]


def invert(m):
    return np.linalg.inv(to3(m))[:2]


def match_pairs(images, min_inliers):
    sift = cv2.SIFT_create(12000)
    feats = [sift.detectAndCompute(im, None) for im in images]
    matcher = cv2.BFMatcher()
    edges = {}
    for a, b in itertools.combinations(range(len(images)), 2):
        (ka, da), (kb, db) = feats[a], feats[b]
        if da is None or db is None:
            continue
        good = [m for m, n in matcher.knnMatch(da, db, k=2) if m.distance < 0.7 * n.distance]
        if len(good) < min_inliers:
            continue
        pa = np.float32([ka[m.queryIdx].pt for m in good])
        pb = np.float32([kb[m.trainIdx].pt for m in good])
        h, mask = cv2.estimateAffine2D(pa, pb, method=cv2.RANSAC,
                                       ransacReprojThreshold=4, maxIters=5000)
        if h is None:
            continue
        inliers = int(mask.sum())
        scale = np.sqrt(abs(np.linalg.det(h[:, :2])))
        if inliers < min_inliers or not 0.3 < scale < 3:
            continue
        edges[(a, b)] = (inliers, h)
        print(f"  {a} <-> {b}: {inliers} inliers, scale {scale:.2f}", file=sys.stderr)
    return edges


def place(n, ref, edges):
    """Transforms piece -> reference frame via a maximum spanning tree."""
    tr = {ref: np.eye(3)[:2]}
    while len(tr) < n:
        best = None
        for (a, b), (inliers, h) in edges.items():
            if a in tr and b not in tr:
                cand = (inliers, b, compose(tr[a], invert(h)))
            elif b in tr and a not in tr:
                cand = (inliers, a, compose(tr[b], h))
            else:
                continue
            if best is None or cand[0] > best[0]:
                best = cand
        if best is None:
            break
        tr[best[1]] = best[2]
    return tr


def render(images, tr, scale, border):
    s = np.array([[scale, 0, 0], [0, scale, 0]], float)
    corners = []
    for i, t in tr.items():
        h, w = images[i].shape
        c = np.float32([[0, 0], [w, 0], [w, h], [0, h]]).reshape(-1, 1, 2)
        corners.append(cv2.transform(c, compose(s, t)))
    c = np.concatenate(corners)
    x0, y0 = c.min(0)[0]
    x1, y1 = c.max(0)[0]
    w, h = int(x1 - x0) + 1, int(y1 - y0) + 1
    canvas = np.full((h, w), 255, np.uint8)
    # Lowest resolution first: the sharpest piece is painted on top.
    order = sorted(tr, key=lambda i: -np.sqrt(abs(np.linalg.det(compose(s, tr[i])[:, :2]))))
    kernel = np.ones((border, border), np.uint8)
    for i in order:
        m = compose(s, tr[i])
        m[0, 2] -= x0
        m[1, 2] -= y0
        warped = cv2.warpAffine(images[i], m, (w, h), flags=cv2.INTER_AREA, borderValue=255)
        mask = cv2.warpAffine(np.full(images[i].shape, 255, np.uint8), m, (w, h),
                              flags=cv2.INTER_NEAREST)
        mask = cv2.erode(mask, kernel)
        canvas[mask > 0] = warped[mask > 0]
    return canvas


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('pieces', nargs='+', help='scan fragments of one sheet')
    p.add_argument('-o', '--out', required=True, help='output image (PNG)')
    p.add_argument('--ref', type=int, default=1,
                   help='1-based index of the piece whose orientation and scale are kept')
    p.add_argument('--scale', type=float, default=1.0, help='output scale relative to the reference')
    p.add_argument('--rotate', type=int, choices=[0, 90, 180, 270], default=0,
                   help='rotate the result clockwise')
    p.add_argument('--min-inliers', type=int, default=60)
    p.add_argument('--border', type=int, default=25,
                   help='pixels trimmed from piece edges to hide scan borders')
    args = p.parse_args()

    images = [cv2.imread(f, cv2.IMREAD_GRAYSCALE) for f in args.pieces]
    for f, im in zip(args.pieces, images):
        if im is None:
            sys.exit(f'cannot read {f}')
    print('matching...', file=sys.stderr)
    edges = match_pairs(images, args.min_inliers)
    tr = place(len(images), args.ref - 1, edges)
    missing = [args.pieces[i] for i in range(len(images)) if i not in tr]
    if missing:
        print('not connected to the reference, skipped: ' + ', '.join(missing), file=sys.stderr)
    canvas = render(images, tr, args.scale, args.border)
    rot = {90: cv2.ROTATE_90_CLOCKWISE, 180: cv2.ROTATE_180, 270: cv2.ROTATE_90_COUNTERCLOCKWISE}
    if args.rotate:
        canvas = cv2.rotate(canvas, rot[args.rotate])
    cv2.imwrite(args.out, canvas, [cv2.IMWRITE_PNG_COMPRESSION, 9])
    print(f'{args.out}: {canvas.shape[1]}x{canvas.shape[0]}', file=sys.stderr)


if __name__ == '__main__':
    main()
