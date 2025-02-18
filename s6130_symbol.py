from PIL import Image, ImageColor
import argparse

SCALE = 6

from PIL import Image

def putpixel(im, x, y, pixel, scale = SCALE):
    for i in range(scale):
        for j in range(scale):
            im.putpixel((scale*x+i, scale*y+j), pixel)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--rom', type=str)
    args = parser.parse_args()

    blackPixel = 0 #(0,0,0)
    whitePixel = 1 #(255,255,255)
    im = Image.new(mode='1', size=(128*SCALE,128*SCALE))
    with open(args.rom, "rb") as f:
        ypos = 0
        xpos = 0
        symbol = 0
        while True:
            chunk = f.read(8)
            print(chunk)
            if not chunk:
                break
            i_row = 0
            for item in chunk:
                print(item)
                s_row = symbol % 16 * 8
                s_col = (symbol // 16) * 8
                for i in range(8):
                    pixel = whitePixel if (item & 2**i) else blackPixel
                    if i_row > 6 or i > 4:
                        pixel = whitePixel
                    x = s_row + i
                    y = s_col + i_row
                    putpixel(im, x, y, pixel)
                    print(x, y, pixel)
                i_row += 1
            symbol += 1
        im.save('sqr.png')
        
        