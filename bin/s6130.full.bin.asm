0000            org     $0000
0000  31 40 40  ld      sp,$4040
0003  FF        rst     38
0004  C3 EF 19  jp      $19EF
0007  02        ld      (bc),a
0008  21 6F 40  ld      hl,$406F
000B  C9        ret
000C  3C        inc     a
000D  24        inc     h
000E  E7        rst     20
000F  24        inc     h
0010  C3 EE 13  jp      $13EE
0013  40        ld      b,b
0014  9A        sbc     a,d
0015  1E 01     ld      e,$01
0017  00        nop
0018  C3 C2 10  jp      $10C2
001B  AC        xor     h
001C  BD        cp      l
001D  69        ld      l,c
001E  9F        sbc     a,a
001F  0B        dec     bc
0020  C3 6C 11  jp      $116C
0023  6F        ld      l,a
0024  BF        cp      a
0025  A8        xor     b
0026  40        ld      b,b
0027  88        adc     a,b
0028  C3 94 10  jp      $1094
002B  CE 00     adc     a,$00
002D  6B        ld      l,e
002E  82        add     a,d
002F  68        ld      l,b
0030  C3 73 0F  jp      $0F73
0033  79        ld      a,c
0034  12        ld      (de),a
0035  11 0A 11  ld      de,$110A
0038  7F        ld      a,a
0039  F5        push    af
003A  3A 00 38  ld      a,($3800)
003D  FE 52     cp      'R'
003F  28        jr      z,
0040  07        rlca
0041  ED 57     prefix'W'
0043  28        jr      z,
0044  01 76 F1  ld      bc,$F176
0047  C9        ret
0048  F1        pop     af
0049  C3 03 38  jp      $3803
004C  C7        rst     00
004D  12        ld      (de),a
004E  57        ld      d,a
004F  02        ld      (bc),a
0050  FB        ei
0051  01 A9 09  ld      bc,$09A9
0054  16 09     ld      d,$09
0056  B2        or      d
0057  07        rlca
0058  8B        adc     a,e
0059  08        ex      af,af
005A  2A 0A 8C  ld      hl,($8C0A)
005D  0A        ld      a,(bc)
005E  BB        cp      e
005F  0A        ld      a,(bc)
0060  73        ld      (hl),e
0061  0F        rrca
0062  F6 0F     or      $0F
0064  94        sub     h
0065  10        djnz    
0066  C3 FD 5F  jp      $5FFD
0069  90        sub     b
006A  44        ld      b,h
006B  B2        or      d
006C  0B        dec     bc
006D  19        add     hl,de
006E  0B        dec     bc
006F  5D        ld      e,l
0070  0B        dec     bc
0071  CB 0A     rrc     d$0A
0073  07        rlca
0074  00        nop
0075  AF        xor     a
0076  7B        ld      a,e
0077  08        ex      af,af
0078  F0        ret     p
0079  D3 10     out     ($10),a
007B  E2 C8 18  jp      po,$18C8
007E  30 84     jr      nc,$84
0080  20        jr      nz,
0081  65        ld      h,l
0082  3A 28 6C  ld      a,($6C28)
0085  5D        ld      e,l
0086  30 04     jr      nc,$04
0088  BE        cp      (hl)
0089  89        adc     a,c
008A  93        sub     e
008B  16 3C     ld      d,$3C
008D  29        add     hl,jl
008E  63        ld      h,e
008F  46        ld      b,(hl)
0090  CC 66 CC  call    z,$CC66
0093  99        sbc     a,c
0094  33        inc     sp
0095  66        ld      h,(hl)
0096  CC 99 33  call    z,$3399
0099  C0        ret     nz
009A  06 3C     ld      b,$3C
009C  00        nop
009D  66        ld      h,(hl)
009E  00        nop
009F  70        ld      (hl),b
00A0  00        nop
00A1  70        ld      (hl),b
00A2  03        inc     bc
00A3  E8        ret     pe
00A4  00        nop
00A5  AC        xor     h
00A6  00        nop
00A7  3E 01     ld      a,$01
00A9  46        ld      b,(hl)
00AA  02        ld      (bc),a
00AB  34        inc     (hl)
00AC  06 00     ld      b,$00
00AE  80        add     a,b
00AF  03        inc     bc
00B0  32 04 15  ld      ($1504),a
00B3  00        nop
00B4  DC 05 5C  call    c,$5C05
00B7  06 71     ld      b,'q'
00B9  06 0C     ld      b,$0C
00BB  03        inc     bc
00BC  8C        adc     a,h
00BD  03        inc     bc
00BE  AC        xor     h
00BF  03        inc     bc
00C0  94        sub     h
00C1  03        inc     bc
00C2  94        sub     h
00C3  02        ld      (bc),a
00C4  04        inc     b
00C5  03        inc     bc
00C6  18        jr      
00C7  03        inc     bc
00C8  14        inc     d
00C9  04        inc     b
00CA  2C        inc     l
00CB  1D        dec     e
00CC  67        ld      h,a
00CD  B0        or      b
00CE  04        inc     b
00CF  30 05     jr      nc,$05
00D1  50        ld      d,b
00D2  05        dec     b
00D3  38        jr      c,
00D4  05        dec     b
00D5  38        jr      c,
00D6  04        inc     b
00D7  A8        xor     b
00D8  04        inc     b
00D9  BC        cp      h
00DA  04        inc     b
00DB  B8        cp      b
00DC  05        dec     b
00DD  2C        inc     l
00DE  1D        dec     e
00DF  67        ld      h,a
00E0  88        adc     a,b
00E1  4A        ld      c,d
00E2  18        jr      
00E3  89        adc     a,c
00E4  6F        ld      l,a
00E5  18        jr      
00E6  90        sub     b
00E7  8D        adc     a,l
00E8  18        jr      
00E9  8B        adc     a,e
00EA  F1        pop     af
00EB  18        jr      
00EC  00        nop
00ED  E6 18     and     $18
00EF  00        nop
00F0  C8        ret     z
00F1  18        jr      
00F2  00        nop
00F3  A4        and     h
00F4  18        jr      
00F5  BC        cp      h
00F6  03        inc     bc
00F7  B8        cp      b
00F8  88        adc     a,b
00F9  0F        rrca
00FA  0F        rrca
00FB  0F        rrca
00FC  44        ld      b,h
00FD  48        ld      c,b
00FE  4C        ld      c,h
00FF  50        ld      d,b
0100  54        ld      d,h
0101  58        ld      e,b
0102  5C        ld      e,h
0103  60        ld      h,b
0104  64        ld      h,h
0105  68        ld      l,b
0106  FF        rst     38
0107  FF        rst     38
0108  FF        rst     38
0109  FF        rst     38
010A  FF        rst     38
010B  FF        rst     38
010C  FF        rst     38
010D  FF        rst     38
010E  FF        rst     38
010F  FF        rst     38
0110  61        ld      h,c
0111  00        nop
0112  C3 88 31  jp      $3188
0115  4B        ld      c,e
0116  C2 31 10  jp      nz,$1031
0119  11 12 13  ld      de,$1312
011C  14        inc     d
011D  80        add     a,b
011E  1D        dec     e
011F  17        rla
0120  1D        dec     e
0121  19        add     hl,de
0122  1A        ld      a,(de)
0123  1B        dec     de
0124  DF        rst     18
0125  1D        dec     e
0126  CD 56 20  call    $2056
0129  21 22 49  ld      hl,$4922
012C  3E 25     ld      a,$25
012E  8B        adc     a,e
012F  8C        adc     a,h
0130  28        jr      z,
0131  29        add     hl,jl
0132  3B        dec     sp
0133  2B        dec     hl
0134  2C        inc     l
0135  2D        dec     l
0136  2E 2F     ld      l,$2F
0138  30 31     jr      nc,$31
013A  32 33 34  ld      ($3433),a
013D  35        dec     (hl)
013E  36 37     ld      (hl),$37
0140  38        jr      c,
0141  39        add     hl,sp
0142  3A 03 24  ld      a,($2403)
0145  3D        dec     a
0146  E8        ret     pe
0147  3F        ccf
0148  C0        ret     nz
0149  41        ld      b,c
014A  C2 C3 C4  jp      nz,$C4C3
014D  45        ld      b,l
014E  C6 C7     ada     a,$C7
0150  58        ld      e,b
0151  C9        ret
0152  CA 4B CC  jp      z,$CC4B
0155  4D        ld      c,l
0156  48        ld      c,b
0157  4F        ld      c,a
0158  D0        ret     nc
0159  D1        pop     de
015A  50        ld      d,b
015B  43        ld      b,e
015C  54        ld      d,h
015D  D5        push    de
015E  D6 42     sub     'B'
0160  D8        ret     c
0161  D9        exx
0162  DA DB DC  jp      c,$DCDB
0165  DD DE     prefix$DE
0167  5F        ld      e,a
0168  E0        ret     po
0169  61        ld      h,c
016A  E2 E3 E4  jp      po,$E4E3
016D  65        ld      h,l
016E  E6 E7     and     $E7
0170  78        ld      a,b
0171  E9        jp      (hl)
0172  EA EB EC  jp      pe,$ECEB
0175  ED EE     prefix$EE
0177  6F        ld      l,a
0178  6E        ld      l,(hl)
0179  F1        pop     af
017A  70        ld      (hl),b
017B  63        ld      h,e
017C  F4 C5 F6  call    p,$F6C5
017F  CB F8     $F8
0181  F9        ld      sp,phl
0182  FA D2 FC  jp      m,$FCD2
0185  D3 E5     out     ($E5),a
0187  40        ld      b,b
0188  4B        ld      c,e
0189  42        ld      b,d
018A  32 7F 7F  ld      ($7F7F),a
018D  7F        ld      a,a
018E  7F        ld      a,a
018F  7F        ld      a,a
0190  7F        ld      a,a
0191  7F        ld      a,a
0192  7F        ld      a,a
0193  7F        ld      a,a
0194  7F        ld      a,a
0195  7F        ld      a,a
0196  7F        ld      a,a
0197  7F        ld      a,a
0198  7F        ld      a,a
0199  7F        ld      a,a
019A  7F        ld      a,a
019B  7F        ld      a,a
019C  7F        ld      a,a
019D  7F        ld      a,a
019E  7F        ld      a,a
019F  7F        ld      a,a
01A0  7F        ld      a,a
01A1  7F        ld      a,a
01A2  7F        ld      a,a
01A3  7F        ld      a,a
01A4  7F        ld      a,a
01A5  7F        ld      a,a
01A6  7F        ld      a,a
01A7  7F        ld      a,a
01A8  7F        ld      a,a
01A9  7F        ld      a,a
01AA  7F        ld      a,a
01AB  7F        ld      a,a
01AC  7F        ld      a,a
01AD  7F        ld      a,a
01AE  7F        ld      a,a
01AF  7F        ld      a,a
01B0  7F        ld      a,a
01B1  7F        ld      a,a
01B2  7F        ld      a,a
01B3  7F        ld      a,a
01B4  7F        ld      a,a
01B5  7F        ld      a,a
01B6  7F        ld      a,a
01B7  7F        ld      a,a
01B8  7F        ld      a,a
01B9  7F        ld      a,a
01BA  7F        ld      a,a
01BB  7F        ld      a,a
01BC  7F        ld      a,a
01BD  7F        ld      a,a
01BE  7F        ld      a,a
01BF  7F        ld      a,a
01C0  7F        ld      a,a
01C1  7F        ld      a,a
01C2  7F        ld      a,a
01C3  7F        ld      a,a
01C4  7F        ld      a,a
01C5  7F        ld      a,a
01C6  7F        ld      a,a
01C7  7F        ld      a,a
01C8  7F        ld      a,a
01C9  7F        ld      a,a
01CA  7F        ld      a,a
01CB  7F        ld      a,a
01CC  7F        ld      a,a
01CD  7F        ld      a,a
01CE  7F        ld      a,a
01CF  7F        ld      a,a
01D0  7F        ld      a,a
01D1  7F        ld      a,a
01D2  7F        ld      a,a
01D3  7F        ld      a,a
01D4  7F        ld      a,a
01D5  7F        ld      a,a
01D6  7F        ld      a,a
01D7  7F        ld      a,a
01D8  7F        ld      a,a
01D9  7F        ld      a,a
01DA  7F        ld      a,a
01DB  7F        ld      a,a
01DC  7F        ld      a,a
01DD  7F        ld      a,a
01DE  7F        ld      a,a
01DF  7F        ld      a,a
01E0  7F        ld      a,a
01E1  7F        ld      a,a
01E2  7F        ld      a,a
01E3  7F        ld      a,a
01E4  7F        ld      a,a
01E5  7F        ld      a,a
01E6  7F        ld      a,a
01E7  7F        ld      a,a
01E8  7F        ld      a,a
01E9  7F        ld      a,a
01EA  7F        ld      a,a
01EB  7F        ld      a,a
01EC  7F        ld      a,a
01ED  7F        ld      a,a
01EE  7F        ld      a,a
01EF  7F        ld      a,a
01F0  7F        ld      a,a
01F1  7F        ld      a,a
01F2  7F        ld      a,a
01F3  7F        ld      a,a
01F4  7F        ld      a,a
01F5  7F        ld      a,a
01F6  7F        ld      a,a
01F7  7F        ld      a,a
01F8  7F        ld      a,a
01F9  7F        ld      a,a
01FA  7F        ld      a,a
01FB  F5        push    af
01FC  C5        push    bc
01FD  D5        push    de
01FE  E5        push    hl
01FF  FB        ei
0200  CD 2C 0F  call    $0F2C
0203  CD 10 0D  call    $0D10
0206  CD B8 0C  call    $0CB8
0209  21 87 40  ld      hl,$4087
020C  7E        ld      a,(hl)
020D  34        inc     (hl)
020E  AE        xor     (hl)
020F  CB 57     'W'
0211  5F        ld      e,a
0212  C4 82 10  call    nz,$1082
0215  CB 6B     'k'
0217  C4 12 11  call    nz,$1112
021A  E1        pop     hl
021B  D1        pop     de
021C  C1        pop     bc
021D  F1        pop     af
021E  FB        ei
021F  ED 4D     prefix'M'
0221  03        inc     bc
0222  03        inc     bc
0223  A5        and     l
0224  03        inc     bc
0225  0A        ld      a,(bc)
0226  00        nop
0227  48        ld      c,b
0228  14        inc     d
0229  06 0F     ld      b,$0F
022B  07        rlca
022C  FF        rst     38
022D  05        dec     b
022E  10        djnz    
022F  07        rlca
0230  00        nop
0231  0A        ld      a,(bc)
0232  FF        rst     38
0233  08        ex      af,af
0234  89        adc     a,c
0235  0A        ld      a,(bc)
0236  00        nop
0237  0B        dec     bc
0238  FF        rst     38
0239  09        add     hl,bc
023A  66        ld      h,(hl)
023B  0B        dec     bc
023C  00        nop
023D  0E FF     ld      c,$FF
023F  0E FF     ld      c,$FF
0241  0F        rrca
0242  FF        rst     38
0243  0F        rrca
0244  FF        rst     38
0245  12        ld      (de),a
0246  FF        rst     38
0247  10        djnz    
0248  FF        rst     38
0249  12        ld      (de),a
024A  00        nop
024B  13        inc     de
024C  FF        rst     38
024D  11 FF 13  ld      de,$13FF
0250  78        ld      a,b
0251  21 21 02  ld      hl,$0221
0254  CD 8A 02  call    $028A
0257  21 28 02  ld      hl,$0228
025A  CD 8A 02  call    $028A
025D  3E 40     ld      a,'@'
025F  ED 47     prefix'G'
0261  ED 5E     prefix'^'
0263  3E 00     ld      a,$00
0265  32 3C 41  ld      ($413C),a
0268  32 4F 41  ld      ($414F),a
026B  32 46 41  ld      ($4146),a
026E  32 33 41  ld      ($4133),a
0271  21 35 07  ld      hl,$0735
0274  22 38 41  ld      ($4138),hl
0277  21 5E 08  ld      hl,$085E
027A  22 4B 41  ld      ($414B),hl
027D  21 06 09  ld      hl,$0906
0280  22 43 41  ld      ($4143),hl
0283  21 75 09  ld      hl,$0975
0286  22 30 41  ld      ($4130),hl
0289  C9        ret
028A  46        ld      b,(hl)
028B  23        inc     hl
028C  4E        ld      c,(hl)
028D  23        inc     hl
028E  7E        ld      a,(hl)
028F  ED 79     prefix'y'
0291  10        djnz    
0292  F8        ret     m
0293  C9        ret
0294  7F        ld      a,a
0295  6A        ld      l,d
0296  66        ld      h,(hl)
0297  71        ld      (hl),c
0298  1E 63     ld      e,'c'
029A  79        ld      a,c
029B  7E        ld      a,(hl)
029C  2D        dec     l
029D  75        ld      (hl),l
029E  77        ld      (hl),a
029F  73        ld      (hl),e
02A0  2F        cpl
02A1  6B        ld      l,e
02A2  61        ld      h,c
02A3  6D        ld      l,l
02A4  22 65 70  ld      ($7065),hl
02A7  69        ld      l,c
02A8  3A 6E 72  ld      a,($726E)
02AB  74        ld      (hl),h
02AC  2C        inc     l
02AD  67        ld      h,a
02AE  6F        ld      l,a
02AF  78        ld      a,b
02B0  2E 7B     ld      l,'{'
02B2  6C        ld      l,h
02B3  62        ld      h,d
02B4  5F        ld      e,a
02B5  7D        ld      a,l
02B6  64        ld      h,h
02B7  60        ld      h,b
02B8  3F        ccf
02B9  7A        ld      a,d
02BA  76        halt
02BB  3E 25     ld      a,$25
02BD  68        ld      l,b
02BE  7C        ld      a,h
02BF  21 27 29  ld      hl,$2927
02C2  31 20 0E  ld      sp,$0E20
02C5  08        ex      af,af
02C6  01 02 0F  ld      bc,$0F02
02C9  8B        adc     a,e
02CA  84        add     a,h
02CB  85        add     a,l
02CC  2B        dec     hl
02CD  4A        ld      c,d
02CE  46        ld      b,(hl)
02CF  51        ld      d,c
02D0  23        inc     hl
02D1  43        ld      b,e
02D2  59        ld      e,c
02D3  5E        ld      e,(hl)
02D4  32 55 57  ld      ($5755),a
02D7  53        ld      d,e
02D8  33        inc     sp
02D9  4B        ld      c,e
02DA  41        ld      b,c
02DB  4D        ld      c,l
02DC  34        inc     (hl)
02DD  45        ld      b,l
02DE  50        ld      d,b
02DF  49        ld      c,c
02E0  35        dec     (hl)
02E1  4E        ld      c,(hl)
02E2  52        ld      d,d
02E3  54        ld      d,h
02E4  36 47     ld      (hl),'G'
02E6  4F        ld      c,a
02E7  58        ld      e,b
02E8  37        scf
02E9  5B        ld      e,e
02EA  4C        ld      c,h
02EB  42        ld      b,d
02EC  38        jr      c,
02ED  5D        ld      e,l
02EE  44        ld      b,h
02EF  40        ld      b,b
02F0  39        add     hl,sp
02F1  5A        ld      e,d
02F2  56        ld      d,(hl)
02F3  1C        inc     e
02F4  30 48     jr      nc,'H'
02F6  5C        ld      e,h
02F7  3D        dec     a
02F8  26 28     ld      h,$28
02FA  3B        dec     sp
02FB  3C        inc     a
02FC  0E 08     ld      c,$08
02FE  01 02 0F  ld      bc,$0F02
0301  8B        adc     a,e
0302  84        add     a,h
0303  85        add     a,l
0304  0A        ld      a,(bc)
0305  40        ld      b,b
0306  44        ld      b,h
0307  48        ld      c,b
0308  4C        ld      c,h
0309  00        nop
030A  00        nop
030B  00        nop
030C  00        nop
030D  60        ld      h,b
030E  00        nop
030F  2A 1F 24  ld      hl,($241F)
0312  1D        dec     e
0313  00        nop
0314  00        nop
0315  00        nop
0316  00        nop
0317  18        jr      
0318  19        add     hl,de
0319  FF        rst     38
031A  05        dec     b
031B  05        dec     b
031C  40        ld      b,b
031D  40        ld      b,b
031E  40        ld      b,b
031F  40        ld      b,b
0320  40        ld      b,b
0321  5B        ld      e,e
0322  40        ld      b,b
0323  40        ld      b,b
0324  80        add     a,b
0325  00        nop
0326  00        nop
0327  00        nop
0328  BD        cp      l
0329  5A        ld      e,d
032A  FF        rst     38
032B  B5        or      l
032C  13        inc     de
032D  12        ld      (de),a
032E  14        inc     d
032F  64        ld      h,h
0330  13        inc     de
0331  BE        cp      (hl)
0332  BE        cp      (hl)
0333  65        ld      h,l
0334  23        inc     hl
0335  23        inc     hl
0336  12        ld      (de),a
0337  9C        sbc     a,h
0338  0A        ld      a,(bc)
0339  8C        adc     a,h
033A  02        ld      (bc),a
033B  5C        ld      e,h
033C  74        ld      (hl),h
033D  5C        ld      e,h
033E  6C        ld      l,h
033F  AC        xor     h
0340  6C        ld      l,h
0341  6C        ld      l,h
0342  6C        ld      l,h
0343  6C        ld      l,h
0344  74        ld      (hl),h
0345  6C        ld      l,h
0346  0A        ld      a,(bc)
0347  64        ld      h,h
0348  53        ld      d,e
0349  54        ld      d,h
034A  74        ld      (hl),h
034B  64        ld      h,h
034C  BF        cp      a
034D  B6        or      (hl)
034E  BD        cp      l
034F  B6        or      (hl)
0350  BE        cp      (hl)
0351  B5        or      l
0352  BE        cp      (hl)
0353  AD        xor     l
0354  AE        xor     (hl)
0355  B6        or      (hl)
0356  BE        cp      (hl)
0357  BE        cp      (hl)
0358  B5        or      l
0359  BF        cp      a
035A  BE        cp      (hl)
035B  76        halt
035C  76        halt
035D  BE        cp      (hl)
035E  B5        or      l
035F  6E        ld      l,(hl)
0360  6D        ld      l,l
0361  6E        ld      l,(hl)
0362  BF        cp      a
0363  BD        cp      l
0364  75        ld      (hl),l
0365  BF        cp      a
0366  BD        cp      l
0367  BF        cp      a
0368  76        halt
0369  BF        cp      a
036A  75        ld      (hl),l
036B  D4 BE B5  call    nc,$B5BE
036E  75        ld      (hl),l
036F  65        ld      h,l
0370  B5        or      l
0371  6C        ld      l,h
0372  BD        cp      l
0373  65        ld      h,l
0374  65        ld      h,l
0375  6D        ld      l,l
0376  75        ld      (hl),l
0377  6D        ld      l,l
0378  6C        ld      l,h
0379  B6        or      (hl)
037A  6D        ld      l,l
037B  64        ld      h,h
037C  65        ld      h,l
037D  AD        xor     l
037E  75        ld      (hl),l
037F  64        ld      h,h
0380  64        ld      h,h
0381  65        ld      h,l
0382  BE        cp      (hl)
0383  6C        ld      l,h
0384  64        ld      h,h
0385  76        halt
0386  6C        ld      l,h
0387  B6        or      (hl)
0388  6C        ld      l,h
0389  B6        or      (hl)
038A  64        ld      h,h
038B  7C        ld      a,h
038C  0C        inc     c
038D  0D        dec     c
038E  0E 0F     ld      c,$0F
0390  10        djnz    
0391  12        ld      (de),a
0392  14        inc     d
0393  15        dec     d
0394  0C        inc     c
0395  0D        dec     c
0396  11 12 13  ld      de,$1312
0399  14        inc     d
039A  16 19     ld      d,$19
039C  0D        dec     c
039D  0E 12     ld      c,$12
039F  14        inc     d
03A0  15        dec     d
03A1  16 18     ld      d,$18
03A3  1D        dec     e
03A4  0B        dec     bc
03A5  0B        dec     bc
03A6  0B        dec     bc
03A7  0B        dec     bc
03A8  0B        dec     bc
03A9  0B        dec     bc
03AA  0B        dec     bc
03AB  0C        inc     c
03AC  05        dec     b
03AD  06 07     ld      b,$07
03AF  09        add     hl,bc
03B0  2E 4D     ld      l,'M'
03B2  4C        ld      c,h
03B3  34        inc     (hl)
03B4  21 1B 25  ld      hl,$251B
03B7  2D        dec     l
03B8  1F        rra
03B9  58        ld      e,b
03BA  28        jr      z,
03BB  05        dec     b
03BC  23        inc     hl
03BD  27        daa
03BE  1D        dec     e
03BF  3F        ccf
03C0  4B        ld      c,e
03C1  63        ld      h,e
03C2  64        ld      h,h
03C3  49        ld      c,c
03C4  54        ld      d,h
03C5  47        ld      b,a
03C6  56        ld      d,(hl)
03C7  57        ld      d,a
03C8  55        ld      d,l
03C9  53        ld      d,e
03CA  52        ld      d,d
03CB  51        ld      d,c
03CC  50        ld      d,b
03CD  4F        ld      c,a
03CE  19        add     hl,de
03CF  31 41 43  ld      sp,$4341
03D2  0D        dec     c
03D3  45        ld      b,l
03D4  1E 33     ld      e,$33
03D6  3C        inc     a
03D7  46        ld      b,(hl)
03D8  2C        inc     l
03D9  37        scf
03DA  24        inc     h
03DB  36 44     ld      (hl),'D'
03DD  30 4A     jr      nc,'J'
03DF  48        ld      c,b
03E0  35        dec     (hl)
03E1  1C        inc     e
03E2  42        ld      b,d
03E3  4E        ld      c,(hl)
03E4  40        ld      b,b
03E5  2A 29 39  ld      hl,($3929)
03E8  2B        dec     hl
03E9  32 1A 3A  ld      ($3A1A),a
03EC  3B        dec     sp
03ED  22 3E 26  ld      ($263E),hl
03F0  3D        dec     a
03F1  20        jr      nz,
03F2  38        jr      c,
03F3  01 12 04  ld      bc,$0412
03F6  0F        rrca
03F7  0A        ld      a,(bc)
03F8  09        add     hl,bc
03F9  0B        dec     bc
03FA  03        inc     bc
03FB  59        ld      e,c
03FC  5B        ld      e,e
03FD  0C        inc     c
03FE  5A        ld      e,d
03FF  5C        ld      e,h
0400  60        ld      h,b
0401  10        djnz    
0402  61        ld      h,c
0403  15        dec     d
0404  5D        ld      e,l
0405  5E        ld      e,(hl)
0406  08        ex      af,af
0407  17        rla
0408  07        rlca
0409  62        ld      h,d
040A  14        inc     d
040B  5F        ld      e,a
040C  06 0E     ld      b,$0E
040E  13        inc     de
040F  16 11     ld      d,$11
0411  18        jr      
0412  02        ld      (bc),a
0413  2F        cpl
0414  00        nop
0415  00        nop
0416  FF        rst     38
0417  00        nop
0418  00        nop
0419  FF        rst     38
041A  00        nop
041B  00        nop
041C  FF        rst     38
041D  FF        rst     38
041E  FF        rst     38
041F  2D        dec     l
0420  00        nop
0421  FF        rst     38
0422  1D        dec     e
0423  FF        rst     38
0424  5F        ld      e,a
0425  FF        rst     38
0426  16 01     ld      d,$01
0428  FF        rst     38
0429  02        ld      (bc),a
042A  FF        rst     38
042B  FF        rst     38
042C  FF        rst     38
042D  FF        rst     38
042E  FF        rst     38
042F  FF        rst     38
0430  FF        rst     38
0431  FF        rst     38
0432  FF        rst     38
0433  C0        ret     nz
0434  06 C3     ld      b,$C3
0436  95        sub     l
0437  31 7F 6A  ld      sp,$6A7F
043A  66        ld      h,(hl)
043B  71        ld      (hl),c
043C  1E 63     ld      e,'c'
043E  79        ld      a,c
043F  7E        ld      a,(hl)
0440  2D        dec     l
0441  75        ld      (hl),l
0442  77        ld      (hl),a
0443  73        ld      (hl),e
0444  2F        cpl
0445  6B        ld      l,e
0446  61        ld      h,c
0447  6D        ld      l,l
0448  22 65 70  ld      ($7065),hl
044B  69        ld      l,c
044C  3A 6E 72  ld      a,($726E)
044F  74        ld      (hl),h
0450  2C        inc     l
0451  67        ld      h,a
0452  6F        ld      l,a
0453  78        ld      a,b
0454  2E 7B     ld      l,'{'
0456  6C        ld      l,h
0457  62        ld      h,d
0458  5F        ld      e,a
0459  7D        ld      a,l
045A  64        ld      h,h
045B  60        ld      h,b
045C  3F        ccf
045D  7A        ld      a,d
045E  76        halt
045F  1D        dec     e
0460  25        dec     h
0461  68        ld      l,b
0462  7C        ld      a,h
0463  21 27 29  ld      hl,$2927
0466  31 20 0E  ld      sp,$0E20
0469  08        ex      af,af
046A  01 02 0F  ld      bc,$0F02
046D  8B        adc     a,e
046E  84        add     a,h
046F  85        add     a,l
0470  2B        dec     hl
0471  4A        ld      c,d
0472  46        ld      b,(hl)
0473  51        ld      d,c
0474  23        inc     hl
0475  43        ld      b,e
0476  59        ld      e,c
0477  5E        ld      e,(hl)
0478  32 55 57  ld      ($5755),a
047B  53        ld      d,e
047C  33        inc     sp
047D  4B        ld      c,e
047E  41        ld      b,c
047F  4D        ld      c,l
0480  34        inc     (hl)
0481  45        ld      b,l
0482  50        ld      d,b
0483  49        ld      c,c
0484  35        dec     (hl)
0485  4E        ld      c,(hl)
0486  52        ld      d,d
0487  54        ld      d,h
0488  36 47     ld      (hl),'G'
048A  4F        ld      c,a
048B  58        ld      e,b
048C  37        scf
048D  5B        ld      e,e
048E  4C        ld      c,h
048F  42        ld      b,d
0490  38        jr      c,
0491  5D        ld      e,l
0492  44        ld      b,h
0493  40        ld      b,b
0494  39        add     hl,sp
0495  5A        ld      e,d
0496  56        ld      d,(hl)
0497  1C        inc     e
0498  30 48     jr      nc,'H'
049A  5C        ld      e,h
049B  3D        dec     a
049C  26 28     ld      h,$28
049E  3B        dec     sp
049F  24        inc     h
04A0  0E 08     ld      c,$08
04A2  01 02 0F  ld      bc,$0F02
04A5  8B        adc     a,e
04A6  84        add     a,h
04A7  85        add     a,l
04A8  0A        ld      a,(bc)
04A9  40        ld      b,b
04AA  44        ld      b,h
04AB  48        ld      c,b
04AC  4C        ld      c,h
04AD  50        ld      d,b
04AE  54        ld      d,h
04AF  58        ld      e,b
04B0  5C        ld      e,h
04B1  60        ld      h,b
04B2  64        ld      h,h
04B3  2A 3C 3E  ld      hl,($3E3C)
04B6  1F        rra
04B7  00        nop
04B8  00        nop
04B9  00        nop
04BA  00        nop
04BB  18        jr      
04BC  00        nop
04BD  05        dec     b
04BE  05        dec     b
04BF  05        dec     b
04C0  40        ld      b,b
04C1  40        ld      b,b
04C2  40        ld      b,b
04C3  40        ld      b,b
04C4  40        ld      b,b
04C5  40        ld      b,b
04C6  40        ld      b,b
04C7  40        ld      b,b
04C8  80        add     a,b
04C9  00        nop
04CA  00        nop
04CB  00        nop
04CC  BD        cp      l
04CD  75        ld      (hl),l
04CE  FD B5     prefix$B5
04D0  0D        dec     c
04D1  15        dec     d
04D2  15        dec     d
04D3  65        ld      h,l
04D4  15        dec     d
04D5  BD        cp      l
04D6  BD        cp      l
04D7  65        ld      h,l
04D8  25        dec     h
04D9  25        dec     h
04DA  15        dec     d
04DB  9D        sbc     a,l
04DC  0D        dec     c
04DD  8D        adc     a,l
04DE  05        dec     b
04DF  5D        ld      e,l
04E0  75        ld      (hl),l
04E1  5D        ld      e,l
04E2  6D        ld      l,l
04E3  AD        xor     l
04E4  6D        ld      l,l
04E5  6D        ld      l,l
04E6  6D        ld      l,l
04E7  6D        ld      l,l
04E8  75        ld      (hl),l
04E9  75        ld      (hl),l
04EA  0D        dec     c
04EB  65        ld      h,l
04EC  5D        ld      e,l
04ED  55        ld      d,l
04EE  5D        ld      e,l
04EF  65        ld      h,l
04F0  BD        cp      l
04F1  B5        or      l
04F2  BD        cp      l
04F3  B5        or      l
04F4  BD        cp      l
04F5  B5        or      l
04F6  BD        cp      l
04F7  AD        xor     l
04F8  75        ld      (hl),l
04F9  B5        or      l
04FA  BD        cp      l
04FB  BD        cp      l
04FC  B5        or      l
04FD  BD        cp      l
04FE  BD        cp      l
04FF  75        ld      (hl),l
0500  75        ld      (hl),l
0501  BD        cp      l
0502  B5        or      l
0503  6D        ld      l,l
0504  6D        ld      l,l
0505  AD        xor     l
0506  BD        cp      l
0507  BD        cp      l
0508  75        ld      (hl),l
0509  BD        cp      l
050A  BD        cp      l
050B  BD        cp      l
050C  75        ld      (hl),l
050D  BD        cp      l
050E  75        ld      (hl),l
050F  D5        push    de
0510  BD        cp      l
0511  B5        or      l
0512  75        ld      (hl),l
0513  65        ld      h,l
0514  B5        or      l
0515  6D        ld      l,l
0516  BD        cp      l
0517  65        ld      h,l
0518  65        ld      h,l
0519  6D        ld      l,l
051A  75        ld      (hl),l
051B  6D        ld      l,l
051C  6D        ld      l,l
051D  B5        or      l
051E  6D        ld      l,l
051F  65        ld      h,l
0520  65        ld      h,l
0521  AD        xor     l
0522  75        ld      (hl),l
0523  65        ld      h,l
0524  65        ld      h,l
0525  75        ld      (hl),l
0526  BD        cp      l
0527  6D        ld      l,l
0528  65        ld      h,l
0529  75        ld      (hl),l
052A  6D        ld      l,l
052B  B5        or      l
052C  6D        ld      l,l
052D  B5        or      l
052E  65        ld      h,l
052F  7D        ld      a,l
0530  0C        inc     c
0531  0D        dec     c
0532  0E 0F     ld      c,$0F
0534  10        djnz    
0535  12        ld      (de),a
0536  14        inc     d
0537  15        dec     d
0538  0C        inc     c
0539  0D        dec     c
053A  11 12 13  ld      de,$1312
053D  14        inc     d
053E  16 19     ld      d,$19
0540  0D        dec     c
0541  0E 12     ld      c,$12
0543  14        inc     d
0544  15        dec     d
0545  16 18     ld      d,$18
0547  1D        dec     e
0548  0B        dec     bc
0549  0B        dec     bc
054A  0B        dec     bc
054B  0B        dec     bc
054C  0B        dec     bc
054D  0B        dec     bc
054E  0B        dec     bc
054F  0C        inc     c
0550  05        dec     b
0551  06 07     ld      b,$07
0553  09        add     hl,bc
0554  5D        ld      e,l
0555  5C        ld      e,h
0556  1A        ld      a,(de)
0557  13        inc     de
0558  5F        ld      e,a
0559  16 19     ld      d,$19
055B  11 5E 18  ld      de,$185E
055E  17        rla
055F  15        dec     d
0560  0F        rrca
0561  12        ld      (de),a
0562  14        inc     d
0563  0C        inc     c
0564  64        ld      h,h
0565  62        ld      h,d
0566  63        ld      h,e
0567  10        djnz    
0568  03        inc     bc
0569  0D        dec     c
056A  05        dec     b
056B  04        inc     b
056C  07        rlca
056D  06 09     ld      b,$09
056F  08        ex      af,af
0570  0B        dec     bc
0571  0A        ld      a,(bc)
0572  02        ld      (bc),a
0573  1B        dec     de
0574  61        ld      h,c
0575  0E 60     ld      c,'`'
0577  1C        inc     e
0578  1F        rra
0579  2A 23 3A  ld      hl,($3A23)
057C  31 32 3B  ld      sp,$3B32
057F  22 37 30  ld      ($3037),hl
0582  21 26 2F  ld      hl,$2F26
0585  34        inc     (hl)
0586  2D        dec     l
0587  2C        inc     l
0588  27        daa
0589  36 29     ld      (hl),$29
058B  2E 2B     ld      l,$2B
058D  24        inc     h
058E  39        add     hl,sp
058F  28        jr      z,
0590  35        dec     (hl)
0591  38        jr      c,
0592  25        dec     h
0593  3C        inc     a
0594  1D        dec     e
0595  20        jr      nz,
0596  33        inc     sp
0597  01 59 50  ld      bc,$5059
059A  55        ld      d,l
059B  40        ld      b,b
059C  45        ld      b,l
059D  49        ld      c,c
059E  3D        dec     a
059F  57        ld      d,a
05A0  41        ld      b,c
05A1  4B        ld      c,e
05A2  58        ld      e,b
05A3  52        ld      d,d
05A4  47        ld      b,a
05A5  48        ld      c,b
05A6  4A        ld      c,d
05A7  4E        ld      c,(hl)
05A8  53        ld      d,e
05A9  46        ld      b,(hl)
05AA  4F        ld      c,a
05AB  4D        ld      c,l
05AC  4C        ld      c,h
05AD  56        ld      d,(hl)
05AE  3F        ccf
05AF  42        ld      b,d
05B0  51        ld      d,c
05B1  44        ld      b,h
05B2  54        ld      d,h
05B3  3E 5B     ld      a,'['
05B5  5A        ld      e,d
05B6  43        ld      b,e
05B7  1E FF     ld      e,$FF
05B9  FF        rst     38
05BA  FF        rst     38
05BB  FF        rst     38
05BC  FF        rst     38
05BD  2D        dec     l
05BE  00        nop
05BF  FF        rst     38
05C0  3A FF 5F  ld      a,($5FFF)
05C3  FF        rst     38
05C4  16 01     ld      d,$01
05C6  FF        rst     38
05C7  FF        rst     38
05C8  FF        rst     38
05C9  FF        rst     38
05CA  7F        ld      a,a
05CB  7F        ld      a,a
05CC  7F        ld      a,a
05CD  7F        ld      a,a
05CE  7F        ld      a,a
05CF  7F        ld      a,a
05D0  7F        ld      a,a
05D1  7F        ld      a,a
05D2  7F        ld      a,a
05D3  7F        ld      a,a
05D4  7F        ld      a,a
05D5  7F        ld      a,a
05D6  7F        ld      a,a
05D7  7F        ld      a,a
05D8  7F        ld      a,a
05D9  7F        ld      a,a
05DA  7F        ld      a,a
05DB  7F        ld      a,a
05DC  00        nop
05DD  00        nop
05DE  00        nop
05DF  0C        inc     c
05E0  0B        dec     bc
05E1  00        nop
05E2  00        nop
05E3  00        nop
05E4  0A        ld      a,(bc)
05E5  0D        dec     c
05E6  00        nop
05E7  09        add     hl,bc
05E8  00        nop
05E9  0A        ld      a,(bc)
05EA  08        ex      af,af
05EB  20        jr      nz,
05EC  7B        ld      a,e
05ED  7C        ld      a,h
05EE  7D        ld      a,l
05EF  00        nop
05F0  00        nop
05F1  2D        dec     l
05F2  00        nop
05F3  00        nop
05F4  00        nop
05F5  00        nop
05F6  00        nop
05F7  00        nop
05F8  AE        xor     (hl)
05F9  B3        or      e
05FA  9C        sbc     a,h
05FB  5E        ld      e,(hl)
05FC  FD 21     prefix$21
05FE  22 23 B0  ld      ($B023),hl
0601  25        dec     h
0602  26 27     ld      h,$27
0604  28        jr      z,
0605  29        add     hl,jl
0606  2A 2B 2C  ld      hl,($2C2B)
0609  2D        dec     l
060A  2E 2F     ld      l,$2F
060C  30 31     jr      nc,$31
060E  32 33 34  ld      ($3433),a
0611  35        dec     (hl)
0612  36 37     ld      (hl),$37
0614  38        jr      c,
0615  39        add     hl,sp
0616  3A 3B E6  ld      a,($E63B)
0619  3D        dec     a
061A  F8        ret     m
061B  3F        ccf
061C  40        ld      b,b
061D  41        ld      b,c
061E  42        ld      b,d
061F  43        ld      b,e
0620  44        ld      b,h
0621  45        ld      b,l
0622  46        ld      b,(hl)
0623  47        ld      b,a
0624  48        ld      c,b
0625  49        ld      c,c
0626  4A        ld      c,d
0627  4B        ld      c,e
0628  4C        ld      c,h
0629  4D        ld      c,l
062A  4E        ld      c,(hl)
062B  4F        ld      c,a
062C  50        ld      d,b
062D  51        ld      d,c
062E  52        ld      d,d
062F  53        ld      d,e
0630  54        ld      d,h
0631  55        ld      d,l
0632  56        ld      d,(hl)
0633  57        ld      d,a
0634  58        ld      e,b
0635  59        ld      e,c
0636  5A        ld      e,d
0637  5B        ld      e,e
0638  5C        ld      e,h
0639  5D        ld      e,l
063A  24        inc     h
063B  5F        ld      e,a
063C  60        ld      h,b
063D  61        ld      h,c
063E  62        ld      h,d
063F  63        ld      h,e
0640  64        ld      h,h
0641  65        ld      h,l
0642  66        ld      h,(hl)
0643  67        ld      h,a
0644  68        ld      l,b
0645  69        ld      l,c
0646  6A        ld      l,d
0647  6B        ld      l,e
0648  6C        ld      l,h
0649  6D        ld      l,l
064A  6E        ld      l,(hl)
064B  6F        ld      l,a
064C  70        ld      (hl),b
064D  71        ld      (hl),c
064E  72        ld      (hl),d
064F  73        ld      (hl),e
0650  74        ld      (hl),h
0651  75        ld      (hl),l
0652  76        halt
0653  77        ld      (hl),a
0654  78        ld      a,b
0655  79        ld      a,c
0656  7A        ld      a,d
0657  82        add     a,d
0658  87        add     a,a
0659  8A        adc     a,d
065A  7E        ld      a,(hl)
065B  AF        xor     a
065C  45        ld      b,l
065D  52        ld      d,d
065E  57        ld      d,a
065F  26 49     ld      h,'I'
0661  4A        ld      c,d
0662  4F        ld      c,a
0663  48        ld      c,b
0664  4D        ld      c,l
0665  4E        ld      c,(hl)
0666  51        ld      d,c
0667  50        ld      d,b
0668  33        inc     sp
0669  34        inc     (hl)
066A  35        dec     (hl)
066B  36 31     ld      (hl),$31
066D  38        jr      c,
066E  32 55 44  ld      ($4455),a
0671  83        add     a,ee
0672  93        sub     e
0673  82        add     a,d
0674  92        sub     d
0675  81        add     a,c
0676  91        sub     c
0677  85        add     a,l
0678  95        sub     l
0679  A8        xor     b
067A  A9        xor     c
067B  AA        xor     d
067C  AB        xor     e
067D  A5        and     l
067E  A6        and     (hl)
067F  A7        and     a
0680  AC        xor     h
0681  A0        and     b
0682  A1        and     c
0683  9C        sbc     a,h
0684  01 02 77  ld      bc,$7702
0687  23        inc     hl
0688  73        ld      (hl),e
0689  23        inc     hl
068A  72        ld      (hl),d
068B  23        inc     hl
068C  70        ld      (hl),b
068D  06 0A     ld      b,$0A
068F  DB 11     in      a,($11)
0691  E6 04     and     $04
0693  CC 1A 07  call    z,$071A
0696  1A        ld      a,(de)
0697  1E A5     ld      e,$A5
0699  F3        di
069A  ED 59     prefix'Y'
069C  ED 41     prefix'A'
069E  ED 59     prefix'Y'
06A0  ED 79     prefix'y'
06A2  FB        ei
06A3  C9        ret
06A4  CB 7A     'z'
06A6  C8        ret     z
06A7  21 00 00  ld      hl,$0000
06AA  D7        rst     10
06AB  EB        ex      de,hl
06AC  C9        ret
06AD  5F        ld      e,a
06AE  16 00     ld      d,$00
06B0  7E        ld      a,(hl)
06B1  E6 0F     and     $0F
06B3  47        ld      b,a
06B4  7E        ld      a,(hl)
06B5  E6 F0     and     $F0
06B7  0F        rrca
06B8  0F        rrca
06B9  0F        rrca
06BA  0F        rrca
06BB  80        add     a,b
06BC  3C        inc     a
06BD  4F        ld      c,a
06BE  78        ld      a,b
06BF  06 00     ld      b,$00
06C1  EB        ex      de,hl
06C2  ED 42     prefix'B'
06C4  38        jr      c,
06C5  12        ld      (de),a
06C6  20        jr      nz,
06C7  03        inc     bc
06C8  A7        and     a
06C9  20        jr      nz,
06CA  0D        dec     c
06CB  F5        push    af
06CC  47        ld      b,a
06CD  79        ld      a,c
06CE  C6 02     ada     a,$02
06D0  85        add     a,l
06D1  4F        ld      c,a
06D2  95        sub     l
06D3  90        sub     b
06D4  47        ld      b,a
06D5  13        inc     de
06D6  F1        pop     af
06D7  C9        ret
06D8  09        add     hl,bc
06D9  EB        ex      de,hl
06DA  23        inc     hl
06DB  09        add     hl,bc
06DC  A7        and     a
06DD  28        jr      z,
06DE  D1        pop     de
06DF  23        inc     hl
06E0  18        jr      
06E1  CE CB     adc     a,$CB
06E3  7E        ld      a,(hl)
06E4  23        inc     hl
06E5  7E        ld      a,(hl)
06E6  20        jr      nz,
06E7  02        ld      (bc),a
06E8  C6 02     ada     a,$02
06EA  3D        dec     a
06EB  77        ld      (hl),a
06EC  E6 07     and     $07
06EE  83        add     a,ee
06EF  5F        ld      e,a
06F0  7A        ld      a,d
06F1  CE 00     adc     a,$00
06F3  57        ld      d,a
06F4  1A        ld      a,(de)
06F5  A0        and     b
06F6  57        ld      d,a
06F7  78        ld      a,b
06F8  2F        cpl
06F9  47        ld      b,a
06FA  ED 78     prefix'x'
06FC  A0        and     b
06FD  B2        or      d
06FE  ED 79     prefix'y'
0700  D9        exx
0701  08        ex      af,af
0702  FB        ei
0703  ED 4D     prefix'M'
0705  21 70 40  ld      hl,$4070
0708  7E        ld      a,(hl)
0709  A0        and     b
070A  77        ld      (hl),a
070B  3E 03     ld      a,$03
070D  ED 79     prefix'y'
070F  18        jr      
0710  EF        rst     28
0711  23        inc     hl
0712  3E A5     ld      a,$A5
0714  ED 79     prefix'y'
0716  7E        ld      a,(hl)
0717  ED 79     prefix'y'
0719  C9        ret
071A  F3        di
071B  DB 11     in      a,($11)
071D  F6 04     or      $04
071F  D3 11     out     ($11),a
0721  FB        ei
0722  06 32     ld      b,$32
0724  C9        ret
0725  DB 11     in      a,($11)
0727  E6 04     and     $04
0729  C8        ret     z
072A  F3        di
072B  DB 11     in      a,($11)
072D  F6 04     or      $04
072F  EE 04     xor     $04
0731  D3 11     out     ($11),a
0733  FB        ei
0734  C9        ret
0735  40        ld      b,b
0736  0F        rrca
0737  32 28 22  ld      ($2228),a
073A  1C        inc     e
073B  17        rla
073C  15        dec     d
073D  13        inc     de
073E  12        ld      (de),a
073F  11 11 10  ld      de,$1011
0742  0E 0D     ld      c,$0D
0744  0D        dec     c
0745  0D        dec     c
0746  0C        inc     c
0747  0C        inc     c
0748  0C        inc     c
0749  0B        dec     bc
074A  0B        dec     bc
074B  0B        dec     bc
074C  0B        dec     bc
074D  0A        ld      a,(bc)
074E  0A        ld      a,(bc)
074F  0A        ld      a,(bc)
0750  0A        ld      a,(bc)
0751  0A        ld      a,(bc)
0752  0A        ld      a,(bc)
0753  09        add     hl,bc
0754  09        add     hl,bc
0755  09        add     hl,bc
0756  09        add     hl,bc
0757  09        add     hl,bc
0758  09        add     hl,bc
0759  09        add     hl,bc
075A  09        add     hl,bc
075B  09        add     hl,bc
075C  09        add     hl,bc
075D  08        ex      af,af
075E  09        add     hl,bc
075F  08        ex      af,af
0760  09        add     hl,bc
0761  08        ex      af,af
0762  09        add     hl,bc
0763  08        ex      af,af
0764  08        ex      af,af
0765  08        ex      af,af
0766  08        ex      af,af
0767  08        ex      af,af
0768  08        ex      af,af
0769  08        ex      af,af
076A  08        ex      af,af
076B  08        ex      af,af
076C  08        ex      af,af
076D  08        ex      af,af
076E  08        ex      af,af
076F  07        rlca
0770  08        ex      af,af
0771  07        rlca
0772  08        ex      af,af
0773  07        rlca
0774  08        ex      af,af
0775  07        rlca
0776  08        ex      af,af
0777  07        rlca
0778  09        add     hl,bc
0779  0A        ld      a,(bc)
077A  0B        dec     bc
077B  0B        dec     bc
077C  0B        dec     bc
077D  0B        dec     bc
077E  09        add     hl,bc
077F  0A        ld      a,(bc)
0780  0B        dec     bc
0781  0E 11     ld      c,$11
0783  13        inc     de
0784  18        jr      
0785  23        inc     hl
0786  30 00     jr      nc,$00
0788  45        ld      b,l
0789  24        inc     h
078A  20        jr      nz,
078B  1C        inc     e
078C  1A        ld      a,(de)
078D  18        jr      
078E  18        jr      
078F  1C        inc     e
0790  20        jr      nz,
0791  24        inc     h
0792  2C        inc     l
0793  64        ld      h,h
0794  33        inc     sp
0795  2C        inc     l
0796  24        inc     h
0797  20        jr      nz,
0798  1E 24     ld      e,$24
079A  2E 32     ld      l,$32
079C  64        ld      h,h
079D  22 28 24  ld      ($2428),hl
07A0  24        inc     h
07A1  32 3C 64  ld      ($643C),a
07A4  11 40 32  ld      de,$3240
07A7  5A        ld      e,d
07A8  64        ld      h,h
07A9  20        jr      nz,
07AA  40        ld      b,b
07AB  40        ld      b,b
07AC  8C        adc     a,h
07AD  10        djnz    
07AE  A0        and     b
07AF  8C        adc     a,h
07B0  00        nop
07B1  8C        adc     a,h
07B2  7D        ld      a,l
07B3  B4        or      h
07B4  C8        ret     z
07B5  22 3A 41  ld      ($413A),hl
07B8  EB        ex      de,hl
07B9  21 70 40  ld      hl,$4070
07BC  CB CE     $CE
07BE  CD A4 06  call    $06A4
07C1  28        jr      z,
07C2  09        add     hl,bc
07C3  3A 71 40  ld      a,($4071)
07C6  CB 57     'W'
07C8  20        jr      nz,
07C9  02        ld      (bc),a
07CA  13        inc     de
07CB  13        inc     de
07CC  2A 38 41  ld      hl,($4138)
07CF  46        ld      b,(hl)
07D0  23        inc     hl
07D1  7E        ld      a,(hl)
07D2  CD BB 06  call    $06BB
07D5  22 3D 41  ld      ($413D),hl
07D8  21 EB 07  ld      hl,$07EB
07DB  20        jr      nz,
07DC  03        inc     bc
07DD  21 23 08  ld      hl,$0823
07E0  22 4A 40  ld      ($404A),hl
07E3  21 3F 41  ld      hl,$413F
07E6  0E 01     ld      c,$01
07E8  C3 86 06  jp      $0686
07EB  08        ex      af,af
07EC  D9        exx
07ED  21 3F 41  ld      hl,$413F
07F0  35        dec     (hl)
07F1  20        jr      nz,
07F2  06 21     ld      b,$21
07F4  11 08 22  ld      de,$2208
07F7  4A        ld      c,d
07F8  40        ld      b,b
07F9  2A 40 41  ld      hl,($4140)
07FC  0E 01     ld      c,$01
07FE  CD 11 07  call    $0711
0801  22 40 41  ld      ($4140),hl
0804  0E 09     ld      c,$09
0806  11 91 00  ld      de,$0091
0809  21 3B 41  ld      hl,$413B
080C  06 F0     ld      b,$F0
080E  C3 E2 06  jp      $06E2
0811  08        ex      af,af
0812  D9        exx
0813  2A 3D 41  ld      hl,($413D)
0816  2B        dec     hl
0817  22 3D 41  ld      ($413D),hl
081A  7D        ld      a,l
081B  B4        or      h
081C  20        jr      nz,
081D  E6 21     and     $21
081F  23        inc     hl
0820  08        ex      af,af
0821  18        jr      
0822  D3 08     out     ($08),a
0824  D9        exx
0825  21 42 41  ld      hl,$4142
0828  35        dec     (hl)
0829  7E        ld      a,(hl)
082A  28        jr      z,
082B  09        add     hl,bc
082C  3D        dec     a
082D  CA 00 07  jp      z,$0700
0830  3D        dec     a
0831  28        jr      z,
0832  D1        pop     de
0833  18        jr      
0834  C4 01 01  call    nz,$0101
0837  FD 21     prefix$21
0839  3B        dec     sp
083A  41        ld      b,c
083B  CB 7E     '~'
083D  CA 05 07  jp      z,$0705
0840  3A 71 40  ld      a,($4071)
0843  CB 57     'W'
0845  C2 05 07  jp      nz,$0705
0848  21 4F 08  ld      hl,$084F
084B  E5        push    hl
084C  C3 0B 07  jp      $070B
084F  F5        push    af
0850  C5        push    bc
0851  D5        push    de
0852  E5        push    hl
0853  21 02 00  ld      hl,$0002
0856  CD B2 07  call    $07B2
0859  E1        pop     hl
085A  D1        pop     de
085B  C1        pop     bc
085C  F1        pop     af
085D  C9        ret
085E  6E        ld      l,(hl)
085F  28        jr      z,
0860  1E 18     ld      e,$18
0862  14        inc     d
0863  12        ld      (de),a
0864  11 10 0E  ld      de,$0E10
0867  0D        dec     c
0868  0D        dec     c
0869  0C        inc     c
086A  0C        inc     c
086B  0C        inc     c
086C  0D        dec     c
086D  0B        dec     bc
086E  0C        inc     c
086F  0D        dec     c
0870  0F        rrca
0871  12        ld      (de),a
0872  14        inc     d
0873  1C        inc     e
0874  F0        ret     p
0875  23        inc     hl
0876  2C        inc     l
0877  20        jr      nz,
0878  1C        inc     e
0879  18        jr      
087A  1C        inc     e
087B  24        inc     h
087C  F0        ret     p
087D  11 32 24  ld      de,$2432
0880  30 F0     jr      nc,$F0
0882  20        jr      nz,
0883  32 32 F0  ld      ($F032),a
0886  10        djnz    
0887  40        ld      b,b
0888  F0        ret     p
0889  00        nop
088A  00        nop
088B  7D        ld      a,l
088C  B4        or      h
088D  C8        ret     z
088E  22 4D 41  ld      ($414D),hl
0891  EB        ex      de,hl
0892  21 70 40  ld      hl,$4070
0895  CB EE     $EE
0897  CD A4 06  call    $06A4
089A  2A 4B 41  ld      hl,($414B)
089D  CD B0 06  call    $06B0
08A0  22 50 41  ld      ($4150),hl
08A3  21 B6 08  ld      hl,$08B6
08A6  20        jr      nz,
08A7  03        inc     bc
08A8  21 EE 08  ld      hl,$08EE
08AB  22 4C 40  ld      ($404C),hl
08AE  21 52 41  ld      hl,$4152
08B1  0E 02     ld      c,$02
08B3  C3 86 06  jp      $0686
08B6  08        ex      af,af
08B7  D9        exx
08B8  21 52 41  ld      hl,$4152
08BB  35        dec     (hl)
08BC  20        jr      nz,
08BD  06 21     ld      b,$21
08BF  DC 08 22  call    c,$2208
08C2  4C        ld      c,h
08C3  40        ld      b,b
08C4  2A 53 41  ld      hl,($4153)
08C7  0E 02     ld      c,$02
08C9  CD 11 07  call    $0711
08CC  22 53 41  ld      ($4153),hl
08CF  11 91 00  ld      de,$0091
08D2  0E 09     ld      c,$09
08D4  21 4E 41  ld      hl,$414E
08D7  06 0F     ld      b,$0F
08D9  C3 E2 06  jp      $06E2
08DC  08        ex      af,af
08DD  D9        exx
08DE  2A 50 41  ld      hl,($4150)
08E1  2B        dec     hl
08E2  22 50 41  ld      ($4150),hl
08E5  7D        ld      a,l
08E6  B4        or      h
08E7  20        jr      nz,
08E8  E6 21     and     $21
08EA  EE 08     xor     $08
08EC  18        jr      
08ED  D3 08     out     ($08),a
08EF  D9        exx
08F0  21 55 41  ld      hl,$4155
08F3  35        dec     (hl)
08F4  7E        ld      a,(hl)
08F5  28        jr      z,
08F6  09        add     hl,bc
08F7  3D        dec     a
08F8  CA 00 07  jp      z,$0700
08FB  3D        dec     a
08FC  28        jr      z,
08FD  D1        pop     de
08FE  18        jr      
08FF  C4 01 02  call    nz,$0201
0902  DF        rst     18
0903  C3 05 07  jp      $0705
0906  12        ld      (de),a
0907  46        ld      b,(hl)
0908  3C        inc     a
0909  21 30 20  ld      hl,$2030
090C  30 46     jr      nc,'F'
090E  3C        inc     a
090F  46        ld      b,(hl)
0910  20        jr      nz,
0911  10        djnz    
0912  46        ld      b,(hl)
0913  64        ld      h,h
0914  00        nop
0915  00        nop
0916  A7        and     a
0917  C8        ret     z
0918  21 70 40  ld      hl,$4070
091B  CB D6     $D6
091D  32 45 41  ld      ($4145),a
0920  CB 7F     $7F
0922  28        jr      z,
0923  02        ld      (bc),a
0924  ED 44     prefix'D'
0926  2A 43 41  ld      hl,($4143)
0929  CD AD 06  call    $06AD
092C  7D        ld      a,l
092D  41        ld      b,c
092E  21 3C 09  ld      hl,$093C
0931  22 4C 40  ld      ($404C),hl
0934  21 47 41  ld      hl,$4147
0937  0E 02     ld      c,$02
0939  C3 86 06  jp      $0686
093C  08        ex      af,af
093D  D9        exx
093E  21 4A 41  ld      hl,$414A
0941  35        dec     (hl)
0942  4E        ld      c,(hl)
0943  2B        dec     hl
0944  2B        dec     hl
0945  28        jr      z,
0946  28        jr      z,
0947  7E        ld      a,(hl)
0948  FE 09     cp      $09
094A  20        jr      nz,
094B  04        inc     b
094C  2B        dec     hl
094D  35        dec     (hl)
094E  20        jr      nz,
094F  12        ld      (de),a
0950  0D        dec     c
0951  CA 00 07  jp      z,$0700
0954  0D        dec     c
0955  28        jr      z,
0956  0B        dec     bc
0957  2A 48 41  ld      hl,($4148)
095A  0E 02     ld      c,$02
095C  CD 11 07  call    $0711
095F  22 48 41  ld      ($4148),hl
0962  11 89 00  ld      de,$0089
0965  0E 08     ld      c,$08
0967  21 45 41  ld      hl,$4145
096A  06 0F     ld      b,$0F
096C  C3 E2 06  jp      $06E2
096F  01 02 FB  ld      bc,$FB02
0972  C3 05 07  jp      $0705
0975  55        ld      d,l
0976  0E 1A     ld      c,$1A
0978  16 12     ld      d,$12
097A  0D        dec     c
097B  0C        inc     c
097C  0D        dec     c
097D  12        ld      (de),a
097E  18        jr      
097F  1E 08     ld      e,$08
0981  64        ld      h,h
0982  33        inc     sp
0983  15        dec     d
0984  20        jr      nz,
0985  18        jr      
0986  11 20 20  ld      de,$2020
0989  08        ex      af,af
098A  64        ld      h,h
098B  60        ld      h,b
098C  18        jr      
098D  1B        dec     de
098E  18        jr      
098F  1E 20     ld      e,$20
0991  08        ex      af,af
0992  64        ld      h,h
0993  50        ld      d,b
0994  18        jr      
0995  20        jr      nz,
0996  24        inc     h
0997  20        jr      nz,
0998  08        ex      af,af
0999  64        ld      h,h
099A  40        ld      b,b
099B  24        inc     h
099C  2A 2C 08  ld      hl,($082C)
099F  64        ld      h,h
09A0  30 30     jr      nc,$30
09A2  40        ld      b,b
09A3  0A        ld      a,(bc)
09A4  64        ld      h,h
09A5  20        jr      nz,
09A6  40        ld      b,b
09A7  0A        ld      a,(bc)
09A8  96        sub     (hl)
09A9  A7        and     a
09AA  C8        ret     z
09AB  21 70 40  ld      hl,$4070
09AE  CB C6     $C6
09B0  21 32 41  ld      hl,$4132
09B3  77        ld      (hl),a
09B4  23        inc     hl
09B5  CB FE     $FE
09B7  CB 7F     $7F
09B9  28        jr      z,
09BA  02        ld      (bc),a
09BB  ED 44     prefix'D'
09BD  3C        inc     a
09BE  3C        inc     a
09BF  2A 30 41  ld      hl,($4130)
09C2  CD AD 06  call    $06AD
09C5  7D        ld      a,l
09C6  41        ld      b,c
09C7  21 D5 09  ld      hl,$09D5
09CA  22 48 40  ld      ($4048),hl
09CD  21 34 41  ld      hl,$4134
09D0  0E 00     ld      c,$00
09D2  C3 86 06  jp      $0686
09D5  08        ex      af,af
09D6  D9        exx
09D7  21 37 41  ld      hl,$4137
09DA  35        dec     (hl)
09DB  4E        ld      c,(hl)
09DC  2B        dec     hl
09DD  2B        dec     hl
09DE  28        jr      z,
09DF  3F        ccf
09E0  7E        ld      a,(hl)
09E1  FE 7B     cp      '{'
09E3  28        jr      z,
09E4  04        inc     b
09E5  FE 86     cp      $86
09E7  20        jr      nz,
09E8  04        inc     b
09E9  2B        dec     hl
09EA  35        dec     (hl)
09EB  20        jr      nz,
09EC  12        ld      (de),a
09ED  0D        dec     c
09EE  CA 00 07  jp      z,$0700
09F1  0D        dec     c
09F2  28        jr      z,
09F3  0B        dec     bc
09F4  2A 35 41  ld      hl,($4135)
09F7  0E 00     ld      c,$00
09F9  CD 11 07  call    $0711
09FC  22 35 41  ld      ($4135),hl
09FF  21 32 41  ld      hl,$4132
0A02  7E        ld      a,(hl)
0A03  07        rlca
0A04  23        inc     hl
0A05  7E        ld      a,(hl)
0A06  28        jr      z,
0A07  1D        dec     e
0A08  CB 7F     $7F
0A0A  20        jr      nz,
0A0B  1A        ld      a,(de)
0A0C  38        jr      c,
0A0D  03        inc     bc
0A0E  3C        inc     a
0A0F  C6 03     ada     a,$03
0A11  3D        dec     a
0A12  3D        dec     a
0A13  E6 07     and     $07
0A15  11 89 00  ld      de,$0089
0A18  0E 08     ld      c,$08
0A1A  06 F0     ld      b,$F0
0A1C  C3 EB 06  jp      $06EB
0A1F  01 00 FE  ld      bc,$FE00
0A22  C3 05 07  jp      $0705
0A25  3F        ccf
0A26  38        jr      c,
0A27  EA 18 E5  jp      pe,$E518
0A2A  A7        and     a
0A2B  C8        ret     z
0A2C  21 70 40  ld      hl,$4070
0A2F  CB DE     $DE
0A31  CB E6     $E6
0A33  57        ld      d,a
0A34  06 01     ld      b,$01
0A36  3A 68 40  ld      a,($4068)
0A39  10        djnz    
0A3A  FE D6     cp      $D6
0A3C  01 30 FA  ld      bc,$FA30
0A3F  21 60 0A  ld      hl,$0A60
0A42  22 48 40  ld      ($4048),hl
0A45  3E 32     ld      a,$32
0A47  92        sub     d
0A48  42        ld      b,d
0A49  0E 00     ld      c,$00
0A4B  1E A5     ld      e,$A5
0A4D  F3        di
0A4E  ED 59     prefix'Y'
0A50  ED 41     prefix'A'
0A52  ED 59     prefix'Y'
0A54  ED 79     prefix'y'
0A56  DB 11     in      a,($11)
0A58  F6 01     or      $01
0A5A  EE 01     xor     $01
0A5C  D3 11     out     ($11),a
0A5E  FB        ei
0A5F  C9        ret
0A60  08        ex      af,af
0A61  D9        exx
0A62  DB 11     in      a,($11)
0A64  F6 01     or      $01
0A66  D3 11     out     ($11),a
0A68  3E A5     ld      a,$A5
0A6A  D3 00     out     ($00),a
0A6C  3E 4B     ld      a,'K'
0A6E  D3 00     out     ($00),a
0A70  21 79 0A  ld      hl,$0A79
0A73  22 48 40  ld      ($4048),hl
0A76  C3 00 07  jp      $0700
0A79  08        ex      af,af
0A7A  D9        exx
0A7B  CF        rst     08
0A7C  23        inc     hl
0A7D  CB 9E     $9E
0A7F  21 84 0A  ld      hl,$0A84
0A82  18        jr      
0A83  EF        rst     28
0A84  08        ex      af,af
0A85  D9        exx
0A86  01 00 EF  ld      bc,$EF00
0A89  C3 05 07  jp      $0705
0A8C  06 D8     ld      b,$D8
0A8E  F3        di
0A8F  DB 11     in      a,($11)
0A91  F6 02     or      $02
0A93  EE 02     xor     $02
0A95  D3 11     out     ($11),a
0A97  FB        ei
0A98  21 70 40  ld      hl,$4070
0A9B  CB F6     $F6
0A9D  21 A9 0A  ld      hl,$0AA9
0AA0  22 4A 40  ld      ($404A),hl
0AA3  0E 01     ld      c,$01
0AA5  78        ld      a,b
0AA6  C3 97 06  jp      $0697
0AA9  08        ex      af,af
0AAA  D9        exx
0AAB  21 B3 0A  ld      hl,$0AB3
0AAE  22 4A 40  ld      ($404A),hl
0AB1  18        jr      
0AB2  C3 08 D9  jp      $D908
0AB5  01 01 BF  ld      bc,$BF01
0AB8  C3 89 0A  jp      $0A89
0ABB  06 00     ld      b,$00
0ABD  CD C2 0A  call    $0AC2
0AC0  18        jr      
0AC1  D6 F3     sub     $F3
0AC3  DB 11     in      a,($11)
0AC5  F6 02     or      $02
0AC7  D3 11     out     ($11),a
0AC9  FB        ei
0ACA  C9        ret
0ACB  CD A9 0B  call    $0BA9
0ACE  32 7B 40  ld      ($407B),a
0AD1  CD 81 0C  call    $0C81
0AD4  F5        push    af
0AD5  FE 10     cp      $10
0AD7  38        jr      c,
0AD8  11 FE 80  ld      de,$80FE
0ADB  30 0D     jr      nc,$0D
0ADD  CD 34 0C  call    $0C34
0AE0  F1        pop     af
0AE1  F5        push    af
0AE2  CD F9 0B  call    $0BF9
0AE5  F1        pop     af
0AE6  F5        push    af
0AE7  CD 0A 0C  call    $0C0A
0AEA  3A 7C 40  ld      a,($407C)
0AED  2A 7D 40  ld      hl,($407D)
0AF0  B4        or      h
0AF1  B5        or      l
0AF2  CF        rst     08
0AF3  28        jr      z,
0AF4  02        ld      (bc),a
0AF5  CB E6     $E6
0AF7  3A 81 40  ld      a,($4081)
0AFA  A7        and     a
0AFB  28        jr      z,
0AFC  02        ld      (bc),a
0AFD  CB EE     $EE
0AFF  F1        pop     af
0B00  C9        ret
0B01  21 BF 40  ld      hl,$40BF
0B04  CB 76     'v'
0B06  C8        ret     z
0B07  21 7C 40  ld      hl,$407C
0B0A  36 5F     ld      (hl),'_'
0B0C  C9        ret
0B0D  21 81 40  ld      hl,$4081
0B10  36 01     ld      (hl),$01
0B12  C9        ret
0B13  21 81 40  ld      hl,$4081
0B16  36 02     ld      (hl),$02
0B18  C9        ret
0B19  CD A9 0B  call    $0BA9
0B1C  CD 81 0B  call    $0B81
0B1F  D8        ret     c
0B20  ED 43     prefix'C'
0B22  A8        xor     b
0B23  40        ld      b,b
0B24  21 72 40  ld      hl,$4072
0B27  CB 5E     '^'
0B29  20        jr      nz,
0B2A  09        add     hl,bc
0B2B  ED 53     prefix'S'
0B2D  89        adc     a,c
0B2E  40        ld      b,b
0B2F  CF        rst     08
0B30  CB F6     $F6
0B32  EB        ex      de,hl
0B33  C9        ret
0B34  2A 89 40  ld      hl,($4089)
0B37  19        add     hl,de
0B38  22 89 40  ld      ($4089),hl
0B3B  EB        ex      de,hl
0B3C  C9        ret
0B3D  CD 9F 0B  call    $0B9F
0B40  21 00 00  ld      hl,$0000
0B43  22 89 40  ld      ($4089),hl
0B46  22 8B 40  ld      ($408B),hl
0B49  21 72 40  ld      hl,$4072
0B4C  CB DE     $DE
0B4E  C9        ret
0B4F  21 72 40  ld      hl,$4072
0B52  CB 5E     '^'
0B54  C8        ret     z
0B55  CB 9E     $9E
0B57  CF        rst     08
0B58  CB F6     $F6
0B5A  CB FE     $FE
0B5C  C9        ret
0B5D  CD A9 0B  call    $0BA9
0B60  EB        ex      de,hl
0B61  2A AA 40  ld      hl,($40AA)
0B64  19        add     hl,de
0B65  22 AA 40  ld      ($40AA),hl
0B68  21 72 40  ld      hl,$4072
0B6B  CB 5E     '^'
0B6D  20        jr      nz,
0B6E  09        add     hl,bc
0B6F  ED 53     prefix'S'
0B71  8B        adc     a,e
0B72  40        ld      b,b
0B73  CF        rst     08
0B74  CB FE     $FE
0B76  EB        ex      de,hl
0B77  C9        ret
0B78  2A 8B 40  ld      hl,($408B)
0B7B  19        add     hl,de
0B7C  22 8B 40  ld      ($408B),hl
0B7F  EB        ex      de,hl
0B80  C9        ret
0B81  EB        ex      de,hl
0B82  2A A8 40  ld      hl,($40A8)
0B85  A7        and     a
0B86  ED 5A     prefix'Z'
0B88  FA 98 0B  jp      m,$0B98
0B8B  44        ld      b,h
0B8C  4D        ld      c,l
0B8D  2A AB 00  ld      hl,($00AB)
0B90  A7        and     a
0B91  ED 42     prefix'B'
0B93  D0        ret     nc
0B94  3E 16     ld      a,$16
0B96  18        jr      
0B97  02        ld      (bc),a
0B98  3E 15     ld      a,$15
0B9A  CD 68 26  call    $2668
0B9D  37        scf
0B9E  C9        ret
0B9F  CD A9 0B  call    $0BA9
0BA2  3A 70 40  ld      a,($4070)
0BA5  A7        and     a
0BA6  20        jr      nz,
0BA7  F7        rst     30
0BA8  C9        ret
0BA9  F5        push    af
0BAA  3A 6F 40  ld      a,($406F)
0BAD  A7        and     a
0BAE  20        jr      nz,
0BAF  FA F1 C9  jp      m,$C9F1
0BB2  CD BB 0B  call    $0BBB
0BB5  21 71 40  ld      hl,$4071
0BB8  CB E6     $E6
0BBA  C9        ret
0BBB  21 FB 01  ld      hl,$01FB
0BBE  22 4E 40  ld      ($404E),hl
0BC1  21 00 00  ld      hl,$0000
0BC4  22 6F 40  ld      ($406F),hl
0BC7  22 85 40  ld      ($4085),hl
0BCA  CD 51 02  call    $0251
0BCD  21 00 00  ld      hl,$0000
0BD0  2D        dec     l
0BD1  20        jr      nz,
0BD2  FD 25     prefix$25
0BD4  20        jr      nz,
0BD5  FA AF 32  jp      m,$32AF
0BD8  72        ld      (hl),d
0BD9  40        ld      b,b
0BDA  FB        ei
0BDB  21 00 40  ld      hl,$4000
0BDE  46        ld      b,(hl)
0BDF  77        ld      (hl),a
0BE0  05        dec     b
0BE1  20        jr      nz,
0BE2  05        dec     b
0BE3  3E 5A     ld      a,'Z'
0BE5  CD 16 09  call    $0916
0BE8  C3 DC 0E  jp      $0EDC
0BEB  22 79 40  ld      ($4079),hl
0BEE  CD 81 0B  call    $0B81
0BF1  ED 43     prefix'C'
0BF3  A8        xor     b
0BF4  40        ld      b,b
0BF5  CF        rst     08
0BF6  CB C6     $C6
0BF8  C9        ret
0BF9  1E 06     ld      e,$06
0BFB  CD AA 0C  call    $0CAA
0BFE  F3        di
0BFF  CD 6E 0C  call    $0C6E
0C02  32 8D 40  ld      ($408D),a
0C05  CF        rst     08
0C06  CB D6     $D6
0C08  FB        ei
0C09  C9        ret
0C0A  CD A8 0C  call    $0CA8
0C0D  3A 82 40  ld      a,($4082)
0C10  E6 0F     and     $0F
0C12  28        jr      z,
0C13  19        add     hl,de
0C14  FE 05     cp      $05
0C16  38        jr      c,
0C17  04        inc     b
0C18  3E 01     ld      a,$01
0C1A  18        jr      
0C1B  11 3D 07  ld      de,$073D
0C1E  07        rlca
0C1F  07        rlca
0C20  47        ld      b,a
0C21  7E        ld      a,(hl)
0C22  E6 38     and     $38
0C24  0F        rrca
0C25  0F        rrca
0C26  0F        rrca
0C27  80        add     a,b
0C28  1E 02     ld      e,$02
0C2A  CD AA 0C  call    $0CAA
0C2D  32 83 40  ld      ($4083),a
0C30  CF        rst     08
0C31  CB DE     $DE
0C33  C9        ret
0C34  57        ld      d,a
0C35  21 71 40  ld      hl,$4071
0C38  4E        ld      c,(hl)
0C39  3E D8     ld      a,$D8
0C3B  CB 49     'I'
0C3D  20        jr      nz,
0C3E  28        jr      z,
0C3F  3A 82 40  ld      a,($4082)
0C42  E6 0F     and     $0F
0C44  28        jr      z,
0C45  21 06 02  ld      hl,$0206
0C48  CB 41     'A'
0C4A  20        jr      nz,
0C4B  0E 7A     ld      c,'z'
0C4D  CD A8 0C  call    $0CA8
0C50  E6 C0     and     $C0
0C52  07        rlca
0C53  07        rlca
0C54  1E 04     ld      e,$04
0C56  CD AA 0C  call    $0CAA
0C59  46        ld      b,(hl)
0C5A  21 8F 40  ld      hl,$408F
0C5D  7E        ld      a,(hl)
0C5E  70        ld      (hl),b
0C5F  E6 0F     and     $0F
0C61  20        jr      nz,
0C62  02        ld      (bc),a
0C63  3E 09     ld      a,$09
0C65  80        add     a,b
0C66  1F        rra
0C67  32 8E 40  ld      ($408E),a
0C6A  CF        rst     08
0C6B  CB CE     $CE
0C6D  C9        ret
0C6E  21 84 40  ld      hl,$4084
0C71  46        ld      b,(hl)
0C72  77        ld      (hl),a
0C73  90        sub     b
0C74  38        jr      c,
0C75  05        dec     b
0C76  FE 32     cp      $32
0C78  D8        ret     c
0C79  D6 64     sub     'd'
0C7B  FE CE     cp      $CE
0C7D  D0        ret     nc
0C7E  C6 64     ada     a,'d'
0C80  C9        ret
0C81  FE 10     cp      $10
0C83  D8        ret     c
0C84  FE 1C     cp      $1C
0C86  D0        ret     nc
0C87  F5        push    af
0C88  2A A0 40  ld      hl,($40A0)
0C8B  D6 10     sub     $10
0C8D  28        jr      z,
0C8E  0B        dec     bc
0C8F  F5        push    af
0C90  7E        ld      a,(hl)
0C91  FE FF     cp      $FF
0C93  23        inc     hl
0C94  20        jr      nz,
0C95  FA F1 3D  jp      m,$3DF1
0C98  20        jr      nz,
0C99  F5        push    af
0C9A  F1        pop     af
0C9B  FE 18     cp      $18
0C9D  D0        ret     nc
0C9E  7E        ld      a,(hl)
0C9F  CB 7F     $7F
0CA1  20        jr      nz,
0CA2  01 23 22  ld      bc,$2223
0CA5  7D        ld      a,l
0CA6  40        ld      b,b
0CA7  C9        ret
0CA8  1E 00     ld      e,$00
0CAA  21 92 40  ld      hl,$4092
0CAD  16 00     ld      d,$00
0CAF  19        add     hl,de
0CB0  5E        ld      e,(hl)
0CB1  23        inc     hl
0CB2  66        ld      h,(hl)
0CB3  6B        ld      l,e
0CB4  5F        ld      e,a
0CB5  19        add     hl,de
0CB6  7E        ld      a,(hl)
0CB7  C9        ret
0CB8  CF        rst     08
0CB9  7E        ld      a,(hl)
0CBA  E6 3F     and     $3F
0CBC  C0        ret     nz
0CBD  CB 76     'v'
0CBF  28        jr      z,
0CC0  17        rla
0CC1  ED 4B     prefix'K'
0CC3  89        adc     a,c
0CC4  40        ld      b,b
0CC5  ED 5B     prefix'['
0CC7  3A 41 F3  ld      a,($F341)
0CCA  2A 3D 41  ld      hl,($413D)
0CCD  CD F6 0C  call    $0CF6
0CD0  38        jr      c,
0CD1  06 22     ld      b,$22
0CD3  3D        dec     a
0CD4  41        ld      b,c
0CD5  CF        rst     08
0CD6  CB B6     $B6
0CD8  FB        ei
0CD9  CF        rst     08
0CDA  CB 7E     '~'
0CDC  C8        ret     z
0CDD  ED 4B     prefix'K'
0CDF  8B        adc     a,e
0CE0  40        ld      b,b
0CE1  ED 5B     prefix'['
0CE3  4D        ld      c,l
0CE4  41        ld      b,c
0CE5  F3        di
0CE6  2A 50 41  ld      hl,($4150)
0CE9  CD F6 0C  call    $0CF6
0CEC  38        jr      c,
0CED  06 22     ld      b,$22
0CEF  50        ld      d,b
0CF0  41        ld      b,c
0CF1  CF        rst     08
0CF2  CB BE     $BE
0CF4  FB        ei
0CF5  C9        ret
0CF6  2B        dec     hl
0CF7  D5        push    de
0CF8  EB        ex      de,hl
0CF9  21 02 00  ld      hl,$0002
0CFC  D7        rst     10
0CFD  EB        ex      de,hl
0CFE  D1        pop     de
0CFF  D8        ret     c
0D00  7A        ld      a,d
0D01  A8        xor     b
0D02  07        rlca
0D03  D8        ret     c
0D04  CB 78     'x'
0D06  28        jr      z,
0D07  05        dec     b
0D08  ED 42     prefix'B'
0D0A  23        inc     hl
0D0B  AF        xor     a
0D0C  C9        ret
0D0D  09        add     hl,bc
0D0E  18        jr      
0D0F  FA ED 4B  jp      m,$4BED
0D12  6F        ld      l,a
0D13  40        ld      b,b
0D14  2A 85 40  ld      hl,($4085)
0D17  A7        and     a
0D18  ED 42     prefix'B'
0D1A  21 88 40  ld      hl,$4088
0D1D  7E        ld      a,(hl)
0D1E  20        jr      nz,
0D1F  26 05     ld      h,$05
0D21  04        inc     b
0D22  C0        ret     nz
0D23  0D        dec     c
0D24  0C        inc     c
0D25  20        jr      nz,
0D26  1F        rra
0D27  A7        and     a
0D28  20        jr      nz,
0D29  09        add     hl,bc
0D2A  3A 71 40  ld      a,($4071)
0D2D  CB 67     'g'
0D2F  C4 25 07  call    nz,$0725
0D32  C9        ret
0D33  3A 87 40  ld      a,($4087)
0D36  E6 03     and     $03
0D38  C0        ret     nz
0D39  35        dec     (hl)
0D3A  C0        ret     nz
0D3B  CD BB 0A  call    $0ABB
0D3E  3E 01     ld      a,$01
0D40  CD 6E 0C  call    $0C6E
0D43  C3 A9 09  jp      $09A9
0D46  ED 43     prefix'C'
0D48  85        add     a,l
0D49  40        ld      b,b
0D4A  A7        and     a
0D4B  28        jr      z,
0D4C  03        inc     bc
0D4D  3E 01     ld      a,$01
0D4F  77        ld      (hl),a
0D50  CF        rst     08
0D51  79        ld      a,c
0D52  48        ld      c,b
0D53  0F        rrca
0D54  30 3F     jr      nc,$3F
0D56  3E 4A     ld      a,'J'
0D58  A1        and     c
0D59  ED 5B     prefix'['
0D5B  79        ld      a,c
0D5C  40        ld      b,b
0D5D  28        jr      z,
0D5E  30 F3     jr      nc,$F3
0D60  ED 4B     prefix'K'
0D62  3D        dec     a
0D63  41        ld      b,c
0D64  79        ld      a,c
0D65  B0        or      b
0D66  28        jr      z,
0D67  1F        rra
0D68  EB        ex      de,hl
0D69  3A 3B 41  ld      a,($413B)
0D6C  AC        xor     h
0D6D  07        rlca
0D6E  30 19     jr      nc,$19
0D70  CB 7C     '|'
0D72  20        jr      nz,
0D73  05        dec     b
0D74  EB        ex      de,hl
0D75  AF        xor     a
0D76  6F        ld      l,a
0D77  67        ld      h,a
0D78  D7        rst     10
0D79  A7        and     a
0D7A  ED 4A     prefix'J'
0D7C  28        jr      z,
0D7D  09        add     hl,bc
0D7E  FA 87 0D  jp      m,$0D87
0D81  22 3D 41  ld      ($413D),hl
0D84  CF        rst     08
0D85  CB 86     $86
0D87  FB        ei
0D88  C9        ret
0D89  CB 7C     '|'
0D8B  28        jr      z,
0D8C  EC 18 E5  call    pe,$E518
0D8F  CB 86     $86
0D91  EB        ex      de,hl
0D92  C3 B2 07  jp      $07B2
0D95  0F        rrca
0D96  30 3F     jr      nc,$3F
0D98  EB        ex      de,hl
0D99  21 88 40  ld      hl,$4088
0D9C  7E        ld      a,(hl)
0D9D  A7        and     a
0D9E  28        jr      z,
0D9F  29        add     hl,jl
0DA0  3E 2C     ld      a,$2C
0DA2  A1        and     c
0DA3  C0        ret     nz
0DA4  EB        ex      de,hl
0DA5  CB 8E     $8E
0DA7  3A 8E 40  ld      a,($408E)
0DAA  F5        push    af
0DAB  07        rlca
0DAC  DC C2 0A  call    c,$0AC2
0DAF  F1        pop     af
0DB0  C3 16 09  jp      $0916
0DB3  7E        ld      a,(hl)
0DB4  E6 42     and     'B'
0DB6  C0        ret     nz
0DB7  3E 02     ld      a,$02
0DB9  DF        rst     18
0DBA  23        inc     hl
0DBB  CB 8E     $8E
0DBD  28        jr      z,
0DBE  07        rlca
0DBF  CB 7E     '~'
0DC1  CB FE     $FE
0DC3  C8        ret     z
0DC4  CB CE     $CE
0DC6  CB BE     $BE
0DC8  C9        ret
0DC9  3E 5A     ld      a,'Z'
0DCB  A1        and     c
0DCC  C0        ret     nz
0DCD  36 FF     ld      (hl),$FF
0DCF  2E 71     ld      l,'q'
0DD1  CB 4E     'N'
0DD3  C0        ret     nz
0DD4  C3 8C 0A  jp      $0A8C
0DD7  0F        rrca
0DD8  30 0C     jr      nc,$0C
0DDA  3E 59     ld      a,'Y'
0DDC  A1        and     c
0DDD  C0        ret     nz
0DDE  CB 96     $96
0DE0  3A 8D 40  ld      a,($408D)
0DE3  C3 A9 09  jp      $09A9
0DE6  0F        rrca
0DE7  30 1F     jr      nc,$1F
0DE9  3E 7F     ld      a,$7F
0DEB  A1        and     c
0DEC  C0        ret     nz
0DED  CB 9E     $9E
0DEF  3A 83 40  ld      a,($4083)
0DF2  CD 2A 0A  call    $0A2A
0DF5  21 71 40  ld      hl,$4071
0DF8  CB 4E     'N'
0DFA  28        jr      z,
0DFB  B7        or      a
0DFC  3E D7     ld      a,$D7
0DFE  CD 16 09  call    $0916
0E01  06 09     ld      b,$09
0E03  CD 5A 0C  call    $0C5A
0E06  18        jr      
0E07  CC 0F D2  call    z,$D20F
0E0A  97        sub     a
0E0B  0E 21     ld      c,$21
0E0D  7C        ld      a,h
0E0E  40        ld      b,b
0E0F  7E        ld      a,(hl)
0E10  36 00     ld      (hl),$00
0E12  B7        or      a
0E13  28        jr      z,
0E14  06 CF     ld      b,$CF
0E16  CB A6     $A6
0E18  C3 D4 0A  jp      $0AD4
0E1B  2A 7D 40  ld      hl,($407D)
0E1E  7E        ld      a,(hl)
0E1F  FE FF     cp      $FF
0E21  28        jr      z,
0E22  56        ld      d,(hl)
0E23  CB 7E     '~'
0E25  20        jr      nz,
0E26  0B        dec     bc
0E27  3E 1B     ld      a,$1B
0E29  A1        and     c
0E2A  C0        ret     nz
0E2B  7E        ld      a,(hl)
0E2C  23        inc     hl
0E2D  22 7D 40  ld      ($407D),hl
0E30  18        jr      
0E31  E6 3E     and     $3E
0E33  02        ld      (bc),a
0E34  A1        and     c
0E35  C0        ret     nz
0E36  11 00 00  ld      de,$0000
0E39  4E        ld      c,(hl)
0E3A  26 00     ld      h,$00
0E3C  3E 07     ld      a,$07
0E3E  CB 71     'q'
0E40  20        jr      nz,
0E41  2C        inc     l
0E42  3E 0F     ld      a,$0F
0E44  A1        and     c
0E45  3C        inc     a
0E46  3C        inc     a
0E47  CD 1E 13  call    $131E
0E4A  19        add     hl,de
0E4B  EB        ex      de,hl
0E4C  CB 69     'i'
0E4E  C4 01 0B  call    nz,$0B01
0E51  CB 61     'a'
0E53  2A 7D 40  ld      hl,($407D)
0E56  23        inc     hl
0E57  22 7D 40  ld      ($407D),hl
0E5A  20        jr      nz,
0E5B  DD ED     prefix$ED
0E5D  53        ld      d,e
0E5E  79        ld      a,c
0E5F  40        ld      b,b
0E60  CD A7 06  call    $06A7
0E63  2A 7F 40  ld      hl,($407F)
0E66  19        add     hl,de
0E67  22 7F 40  ld      ($407F),hl
0E6A  CF        rst     08
0E6B  CB C6     $C6
0E6D  C9        ret
0E6E  A1        and     c
0E6F  CB 59     'Y'
0E71  28        jr      z,
0E72  03        inc     bc
0E73  25        dec     h
0E74  ED 44     prefix'D'
0E76  6F        ld      l,a
0E77  18        jr      
0E78  D1        pop     de
0E79  11 00 00  ld      de,$0000
0E7C  CF        rst     08
0E7D  CB A6     $A6
0E7F  ED 53     prefix'S'
0E81  7D        ld      a,l
0E82  40        ld      b,b
0E83  CB 6E     'n'
0E85  C0        ret     nz
0E86  CB F6     $F6
0E88  2A 7F 40  ld      hl,($407F)
0E8B  EB        ex      de,hl
0E8C  22 7F 40  ld      ($407F),hl
0E8F  2A 89 40  ld      hl,($4089)
0E92  19        add     hl,de
0E93  22 89 40  ld      ($4089),hl
0E96  C9        ret
0E97  0F        rrca
0E98  30 22     jr      nc,$22
0E9A  3E 4A     ld      a,'J'
0E9C  A1        and     c
0E9D  C0        ret     nz
0E9E  CB AE     $AE
0EA0  ED 4B     prefix'K'
0EA2  7F        ld      a,a
0EA3  40        ld      b,b
0EA4  21 81 40  ld      hl,$4081
0EA7  5E        ld      e,(hl)
0EA8  16 00     ld      d,$00
0EAA  72        ld      (hl),d
0EAB  CD A7 06  call    $06A7
0EAE  ED 53     prefix'S'
0EB0  7F        ld      a,a
0EB1  40        ld      b,b
0EB2  09        add     hl,bc
0EB3  CD B2 07  call    $07B2
0EB6  3A 7B 40  ld      a,($407B)
0EB9  C3 CE 0A  jp      $0ACE
0EBC  0F        rrca
0EBD  30 0F     jr      nc,$0F
0EBF  3E 4A     ld      a,'J'
0EC1  A1        and     c
0EC2  C0        ret     nz
0EC3  CB B6     $B6
0EC5  11 00 00  ld      de,$0000
0EC8  CD 88 0E  call    $0E88
0ECB  C3 B2 07  jp      $07B2
0ECE  0F        rrca
0ECF  D0        ret     nc
0ED0  3E 2C     ld      a,$2C
0ED2  A1        and     c
0ED3  C0        ret     nz
0ED4  CB BE     $BE
0ED6  2A 8B 40  ld      hl,($408B)
0ED9  C3 8B 08  jp      $088B
0EDC  2A AB 00  ld      hl,($00AB)
0EDF  11 18 00  ld      de,$0018
0EE2  D7        rst     10
0EE3  44        ld      b,h
0EE4  4D        ld      c,l
0EE5  CD 20 0B  call    $0B20
0EE8  21 F4 FF  ld      hl,$FFF4
0EEB  CD 1E 0F  call    $0F1E
0EEE  6C        ld      l,h
0EEF  28        jr      z,
0EF0  07        rlca
0EF1  CD 1E 0F  call    $0F1E
0EF4  38        jr      c,
0EF5  09        add     hl,bc
0EF6  20        jr      nz,
0EF7  F9        ld      sp,phl
0EF8  CD 1E 0F  call    $0F1E
0EFB  38        jr      c,
0EFC  02        ld      (bc),a
0EFD  28        jr      z,
0EFE  F9        ld      sp,phl
0EFF  01 00 00  ld      bc,$0000
0F02  11 0C 00  ld      de,$000C
0F05  CD 20 0B  call    $0B20
0F08  CD 0B 0F  call    $0F0B
0F0B  3E 04     ld      a,$04
0F0D  CD A9 09  call    $09A9
0F10  CD 9F 0B  call    $0B9F
0F13  3E 04     ld      a,$04
0F15  DF        rst     18
0F16  20        jr      nz,
0F17  F3        di
0F18  3E 01     ld      a,$01
0F1A  32 84 40  ld      ($4084),a
0F1D  C9        ret
0F1E  CD 19 0B  call    $0B19
0F21  CD A9 0B  call    $0BA9
0F24  79        ld      a,c
0F25  B0        or      b
0F26  37        scf
0F27  C8        ret     z
0F28  3E 02     ld      a,$02
0F2A  DF        rst     18
0F2B  C9        ret
0F2C  3E 08     ld      a,$08
0F2E  DF        rst     18
0F2F  21 90 40  ld      hl,$4090
0F32  11 72 40  ld      de,$4072
0F35  28        jr      z,
0F36  06 36     ld      b,$36
0F38  FF        rst     38
0F39  EB        ex      de,hl
0F3A  CB 96     $96
0F3C  C9        ret
0F3D  3A 4F 41  ld      a,($414F)
0F40  47        ld      b,a
0F41  7E        ld      a,(hl)
0F42  A7        and     a
0F43  C8        ret     z
0F44  3C        inc     a
0F45  20        jr      nz,
0F46  05        dec     b
0F47  36 9C     ld      (hl),$9C
0F49  23        inc     hl
0F4A  70        ld      (hl),b
0F4B  C9        ret
0F4C  23        inc     hl
0F4D  7E        ld      a,(hl)
0F4E  90        sub     b
0F4F  C8        ret     z
0F50  70        ld      (hl),b
0F51  2B        dec     hl
0F52  86        add     a,(hl)
0F53  77        ld      (hl),a
0F54  30 19     jr      nc,$19
0F56  21 AF 00  ld      hl,$00AF
0F59  46        ld      b,(hl)
0F5A  4F        ld      c,a
0F5B  CD F2 13  call    $13F2
0F5E  7D        ld      a,l
0F5F  D6 31     sub     $31
0F61  38        jr      c,
0F62  02        ld      (bc),a
0F63  2E 30     ld      l,$30
0F65  79        ld      a,c
0F66  95        sub     l
0F67  10        djnz    
0F68  FD A7     prefix$A7
0F6A  C0        ret     nz
0F6B  EB        ex      de,hl
0F6C  CB D6     $D6
0F6E  C9        ret
0F6F  3C        inc     a
0F70  C0        ret     nz
0F71  77        ld      (hl),a
0F72  C9        ret
0F73  01 0D 40  ld      bc,$400D
0F76  CD 67 10  call    $1067
0F79  07        rlca
0F7A  21 BD 40  ld      hl,$40BD
0F7D  30 02     jr      nc,$02
0F7F  CB D6     $D6
0F81  CB 10     rl      b$10
0F83  30 F1     jr      nc,$F1
0F85  11 23 41  ld      de,$4123
0F88  1A        ld      a,(de)
0F89  4F        ld      c,a
0F8A  78        ld      a,b
0F8B  12        ld      (de),a
0F8C  A9        xor     c
0F8D  A1        and     c
0F8E  CB 4F     'O'
0F90  28        jr      z,
0F91  02        ld      (bc),a
0F92  CB 96     $96
0F94  CD F6 0F  call    $0FF6
0F97  21 22 41  ld      hl,$4122
0F9A  28        jr      z,
0F9B  17        rla
0F9C  3E 9C     ld      a,$9C
0F9E  77        ld      (hl),a
0F9F  7A        ld      a,d
0FA0  2B        dec     hl
0FA1  BE        cp      (hl)
0FA2  77        ld      (hl),a
0FA3  2B        dec     hl
0FA4  46        ld      b,(hl)
0FA5  36 19     ld      (hl),$19
0FA7  20        jr      nz,
0FA8  04        inc     b
0FA9  04        inc     b
0FAA  05        dec     b
0FAB  20        jr      nz,
0FAC  12        ld      (de),a
0FAD  CD C1 0F  call    $0FC1
0FB0  CB BF     $BF
0FB2  C9        ret
0FB3  7E        ld      a,(hl)
0FB4  3C        inc     a
0FB5  20        jr      nz,
0FB6  08        ex      af,af
0FB7  2B        dec     hl
0FB8  7E        ld      a,(hl)
0FB9  CD C1 0F  call    $0FC1
0FBC  CB 7F     $7F
0FBE  C8        ret     z
0FBF  AF        xor     a
0FC0  C9        ret
0FC1  21 23 41  ld      hl,$4123
0FC4  CB 46     'F'
0FC6  28        jr      z,
0FC7  04        inc     b
0FC8  CB 4E     'N'
0FCA  20        jr      nz,
0FCB  12        ld      (de),a
0FCC  D6 08     sub     $08
0FCE  21 BD 40  ld      hl,$40BD
0FD1  CB 56     'V'
0FD3  20        jr      nz,
0FD4  02        ld      (bc),a
0FD5  D6 38     sub     $38
0FD7  1E 08     ld      e,$08
0FD9  CD AA 0C  call    $0CAA
0FDC  18        jr      
0FDD  16 FE     ld      d,$FE
0FDF  70        ld      (hl),b
0FE0  30 EA     jr      nc,$EA
0FE2  2A 9C 40  ld      hl,($409C)
0FE5  4E        ld      c,(hl)
0FE6  06 00     ld      b,$00
0FE8  23        inc     hl
0FE9  ED B1     prefix$B1
0FEB  20        jr      nz,
0FEC  D2 2A 9E  jp      nc,$9E2A
0FEF  40        ld      b,b
0FF0  A7        and     a
0FF1  ED 42     prefix'B'
0FF3  7E        ld      a,(hl)
0FF4  A7        and     a
0FF5  C9        ret
0FF6  3E 78     ld      a,'x'
0FF8  CB B7     $B7
0FFA  F5        push    af
0FFB  21 24 41  ld      hl,$4124
0FFE  01 0D 01  ld      bc,$010D
1001  CD 67 10  call    $1067
1004  E6 7F     and     $7F
1006  5F        ld      e,a
1007  56        ld      d,(hl)
1008  77        ld      (hl),a
1009  BA        cp      d
100A  28        jr      z,
100B  23        inc     hl
100C  AA        xor     d
100D  A3        and     e
100E  28        jr      z,
100F  35        dec     (hl)
1010  D5        push    de
1011  CD 4E 10  call    $104E
1014  D1        pop     de
1015  20        jr      nz,
1016  18        jr      
1017  5F        ld      e,a
1018  F1        pop     af
1019  CB F7     $F7
101B  F5        push    af
101C  CB 7F     $7F
101E  20        jr      nz,
101F  1B        dec     de
1020  BB        cp      e
1021  72        ld      (hl),d
1022  20        jr      nz,
1023  04        inc     b
1024  CB FB     $FB
1026  18        jr      
1027  04        inc     b
1028  FE 78     cp      'x'
102A  20        jr      nz,
102B  1F        rra
102C  F1        pop     af
102D  7B        ld      a,e
102E  F5        push    af
102F  23        inc     hl
1030  CB 00     rlc     b$00
1032  30 CD     jr      nc,$CD
1034  F1        pop     af
1035  CB 77     'w'
1037  20        jr      nz,
1038  BF        cp      a
1039  18        jr      
103A  11 CB BF  ld      de,$BFCB
103D  BB        cp      e
103E  20        jr      nz,
103F  E1        pop     hl
1040  F1        pop     af
1041  7B        ld      a,e
1042  53        ld      d,e
1043  A7        and     a
1044  C9        ret
1045  AF        xor     a
1046  32 22 41  ld      ($4122),a
1049  18        jr      
104A  E4 F1 AF  call    po,$AFF1
104D  C9        ret
104E  16 07     ld      d,$07
1050  14        inc     d
1051  CB 1F     rr      e$1F
1053  30 FB     jr      nc,$FB
1055  3E 00     ld      a,$00
1057  C0        ret     nz
1058  78        ld      a,b
1059  1E FF     ld      e,$FF
105B  1C        inc     e
105C  0F        rrca
105D  30 FC     jr      nc,$FC
105F  7A        ld      a,d
1060  07        rlca
1061  07        rlca
1062  07        rlca
1063  B3        or      e
1064  57        ld      d,a
1065  BA        cp      d
1066  C9        ret
1067  1E 05     ld      e,$05
1069  78        ld      a,b
106A  F3        di
106B  D3 10     out     ($10),a
106D  ED 78     prefix'x'
106F  2F        cpl
1070  E5        push    hl
1071  21 BD 40  ld      hl,$40BD
1074  CB 76     'v'
1076  E1        pop     hl
1077  20        jr      nz,
1078  01 FB BA  ld      bc,$BAFB
107B  57        ld      d,a
107C  20        jr      nz,
107D  E9        jp      (hl)
107E  1D        dec     e
107F  20        jr      nz,
1080  E8        ret     pe
1081  C9        ret
1082  5F        ld      e,a
1083  21 20 41  ld      hl,$4120
1086  7E        ld      a,(hl)
1087  A7        and     a
1088  28        jr      z,
1089  01 35 23  ld      bc,$2335
108C  23        inc     hl
108D  7E        ld      a,(hl)
108E  A7        and     a
108F  C8        ret     z
1090  3C        inc     a
1091  C8        ret     z
1092  34        inc     (hl)
1093  C9        ret
1094  26 00     ld      h,$00
1096  01 0C 01  ld      bc,$010C
1099  CD 67 10  call    $1067
109C  3E FB     ld      a,$FB
109E  A0        and     b
109F  7A        ld      a,d
10A0  20        jr      nz,
10A1  02        ld      (bc),a
10A2  E6 17     and     $17
10A4  E6 1F     and     $1F
10A6  28        jr      z,
10A7  0D        dec     c
10A8  CD 4E 10  call    $104E
10AB  C0        ret     nz
10AC  CB B2     $B2
10AE  CB FA     $FA
10B0  AF        xor     a
10B1  25        dec     h
10B2  24        inc     h
10B3  62        ld      h,d
10B4  C0        ret     nz
10B5  CB 00     rlc     b$00
10B7  30 E0     jr      nc,$E0
10B9  7C        ld      a,h
10BA  A7        and     a
10BB  C9        ret
10BC  CD 94 10  call    $1094
10BF  20        jr      nz,
10C0  FB        ei
10C1  C9        ret
10C2  5F        ld      e,a
10C3  FE 10     cp      $10
10C5  38        jr      c,
10C6  39        add     hl,sp
10C7  E6 38     and     $38
10C9  0F        rrca
10CA  0F        rrca
10CB  0F        rrca
10CC  CD F7 10  call    $10F7
10CF  50        ld      d,b
10D0  7B        ld      a,e
10D1  E6 07     and     $07
10D3  CD F7 10  call    $10F7
10D6  0E 0D     ld      c,$0D
10D8  CB 7B     '{'
10DA  28        jr      z,
10DB  0B        dec     bc
10DC  0E 0C     ld      c,$0C
10DE  CB 73     's'
10E0  28        jr      z,
10E1  05        dec     b
10E2  0E 11     ld      c,$11
10E4  78        ld      a,b
10E5  2F        cpl
10E6  47        ld      b,a
10E7  D5        push    de
10E8  CD 67 10  call    $1067
10EB  D1        pop     de
10EC  CB 7B     '{'
10EE  28        jr      z,
10EF  05        dec     b
10F0  CB 73     's'
10F2  28        jr      z,
10F3  01 2F A2  ld      bc,$A22F
10F6  C9        ret
10F7  3C        inc     a
10F8  06 80     ld      b,$80
10FA  CB 00     rlc     b$00
10FC  3D        dec     a
10FD  20        jr      nz,
10FE  FB        ei
10FF  C9        ret
1100  07        rlca
1101  07        rlca
1102  07        rlca
1103  07        rlca
1104  57        ld      d,a
1105  DB 0C     in      a,($0C)
1107  2F        cpl
1108  A2        and     d
1109  C9        ret
110A  06 11     ld      b,$11
110C  21 AC 40  ld      hl,$40AC
110F  C3 03 27  jp      $2703
1112  3A BD 40  ld      a,($40BD)
1115  CB 7F     $7F
1117  06 0F     ld      b,$0F
1119  20        jr      nz,
111A  2D        dec     l
111B  CB 57     'W'
111D  28        jr      z,
111E  02        ld      (bc),a
111F  CB E8     $E8
1121  3A 6B 40  ld      a,($406B)
1124  07        rlca
1125  2F        cpl
1126  32 BA 40  ld      ($40BA),a
1129  3A BE 40  ld      a,($40BE)
112C  0F        rrca
112D  0F        rrca
112E  0F        rrca
112F  0F        rrca
1130  E6 0F     and     $0F
1132  2F        cpl
1133  32 B9 40  ld      ($40B9),a
1136  3A BF 40  ld      a,($40BF)
1139  07        rlca
113A  E6 0E     and     $0E
113C  28        jr      z,
113D  04        inc     b
113E  FE 0E     cp      $0E
1140  20        jr      nz,
1141  02        ld      (bc),a
1142  3E 01     ld      a,$01
1144  2F        cpl
1145  32 B8 40  ld      ($40B8),a
1148  21 69 40  ld      hl,$4069
114B  7E        ld      a,(hl)
114C  A7        and     a
114D  28        jr      z,
114E  0C        inc     c
114F  35        dec     (hl)
1150  CB F0     $F0
1152  23        inc     hl
1153  CB 5E     '^'
1155  20        jr      nz,
1156  04        inc     b
1157  CB B0     $B0
1159  CB F8     $F8
115B  21 BB 40  ld      hl,$40BB
115E  78        ld      a,b
115F  D3 05     out     ($05),a
1161  7E        ld      a,(hl)
1162  2F        cpl
1163  D3 04     out     ($04),a
1165  2B        dec     hl
1166  05        dec     b
1167  CB 60     '`'
1169  28        jr      z,
116A  F3        di
116B  C9        ret
116C  A7        and     a
116D  C8        ret     z
116E  CD A9 0B  call    $0BA9
1171  32 7B 40  ld      ($407B),a
1174  CD 06 14  call    $1406
1177  22 73 40  ld      ($4073),hl
117A  CB 7F     $7F
117C  C2 4B 12  jp      nz,$124B
117F  FE 0D     cp      $0D
1181  30 66     jr      nc,'f'
1183  D6 0D     sub     $0D
1185  3C        inc     a
1186  C8        ret     z
1187  3C        inc     a
1188  28        jr      z,
1189  1C        inc     e
118A  3C        inc     a
118B  28        jr      z,
118C  24        inc     h
118D  3C        inc     a
118E  28        jr      z,
118F  2E 3C     ld      l,$3C
1191  28        jr      z,
1192  30 C6     jr      nc,$C6
1194  03        inc     bc
1195  28        jr      z,
1196  38        jr      c,
1197  3C        inc     a
1198  28        jr      z,
1199  3C        inc     a
119A  3C        inc     a
119B  3C        inc     a
119C  28        jr      z,
119D  41        ld      b,c
119E  3C        inc     a
119F  28        jr      z,
11A0  43        ld      b,e
11A1  3E 35     ld      a,$35
11A3  C3 68 26  jp      $2668
11A6  CD 59 14  call    $1459
11A9  30 30     jr      nc,$30
11AB  CD 9F 0B  call    $0B9F
11AE  C3 1C 0B  jp      $0B1C
11B1  2A CC 40  ld      hl,($40CC)
11B4  22 C0 40  ld      ($40C0),hl
11B7  ED 5B     prefix'['
11B9  73        ld      (hl),e
11BA  40        ld      b,b
11BB  D7        rst     10
11BC  18        jr      
11BD  ED CD     prefix$CD
11BF  DC 13 18  call    c,$1813
11C2  E8        ret     pe
11C3  CD DC 13  call    $13DC
11C6  CD 1C 0B  call    $0B1C
11C9  CD F2 13  call    $13F2
11CC  C3 60 0B  jp      $0B60
11CF  CD 97 14  call    $1497
11D2  20        jr      nz,
11D3  F8        ret     m
11D4  18        jr      
11D5  05        dec     b
11D6  CD 92 14  call    $1492
11D9  20        jr      nz,
11DA  F1        pop     af
11DB  3E 02     ld      a,$02
11DD  18        jr      
11DE  C4 21 F4  call    nz,$F421
11E1  FF        rst     38
11E2  18        jr      
11E3  E8        ret     pe
11E4  21 0C 00  ld      hl,$000C
11E7  18        jr      
11E8  E3        ex      (sp),hl
11E9  21 72 40  ld      hl,$4072
11EC  CB 4E     'N'
11EE  28        jr      z,
11EF  0D        dec     c
11F0  CB 46     'F'
11F2  20        jr      nz,
11F3  09        add     hl,bc
11F4  CB C6     $C6
11F6  F5        push    af
11F7  3E 01     ld      a,$01
11F9  CD 68 26  call    $2668
11FC  F1        pop     af
11FD  CD 2E 13  call    $132E
1200  D5        push    de
1201  CD 81 0B  call    $0B81
1204  EB        ex      de,hl
1205  D1        pop     de
1206  D8        ret     c
1207  FE 18     cp      $18
1209  38        jr      c,
120A  13        inc     de
120B  FE 1C     cp      $1C
120D  30 0F     jr      nc,$0F
120F  CD 81 0C  call    $0C81
1212  7E        ld      a,(hl)
1213  FE FF     cp      $FF
1215  C8        ret     z
1216  E5        push    hl
1217  CD 6C 11  call    $116C
121A  E1        pop     hl
121B  23        inc     hl
121C  18        jr      
121D  F4 E5 D5  call    p,$D5E5
1220  CD 81 0C  call    $0C81
1223  D1        pop     de
1224  E1        pop     hl
1225  A7        and     a
1226  C8        ret     z
1227  D7        rst     10
1228  E5        push    hl
1229  21 00 00  ld      hl,$0000
122C  EB        ex      de,hl
122D  D7        rst     10
122E  C4 EB 0B  call    nz,$0BEB
1231  FE 0E     cp      $0E
1233  28        jr      z,
1234  12        ld      (de),a
1235  CD 01 0B  call    $0B01
1238  FE 10     cp      $10
123A  38        jr      c,
123B  08        ex      af,af
123C  21 BF 40  ld      hl,$40BF
123F  CB 7E     '~'
1241  C4 0D 0B  call    nz,$0B0D
1244  CD D4 0A  call    $0AD4
1247  E1        pop     hl
1248  C3 1C 0B  jp      $0B1C
124B  21 BF 40  ld      hl,$40BF
124E  47        ld      b,a
124F  7E        ld      a,(hl)
1250  E6 A7     and     $A7
1252  4F        ld      c,a
1253  78        ld      a,b
1254  D6 81     sub     $81
1256  CA F3 16  jp      z,$16F3
1259  3D        dec     a
125A  CA 05 17  jp      z,$1705
125D  3D        dec     a
125E  CA 17 17  jp      z,$1717
1261  3D        dec     a
1262  3D        dec     a
1263  CA 29 17  jp      z,$1729
1266  D6 0C     sub     $0C
1268  CA FC 16  jp      z,$16FC
126B  3D        dec     a
126C  CA 0E 17  jp      z,$170E
126F  3D        dec     a
1270  CA 20 17  jp      z,$1720
1273  3D        dec     a
1274  3D        dec     a
1275  CA 32 17  jp      z,$1732
1278  D6 0B     sub     $0B
127A  CA 11 14  jp      z,$1411
127D  3D        dec     a
127E  CA 42 14  jp      z,$1442
1281  D6 04     sub     $04
1283  21 BE 40  ld      hl,$40BE
1286  20        jr      nz,
1287  03        inc     bc
1288  36 80     ld      (hl),$80
128A  C9        ret
128B  3D        dec     a
128C  20        jr      nz,
128D  03        inc     bc
128E  36 40     ld      (hl),'@'
1290  C9        ret
1291  3D        dec     a
1292  20        jr      nz,
1293  03        inc     bc
1294  36 20     ld      (hl),$20
1296  C9        ret
1297  21 BF 40  ld      hl,$40BF
129A  47        ld      b,a
129B  7E        ld      a,(hl)
129C  E6 F8     and     $F8
129E  4F        ld      c,a
129F  78        ld      a,b
12A0  3D        dec     a
12A1  20        jr      nz,
12A2  04        inc     b
12A3  CB D1     $D1
12A5  71        ld      (hl),c
12A6  C9        ret
12A7  3D        dec     a
12A8  20        jr      nz,
12A9  04        inc     b
12AA  CB C9     $C9
12AC  71        ld      (hl),c
12AD  C9        ret
12AE  3D        dec     a
12AF  20        jr      nz,
12B0  04        inc     b
12B1  CB C1     $C1
12B3  71        ld      (hl),c
12B4  C9        ret
12B5  3D        dec     a
12B6  20        jr      nz,
12B7  05        dec     b
12B8  79        ld      a,c
12B9  F6 07     or      $07
12BB  77        ld      (hl),a
12BC  C9        ret
12BD  3D        dec     a
12BE  C2 A1 11  jp      nz,$11A1
12C1  21 BE 40  ld      hl,$40BE
12C4  36 10     ld      (hl),$10
12C6  C9        ret
12C7  F3        di
12C8  21 40 40  ld      hl,$4040
12CB  06 D4     ld      b,$D4
12CD  36 00     ld      (hl),$00
12CF  23        inc     hl
12D0  10        djnz    
12D1  FB        ei
12D2  21 08 01  ld      hl,$0108
12D5  22 6C 40  ld      ($406C),hl
12D8  F5        push    af
12D9  3A B0 00  ld      a,($00B0)
12DC  32 82 40  ld      ($4082),a
12DF  3A AE 00  ld      a,($00AE)
12E2  32 BE 40  ld      ($40BE),a
12E5  F1        pop     af
12E6  21 BA 00  ld      hl,$00BA
12E9  B7        or      a
12EA  28        jr      z,
12EB  03        inc     bc
12EC  21 CD 00  ld      hl,$00CD
12EF  01 13 00  ld      bc,$0013
12F2  11 92 40  ld      de,$4092
12F5  ED B0     prefix$B0
12F7  3A B1 00  ld      a,($00B1)
12FA  32 BF 40  ld      ($40BF),a
12FD  21 CE 40  ld      hl,$40CE
1300  06 50     ld      b,'P'
1302  CD F4 26  call    $26F4
1305  21 9B 00  ld      hl,$009B
1308  11 C4 40  ld      de,$40C4
130B  01 0C 00  ld      bc,$000C
130E  ED B0     prefix$B0
1310  0E 04     ld      c,$04
1312  11 00 41  ld      de,$4100
1315  ED B0     prefix$B0
1317  2A 9F 00  ld      hl,($009F)
131A  22 C0 40  ld      ($40C0),hl
131D  C9        ret
131E  6F        ld      l,a
131F  CD D4 13  call    $13D4
1322  C8        ret     z
1323  2E 08     ld      l,$08
1325  0F        rrca
1326  D8        ret     c
1327  2E 0A     ld      l,$0A
1329  0F        rrca
132A  D8        ret     c
132B  2E 0C     ld      l,$0C
132D  C9        ret
132E  F5        push    af
132F  11 00 00  ld      de,$0000
1332  FE 1C     cp      $1C
1334  30 1B     jr      nc,$1B
1336  FE 18     cp      $18
1338  38        jr      c,
1339  17        rla
133A  CD 81 0C  call    $0C81
133D  7E        ld      a,(hl)
133E  FE FF     cp      $FF
1340  28        jr      z,
1341  0C        inc     c
1342  E5        push    hl
1343  D5        push    de
1344  CD 2E 13  call    $132E
1347  D1        pop     de
1348  19        add     hl,de
1349  EB        ex      de,hl
134A  E1        pop     hl
134B  23        inc     hl
134C  18        jr      
134D  EF        rst     28
134E  EB        ex      de,hl
134F  F1        pop     af
1350  C9        ret
1351  FE 0D     cp      $0D
1353  38        jr      c,
1354  F9        ld      sp,phl
1355  CD A8 0C  call    $0CA8
1358  4F        ld      c,a
1359  E6 07     and     $07
135B  11 00 00  ld      de,$0000
135E  6B        ld      l,e
135F  62        ld      h,d
1360  28        jr      z,
1361  34        inc     (hl)
1362  3C        inc     a
1363  5F        ld      e,a
1364  87        add     a,a
1365  CD 1E 13  call    $131E
1368  F1        pop     af
1369  F5        push    af
136A  FE 18     cp      $18
136C  30 17     jr      nc,$17
136E  FE 10     cp      $10
1370  38        jr      c,
1371  13        inc     de
1372  79        ld      a,c
1373  0F        rrca
1374  0F        rrca
1375  0F        rrca
1376  E6 07     and     $07
1378  3C        inc     a
1379  5F        ld      e,a
137A  79        ld      a,c
137B  07        rlca
137C  07        rlca
137D  E6 03     and     $03
137F  47        ld      b,a
1380  AF        xor     a
1381  85        add     a,l
1382  10        djnz    
1383  FD 6F     prefix'o'
1385  01 06 00  ld      bc,$0006
1388  3A BF 40  ld      a,($40BF)
138B  CB 5F     '_'
138D  28        jr      z,
138E  01 09 CB  ld      bc,$CB09
1391  67        ld      h,a
1392  28        jr      z,
1393  02        ld      (bc),a
1394  2B        dec     hl
1395  2B        dec     hl
1396  CD D4 13  call    $13D4
1399  28        jr      z,
139A  05        dec     b
139B  11 00 00  ld      de,$0000
139E  18        jr      
139F  0E 2C     ld      c,$2C
13A1  2D        dec     l
13A2  20        jr      nz,
13A3  02        ld      (bc),a
13A4  1E 06     ld      e,$06
13A6  01 03 00  ld      bc,$0003
13A9  EB        ex      de,hl
13AA  B7        or      a
13AB  ED 42     prefix'B'
13AD  EB        ex      de,hl
13AE  F1        pop     af
13AF  F5        push    af
13B0  FE 10     cp      $10
13B2  30 0C     jr      nc,$0C
13B4  FE 0E     cp      $0E
13B6  20        jr      nz,
13B7  05        dec     b
13B8  EB        ex      de,hl
13B9  21 00 00  ld      hl,$0000
13BC  D7        rst     10
13BD  11 00 00  ld      de,$0000
13C0  3A BF 40  ld      a,($40BF)
13C3  CB 6F     'o'
13C5  28        jr      z,
13C6  0B        dec     bc
13C7  44        ld      b,h
13C8  4D        ld      c,l
13C9  EB        ex      de,hl
13CA  D7        rst     10
13CB  EB        ex      de,hl
13CC  21 00 00  ld      hl,$0000
13CF  A7        and     a
13D0  ED 42     prefix'B'
13D2  F1        pop     af
13D3  C9        ret
13D4  3A BF 40  ld      a,($40BF)
13D7  E6 07     and     $07
13D9  FE 07     cp      $07
13DB  C9        ret
13DC  CD 06 14  call    $1406
13DF  EB        ex      de,hl
13E0  2A C0 40  ld      hl,($40C0)
13E3  D7        rst     10
13E4  C0        ret     nz
13E5  CD 3F 17  call    $173F
13E8  2A C8 40  ld      hl,($40C8)
13EB  22 C0 40  ld      ($40C0),hl
13EE  A7        and     a
13EF  ED 52     prefix'R'
13F1  C9        ret
13F2  3A BE 40  ld      a,($40BE)
13F5  21 18 00  ld      hl,$0018
13F8  07        rlca
13F9  D8        ret     c
13FA  2E 24     ld      l,$24
13FC  07        rlca
13FD  D8        ret     c
13FE  2E 30     ld      l,$30
1400  07        rlca
1401  D8        ret     c
1402  2A C4 40  ld      hl,($40C4)
1405  C9        ret
1406  2A A8 40  ld      hl,($40A8)
1409  ED 4B     prefix'K'
140B  A6        and     (hl)
140C  40        ld      b,b
140D  A7        and     a
140E  ED 42     prefix'B'
1410  C9        ret
1411  CD 42 14  call    $1442
1414  CD DB 14  call    $14DB
1417  ED 5B     prefix'['
1419  75        ld      (hl),l
141A  40        ld      b,b
141B  7E        ld      a,(hl)
141C  23        inc     hl
141D  B6        or      (hl)
141E  28        jr      z,
141F  2A 23 10  ld      hl,($1023)
1422  F8        ret     m
1423  C3 40 26  jp      $2640
1426  CD 4F 14  call    $144F
1429  18        jr      
142A  E9        jp      (hl)
142B  CD 54 14  call    $1454
142E  CD EE 14  call    $14EE
1431  18        jr      
1432  E4 CD 3B  call    po,$3BCD
1435  17        rla
1436  2A 7B 41  ld      hl,($417B)
1439  22 CC 40  ld      ($40CC),hl
143C  22 C0 40  ld      ($40C0),hl
143F  EB        ex      de,hl
1440  37        scf
1441  C9        ret
1442  CD D5 14  call    $14D5
1445  CD F4 14  call    $14F4
1448  C0        ret     nz
1449  2B        dec     hl
144A  72        ld      (hl),d
144B  2B        dec     hl
144C  73        ld      (hl),e
144D  37        scf
144E  C9        ret
144F  CD E1 14  call    $14E1
1452  18        jr      
1453  F1        pop     af
1454  CD E8 14  call    $14E8
1457  18        jr      
1458  EC CD D5  call    pe,$D5CD
145B  14        inc     d
145C  11 FF 0F  ld      de,$0FFF
145F  ED 53     prefix'S'
1461  77        ld      (hl),a
1462  40        ld      b,b
1463  C5        push    bc
1464  ED 4B     prefix'K'
1466  75        ld      (hl),l
1467  40        ld      b,b
1468  CD 01 15  call    $1501
146B  38        jr      c,
146C  0E 28     ld      c,$28
146E  0C        inc     c
146F  E5        push    hl
1470  2A 77 40  ld      hl,($4077)
1473  D7        rst     10
1474  38        jr      c,
1475  04        inc     b
1476  ED 53     prefix'S'
1478  77        ld      (hl),a
1479  40        ld      b,b
147A  E1        pop     hl
147B  C1        pop     bc
147C  10        djnz    
147D  E5        push    hl
147E  2A 77 40  ld      hl,($4077)
1481  E5        push    hl
1482  01 FF 0F  ld      bc,$0FFF
1485  B7        or      a
1486  ED 42     prefix'B'
1488  E1        pop     hl
1489  C9        ret
148A  CD E1 14  call    $14E1
148D  11 FF FF  ld      de,$FFFF
1490  18        jr      
1491  CD CD E8  call    $E8CD
1494  14        inc     d
1495  18        jr      
1496  C5        push    bc
1497  06 0F     ld      b,$0F
1499  21 1D 41  ld      hl,$411D
149C  11 00 00  ld      de,$0000
149F  ED 53     prefix'S'
14A1  77        ld      (hl),a
14A2  40        ld      b,b
14A3  C5        push    bc
14A4  ED 4B     prefix'K'
14A6  AA        xor     d
14A7  40        ld      b,b
14A8  56        ld      d,(hl)
14A9  2B        dec     hl
14AA  5E        ld      e,(hl)
14AB  2B        dec     hl
14AC  D5        push    de
14AD  CD 05 15  call    $1505
14B0  D1        pop     de
14B1  30 0C     jr      nc,$0C
14B3  E5        push    hl
14B4  2A 77 40  ld      hl,($4077)
14B7  D7        rst     10
14B8  E1        pop     hl
14B9  30 04     jr      nc,$04
14BB  ED 53     prefix'S'
14BD  77        ld      (hl),a
14BE  40        ld      b,b
14BF  C1        pop     bc
14C0  10        djnz    
14C1  E1        pop     hl
14C2  ED 5B     prefix'['
14C4  77        ld      (hl),a
14C5  40        ld      b,b
14C6  AF        xor     a
14C7  BA        cp      d
14C8  20        jr      nz,
14C9  02        ld      (bc),a
14CA  BB        cp      e
14CB  C8        ret     z
14CC  EB        ex      de,hl
14CD  ED 4B     prefix'K'
14CF  AA        xor     d
14D0  40        ld      b,b
14D1  B7        or      a
14D2  ED 42     prefix'B'
14D4  C9        ret
14D5  2A 73 40  ld      hl,($4073)
14D8  22 75 40  ld      ($4075),hl
14DB  21 CE 40  ld      hl,$40CE
14DE  06 19     ld      b,$19
14E0  C9        ret
14E1  2A 7B 41  ld      hl,($417B)
14E4  CB FC     $FC
14E6  18        jr      
14E7  F0        ret     p
14E8  2A AA 40  ld      hl,($40AA)
14EB  22 75 40  ld      ($4075),hl
14EE  21 00 41  ld      hl,$4100
14F1  06 0F     ld      b,$0F
14F3  C9        ret
14F4  C5        push    bc
14F5  ED 4B     prefix'K'
14F7  75        ld      (hl),l
14F8  40        ld      b,b
14F9  CD 01 15  call    $1501
14FC  C1        pop     bc
14FD  C8        ret     z
14FE  10        djnz    
14FF  F4 C9 5E  call    p,$5EC9
1502  23        inc     hl
1503  56        ld      d,(hl)
1504  23        inc     hl
1505  EB        ex      de,hl
1506  B7        or      a
1507  ED 42     prefix'B'
1509  EB        ex      de,hl
150A  C9        ret
150B  1F        rra
150C  99        sbc     a,c
150D  95        sub     l
150E  1E 98     ld      e,$98
1510  46        ld      b,(hl)
1511  1E 9C     ld      e,$9C
1513  ED 2B     prefix$2B
1515  9E        sbc     a,(hl)
1516  82        add     a,d
1517  27        daa
1518  87        add     a,a
1519  2E 18     ld      l,$18
151B  97        sub     a
151C  F7        rst     30
151D  25        dec     h
151E  83        add     a,ee
151F  D3 23     out     ($23),a
1521  86        add     a,(hl)
1522  94        sub     h
1523  23        inc     hl
1524  85        add     a,l
1525  F4 1F 96  call    p,$961F
1528  DB 2C     in      a,($2C)
152A  84        add     a,h
152B  B4        or      h
152C  25        dec     h
152D  A4        and     h
152E  64        ld      h,h
152F  2E A5     ld      l,$A5
1531  12        ld      (de),a
1532  2E A6     ld      l,$A6
1534  D8        ret     c
1535  2D        dec     l
1536  92        sub     d
1537  EF        rst     28
1538  1D        dec     e
1539  93        sub     e
153A  0A        ld      a,(bc)
153B  1E 94     ld      e,$94
153D  17        rla
153E  1E 95     ld      e,$95
1540  24        inc     h
1541  1E 91     ld      e,$91
1543  35        dec     (hl)
1544  1E 8F     ld      e,$8F
1546  F1        pop     af
1547  28        jr      z,
1548  88        adc     a,b
1549  B5        or      l
154A  2A 89 28  ld      hl,($2889)
154D  2A 90 48  ld      hl,($4890)
1550  2C        inc     l
1551  8B        adc     a,e
1552  7C        ld      a,h
1553  2C        inc     l
1554  8C        adc     a,h
1555  87        add     a,a
1556  2C        inc     l
1557  9D        sbc     a,l
1558  16 2B     ld      d,$2B
155A  82        add     a,d
155B  E4 17 81  call    po,$8117
155E  1D        dec     e
155F  2F        cpl
1560  8A        adc     a,d
1561  DE 1F     sbc     a,$1F
1563  8D        adc     a,l
1564  D6 1F     sub     $1F
1566  9B        sbc     a,e
1567  A3        and     e
1568  24        inc     h
1569  24        inc     h
156A  06 88     ld      b,$88
156C  21 07 DD  ld      hl,$DD07
156F  21 0A 86  ld      hl,$860A
1572  20        jr      nz,
1573  0C        inc     c
1574  D6 1F     sub     $1F
1576  80        add     a,b
1577  2A 26 81  ld      hl,($8126)
157A  FC 1D 82  call    m,$821D
157D  FC 1D 83  call    m,$831D
1580  FC 1D 85  call    m,$851D
1583  FC 1D 87  call    m,$871D
1586  F1        pop     af
1587  28        jr      z,
1588  8D        adc     a,l
1589  F7        rst     30
158A  25        dec     h
158B  8E        adc     a,(hl)
158C  2F        cpl
158D  1E 8F     ld      e,$8F
158F  2F        cpl
1590  1E 91     ld      e,$91
1592  FC 1D 92  call    m,$921D
1595  FC 1D 93  call    m,$931D
1598  FC 1D 95  call    m,$951D
159B  FC 1D 9C  call    m,$9C1D
159E  DC 22 9D  call    c,$9D22
15A1  E0        ret     po
15A2  22 9E 3E  ld      ($3E9E),hl
15A5  21 9F 28  ld      hl,$289F
15A8  21 A0 34  ld      hl,$34A0
15AB  21 A1 3E  ld      hl,$3EA1
15AE  21 A2 F8  ld      hl,$F8A2
15B1  20        jr      nz,
15B2  A3        and     e
15B3  00        nop
15B4  21 A4 13  ld      hl,$13A4
15B7  21 A5 2F  ld      hl,$2FA5
15BA  1E A6     ld      e,$A6
15BC  2F        cpl
15BD  1E A7     ld      e,$A7
15BF  2F        cpl
15C0  1E AC     ld      e,$AC
15C2  2F        cpl
15C3  1E A8     ld      e,$A8
15C5  B0        or      b
15C6  1D        dec     e
15C7  A9        xor     c
15C8  AC        xor     h
15C9  1D        dec     e
15CA  AA        xor     d
15CB  A8        xor     b
15CC  1D        dec     e
15CD  AB        xor     e
15CE  B4        or      h
15CF  1D        dec     e
15D0  AD        xor     l
15D1  1C        inc     e
15D2  24        inc     h
15D3  AE        xor     (hl)
15D4  1C        inc     e
15D5  24        inc     h
15D6  0B        dec     bc
15D7  0C        inc     c
15D8  06 87     ld      b,$87
15DA  0A        ld      a,(bc)
15DB  08        ex      af,af
15DC  0D        dec     c
15DD  04        inc     b
15DE  05        dec     b
15DF  07        rlca
15E0  A0        and     b
15E1  A1        and     c
15E2  A2        and     d
15E3  A3        and     e
15E4  A4        and     h
15E5  9F        sbc     a,a
15E6  9E        sbc     a,(hl)
15E7  AD        xor     l
15E8  AE        xor     (hl)
15E9  20        jr      nz,
15EA  01 AA 30  ld      bc,$30AA
15ED  02        ld      (bc),a
15EE  AA        xor     d
15EF  30 04     jr      nc,$04
15F1  F4 30 05  call    p,$0530
15F4  F4 30 0B  call    p,$0B30
15F7  E9        jp      (hl)
15F8  30 08     jr      nc,$08
15FA  AE        xor     (hl)
15FB  30 0D     jr      nc,$0D
15FD  AE        xor     (hl)
15FE  30 0A     jr      nc,$0A
1600  E3        ex      (sp),hl
1601  30 A5     jr      nc,$A5
1603  C0        ret     nz
1604  30 A6     jr      nc,$A6
1606  C4 30 A7  call    nz,$A730
1609  C8        ret     z
160A  30 AC     jr      nc,$AC
160C  CC 30 A8  call    z,$A830
160F  D2 30 A9  jp      nc,$A930
1612  D6 30     sub     $30
1614  AA        xor     d
1615  DA 30 AB  jp      c,$AB30
1618  DE 30     sbc     a,$30
161A  0E FF     ld      c,$FF
161C  30 0C     jr      nc,$0C
161E  E9        jp      (hl)
161F  30 06     jr      nc,$06
1621  E9        jp      (hl)
1622  30 07     jr      nc,$07
1624  F4 30 8E  call    p,$8E30
1627  94        sub     h
1628  1D        dec     e
1629  8F        adc     a,a
162A  8F        adc     a,a
162B  1D        dec     e
162C  82        add     a,d
162D  0E 17     ld      c,$17
162F  92        sub     d
1630  05        dec     b
1631  17        rla
1632  81        add     a,c
1633  FC 16 91  call    m,$9116
1636  F3        di
1637  16 85     ld      d,$85
1639  32 17 95  ld      ($9517),a
163C  29        add     hl,jl
163D  17        rla
163E  83        add     a,ee
163F  20        jr      nz,
1640  17        rla
1641  93        sub     e
1642  17        rla
1643  17        rla
1644  A4        and     h
1645  E5        push    hl
1646  13        inc     de
1647  87        add     a,a
1648  E9        jp      (hl)
1649  30 21     jr      nc,$21
164B  56        ld      d,(hl)
164C  41        ld      b,c
164D  CB 4E     'N'
164F  C9        ret
1650  21 56 41  ld      hl,$4156
1653  3E 03     ld      a,$03
1655  A6        and     (hl)
1656  C9        ret
1657  21 56 41  ld      hl,$4156
165A  CB 86     $86
165C  CB 8E     $8E
165E  C9        ret
165F  21 56 41  ld      hl,$4156
1662  CB 56     'V'
1664  C9        ret
1665  21 57 41  ld      hl,$4157
1668  CB 46     'F'
166A  C9        ret
166B  21 57 41  ld      hl,$4157
166E  CB C6     $C6
1670  C9        ret
1671  21 57 41  ld      hl,$4157
1674  CB 86     $86
1676  C9        ret
1677  21 57 41  ld      hl,$4157
167A  CB 5E     '^'
167C  C9        ret
167D  21 57 41  ld      hl,$4157
1680  CB DE     $DE
1682  C9        ret
1683  21 57 41  ld      hl,$4157
1686  CB 9E     $9E
1688  C9        ret
1689  21 56 41  ld      hl,$4156
168C  CB 66     'f'
168E  C9        ret
168F  21 56 41  ld      hl,$4156
1692  CB 7E     '~'
1694  C9        ret
1695  21 56 41  ld      hl,$4156
1698  CB FE     $FE
169A  3A BF 40  ld      a,($40BF)
169D  32 1B 42  ld      ($421B),a
16A0  C9        ret
16A1  21 56 41  ld      hl,$4156
16A4  CB BE     $BE
16A6  C9        ret
16A7  21 56 41  ld      hl,$4156
16AA  CB 5E     '^'
16AC  C9        ret
16AD  21 56 41  ld      hl,$4156
16B0  CB 9E     $9E
16B2  C9        ret
16B3  CD C9 16  call    $16C9
16B6  C8        ret     z
16B7  21 6B 40  ld      hl,$406B
16BA  CB 4E     'N'
16BC  C9        ret
16BD  21 6B 40  ld      hl,$406B
16C0  CB CE     $CE
16C2  C9        ret
16C3  21 6B 40  ld      hl,$406B
16C6  CB 8E     $8E
16C8  C9        ret
16C9  21 6B 40  ld      hl,$406B
16CC  CB 46     'F'
16CE  C9        ret
16CF  21 6B 40  ld      hl,$406B
16D2  CB C6     $C6
16D4  C9        ret
16D5  21 6B 40  ld      hl,$406B
16D8  CB 86     $86
16DA  C9        ret
16DB  21 57 41  ld      hl,$4157
16DE  CB 56     'V'
16E0  C9        ret
16E1  21 57 41  ld      hl,$4157
16E4  CB D6     $D6
16E6  0E 00     ld      c,$00
16E8  18        jr      
16E9  53        ld      d,e
16EA  21 57 41  ld      hl,$4157
16ED  CB 96     $96
16EF  0E 00     ld      c,$00
16F1  18        jr      
16F2  4E        ld      c,(hl)
16F3  21 BF 40  ld      hl,$40BF
16F6  CB E6     $E6
16F8  0E 01     ld      c,$01
16FA  18        jr      
16FB  41        ld      b,c
16FC  21 BF 40  ld      hl,$40BF
16FF  CB A6     $A6
1701  0E 01     ld      c,$01
1703  18        jr      
1704  3C        inc     a
1705  21 BF 40  ld      hl,$40BF
1708  CB DE     $DE
170A  0E 02     ld      c,$02
170C  18        jr      
170D  2F        cpl
170E  21 BF 40  ld      hl,$40BF
1711  CB 9E     $9E
1713  0E 02     ld      c,$02
1715  18        jr      
1716  2A 21 BF  ld      hl,($BF21)
1719  40        ld      b,b
171A  CB F6     $F6
171C  0E 03     ld      c,$03
171E  18        jr      
171F  1D        dec     e
1720  21 BF 40  ld      hl,$40BF
1723  CB B6     $B6
1725  0E 03     ld      c,$03
1727  18        jr      
1728  18        jr      
1729  21 BF 40  ld      hl,$40BF
172C  CB FE     $FE
172E  0E 04     ld      c,$04
1730  18        jr      
1731  0B        dec     bc
1732  21 BF 40  ld      hl,$40BF
1735  CB BE     $BE
1737  0E 04     ld      c,$04
1739  18        jr      
173A  06 0E     ld      b,$0E
173C  05        dec     b
173D  18        jr      
173E  48        ld      c,b
173F  0E 05     ld      c,$05
1741  18        jr      
1742  75        ld      (hl),l
1743  21 57 41  ld      hl,$4157
1746  CB 76     'v'
1748  C9        ret
1749  21 57 41  ld      hl,$4157
174C  CB F6     $F6
174E  CD EA 16  call    $16EA
1751  CD 95 16  call    $1695
1754  0E 06     ld      c,$06
1756  18        jr      
1757  2F        cpl
1758  21 57 41  ld      hl,$4157
175B  CB 76     'v'
175D  C8        ret     z
175E  CB B6     $B6
1760  CD A1 16  call    $16A1
1763  0E 06     ld      c,$06
1765  CD B8 17  call    $17B8
1768  F5        push    af
1769  3A 1B 42  ld      a,($421B)
176C  32 BF 40  ld      ($40BF),a
176F  F1        pop     af
1770  C9        ret
1771  0E 07     ld      c,$07
1773  18        jr      
1774  12        ld      (de),a
1775  0E 07     ld      c,$07
1777  18        jr      
1778  3F        ccf
1779  21 5B 41  ld      hl,$415B
177C  CB 76     'v'
177E  C9        ret
177F  21 5B 41  ld      hl,$415B
1782  CB F6     $F6
1784  C9        ret
1785  0E 09     ld      c,$09
1787  F5        push    af
1788  3E 83     ld      a,$83
178A  18        jr      
178B  2F        cpl
178C  21 5B 41  ld      hl,$415B
178F  CB B6     $B6
1791  CB 6E     'n'
1793  C0        ret     nz
1794  0E 09     ld      c,$09
1796  18        jr      
1797  20        jr      nz,
1798  21 57 41  ld      hl,$4157
179B  CB 66     'f'
179D  C9        ret
179E  21 57 41  ld      hl,$4157
17A1  CB E6     $E6
17A3  0E 0A     ld      c,$0A
17A5  3E 9B     ld      a,$9B
17A7  F5        push    af
17A8  18        jr      
17A9  11 21 57  ld      de,$5721
17AC  41        ld      b,c
17AD  CB BE     $BE
17AF  CB A6     $A6
17B1  0E 0A     ld      c,$0A
17B3  CD B8 17  call    $17B8
17B6  0E 0B     ld      c,$0B
17B8  F5        push    af
17B9  3E 0F     ld      a,$0F
17BB  06 00     ld      b,$00
17BD  21 91 41  ld      hl,$4191
17C0  09        add     hl,bc
17C1  77        ld      (hl),a
17C2  F1        pop     af
17C3  C3 94 26  jp      $2694
17C6  90        sub     b
17C7  34        inc     (hl)
17C8  2A 8B 39  ld      hl,($398B)
17CB  2A 8C 3E  ld      hl,($3E8C)
17CE  2A 9D 0F  ld      hl,($0F9D)
17D1  2B        dec     hl
17D2  8E        adc     a,(hl)
17D3  9A        sbc     a,d
17D4  2B        dec     hl
17D5  90        sub     b
17D6  81        add     a,c
17D7  2A 8B D2  ld      hl,($D28B)
17DA  2A 8C E4  ld      hl,($E48C)
17DD  2A 9D 07  ld      hl,($079D)
17E0  2B        dec     hl
17E1  8E        adc     a,(hl)
17E2  92        sub     d
17E3  2B        dec     hl
17E4  3E B6     ld      a,$B6
17E6  CD 41 27  call    $2741
17E9  36 2B     ld      (hl),$2B
17EB  23        inc     hl
17EC  3A 72 40  ld      a,($4072)
17EF  CB 67     'g'
17F1  F5        push    af
17F2  20        jr      nz,
17F3  02        ld      (bc),a
17F4  36 B4     ld      (hl),$B4
17F6  CD B1 26  call    $26B1
17F9  F1        pop     af
17FA  20        jr      nz,
17FB  0E 3E     ld      c,$3E
17FD  8E        adc     a,(hl)
17FE  DF        rst     18
17FF  28        jr      z,
1800  09        add     hl,bc
1801  CD F7 12  call    $12F7
1804  CD BC 10  call    $10BC
1807  C3 1F 20  jp      $201F
180A  3E 9C     ld      a,$9C
180C  DF        rst     18
180D  C2 59 1F  jp      nz,$1F59
1810  3E 82     ld      a,$82
1812  DF        rst     18
1813  20        jr      nz,
1814  CF        rst     08
1815  3E B6     ld      a,$B6
1817  CD 41 27  call    $2741
181A  36 0B     ld      (hl),$0B
181C  23        inc     hl
181D  36 04     ld      (hl),$04
181F  3E 75     ld      a,'u'
1821  21 DC 22  ld      hl,$22DC
1824  CD 58 27  call    $2758
1827  3E 76     ld      a,'v'
1829  21 E0 22  ld      hl,$22E0
182C  18        jr      
182D  2E CD     ld      l,$CD
182F  61        ld      h,c
1830  27        daa
1831  21 E0 00  ld      hl,$00E0
1834  01 15 00  ld      bc,$0015
1837  ED B0     prefix$B0
1839  CD FE 26  call    $26FE
183C  EB        ex      de,hl
183D  21 F5 00  ld      hl,$00F5
1840  01 07 00  ld      bc,$0007
1843  ED B0     prefix$B0
1845  CD 97 2D  call    $2D97
1848  18        jr      
1849  15        dec     d
184A  3E BC     ld      a,$BC
184C  CD 41 27  call    $2741
184F  3A 82 40  ld      a,($4082)
1852  D6 31     sub     $31
1854  C6 BD     ada     a,$BD
1856  77        ld      (hl),a
1857  3E 88     ld      a,$88
1859  21 62 18  ld      hl,$1862
185C  CD 58 27  call    $2758
185F  C3 22 27  jp      $2722
1862  21 82 40  ld      hl,$4082
1865  34        inc     (hl)
1866  7E        ld      a,(hl)
1867  FE 34     cp      $34
1869  20        jr      nz,
186A  DF        rst     18
186B  36 31     ld      (hl),$31
186D  18        jr      
186E  DB 3E     in      a,($3E)
1870  03        inc     bc
1871  CD 41 27  call    $2741
1874  06 AB     ld      b,$AB
1876  3A BF 40  ld      a,($40BF)
1879  E6 07     and     $07
187B  FE 07     cp      $07
187D  28        jr      z,
187E  06 1F     ld      b,$1F
1880  05        dec     b
1881  38        jr      c,
1882  02        ld      (bc),a
1883  18        jr      
1884  FA 70 3E  jp      m,$3E70
1887  89        adc     a,c
1888  21 99 1D  ld      hl,$1D99
188B  18        jr      
188C  CF        rst     08
188D  3E B8     ld      a,$B8
188F  CD 41 27  call    $2741
1892  06 8A     ld      b,$8A
1894  3A 71 40  ld      a,($4071)
1897  1F        rra
1898  38        jr      c,
1899  02        ld      (bc),a
189A  06 9A     ld      b,$9A
189C  70        ld      (hl),b
189D  3E 90     ld      a,$90
189F  21 C0 1D  ld      hl,$1DC0
18A2  18        jr      
18A3  B8        cp      b
18A4  CD 9B 1F  call    $1F9B
18A7  3E 94     ld      a,$94
18A9  CD 41 27  call    $2741
18AC  D5        push    de
18AD  EB        ex      de,hl
18AE  21 15 01  ld      hl,$0115
18B1  3A 6B 40  ld      a,($406B)
18B4  CB 57     'W'
18B6  28        jr      z,
18B7  03        inc     bc
18B8  21 88 01  ld      hl,$0188
18BB  01 03 00  ld      bc,$0003
18BE  ED B0     prefix$B0
18C0  D1        pop     de
18C1  3E 8E     ld      a,$8E
18C3  21 CE 1D  ld      hl,$1DCE
18C6  18        jr      
18C7  DA 3E BA  jp      c,$BA3E
18CA  CD 41 27  call    $2741
18CD  E5        push    hl
18CE  CD B7 16  call    $16B7
18D1  E1        pop     hl
18D2  20        jr      nz,
18D3  02        ld      (bc),a
18D4  3E 0F     ld      a,$0F
18D6  77        ld      (hl),a
18D7  3E 9D     ld      a,$9D
18D9  21 CC 36  ld      hl,$36CC
18DC  CD 58 27  call    $2758
18DF  3E 8C     ld      a,$8C
18E1  21 98 36  ld      hl,$3698
18E4  18        jr      
18E5  BC        cp      h
18E6  3E BB     ld      a,$BB
18E8  CD 41 27  call    $2741
18EB  E5        push    hl
18EC  CD C9 16  call    $16C9
18EF  18        jr      
18F0  E0        ret     po
18F1  3E 88     ld      a,$88
18F3  CD 41 27  call    $2741
18F6  E5        push    hl
18F7  CD 43 17  call    $1743
18FA  E1        pop     hl
18FB  20        jr      nz,
18FC  02        ld      (bc),a
18FD  3E 0F     ld      a,$0F
18FF  77        ld      (hl),a
1900  3E 8B     ld      a,$8B
1902  21 07 19  ld      hl,$1907
1905  18        jr      
1906  9B        sbc     a,e
1907  CD 43 17  call    $1743
190A  28        jr      z,
190B  05        dec     b
190C  CD 58 17  call    $1758
190F  18        jr      
1910  E0        ret     po
1911  CD 49 17  call    $1749
1914  18        jr      
1915  DB E5     in      a,($E5)
1917  CD 41 27  call    $2741
191A  3A 58 41  ld      a,($4158)
191D  CB 4F     'O'
191F  3E 10     ld      a,$10
1921  20        jr      nz,
1922  11 3A 5B  ld      de,$5B3A
1925  41        ld      b,c
1926  CB 6F     'o'
1928  28        jr      z,
1929  02        ld      (bc),a
192A  F6 07     or      $07
192C  E6 C7     and     $C7
192E  4F        ld      c,a
192F  0F        rrca
1930  0F        rrca
1931  0F        rrca
1932  B1        or      c
1933  2F        cpl
1934  06 05     ld      b,$05
1936  0E B0     ld      c,$B0
1938  0F        rrca
1939  30 0C     jr      nc,$0C
193B  71        ld      (hl),c
193C  E3        ex      (sp),hl
193D  E5        push    hl
193E  C5        push    bc
193F  01 03 00  ld      bc,$0003
1942  ED B0     prefix$B0
1944  C1        pop     bc
1945  E1        pop     hl
1946  E3        ex      (sp),hl
1947  23        inc     hl
1948  E3        ex      (sp),hl
1949  23        inc     hl
194A  23        inc     hl
194B  23        inc     hl
194C  E3        ex      (sp),hl
194D  0C        inc     c
194E  10        djnz    
194F  E8        ret     pe
1950  CD 97 2D  call    $2D97
1953  18        jr      
1954  38        jr      c,
1955  E5        push    hl
1956  CD 41 27  call    $2741
1959  3A 5B 41  ld      a,($415B)
195C  F6 18     or      $18
195E  18        jr      
195F  D4 22 30  call    nc,$3022
1962  42        ld      b,d
1963  3E B3     ld      a,$B3
1965  CD 41 27  call    $2741
1968  E5        push    hl
1969  21 44 42  ld      hl,$4244
196C  06 0A     ld      b,$0A
196E  7E        ld      a,(hl)
196F  E3        ex      (sp),hl
1970  07        rlca
1971  CB 41     'A'
1973  28        jr      z,
1974  01 3F 38  ld      bc,$383F
1977  0E 1F     ld      c,$1F
1979  CD 4F 27  call    $274F
197C  78        ld      a,b
197D  3D        dec     a
197E  3E 3B     ld      a,$3B
1980  20        jr      nz,
1981  02        ld      (bc),a
1982  D6 0A     sub     $0A
1984  90        sub     b
1985  77        ld      (hl),a
1986  23        inc     hl
1987  E3        ex      (sp),hl
1988  CD 34 28  call    $2834
198B  10        djnz    
198C  E1        pop     hl
198D  18        jr      
198E  2B        dec     hl
198F  22 30 42  ld      ($4230),hl
1992  3E B4     ld      a,$B4
1994  CD 41 27  call    $2741
1997  E5        push    hl
1998  DD 2A     prefix$2A
199A  79        ld      a,c
199B  41        ld      b,c
199C  3A 5C 41  ld      a,($415C)
199F  06 04     ld      b,$04
19A1  0F        rrca
19A2  CB 41     'A'
19A4  28        jr      z,
19A5  01 3F 38  ld      bc,$383F
19A8  0C        inc     c
19A9  F5        push    af
19AA  DD 7E     prefix'~'
19AC  00        nop
19AD  CD 4F 27  call    $274F
19B0  3E 35     ld      a,$35
19B2  90        sub     b
19B3  77        ld      (hl),a
19B4  F1        pop     af
19B5  DD 23     prefix$23
19B7  23        inc     hl
19B8  10        djnz    
19B9  E7        rst     20
19BA  E1        pop     hl
19BB  C3 22 27  jp      $2722
19BE  4F        ld      c,a
19BF  21 44 42  ld      hl,$4244
19C2  06 0A     ld      b,$0A
19C4  7E        ld      a,(hl)
19C5  CB BF     $BF
19C7  B9        cp      c
19C8  C8        ret     z
19C9  CD 34 28  call    $2834
19CC  10        djnz    
19CD  F6 DD     or      $DD
19CF  21 76 42  ld      hl,$4276
19D2  2A 79 41  ld      hl,($4179)
19D5  06 04     ld      b,$04
19D7  DD E5     prefix$E5
19D9  11 61 00  ld      de,$0061
19DC  DD 19     prefix$19
19DE  BE        cp      (hl)
19DF  23        inc     hl
19E0  28        jr      z,
19E1  03        inc     bc
19E2  D1        pop     de
19E3  10        djnz    
19E4  F2 DD E5  jp      p,$E5DD
19E7  E1        pop     hl
19E8  D1        pop     de
19E9  3E 10     ld      a,$10
19EB  0F        rrca
19EC  10        djnz    
19ED  FD C9     prefix$C9
19EF  CD E0 1E  call    $1EE0
19F2  20        jr      nz,
19F3  03        inc     bc
19F4  CD B2 1E  call    $1EB2
19F7  CD FC 19  call    $19FC
19FA  18        jr      
19FB  F8        ret     m
19FC  CD BC 10  call    $10BC
19FF  CD 94 26  call    $2694
1A02  CD A7 1E  call    $1EA7
1A05  CD CA 34  call    $34CA
1A08  28        jr      z,
1A09  08        ex      af,af
1A0A  CD B7 16  call    $16B7
1A0D  C4 07 36  call    nz,$3607
1A10  18        jr      
1A11  45        ld      b,l
1A12  EF        rst     28
1A13  28        jr      z,
1A14  0D        dec     c
1A15  CD 7B 1A  call    $1A7B
1A18  CD 9F 0B  call    $0B9F
1A1B  CD 50 16  call    $1650
1A1E  20        jr      nz,
1A1F  DF        rst     18
1A20  18        jr      
1A21  DA CD 77  jp      c,$77CD
1A24  16 28     ld      d,$28
1A26  0F        rrca
1A27  3A 1B 42  ld      a,($421B)
1A2A  3C        inc     a
1A2B  CC 49 17  call    z,$1749
1A2E  CD A8 1A  call    $1AA8
1A31  CD FF 1A  call    $1AFF
1A34  18        jr      
1A35  21 CD 71  ld      hl,$71CD
1A38  16 CD     ld      d,$CD
1A3A  43        ld      b,e
1A3B  17        rla
1A3C  20        jr      nz,
1A3D  19        add     hl,de
1A3E  F7        rst     30
1A3F  20        jr      nz,
1A40  08        ex      af,af
1A41  B7        or      a
1A42  28        jr      z,
1A43  13        inc     de
1A44  F5        push    af
1A45  CD BA 1C  call    $1CBA
1A48  F1        pop     af
1A49  CD A7 1E  call    $1EA7
1A4C  CD 5B 1B  call    $1B5B
1A4F  3E 71     ld      a,'q'
1A51  DF        rst     18
1A52  C2 36 1A  jp      nz,$1A36
1A55  18        jr      
1A56  AB        xor     e
1A57  CD B7 16  call    $16B7
1A5A  C4 97 35  call    nz,$3597
1A5D  CD 12 1D  call    $1D12
1A60  CD 77 16  call    $1677
1A63  28        jr      z,
1A64  F0        ret     p
1A65  CD B7 16  call    $16B7
1A68  28        jr      z,
1A69  05        dec     b
1A6A  CD CA 1C  call    $1CCA
1A6D  20        jr      nz,
1A6E  E8        ret     pe
1A6F  CD 43 17  call    $1743
1A72  20        jr      nz,
1A73  E1        pop     hl
1A74  CD CF 1C  call    $1CCF
1A77  20        jr      nz,
1A78  E4 18 DA  call    po,$DA18
1A7B  FE 97     cp      $97
1A7D  28        jr      z,
1A7E  04        inc     b
1A7F  CD 77 16  call    $1677
1A82  C0        ret     nz
1A83  21 0B 15  ld      hl,$150B
1A86  46        ld      b,(hl)
1A87  23        inc     hl
1A88  BE        cp      (hl)
1A89  CD 42 28  call    $2842
1A8C  28        jr      z,
1A8D  03        inc     bc
1A8E  10        djnz    
1A8F  F7        rst     30
1A90  C9        ret
1A91  32 2D 42  ld      ($422D),a
1A94  FE 83     cp      $83
1A96  28        jr      z,
1A97  09        add     hl,bc
1A98  FE 86     cp      $86
1A9A  28        jr      z,
1A9B  05        dec     b
1A9C  D5        push    de
1A9D  CD 7A 23  call    $237A
1AA0  D1        pop     de
1AA1  EB        ex      de,hl
1AA2  F5        push    af
1AA3  CD 9F 0B  call    $0B9F
1AA6  F1        pop     af
1AA7  E9        jp      (hl)
1AA8  CD 6B 16  call    $166B
1AAB  2A 6D 41  ld      hl,($416D)
1AAE  7E        ld      a,(hl)
1AAF  32 1E 42  ld      ($421E),a
1AB2  32 1F 42  ld      ($421F),a
1AB5  CD E6 27  call    $27E6
1AB8  22 6D 41  ld      ($416D),hl
1ABB  E5        push    hl
1ABC  D1        pop     de
1ABD  FE 2D     cp      $2D
1ABF  20        jr      nz,
1AC0  1B        dec     de
1AC1  CD DB 16  call    $16DB
1AC4  28        jr      z,
1AC5  16 1A     ld      d,$1A
1AC7  FE 08     cp      $08
1AC9  20        jr      nz,
1ACA  0F        rrca
1ACB  EB        ex      de,hl
1ACC  CD E6 27  call    $27E6
1ACF  22 6D 41  ld      ($416D),hl
1AD2  EB        ex      de,hl
1AD3  CD A7 16  call    $16A7
1AD6  20        jr      nz,
1AD7  02        ld      (bc),a
1AD8  AF        xor     a
1AD9  C9        ret
1ADA  3E 2D     ld      a,$2D
1ADC  F5        push    af
1ADD  CD 50 16  call    $1650
1AE0  C4 B1 26  call    nz,$26B1
1AE3  CC 94 26  call    z,$2694
1AE6  F1        pop     af
1AE7  2A 71 41  ld      hl,($4171)
1AEA  D7        rst     10
1AEB  30 05     jr      nc,$05
1AED  CD AA 17  call    $17AA
1AF0  18        jr      
1AF1  05        dec     b
1AF2  2A 6F 41  ld      hl,($416F)
1AF5  D7        rst     10
1AF6  D0        ret     nc
1AF7  FE 08     cp      $08
1AF9  C4 58 17  call    nz,$1758
1AFC  C3 83 16  jp      $1683
1AFF  CD 9B 27  call    $279B
1B02  38        jr      c,
1B03  57        ld      d,a
1B04  21 69 15  ld      hl,$1569
1B07  C3 86 1A  jp      $1A86
1B0A  21 58 41  ld      hl,$4158
1B0D  CB 46     'F'
1B0F  CB C6     $C6
1B11  2A 63 41  ld      hl,($4163)
1B14  C0        ret     nz
1B15  D5        push    de
1B16  2A FA 43  ld      hl,($43FA)
1B19  11 4A 01  ld      de,$014A
1B1C  D7        rst     10
1B1D  ED 5B     prefix'['
1B1F  6B        ld      l,e
1B20  41        ld      b,c
1B21  D7        rst     10
1B22  21 58 41  ld      hl,$4158
1B25  CB CE     $CE
1B27  CB DE     $DE
1B29  38        jr      c,
1B2A  0C        inc     c
1B2B  CB 9E     $9E
1B2D  CB 8E     $8E
1B2F  21 BD 40  ld      hl,$40BD
1B32  01 61 00  ld      bc,$0061
1B35  ED B0     prefix$B0
1B37  EB        ex      de,hl
1B38  D1        pop     de
1B39  C3 21 28  jp      $2821
1B3C  21 57 41  ld      hl,$4157
1B3F  CB 7E     '~'
1B41  28        jr      z,
1B42  54        ld      d,h
1B43  2A 63 41  ld      hl,($4163)
1B46  E5        push    hl
1B47  CD 34 28  call    $2834
1B4A  ED 5B     prefix'['
1B4C  6D        ld      l,l
1B4D  41        ld      b,c
1B4E  D7        rst     10
1B4F  E1        pop     hl
1B50  38        jr      c,
1B51  45        ld      b,l
1B52  CD 0E 28  call    $280E
1B55  22 63 41  ld      ($4163),hl
1B58  C3 58 26  jp      $2658
1B5B  F5        push    af
1B5C  CD 7A 23  call    $237A
1B5F  F1        pop     af
1B60  67        ld      h,a
1B61  3E 7E     ld      a,'~'
1B63  DF        rst     18
1B64  7C        ld      a,h
1B65  28        jr      z,
1B66  0A        ld      a,(bc)
1B67  FE 03     cp      $03
1B69  30 06     jr      nc,$06
1B6B  06 8D     ld      b,$8D
1B6D  80        add     a,b
1B6E  C3 2F 1E  jp      $1E2F
1B71  CD 47 1C  call    $1C47
1B74  32 2D 42  ld      ($422D),a
1B77  FE 0B     cp      $0B
1B79  CA EC 1F  jp      z,$1FEC
1B7C  FE 04     cp      $04
1B7E  CA C9 1F  jp      z,$1FC9
1B81  FE 05     cp      $05
1B83  CA CE 1F  jp      z,$1FCE
1B86  FE 0D     cp      $0D
1B88  28        jr      z,
1B89  04        inc     b
1B8A  FE 08     cp      $08
1B8C  20        jr      nz,
1B8D  0B        dec     bc
1B8E  CD 50 16  call    $1650
1B91  C4 94 26  call    nz,$2694
1B94  CD 67 1C  call    $1C67
1B97  18        jr      
1B98  4C        ld      c,h
1B99  FE 0F     cp      $0F
1B9B  38        jr      c,
1B9C  36 CD     ld      (hl),$CD
1B9E  4A        ld      c,d
1B9F  16 20     ld      d,$20
1BA1  31 CD AD  ld      sp,$ADCD
1BA4  1C        inc     e
1BA5  30 20     jr      nc,$20
1BA7  CD 8D 27  call    $278D
1BAA  CD 65 16  call    $1665
1BAD  C8        ret     z
1BAE  CD 83 16  call    $1683
1BB1  2A 6D 41  ld      hl,($416D)
1BB4  CD 0E 28  call    $280E
1BB7  22 6D 41  ld      ($416D),hl
1BBA  CD 58 17  call    $1758
1BBD  C3 94 26  jp      $2694
1BC0  F5        push    af
1BC1  CD BC 10  call    $10BC
1BC4  F1        pop     af
1BC5  18        jr      
1BC6  15        dec     d
1BC7  ED 4B     prefix'K'
1BC9  10        djnz    
1BCA  01 ED 42  ld      bc,$42ED
1BCD  D4 AD 16  call    nc,$16AD
1BD0  DC DA 1C  call    c,$1CDA
1BD3  3A 2D 42  ld      a,($422D)
1BD6  CD 5D 28  call    $285D
1BD9  30 01     jr      nc,$01
1BDB  C8        ret     z
1BDC  CD 0A 1B  call    $1B0A
1BDF  CD 65 20  call    $2065
1BE2  C3 A1 26  jp      $26A1
1BE5  11 4A 01  ld      de,$014A
1BE8  CD C3 2D  call    $2DC3
1BEB  21 58 41  ld      hl,$4158
1BEE  CB 4E     'N'
1BF0  20        jr      nz,
1BF1  22 CB 56  ld      ($56CB),hl
1BF4  CB 96     $96
1BF6  D0        ret     nc
1BF7  CB D6     $D6
1BF9  CA 50 26  jp      z,$2650
1BFC  11 E3 00  ld      de,$00E3
1BFF  CD C3 2D  call    $2DC3
1C02  21 58 41  ld      hl,$4158
1C05  CB 5E     '^'
1C07  CB 9E     $9E
1C09  D0        ret     nc
1C0A  CB DE     $DE
1C0C  20        jr      nz,
1C0D  06 CD     ld      b,$CD
1C0F  54        ld      d,h
1C10  26 C3     ld      h,$C3
1C12  E1        pop     hl
1C13  24        inc     h
1C14  11 03 00  ld      de,$0003
1C17  CD C3 2D  call    $2DC3
1C1A  D0        ret     nc
1C1B  2A FA 43  ld      hl,($43FA)
1C1E  01 D8 00  ld      bc,$00D8
1C21  B7        or      a
1C22  ED 42     prefix'B'
1C24  22 5D 41  ld      ($415D),hl
1C27  54        ld      d,h
1C28  5D        ld      e,l
1C29  1B        dec     de
1C2A  1B        dec     de
1C2B  1B        dec     de
1C2C  ED B0     prefix$B0
1C2E  06 05     ld      b,$05
1C30  CD B7 16  call    $16B7
1C33  21 5F 41  ld      hl,$415F
1C36  28        jr      z,
1C37  03        inc     bc
1C38  05        dec     b
1C39  23        inc     hl
1C3A  23        inc     hl
1C3B  5E        ld      e,(hl)
1C3C  23        inc     hl
1C3D  56        ld      d,(hl)
1C3E  1B        dec     de
1C3F  1B        dec     de
1C40  1B        dec     de
1C41  72        ld      (hl),d
1C42  2B        dec     hl
1C43  73        ld      (hl),e
1C44  10        djnz    
1C45  F3        di
1C46  C9        ret
1C47  CD A7 16  call    $16A7
1C4A  C8        ret     z
1C4B  CD DB 16  call    $16DB
1C4E  C8        ret     z
1C4F  FE 0F     cp      $0F
1C51  20        jr      nz,
1C52  03        inc     bc
1C53  3E 08     ld      a,$08
1C55  C9        ret
1C56  FE 2D     cp      $2D
1C58  C0        ret     nz
1C59  CD AD 1C  call    $1CAD
1C5C  30 04     jr      nc,$04
1C5E  CD 4A 16  call    $164A
1C61  C8        ret     z
1C62  CD D6 1B  call    $1BD6
1C65  18        jr      
1C66  EC CD 1E  call    pe,$1ECD
1C69  25        dec     h
1C6A  3A 2D 42  ld      a,($422D)
1C6D  FE 0D     cp      $0D
1C6F  28        jr      z,
1C70  2A CD AD  ld      hl,($ADCD)
1C73  1C        inc     e
1C74  38        jr      c,
1C75  25        dec     h
1C76  ED 4B     prefix'K'
1C78  10        djnz    
1C79  01 ED 42  ld      bc,$42ED
1C7C  38        jr      c,
1C7D  1D        dec     e
1C7E  3E 0D     ld      a,$0D
1C80  CD 65 16  call    $1665
1C83  28        jr      z,
1C84  16 CD     ld      d,$CD
1C86  DB 16     in      a,($16)
1C88  28        jr      z,
1C89  11 2A 6D  ld      de,$6D2A
1C8C  41        ld      b,c
1C8D  CD 0E 28  call    $280E
1C90  2B        dec     hl
1C91  7E        ld      a,(hl)
1C92  FE 0F     cp      $0F
1C94  C8        ret     z
1C95  00        nop
1C96  3E 0F     ld      a,$0F
1C98  C3 D6 1B  jp      $1BD6
1C9B  ED 5B     prefix'['
1C9D  7B        ld      a,e
1C9E  41        ld      b,c
1C9F  CD AD 16  call    $16AD
1CA2  CD 57 16  call    $1657
1CA5  CD 4E 20  call    $204E
1CA8  3E 08     ld      a,$08
1CAA  C3 5D 28  jp      $285D
1CAD  2A CA 40  ld      hl,($40CA)
1CB0  2B        dec     hl
1CB1  ED 4B     prefix'K'
1CB3  7B        ld      a,e
1CB4  41        ld      b,c
1CB5  B7        or      a
1CB6  ED 42     prefix'B'
1CB8  23        inc     hl
1CB9  C9        ret
1CBA  CD 43 17  call    $1743
1CBD  C0        ret     nz
1CBE  CD A1 16  call    $16A1
1CC1  CD CF 1C  call    $1CCF
1CC4  C8        ret     z
1CC5  CD 1B 1D  call    $1D1B
1CC8  18        jr      
1CC9  F7        rst     30
1CCA  2A 5F 41  ld      hl,($415F)
1CCD  18        jr      
1CCE  03        inc     bc
1CCF  2A 61 41  ld      hl,($4161)
1CD2  ED 5B     prefix'['
1CD4  63        ld      h,e
1CD5  41        ld      b,c
1CD6  E5        push    hl
1CD7  D7        rst     10
1CD8  E1        pop     hl
1CD9  C9        ret
1CDA  EB        ex      de,hl
1CDB  CD A7 16  call    $16A7
1CDE  C0        ret     nz
1CDF  CB DE     $DE
1CE1  CD 8D 27  call    $278D
1CE4  CD 77 16  call    $1677
1CE7  C8        ret     z
1CE8  CD A7 06  call    $06A7
1CEB  13        inc     de
1CEC  C5        push    bc
1CED  ED 4B     prefix'K'
1CEF  6D        ld      l,l
1CF0  41        ld      b,c
1CF1  0A        ld      a,(bc)
1CF2  03        inc     bc
1CF3  FE 10     cp      $10
1CF5  38        jr      c,
1CF6  13        inc     de
1CF7  FE 2D     cp      $2D
1CF9  28        jr      z,
1CFA  0F        rrca
1CFB  FE 80     cp      $80
1CFD  30 0B     jr      nc,$0B
1CFF  C5        push    bc
1D00  D5        push    de
1D01  CD 2E 13  call    $132E
1D04  D1        pop     de
1D05  C1        pop     bc
1D06  19        add     hl,de
1D07  EB        ex      de,hl
1D08  18        jr      
1D09  E7        rst     20
1D0A  E1        pop     hl
1D0B  D7        rst     10
1D0C  D0        ret     nc
1D0D  CD 83 16  call    $1683
1D10  18        jr      
1D11  CF        rst     08
1D12  CD 8F 16  call    $168F
1D15  C0        ret     nz
1D16  3A 6F 40  ld      a,($406F)
1D19  B7        or      a
1D1A  C0        ret     nz
1D1B  CD CF 1C  call    $1CCF
1D1E  C8        ret     z
1D1F  7E        ld      a,(hl)
1D20  CD 2D 1D  call    $1D2D
1D23  2A 61 41  ld      hl,($4161)
1D26  CD E6 27  call    $27E6
1D29  22 61 41  ld      ($4161),hl
1D2C  C9        ret
1D2D  FE AD     cp      $AD
1D2F  C8        ret     z
1D30  FE AE     cp      $AE
1D32  C8        ret     z
1D33  FE 8D     cp      $8D
1D35  C8        ret     z
1D36  FE 06     cp      $06
1D38  28        jr      z,
1D39  3A FE 87  ld      a,($87FE)
1D3C  28        jr      z,
1D3D  36 FE     ld      (hl),$FE
1D3F  80        add     a,b
1D40  20        jr      nz,
1D41  02        ld      (bc),a
1D42  3E 2D     ld      a,$2D
1D44  FE 8E     cp      $8E
1D46  28        jr      z,
1D47  47        ld      b,a
1D48  FE 8F     cp      $8F
1D4A  28        jr      z,
1D4B  48        ld      c,b
1D4C  FE 07     cp      $07
1D4E  28        jr      z,
1D4F  2A FE 9C  ld      hl,($9CFE)
1D52  28        jr      z,
1D53  2C        inc     l
1D54  FE 9D     cp      $9D
1D56  28        jr      z,
1D57  2F        cpl
1D58  2A 61 41  ld      hl,($4161)
1D5B  CD 42 28  call    $2842
1D5E  FE 9E     cp      $9E
1D60  38        jr      c,
1D61  0A        ld      a,(bc)
1D62  FE A0     cp      $A0
1D64  D8        ret     c
1D65  FE A2     cp      $A2
1D67  38        jr      c,
1D68  03        inc     bc
1D69  FE A5     cp      $A5
1D6B  D8        ret     c
1D6C  FE 0D     cp      $0D
1D6E  20        jr      nz,
1D6F  02        ld      (bc),a
1D70  3E 08     ld      a,$08
1D72  E7        rst     20
1D73  C9        ret
1D74  CD 4C 28  call    $284C
1D77  C3 19 0B  jp      $0B19
1D7A  CD 4C 28  call    $284C
1D7D  C3 5D 0B  jp      $0B5D
1D80  21 CE 40  ld      hl,$40CE
1D83  06 32     ld      b,$32
1D85  18        jr      
1D86  05        dec     b
1D87  21 00 41  ld      hl,$4100
1D8A  06 1E     ld      b,$1E
1D8C  C3 F4 26  jp      $26F4
1D8F  21 01 00  ld      hl,$0001
1D92  18        jr      
1D93  E9        jp      (hl)
1D94  21 FF FF  ld      hl,$FFFF
1D97  18        jr      
1D98  E4 3A BF  call    po,$BF3A
1D9B  40        ld      b,b
1D9C  E6 07     and     $07
1D9E  FE 07     cp      $07
1DA0  28        jr      z,
1DA1  0E 1F     ld      c,$1F
1DA3  38        jr      c,
1DA4  0F        rrca
1DA5  1F        rra
1DA6  30 04     jr      nc,$04
1DA8  3E AA     ld      a,$AA
1DAA  18        jr      
1DAB  0A        ld      a,(bc)
1DAC  3E A9     ld      a,$A9
1DAE  18        jr      
1DAF  06 3E     ld      b,$3E
1DB1  A8        xor     b
1DB2  18        jr      
1DB3  02        ld      (bc),a
1DB4  3E AB     ld      a,$AB
1DB6  CD 2F 1E  call    $1E2F
1DB9  CD 65 16  call    $1665
1DBC  C0        ret     nz
1DBD  C3 6F 18  jp      $186F
1DC0  21 71 40  ld      hl,$4071
1DC3  CB 46     'F'
1DC5  CB C6     $C6
1DC7  28        jr      z,
1DC8  02        ld      (bc),a
1DC9  CB 86     $86
1DCB  C3 8D 18  jp      $188D
1DCE  21 6B 40  ld      hl,$406B
1DD1  CB 56     'V'
1DD3  CB D6     $D6
1DD5  11 7B 01  ld      de,$017B
1DD8  3E 01     ld      a,$01
1DDA  28        jr      z,
1DDB  06 CB     ld      b,$CB
1DDD  96        sub     (hl)
1DDE  11 08 01  ld      de,$0108
1DE1  AF        xor     a
1DE2  ED 53     prefix'S'
1DE4  6C        ld      l,h
1DE5  40        ld      b,b
1DE6  CD E6 12  call    $12E6
1DE9  CD 22 26  call    $2622
1DEC  C3 A4 18  jp      $18A4
1DEF  CD DB 16  call    $16DB
1DF2  C2 EA 16  jp      nz,$16EA
1DF5  CD 43 17  call    $1743
1DF8  C0        ret     nz
1DF9  C3 E1 16  jp      $16E1
1DFC  5F        ld      e,a
1DFD  21 BF 40  ld      hl,$40BF
1E00  56        ld      d,(hl)
1E01  E5        push    hl
1E02  E7        rst     20
1E03  E1        pop     hl
1E04  7E        ld      a,(hl)
1E05  BA        cp      d
1E06  C8        ret     z
1E07  7B        ld      a,e
1E08  18        jr      
1E09  25        dec     h
1E0A  21 BF 40  ld      hl,$40BF
1E0D  CB 66     'f'
1E0F  3E 91     ld      a,$91
1E11  20        jr      nz,
1E12  1C        inc     e
1E13  3E 81     ld      a,$81
1E15  18        jr      
1E16  18        jr      
1E17  21 BF 40  ld      hl,$40BF
1E1A  CB 5E     '^'
1E1C  3E 92     ld      a,$92
1E1E  20        jr      nz,
1E1F  0F        rrca
1E20  3E 82     ld      a,$82
1E22  18        jr      
1E23  0B        dec     bc
1E24  21 BF 40  ld      hl,$40BF
1E27  CB 76     'v'
1E29  3E 93     ld      a,$93
1E2B  20        jr      nz,
1E2C  02        ld      (bc),a
1E2D  3E 83     ld      a,$83
1E2F  CD DC 1B  call    $1BDC
1E32  C3 BA 1C  jp      $1CBA
1E35  21 BF 40  ld      hl,$40BF
1E38  CB 7E     '~'
1E3A  3E 95     ld      a,$95
1E3C  20        jr      nz,
1E3D  F1        pop     af
1E3E  3E 85     ld      a,$85
1E40  18        jr      
1E41  ED 3E     prefix$3E
1E43  95        sub     l
1E44  18        jr      
1E45  E9        jp      (hl)
1E46  3A BE 40  ld      a,($40BE)
1E49  CB 6F     'o'
1E4B  20        jr      nz,
1E4C  0D        dec     c
1E4D  06 A5     ld      b,$A5
1E4F  CB 67     'g'
1E51  20        jr      nz,
1E52  04        inc     b
1E53  04        inc     b
1E54  17        rla
1E55  30 FC     jr      nc,$FC
1E57  78        ld      a,b
1E58  18        jr      
1E59  D5        push    de
1E5A  3E AC     ld      a,$AC
1E5C  E7        rst     20
1E5D  2A AA 40  ld      hl,($40AA)
1E60  22 20 42  ld      ($4220),hl
1E63  3E 98     ld      a,$98
1E65  DF        rst     18
1E66  28        jr      z,
1E67  13        inc     de
1E68  3E 72     ld      a,'r'
1E6A  DF        rst     18
1E6B  C4 8F 1D  call    nz,$1D8F
1E6E  3E 73     ld      a,'s'
1E70  DF        rst     18
1E71  C4 94 1D  call    nz,$1D94
1E74  0E 32     ld      c,$32
1E76  CD DE 27  call    $27DE
1E79  18        jr      
1E7A  E8        ret     pe
1E7B  2A AA 40  ld      hl,($40AA)
1E7E  ED 5B     prefix'['
1E80  20        jr      nz,
1E81  42        ld      b,d
1E82  D7        rst     10
1E83  28        jr      z,
1E84  0C        inc     c
1E85  22 C4 40  ld      ($40C4),hl
1E88  CD 11 22  call    $2211
1E8B  2A 63 41  ld      hl,($4163)
1E8E  22 61 41  ld      ($4161),hl
1E91  3E AC     ld      a,$AC
1E93  18        jr      
1E94  9A        sbc     a,d
1E95  3E 99     ld      a,$99
1E97  DF        rst     18
1E98  C8        ret     z
1E99  CD 8C 0A  call    $0A8C
1E9C  3E 99     ld      a,$99
1E9E  DF        rst     18
1E9F  20        jr      nz,
1EA0  FB        ei
1EA1  CD 08 0F  call    $0F08
1EA4  C3 34 0C  jp      $0C34
1EA7  21 72 40  ld      hl,$4072
1EAA  CB 56     'V'
1EAC  C8        ret     z
1EAD  CB 96     $96
1EAF  C3 4C 26  jp      $264C
1EB2  CD 94 26  call    $2694
1EB5  3E 9B     ld      a,$9B
1EB7  DF        rst     18
1EB8  20        jr      nz,
1EB9  11 CD 95  ld      de,$95CD
1EBC  1E 3E     ld      e,$3E
1EBE  82        add     a,d
1EBF  DF        rst     18
1EC0  C4 E4 17  call    nz,$17E4
1EC3  3E 8E     ld      a,$8E
1EC5  DF        rst     18
1EC6  C4 A1 2B  call    nz,$2BA1
1EC9  18        jr      
1ECA  E7        rst     20
1ECB  CD 3C 24  call    $243C
1ECE  21 72 40  ld      hl,$4072
1ED1  CB E6     $E6
1ED3  2A 5D 41  ld      hl,($415D)
1ED6  22 5F 41  ld      ($415F),hl
1ED9  22 61 41  ld      ($4161),hl
1EDC  22 63 41  ld      ($4163),hl
1EDF  C9        ret
1EE0  CD 57 02  call    $0257
1EE3  3E 82     ld      a,$82
1EE5  DF        rst     18
1EE6  20        jr      nz,
1EE7  6C        ld      l,h
1EE8  CD 95 1E  call    $1E95
1EEB  2A 22 42  ld      hl,($4222)
1EEE  11 AA 55  ld      de,$55AA
1EF1  D7        rst     10
1EF2  20        jr      nz,
1EF3  69        ld      l,c
1EF4  CD 51 02  call    $0251
1EF7  21 00 00  ld      hl,$0000
1EFA  22 6F 40  ld      ($406F),hl
1EFD  22 85 40  ld      ($4085),hl
1F00  22 70 40  ld      ($4070),hl
1F03  2A 7B 41  ld      hl,($417B)
1F06  22 26 42  ld      ($4226),hl
1F09  2A A8 40  ld      hl,($40A8)
1F0C  22 24 42  ld      ($4224),hl
1F0F  FB        ei
1F10  CD EC 30  call    $30EC
1F13  CD 9F 0B  call    $0B9F
1F16  F3        di
1F17  CD B2 0B  call    $0BB2
1F1A  CD D3 33  call    $33D3
1F1D  CD 0A 25  call    $250A
1F20  C8        ret     z
1F21  F5        push    af
1F22  CD 79 24  call    $2479
1F25  2A 24 42  ld      hl,($4224)
1F28  ED 5B     prefix'['
1F2A  A8        xor     b
1F2B  40        ld      b,b
1F2C  CD F0 30  call    $30F0
1F2F  2A 26 42  ld      hl,($4226)
1F32  22 7B 41  ld      ($417B),hl
1F35  21 58 41  ld      hl,$4158
1F38  CB 66     'f'
1F3A  28        jr      z,
1F3B  05        dec     b
1F3C  CD 05 29  call    $2905
1F3F  18        jr      
1F40  11 CB 76  ld      de,$76CB
1F43  28        jr      z,
1F44  05        dec     b
1F45  C4 D9 25  call    nz,$25D9
1F48  18        jr      
1F49  08        ex      af,af
1F4A  21 56 41  ld      hl,$4156
1F4D  CB 6E     'n'
1F4F  C4 DB 2E  call    nz,$2EDB
1F52  F1        pop     af
1F53  C9        ret
1F54  21 00 40  ld      hl,$4000
1F57  36 01     ld      (hl),$01
1F59  21 F4 19  ld      hl,$19F4
1F5C  E3        ex      (sp),hl
1F5D  F3        di
1F5E  21 56 41  ld      hl,$4156
1F61  01 A9 1E  ld      bc,$1EA9
1F64  36 00     ld      (hl),$00
1F66  11 57 41  ld      de,$4157
1F69  ED B0     prefix$B0
1F6B  AF        xor     a
1F6C  CD C7 12  call    $12C7
1F6F  CD 0A 11  call    $110A
1F72  CD B2 0B  call    $0BB2
1F75  21 91 41  ld      hl,$4191
1F78  CD 01 27  call    $2701
1F7B  CD 0A 25  call    $250A
1F7E  C4 E7 24  call    nz,$24E7
1F81  21 FF 5F  ld      hl,$5FFF
1F84  22 FA 43  ld      ($43FA),hl
1F87  21 FC 43  ld      hl,$43FC
1F8A  22 6B 41  ld      ($416B),hl
1F8D  CD 15 1B  call    $1B15
1F90  21 35 42  ld      hl,$4235
1F93  06 41     ld      b,'A'
1F95  CD F4 26  call    $26F4
1F98  CD 35 26  call    $2635
1F9B  21 6B 40  ld      hl,$406B
1F9E  CB 56     'V'
1FA0  21 FC 00  ld      hl,$00FC
1FA3  28        jr      z,
1FA4  03        inc     bc
1FA5  21 06 01  ld      hl,$0106
1FA8  22 79 41  ld      ($4179),hl
1FAB  21 44 42  ld      hl,$4244
1FAE  ED 5B     prefix'['
1FB0  79        ld      a,c
1FB1  41        ld      b,c
1FB2  06 0A     ld      b,$0A
1FB4  1A        ld      a,(de)
1FB5  17        rla
1FB6  CB 06     rlc     (hl)$06
1FB8  1F        rra
1FB9  77        ld      (hl),a
1FBA  13        inc     de
1FBB  CD 34 28  call    $2834
1FBE  10        djnz    
1FBF  F4 21 AA  call    p,$AA21
1FC2  55        ld      d,l
1FC3  22 22 42  ld      ($4222),hl
1FC6  C3 D3 33  jp      $33D3
1FC9  21 04 76  ld      hl,$7604
1FCC  18        jr      
1FCD  03        inc     bc
1FCE  21 05 77  ld      hl,$7705
1FD1  11 A2 A3  ld      de,$A3A2
1FD4  18        jr      
1FD5  24        inc     h
1FD6  21 0C 8D  ld      hl,$8D0C
1FD9  11 9F 9E  ld      de,$9E9F
1FDC  18        jr      
1FDD  1C        inc     e
1FDE  CD EC 1F  call    $1FEC
1FE1  3A 2D 42  ld      a,($422D)
1FE4  B7        or      a
1FE5  C8        ret     z
1FE6  3A A3 40  ld      a,($40A3)
1FE9  C3 60 1B  jp      $1B60
1FEC  21 0B 75  ld      hl,$750B
1FEF  11 A0 A1  ld      de,$A1A0
1FF2  18        jr      
1FF3  06 21     ld      b,$21
1FF5  0A        ld      a,(bc)
1FF6  85        add     a,l
1FF7  11 A4 00  ld      de,$00A4
1FFA  22 1C 42  ld      ($421C),hl
1FFD  ED 53     prefix'S'
1FFF  1E 42     ld      e,'B'
2001  2A AA 40  ld      hl,($40AA)
2004  22 81 41  ld      ($4181),hl
2007  2A 7B 41  ld      hl,($417B)
200A  22 7F 41  ld      ($417F),hl
200D  22 73 40  ld      ($4073),hl
2010  CD 3A 22  call    $223A
2013  3A 1D 42  ld      a,($421D)
2016  DF        rst     18
2017  C2 99 20  jp      nz,$2099
201A  CD 28 20  call    $2028
201D  18        jr      
201E  03        inc     bc
201F  CD 8D 27  call    $278D
2022  CD 94 26  call    $2694
2025  C3 BE 28  jp      $28BE
2028  3A 1C 42  ld      a,($421C)
202B  FE 04     cp      $04
202D  28        jr      z,
202E  48        ld      c,b
202F  FE 05     cp      $05
2031  28        jr      z,
2032  4C        ld      c,h
2033  FE 0A     cp      $0A
2035  28        jr      z,
2036  4F        ld      c,a
2037  FE 0C     cp      $0C
2039  CA 72 29  jp      z,$2972
203C  CD 59 14  call    $1459
203F  30 2C     jr      nc,$2C
2041  E5        push    hl
2042  ED 5B     prefix'['
2044  7F        ld      a,a
2045  41        ld      b,c
2046  19        add     hl,de
2047  22 7B 41  ld      ($417B),hl
204A  D1        pop     de
204B  3A 1C 42  ld      a,($421C)
204E  CD 0A 1B  call    $1B0A
2051  E5        push    hl
2052  CD 43 17  call    $1743
2055  28        jr      z,
2056  08        ex      af,af
2057  CD 58 17  call    $1758
205A  21 1B 42  ld      hl,$421B
205D  36 FF     ld      (hl),$FF
205F  E1        pop     hl
2060  77        ld      (hl),a
2061  CD 47 28  call    $2847
2064  23        inc     hl
2065  77        ld      (hl),a
2066  23        inc     hl
2067  CD 2D 28  call    $282D
206A  C3 3C 1B  jp      $1B3C
206D  AF        xor     a
206E  32 2D 42  ld      ($422D),a
2071  CD 6D 21  call    $216D
2074  C3 3C 26  jp      $263C
2077  CD 92 14  call    $1492
207A  30 F1     jr      nc,$F1
207C  E5        push    hl
207D  18        jr      
207E  CB CD     $CD
2080  97        sub     a
2081  14        inc     d
2082  28        jr      z,
2083  E9        jp      (hl)
2084  18        jr      
2085  F6 CD     or      $CD
2087  3B        dec     sp
2088  17        rla
2089  ED 5B     prefix'['
208B  7B        ld      a,e
208C  41        ld      b,c
208D  2A CC 40  ld      hl,($40CC)
2090  22 7B 41  ld      ($417B),hl
2093  D7        rst     10
2094  3E 0A     ld      a,$0A
2096  EB        ex      de,hl
2097  18        jr      
2098  B5        or      l
2099  3A 1C 42  ld      a,($421C)
209C  FE 06     cp      $06
209E  38        jr      c,
209F  2E F7     ld      l,$F7
20A1  FE 0E     cp      $0E
20A3  28        jr      z,
20A4  1B        dec     de
20A5  FE 0F     cp      $0F
20A7  28        jr      z,
20A8  17        rla
20A9  3E 9C     ld      a,$9C
20AB  DF        rst     18
20AC  20        jr      nz,
20AD  5B        ld      e,e
20AE  3E 9E     ld      a,$9E
20B0  DF        rst     18
20B1  C2 4B 21  jp      nz,$214B
20B4  3E 97     ld      a,$97
20B6  DF        rst     18
20B7  CA 13 20  jp      z,$2013
20BA  CD 6D 21  call    $216D
20BD  C3 22 20  jp      $2022
20C0  47        ld      b,a
20C1  CD 5D 28  call    $285D
20C4  78        ld      a,b
20C5  28        jr      z,
20C6  04        inc     b
20C7  E7        rst     20
20C8  2A 7B 41  ld      hl,($417B)
20CB  C3 0D 20  jp      $200D
20CE  F7        rst     30
20CF  B7        or      a
20D0  28        jr      z,
20D1  04        inc     b
20D2  FE 03     cp      $03
20D4  38        jr      c,
20D5  F1        pop     af
20D6  EF        rst     28
20D7  FE 9C     cp      $9C
20D9  28        jr      z,
20DA  1A        ld      a,(de)
20DB  FE 9E     cp      $9E
20DD  28        jr      z,
20DE  1E FE     ld      e,$FE
20E0  97        sub     a
20E1  C2 13 20  jp      nz,$2013
20E4  CD E9 20  call    $20E9
20E7  18        jr      
20E8  D1        pop     de
20E9  ED 5B     prefix'['
20EB  81        add     a,c
20EC  41        ld      b,c
20ED  2A AA 40  ld      hl,($40AA)
20F0  3E 07     ld      a,$07
20F2  C3 79 21  jp      $2179
20F5  CD E9 20  call    $20E9
20F8  CD 2B 14  call    $142B
20FB  18        jr      
20FC  19        add     hl,de
20FD  CD E9 20  call    $20E9
2100  CD 54 14  call    $1454
2103  ED 5B     prefix'['
2105  AA        xor     d
2106  40        ld      b,b
2107  18        jr      
2108  54        ld      d,h
2109  CD 6D 21  call    $216D
210C  3A 1E 42  ld      a,($421E)
210F  FE A4     cp      $A4
2111  20        jr      nz,
2112  0C        inc     c
2113  CD 33 14  call    $1433
2116  3A 1E 42  ld      a,($421E)
2119  DC 4E 20  call    c,$204E
211C  C3 1F 20  jp      $201F
211F  FE 9F     cp      $9F
2121  28        jr      z,
2122  05        dec     b
2123  CD 11 14  call    $1411
2126  18        jr      
2127  EE CD     xor     $CD
2129  26 14     ld      h,$14
212B  CB BA     $BA
212D  18        jr      
212E  E7        rst     20
212F  CD 43 21  call    $2143
2132  18        jr      
2133  DF        rst     18
2134  CD 43 21  call    $2143
2137  18        jr      
2138  EA CD 43  jp      pe,$43CD
213B  21 18 EA  ld      hl,$EA18
213E  CD 43 21  call    $2143
2141  18        jr      
2142  13        inc     de
2143  CD 54 28  call    $2854
2146  ED 53     prefix'S'
2148  73        ld      (hl),e
2149  40        ld      b,b
214A  C9        ret
214B  3A 1C 42  ld      a,($421C)
214E  FE 0A     cp      $0A
2150  CA BA 20  jp      z,$20BA
2153  CD 6D 21  call    $216D
2156  CD 62 21  call    $2162
2159  ED 5B     prefix'['
215B  7B        ld      a,e
215C  41        ld      b,c
215D  3A 1F 42  ld      a,($421F)
2160  18        jr      
2161  B7        or      a
2162  3A 1F 42  ld      a,($421F)
2165  FE 9E     cp      $9E
2167  CA 4F 14  jp      z,$144F
216A  C3 42 14  jp      $1442
216D  ED 5B     prefix'['
216F  7F        ld      a,a
2170  41        ld      b,c
2171  2A 7B 41  ld      hl,($417B)
2174  22 73 40  ld      ($4073),hl
2177  3E 06     ld      a,$06
2179  D7        rst     10
217A  C8        ret     z
217B  EB        ex      de,hl
217C  2A 61 41  ld      hl,($4161)
217F  CD 35 28  call    $2835
2182  22 61 41  ld      ($4161),hl
2185  C3 4E 20  jp      $204E
2188  2A 6D 41  ld      hl,($416D)
218B  7E        ld      a,(hl)
218C  FE 9E     cp      $9E
218E  38        jr      c,
218F  08        ex      af,af
2190  FE A5     cp      $A5
2192  38        jr      c,
2193  39        add     hl,sp
2194  FE AD     cp      $AD
2196  30 35     jr      nc,$35
2198  CD 57 28  call    $2857
219B  CD 50 16  call    $1650
219E  20        jr      nz,
219F  17        rla
21A0  CB 7A     'z'
21A2  C2 E2 23  jp      nz,$23E2
21A5  7A        ld      a,d
21A6  B3        or      e
21A7  C2 9A 23  jp      nz,$239A
21AA  CD FC 23  call    $23FC
21AD  D2 9A 23  jp      nc,$239A
21B0  CD F1 23  call    $23F1
21B3  C0        ret     nz
21B4  C3 E7 23  jp      $23E7
21B7  2A 7B 41  ld      hl,($417B)
21BA  B7        or      a
21BB  ED 5A     prefix'Z'
21BD  FA 5C 26  jp      m,$265C
21C0  E5        push    hl
21C1  ED 4B     prefix'K'
21C3  AB        xor     e
21C4  00        nop
21C5  ED 42     prefix'B'
21C7  E1        pop     hl
21C8  D2 5C 26  jp      nc,$265C
21CB  18        jr      
21CC  03        inc     bc
21CD  CD 4C 28  call    $284C
21D0  ED 5B     prefix'['
21D2  7B        ld      a,e
21D3  41        ld      b,c
21D4  22 7B 41  ld      ($417B),hl
21D7  D7        rst     10
21D8  3E 06     ld      a,$06
21DA  EB        ex      de,hl
21DB  18        jr      
21DC  A8        xor     b
21DD  2A 6D 41  ld      hl,($416D)
21E0  7E        ld      a,(hl)
21E1  FE A2     cp      $A2
21E3  28        jr      z,
21E4  1F        rra
21E5  FE A3     cp      $A3
21E7  28        jr      z,
21E8  1B        dec     de
21E9  FE AC     cp      $AC
21EB  20        jr      nz,
21EC  10        djnz    
21ED  23        inc     hl
21EE  22 6D 41  ld      ($416D),hl
21F1  2B        dec     hl
21F2  CD 57 28  call    $2857
21F5  D5        push    de
21F6  E1        pop     hl
21F7  CD 5D 0B  call    $0B5D
21FA  C3 85 1E  jp      $1E85
21FD  CD 57 28  call    $2857
2200  3E 07     ld      a,$07
2202  18        jr      
2203  81        add     a,c
2204  CD 4C 28  call    $284C
2207  ED 5B     prefix'['
2209  AA        xor     d
220A  40        ld      b,b
220B  D7        rst     10
220C  30 03     jr      nc,$03
220E  21 00 00  ld      hl,$0000
2211  EB        ex      de,hl
2212  18        jr      
2213  EC D5 3E  call    pe,$3ED5
2216  0F        rrca
2217  E5        push    hl
2218  CD 2E 13  call    $132E
221B  EB        ex      de,hl
221C  E1        pop     hl
221D  01 00 00  ld      bc,$0000
2220  51        ld      d,c
2221  CB 7C     '|'
2223  20        jr      nz,
2224  07        rlca
2225  D7        rst     10
2226  38        jr      c,
2227  03        inc     bc
2228  03        inc     bc
2229  20        jr      nz,
222A  FA 03 69  jp      m,$6903
222D  60        ld      h,b
222E  D1        pop     de
222F  C9        ret
2230  D5        push    de
2231  E5        push    hl
2232  CD F2 13  call    $13F2
2235  E5        push    hl
2236  D1        pop     de
2237  E1        pop     hl
2238  18        jr      
2239  E3        ex      (sp),hl
223A  3A 1C 42  ld      a,($421C)
223D  D6 04     sub     $04
223F  28        jr      z,
2240  48        ld      c,b
2241  3D        dec     a
2242  28        jr      z,
2243  52        ld      d,d
2244  D6 05     sub     $05
2246  28        jr      z,
2247  1B        dec     de
2248  3D        dec     a
2249  28        jr      z,
224A  21 3D C0  ld      hl,$C03D
224D  CD 8A 14  call    $148A
2250  38        jr      c,
2251  08        ex      af,af
2252  11 FF FF  ld      de,$FFFF
2255  2A 7B 41  ld      hl,($417B)
2258  18        jr      
2259  07        rlca
225A  EB        ex      de,hl
225B  2A 7B 41  ld      hl,($417B)
225E  CD 71 22  call    $2271
2261  18        jr      
2262  6F        ld      l,a
2263  ED 5B     prefix'['
2265  CC 40 2A  call    z,$2A40
2268  7B        ld      a,e
2269  41        ld      b,c
226A  18        jr      
226B  F5        push    af
226C  CD 59 14  call    $1459
226F  18        jr      
2270  DF        rst     18
2271  E5        push    hl
2272  19        add     hl,de
2273  EB        ex      de,hl
2274  E1        pop     hl
2275  C9        ret
2276  ED 5B     prefix'['
2278  C8        ret     z
2279  40        ld      b,b
227A  3E AD     ld      a,$AD
227C  18        jr      
227D  06 ED     ld      b,$ED
227F  5B        ld      e,e
2280  CA 40 3E  jp      z,$3E40
2283  AE        xor     (hl)
2284  32 1C 42  ld      ($421C),a
2287  18        jr      
2288  DE CD     sbc     a,$CD
228A  92        sub     d
228B  14        inc     d
228C  38        jr      c,
228D  0D        dec     c
228E  11 FF FF  ld      de,$FFFF
2291  2A AA 40  ld      hl,($40AA)
2294  18        jr      
2295  0C        inc     c
2296  CD 97 14  call    $1497
2299  28        jr      z,
229A  F3        di
229B  EB        ex      de,hl
229C  2A AA 40  ld      hl,($40AA)
229F  CD 71 22  call    $2271
22A2  CD 30 22  call    $2230
22A5  EB        ex      de,hl
22A6  CD 30 22  call    $2230
22A9  EB        ex      de,hl
22AA  E5        push    hl
22AB  CD FE 26  call    $26FE
22AE  E1        pop     hl
22AF  D5        push    de
22B0  11 9D 41  ld      de,$419D
22B3  CD C2 22  call    $22C2
22B6  3A 1C 42  ld      a,($421C)
22B9  13        inc     de
22BA  12        ld      (de),a
22BB  13        inc     de
22BC  3E 3A     ld      a,$3A
22BE  12        ld      (de),a
22BF  13        inc     de
22C0  13        inc     de
22C1  E1        pop     hl
22C2  D5        push    de
22C3  CD AC 27  call    $27AC
22C6  21 2A 42  ld      hl,$422A
22C9  D1        pop     de
22CA  01 03 00  ld      bc,$0003
22CD  ED B0     prefix$B0
22CF  C3 B1 26  jp      $26B1
22D2  CD 14 22  call    $2214
22D5  EB        ex      de,hl
22D6  CD 14 22  call    $2214
22D9  EB        ex      de,hl
22DA  18        jr      
22DB  CE 3E     adc     a,$3E
22DD  9C        sbc     a,h
22DE  18        jr      
22DF  02        ld      (bc),a
22E0  3E 9D     ld      a,$9D
22E2  CD DC 1B  call    $1BDC
22E5  C3 1F 20  jp      $201F
22E8  CD 5F 16  call    $165F
22EB  C0        ret     nz
22EC  CB D6     $D6
22EE  2A 7B 41  ld      hl,($417B)
22F1  C3 D8 21  jp      $21D8
22F4  CD E8 22  call    $22E8
22F7  3A 2D 42  ld      a,($422D)
22FA  FE 83     cp      $83
22FC  0E 0E     ld      c,$0E
22FE  28        jr      z,
22FF  02        ld      (bc),a
2300  0E 0F     ld      c,$0F
2302  06 05     ld      b,$05
2304  C5        push    bc
2305  79        ld      a,c
2306  CD 5D 28  call    $285D
2309  28        jr      z,
230A  16 CD     ld      d,$CD
230C  4A        ld      c,d
230D  16 28     ld      d,$28
230F  05        dec     b
2310  CD F1 23  call    $23F1
2313  18        jr      
2314  03        inc     bc
2315  CD FC 23  call    $23FC
2318  38        jr      c,
2319  04        inc     b
231A  CD B0 28  call    $28B0
231D  AF        xor     a
231E  C4 6C 11  call    nz,$116C
2321  C1        pop     bc
2322  10        djnz    
2323  E0        ret     po
2324  CD A1 26  call    $26A1
2327  CD BC 10  call    $10BC
232A  CD CD 28  call    $28CD
232D  32 2D 42  ld      ($422D),a
2330  FE 97     cp      $97
2332  28        jr      z,
2333  40        ld      b,b
2334  FE 83     cp      $83
2336  28        jr      z,
2337  BC        cp      h
2338  FE 86     cp      $86
233A  28        jr      z,
233B  B8        cp      b
233C  FE 9C     cp      $9C
233E  CA 05 24  jp      z,$2405
2341  FE AD     cp      $AD
2343  D2 05 24  jp      nc,$2405
2346  FE 06     cp      $06
2348  28        jr      z,
2349  25        dec     h
234A  FE 07     cp      $07
234C  CA DD 21  jp      z,$21DD
234F  CB 7F     $7F
2351  20        jr      nz,
2352  10        djnz    
2353  FE 0D     cp      $0D
2355  20        jr      nz,
2356  02        ld      (bc),a
2357  3E 08     ld      a,$08
2359  CD 5B 1B  call    $1B5B
235C  CD BA 1C  call    $1CBA
235F  CD 50 16  call    $1650
2362  C8        ret     z
2363  FE 81     cp      $81
2365  20        jr      nz,
2366  BD        cp      l
2367  CD 7A 23  call    $237A
236A  CD 1D 2F  call    $2F1D
236D  18        jr      
236E  B5        or      l
236F  CD 88 21  call    $2188
2372  18        jr      
2373  E8        ret     pe
2374  CD 7A 23  call    $237A
2377  C3 F7 25  jp      $25F7
237A  CD 5F 16  call    $165F
237D  C8        ret     z
237E  CB 96     $96
2380  2A 63 41  ld      hl,($4163)
2383  22 61 41  ld      ($4161),hl
2386  CD 57 28  call    $2857
2389  2B        dec     hl
238A  22 63 41  ld      ($4163),hl
238D  CD 06 14  call    $1406
2390  D7        rst     10
2391  C3 D8 21  jp      $21D8
2394  CD 50 16  call    $1650
2397  C2 F4 22  jp      nz,$22F4
239A  21 56 41  ld      hl,$4156
239D  CB CE     $CE
239F  2A CA 40  ld      hl,($40CA)
23A2  CD A7 23  call    $23A7
23A5  18        jr      
23A6  C6 E5     ada     a,$E5
23A8  ED 4B     prefix'K'
23AA  7B        ld      a,e
23AB  41        ld      b,c
23AC  B7        or      a
23AD  ED 42     prefix'B'
23AF  EB        ex      de,hl
23B0  E1        pop     hl
23B1  38        jr      c,
23B2  12        ld      (de),a
23B3  CD BD 23  call    $23BD
23B6  EB        ex      de,hl
23B7  CD D8 21  call    $21D8
23BA  C3 BA 1C  jp      $1CBA
23BD  2A 7B 41  ld      hl,($417B)
23C0  19        add     hl,de
23C1  22 7B 41  ld      ($417B),hl
23C4  C9        ret
23C5  ED 4B     prefix'K'
23C7  C0        ret     nz
23C8  40        ld      b,b
23C9  B7        or      a
23CA  ED 42     prefix'B'
23CC  28        jr      z,
23CD  E5        push    hl
23CE  11 00 00  ld      de,$0000
23D1  18        jr      
23D2  E0        ret     po
23D3  3E 83     ld      a,$83
23D5  32 2D 42  ld      ($422D),a
23D8  CD 50 16  call    $1650
23DB  20        jr      nz,
23DC  BA        cp      d
23DD  CD F1 23  call    $23F1
23E0  28        jr      z,
23E1  05        dec     b
23E2  2A C0 40  ld      hl,($40C0)
23E5  18        jr      
23E6  C0        ret     nz
23E7  21 56 41  ld      hl,$4156
23EA  CB C6     $C6
23EC  2A C0 40  ld      hl,($40C0)
23EF  18        jr      
23F0  B1        or      c
23F1  2A C0 40  ld      hl,($40C0)
23F4  ED 4B     prefix'K'
23F6  7B        ld      a,e
23F7  41        ld      b,c
23F8  B7        or      a
23F9  ED 42     prefix'B'
23FB  C9        ret
23FC  2A 7B 41  ld      hl,($417B)
23FF  ED 4B     prefix'K'
2401  CA 40 18  jp      z,$1840
2404  F3        di
2405  3E AE     ld      a,$AE
2407  CD 4A 16  call    $164A
240A  20        jr      nz,
240B  04        inc     b
240C  3E AD     ld      a,$AD
240E  CB 46     'F'
2410  CD 94 26  call    $2694
2413  CD 57 16  call    $1657
2416  C8        ret     z
2417  F5        push    af
2418  CD 7A 23  call    $237A
241B  F1        pop     af
241C  2A 7B 41  ld      hl,($417B)
241F  FE AD     cp      $AD
2421  20        jr      nz,
2422  14        inc     d
2423  E5        push    hl
2424  CD 3F 17  call    $173F
2427  E1        pop     hl
2428  22 C8 40  ld      ($40C8),hl
242B  22 C0 40  ld      ($40C0),hl
242E  CD DA 21  call    $21DA
2431  CD 57 16  call    $1657
2434  C3 8D 27  jp      $278D
2437  22 CA 40  ld      ($40CA),hl
243A  18        jr      
243B  F2 11 D0  jp      p,$D011
243E  02        ld      (bc),a
243F  21 1E 00  ld      hl,$001E
2442  D5        push    de
2443  CD 5D 0B  call    $0B5D
2446  3E 02     ld      a,$02
2448  DF        rst     18
2449  D1        pop     de
244A  20        jr      nz,
244B  12        ld      (de),a
244C  1B        dec     de
244D  7B        ld      a,e
244E  B2        or      d
244F  CA 48 26  jp      z,$2648
2452  3E 9B     ld      a,$9B
2454  D5        push    de
2455  DF        rst     18
2456  D1        pop     de
2457  21 03 00  ld      hl,$0003
245A  20        jr      nz,
245B  E6 18     and     $18
245D  F1        pop     af
245E  21 00 00  ld      hl,$0000
2461  22 AA 40  ld      ($40AA),hl
2464  2A C6 40  ld      hl,($40C6)
2467  CD 5D 0B  call    $0B5D
246A  CD BC 10  call    $10BC
246D  2A A8 40  ld      hl,($40A8)
2470  CD EC 30  call    $30EC
2473  CD 9F 0B  call    $0B9F
2476  CD 0A 25  call    $250A
2479  2A A8 40  ld      hl,($40A8)
247C  11 CA 00  ld      de,$00CA
247F  AF        xor     a
2480  D7        rst     10
2481  11 36 FF  ld      de,$FF36
2484  F2 8D 24  jp      p,$248D
2487  EB        ex      de,hl
2488  D7        rst     10
2489  EB        ex      de,hl
248A  21 00 00  ld      hl,$0000
248D  22 A6 40  ld      ($40A6),hl
2490  2A C8 40  ld      hl,($40C8)
2493  22 C0 40  ld      ($40C0),hl
2496  22 7B 41  ld      ($417B),hl
2499  19        add     hl,de
249A  C3 19 0B  jp      $0B19
249D  E5        push    hl
249E  CD E7 24  call    $24E7
24A1  18        jr      
24A2  21 CD BA  ld      hl,$BACD
24A5  1C        inc     e
24A6  CD E7 24  call    $24E7
24A9  CD B7 16  call    $16B7
24AC  28        jr      z,
24AD  16 CD     ld      d,$CD
24AF  CA 1C 28  jp      z,$281C
24B2  05        dec     b
24B3  CD 97 35  call    $3597
24B6  18        jr      
24B7  F6 3E     or      $3E
24B9  03        inc     bc
24BA  CD 33 36  call    $3633
24BD  06 0C     ld      b,$0C
24BF  CD 9A 35  call    $359A
24C2  10        djnz    
24C3  FB        ei
24C4  E1        pop     hl
24C5  21 72 40  ld      hl,$4072
24C8  36 00     ld      (hl),$00
24CA  21 58 41  ld      hl,$4158
24CD  CB 86     $86
24CF  CD E5 13  call    $13E5
24D2  CD 32 17  call    $1732
24D5  CD 20 17  call    $1720
24D8  CD FC 16  call    $16FC
24DB  CD 0E 17  call    $170E
24DE  CD BC 10  call    $10BC
24E1  CD ED 2B  call    $2BED
24E4  C3 ED 2B  jp      $2BED
24E7  21 8D 01  ld      hl,$018D
24EA  ED 5B     prefix'['
24EC  A8        xor     b
24ED  40        ld      b,b
24EE  CD F0 30  call    $30F0
24F1  06 20     ld      b,$20
24F3  21 50 00  ld      hl,$0050
24F6  CD 5D 0B  call    $0B5D
24F9  3E 08     ld      a,$08
24FB  DF        rst     18
24FC  28        jr      z,
24FD  03        inc     bc
24FE  10        djnz    
24FF  F3        di
2500  C9        ret
2501  21 60 01  ld      hl,$0160
2504  CD 5D 0B  call    $0B5D
2507  C3 9F 0B  jp      $0B9F
250A  06 C0     ld      b,$C0
250C  21 0F 00  ld      hl,$000F
250F  C5        push    bc
2510  CD 19 0B  call    $0B19
2513  3E 02     ld      a,$02
2515  DF        rst     18
2516  C1        pop     bc
2517  C0        ret     nz
2518  21 02 00  ld      hl,$0002
251B  10        djnz    
251C  F2 C9 CD  jp      p,$CDC9
251F  43        ld      b,e
2520  17        rla
2521  C8        ret     z
2522  2A 63 41  ld      hl,($4163)
2525  36 08     ld      (hl),$08
2527  E5        push    hl
2528  CD 98 17  call    $1798
252B  CC 58 17  call    z,$1758
252E  CD A7 16  call    $16A7
2531  E1        pop     hl
2532  28        jr      z,
2533  2C        inc     l
2534  11 01 FF  ld      de,$FF01
2537  14        inc     d
2538  ED 4B     prefix'K'
253A  61        ld      h,c
253B  41        ld      b,c
253C  CD 05 28  call    $2805
253F  7E        ld      a,(hl)
2540  38        jr      c,
2541  0F        rrca
2542  FE 0F     cp      $0F
2544  43        ld      b,e
2545  1E 00     ld      e,$00
2547  20        jr      nz,
2548  EF        rst     28
2549  58        ld      e,b
254A  10        djnz    
254B  EB        ex      de,hl
254C  CD B0 28  call    $28B0
254F  18        jr      
2550  E7        rst     20
2551  CD AD 1C  call    $1CAD
2554  38        jr      c,
2555  0A        ld      a,(bc)
2556  5D        ld      e,l
2557  D5        push    de
2558  ED 5B     prefix'['
255A  10        djnz    
255B  01 D7 D1  ld      bc,$D1D7
255E  38        jr      c,
255F  05        dec     b
2560  01 00 00  ld      bc,$0000
2563  18        jr      
2564  1D        dec     e
2565  CD 68 17  call    $1768
2568  FE 0F     cp      $0F
256A  20        jr      nz,
256B  09        add     hl,bc
256C  15        dec     d
256D  D5        push    de
256E  CD 1B 1D  call    $1D1B
2571  D1        pop     de
2572  7E        ld      a,(hl)
2573  18        jr      
2574  F3        di
2575  0E FF     ld      c,$FF
2577  7B        ld      a,e
2578  0C        inc     c
2579  14        inc     d
257A  15        dec     d
257B  28        jr      z,
257C  08        ex      af,af
257D  92        sub     d
257E  30 F8     jr      nc,$F8
2580  82        add     a,d
2581  47        ld      b,a
2582  CD 68 17  call    $1768
2585  2A 61 41  ld      hl,($4161)
2588  7E        ld      a,(hl)
2589  F5        push    af
258A  C5        push    bc
258B  CD 20 1D  call    $1D20
258E  C1        pop     bc
258F  F1        pop     af
2590  FE 08     cp      $08
2592  CA 9A 16  jp      z,$169A
2595  FE 0F     cp      $0F
2597  20        jr      nz,
2598  EC 21 BF  call    pe,$BF21
259B  40        ld      b,b
259C  CB 76     'v'
259E  28        jr      z,
259F  05        dec     b
25A0  3E 17     ld      a,$17
25A2  C5        push    bc
25A3  E7        rst     20
25A4  C1        pop     bc
25A5  AF        xor     a
25A6  67        ld      h,a
25A7  69        ld      l,c
25A8  B0        or      b
25A9  28        jr      z,
25AA  02        ld      (bc),a
25AB  05        dec     b
25AC  2C        inc     l
25AD  C5        push    bc
25AE  CD 19 0B  call    $0B19
25B1  C1        pop     bc
25B2  18        jr      
25B3  D1        pop     de
25B4  21 58 41  ld      hl,$4158
25B7  CB F6     $F6
25B9  06 11     ld      b,$11
25BB  21 72 40  ld      hl,$4072
25BE  CB 56     'V'
25C0  CB 96     $96
25C2  20        jr      nz,
25C3  08        ex      af,af
25C4  21 11 00  ld      hl,$0011
25C7  CD 5D 0B  call    $0B5D
25CA  10        djnz    
25CB  EF        rst     28
25CC  ED 43     prefix'C'
25CE  85        add     a,l
25CF  41        ld      b,c
25D0  C4 4C 26  call    nz,$264C
25D3  CD 71 17  call    $1771
25D6  CD 04 18  call    $1804
25D9  3E 84     ld      a,$84
25DB  DF        rst     18
25DC  28        jr      z,
25DD  FB        ei
25DE  ED 4B     prefix'K'
25E0  85        add     a,l
25E1  41        ld      b,c
25E2  3E 11     ld      a,$11
25E4  90        sub     b
25E5  47        ld      b,a
25E6  21 EF FF  ld      hl,$FFEF
25E9  CD 5D 0B  call    $0B5D
25EC  10        djnz    
25ED  FB        ei
25EE  CD 75 17  call    $1775
25F1  21 58 41  ld      hl,$4158
25F4  CB B6     $B6
25F6  C9        ret
25F7  CD 50 16  call    $1650
25FA  28        jr      z,
25FB  05        dec     b
25FC  CD 57 16  call    $1657
25FF  18        jr      
2600  21 CD 77  ld      hl,$77CD
2603  16 C2     ld      d,$C2
2605  83        add     a,ee
2606  16 3E     ld      d,$3E
2608  97        sub     a
2609  DF        rst     18
260A  C8        ret     z
260B  3A A4 40  ld      a,($40A4)
260E  DF        rst     18
260F  20        jr      nz,
2610  19        add     hl,de
2611  3E 9D     ld      a,$9D
2613  DF        rst     18
2614  C2 2C 31  jp      nz,$312C
2617  3E 8C     ld      a,$8C
2619  DF        rst     18
261A  C2 49 31  jp      nz,$3149
261D  3E 9C     ld      a,$9C
261F  DF        rst     18
2620  28        jr      z,
2621  E5        push    hl
2622  3E 8D     ld      a,$8D
2624  CD C0 1B  call    $1BC0
2627  C3 8D 27  jp      $278D
262A  3E 15     ld      a,$15
262C  CD 5B 1B  call    $1B5B
262F  CD BC 10  call    $10BC
2632  C3 BE 28  jp      $28BE
2635  AF        xor     a
2636  18        jr      
2637  30 3E     jr      nc,$3E
2639  01 18 2C  ld      bc,$2C18
263C  3E 02     ld      a,$02
263E  18        jr      
263F  28        jr      z,
2640  3E 03     ld      a,$03
2642  18        jr      
2643  24        inc     h
2644  3E 04     ld      a,$04
2646  18        jr      
2647  20        jr      nz,
2648  3E 05     ld      a,$05
264A  18        jr      
264B  1C        inc     e
264C  3E 07     ld      a,$07
264E  18        jr      
264F  18        jr      
2650  3E 08     ld      a,$08
2652  18        jr      
2653  14        inc     d
2654  3E 09     ld      a,$09
2656  18        jr      
2657  10        djnz    
2658  3E 0A     ld      a,$0A
265A  18        jr      
265B  0C        inc     c
265C  3E 0B     ld      a,$0B
265E  18        jr      
265F  08        ex      af,af
2660  3E 0C     ld      a,$0C
2662  18        jr      
2663  04        inc     b
2664  3E 0D     ld      a,$0D
2666  18        jr      
2667  00        nop
2668  21 AC 40  ld      hl,$40AC
266B  CD 01 27  call    $2701
266E  01 03 03  ld      bc,$0303
2671  CD 05 27  call    $2705
2674  26 00     ld      h,$00
2676  6F        ld      l,a
2677  CD AC 27  call    $27AC
267A  2A 2B 42  ld      hl,($422B)
267D  22 B1 40  ld      ($40B1),hl
2680  21 B5 40  ld      hl,$40B5
2683  06 03     ld      b,$03
2685  CD 05 27  call    $2705
2688  CD 83 16  call    $1683
268B  CD 8D 27  call    $278D
268E  3E 97     ld      a,$97
2690  DF        rst     18
2691  28        jr      z,
2692  FB        ei
2693  AF        xor     a
2694  21 91 41  ld      hl,$4191
2697  18        jr      
2698  1B        dec     de
2699  21 9D 41  ld      hl,$419D
269C  D5        push    de
269D  C5        push    bc
269E  F5        push    af
269F  18        jr      
26A0  2B        dec     hl
26A1  CD 4A 16  call    $164A
26A4  28        jr      z,
26A5  05        dec     b
26A6  CD 7E 22  call    $227E
26A9  18        jr      
26AA  06 CB     ld      b,$CB
26AC  46        ld      b,(hl)
26AD  C8        ret     z
26AE  CD 76 22  call    $2276
26B1  21 9D 41  ld      hl,$419D
26B4  D5        push    de
26B5  C5        push    bc
26B6  F5        push    af
26B7  E5        push    hl
26B8  CD 98 17  call    $1798
26BB  2A 6D 41  ld      hl,($416D)
26BE  7E        ld      a,(hl)
26BF  E1        pop     hl
26C0  28        jr      z,
26C1  0A        ld      a,(bc)
26C2  E5        push    hl
26C3  01 0B 00  ld      bc,$000B
26C6  09        add     hl,bc
26C7  77        ld      (hl),a
26C8  2B        dec     hl
26C9  36 9B     ld      (hl),$9B
26CB  E1        pop     hl
26CC  11 AC 40  ld      de,$40AC
26CF  06 0C     ld      b,$0C
26D1  7E        ld      a,(hl)
26D2  CB 7F     $7F
26D4  20        jr      nz,
26D5  10        djnz    
26D6  FE 10     cp      $10
26D8  38        jr      c,
26D9  0C        inc     c
26DA  E5        push    hl
26DB  C5        push    bc
26DC  06 00     ld      b,$00
26DE  4F        ld      c,a
26DF  2A 6C 40  ld      hl,($406C)
26E2  09        add     hl,bc
26E3  7E        ld      a,(hl)
26E4  C1        pop     bc
26E5  E1        pop     hl
26E6  12        ld      (de),a
26E7  13        inc     de
26E8  23        inc     hl
26E9  10        djnz    
26EA  E6 F1     and     $F1
26EC  C1        pop     bc
26ED  D1        pop     de
26EE  C9        ret
26EF  21 CE 41  ld      hl,$41CE
26F2  06 20     ld      b,$20
26F4  0E 00     ld      c,$00
26F6  18        jr      
26F7  0D        dec     c
26F8  CD 94 26  call    $2694
26FB  CD BC 10  call    $10BC
26FE  21 9D 41  ld      hl,$419D
2701  06 0C     ld      b,$0C
2703  0E 0F     ld      c,$0F
2705  E5        push    hl
2706  71        ld      (hl),c
2707  23        inc     hl
2708  10        djnz    
2709  FC E1 C9  call    m,$C9E1
270C  21 E9 15  ld      hl,$15E9
270F  06 06     ld      b,$06
2711  18        jr      
2712  01 46 23  ld      bc,$2346
2715  BE        cp      (hl)
2716  23        inc     hl
2717  28        jr      z,
2718  04        inc     b
2719  23        inc     hl
271A  10        djnz    
271B  F8        ret     m
271C  C9        ret
271D  46        ld      b,(hl)
271E  23        inc     hl
271F  66        ld      h,(hl)
2720  68        ld      l,b
2721  C9        ret
2722  CD 99 26  call    $2699
2725  CD BC 10  call    $10BC
2728  21 A9 41  ld      hl,$41A9
272B  46        ld      b,(hl)
272C  23        inc     hl
272D  7E        ld      a,(hl)
272E  4F        ld      c,a
272F  E5        push    hl
2730  C5        push    bc
2731  DF        rst     18
2732  C1        pop     bc
2733  E1        pop     hl
2734  CD 42 28  call    $2842
2737  23        inc     hl
2738  20        jr      nz,
2739  04        inc     b
273A  10        djnz    
273B  F1        pop     af
273C  18        jr      
273D  EA 79 EB  jp      pe,$EB79
2740  E9        jp      (hl)
2741  C5        push    bc
2742  CD 61 27  call    $2761
2745  CD FE 26  call    $26FE
2748  C1        pop     bc
2749  77        ld      (hl),a
274A  23        inc     hl
274B  36 3A     ld      (hl),$3A
274D  23        inc     hl
274E  C9        ret
274F  E5        push    hl
2750  2A 30 42  ld      hl,($4230)
2753  CD 58 27  call    $2758
2756  E1        pop     hl
2757  C9        ret
2758  12        ld      (de),a
2759  13        inc     de
275A  7D        ld      a,l
275B  12        ld      (de),a
275C  13        inc     de
275D  7C        ld      a,h
275E  12        ld      (de),a
275F  13        inc     de
2760  C9        ret
2761  E5        push    hl
2762  21 A9 41  ld      hl,$41A9
2765  06 25     ld      b,$25
2767  CD F4 26  call    $26F4
276A  36 0C     ld      (hl),$0C
276C  23        inc     hl
276D  36 99     ld      (hl),$99
276F  23        inc     hl
2770  36 95     ld      (hl),$95
2772  23        inc     hl
2773  36 1E     ld      (hl),$1E
2775  23        inc     hl
2776  36 97     ld      (hl),$97
2778  23        inc     hl
2779  36 F8     ld      (hl),$F8
277B  23        inc     hl
277C  36 26     ld      (hl),$26
277E  23        inc     hl
277F  EB        ex      de,hl
2780  E1        pop     hl
2781  C9        ret
2782  21 6A 40  ld      hl,$406A
2785  CB 5E     '^'
2787  CB DE     $DE
2789  28        jr      z,
278A  02        ld      (bc),a
278B  CB 9E     $9E
278D  CD 77 16  call    $1677
2790  C0        ret     nz
2791  CD C9 16  call    $16C9
2794  C0        ret     nz
2795  3E 04     ld      a,$04
2797  32 69 40  ld      ($4069),a
279A  C9        ret
279B  B7        or      a
279C  C8        ret     z
279D  FE 06     cp      $06
279F  C8        ret     z
27A0  FE 07     cp      $07
27A2  C8        ret     z
27A3  FE 0C     cp      $0C
27A5  C8        ret     z
27A6  FE 0A     cp      $0A
27A8  C8        ret     z
27A9  FE 80     cp      $80
27AB  C9        ret
27AC  D5        push    de
27AD  C5        push    bc
27AE  F5        push    af
27AF  11 28 42  ld      de,$4228
27B2  01 10 27  ld      bc,$2710
27B5  CD D1 27  call    $27D1
27B8  01 E8 03  ld      bc,$03E8
27BB  CD D1 27  call    $27D1
27BE  01 64 00  ld      bc,$0064
27C1  CD D1 27  call    $27D1
27C4  0E 0A     ld      c,$0A
27C6  CD D1 27  call    $27D1
27C9  7D        ld      a,l
27CA  CD D9 27  call    $27D9
27CD  F1        pop     af
27CE  C1        pop     bc
27CF  D1        pop     de
27D0  C9        ret
27D1  AF        xor     a
27D2  3C        inc     a
27D3  ED 42     prefix'B'
27D5  30 FB     jr      nc,$FB
27D7  3D        dec     a
27D8  09        add     hl,bc
27D9  F6 30     or      $30
27DB  12        ld      (de),a
27DC  13        inc     de
27DD  C9        ret
27DE  06 C0     ld      b,$C0
27E0  10        djnz    
27E1  FE 0D     cp      $0D
27E3  20        jr      nz,
27E4  F9        ld      sp,phl
27E5  C9        ret
27E6  7E        ld      a,(hl)
27E7  23        inc     hl
27E8  FE 0E     cp      $0E
27EA  38        jr      c,
27EB  03        inc     bc
27EC  FE 87     cp      $87
27EE  D8        ret     c
27EF  CD 16 28  call    $2816
27F2  28        jr      z,
27F3  42        ld      b,d
27F4  C9        ret
27F5  ED 4B     prefix'K'
27F7  71        ld      (hl),c
27F8  41        ld      b,c
27F9  E5        push    hl
27FA  B7        or      a
27FB  ED 42     prefix'B'
27FD  E1        pop     hl
27FE  D0        ret     nc
27FF  F5        push    af
2800  CD E6 27  call    $27E6
2803  F1        pop     af
2804  C9        ret
2805  E5        push    hl
2806  B7        or      a
2807  ED 42     prefix'B'
2809  E1        pop     hl
280A  20        jr      nz,
280B  02        ld      (bc),a
280C  37        scf
280D  C9        ret
280E  2B        dec     hl
280F  7E        ld      a,(hl)
2810  CD 16 28  call    $2816
2813  28        jr      z,
2814  29        add     hl,jl
2815  C9        ret
2816  E5        push    hl
2817  21 D6 15  ld      hl,$15D6
281A  01 13 00  ld      bc,$0013
281D  ED B1     prefix$B1
281F  E1        pop     hl
2820  C9        ret
2821  22 5D 41  ld      ($415D),hl
2824  22 33 42  ld      ($4233),hl
2827  22 5F 41  ld      ($415F),hl
282A  22 61 41  ld      ($4161),hl
282D  22 63 41  ld      ($4163),hl
2830  22 67 41  ld      ($4167),hl
2833  C9        ret
2834  23        inc     hl
2835  23        inc     hl
2836  23        inc     hl
2837  23        inc     hl
2838  23        inc     hl
2839  C9        ret
283A  2B        dec     hl
283B  2B        dec     hl
283C  2B        dec     hl
283D  2B        dec     hl
283E  2B        dec     hl
283F  2B        dec     hl
2840  2B        dec     hl
2841  C9        ret
2842  23        inc     hl
2843  5E        ld      e,(hl)
2844  23        inc     hl
2845  56        ld      d,(hl)
2846  C9        ret
2847  23        inc     hl
2848  73        ld      (hl),e
2849  23        inc     hl
284A  72        ld      (hl),d
284B  C9        ret
284C  23        inc     hl
284D  F5        push    af
284E  7E        ld      a,(hl)
284F  23        inc     hl
2850  66        ld      h,(hl)
2851  6F        ld      l,a
2852  F1        pop     af
2853  C9        ret
2854  2A 6D 41  ld      hl,($416D)
2857  2B        dec     hl
2858  2B        dec     hl
2859  56        ld      d,(hl)
285A  2B        dec     hl
285B  5E        ld      e,(hl)
285C  C9        ret
285D  CD 9B 27  call    $279B
2860  D0        ret     nc
2861  E5        push    hl
2862  D5        push    de
2863  C5        push    bc
2864  FE 09     cp      $09
2866  28        jr      z,
2867  04        inc     b
2868  FE 08     cp      $08
286A  20        jr      nz,
286B  14        inc     d
286C  ED 5B     prefix'['
286E  C0        ret     nz
286F  40        ld      b,b
2870  2A 7B 41  ld      hl,($417B)
2873  D7        rst     10
2874  20        jr      nz,
2875  04        inc     b
2876  ED 5B     prefix'['
2878  C8        ret     z
2879  40        ld      b,b
287A  ED 53     prefix'S'
287C  7B        ld      a,e
287D  41        ld      b,c
287E  18        jr      
287F  08        ex      af,af
2880  FE 01     cp      $01
2882  28        jr      z,
2883  04        inc     b
2884  FE 02     cp      $02
2886  20        jr      nz,
2887  03        inc     bc
2888  B7        or      a
2889  18        jr      
288A  20        jr      nz,
288B  FE 0B     cp      $0B
288D  28        jr      z,
288E  F9        ld      sp,phl
288F  CD 2E 13  call    $132E
2892  ED 4B     prefix'K'
2894  7B        ld      a,e
2895  41        ld      b,c
2896  B7        or      a
2897  ED 4A     prefix'J'
2899  FA AA 28  jp      m,$28AA
289C  E5        push    hl
289D  ED 4B     prefix'K'
289F  A6        and     (hl)
28A0  40        ld      b,b
28A1  09        add     hl,bc
28A2  EB        ex      de,hl
28A3  2A AB 00  ld      hl,($00AB)
28A6  D7        rst     10
28A7  D1        pop     de
28A8  30 D0     jr      nc,$D0
28AA  AF        xor     a
28AB  C1        pop     bc
28AC  D1        pop     de
28AD  E1        pop     hl
28AE  37        scf
28AF  C9        ret
28B0  E5        push    hl
28B1  D5        push    de
28B2  C5        push    bc
28B3  CD 2E 13  call    $132E
28B6  EB        ex      de,hl
28B7  2A 7B 41  ld      hl,($417B)
28BA  D7        rst     10
28BB  EB        ex      de,hl
28BC  18        jr      
28BD  BC        cp      h
28BE  06 0C     ld      b,$0C
28C0  21 20 41  ld      hl,$4120
28C3  CD F4 26  call    $26F4
28C6  CD 73 0F  call    $0F73
28C9  B7        or      a
28CA  20        jr      nz,
28CB  F2 C9 CD  jp      p,$CDC9
28CE  77        ld      (hl),a
28CF  16 28     ld      d,$28
28D1  0C        inc     c
28D2  CD A8 1A  call    $1AA8
28D5  FE 08     cp      $08
28D7  20        jr      nz,
28D8  02        ld      (bc),a
28D9  3E 0D     ld      a,$0D
28DB  C3 9B 27  jp      $279B
28DE  F7        rst     30
28DF  B7        or      a
28E0  20        jr      nz,
28E1  F3        di
28E2  EF        rst     28
28E3  28        jr      z,
28E4  F9        ld      sp,phl
28E5  FE A6     cp      $A6
28E7  CA D8 2D  jp      z,$2DD8
28EA  FE A5     cp      $A5
28EC  CA 12 2E  jp      z,$2E12
28EF  B7        or      a
28F0  C9        ret
28F1  21 58 41  ld      hl,$4158
28F4  CB E6     $E6
28F6  CD AD 1C  call    $1CAD
28F9  DA 8D 27  jp      c,$278D
28FC  CB 3C     $3C
28FE  CB 1D     rr      l$1D
2900  3E 87     ld      a,$87
2902  CD BF 29  call    $29BF
2905  CD FC 1B  call    $1BFC
2908  CD CD 28  call    $28CD
290B  30 2F     jr      nc,$2F
290D  FE 0D     cp      $0D
290F  28        jr      z,
2910  05        dec     b
2911  CD D9 29  call    $29D9
2914  18        jr      
2915  EF        rst     28
2916  2A 83 41  ld      hl,($4183)
2919  ED 5B     prefix'['
291B  8D        adc     a,l
291C  41        ld      b,c
291D  D7        rst     10
291E  EB        ex      de,hl
291F  CD BD 23  call    $23BD
2922  2A 65 41  ld      hl,($4165)
2925  ED 5B     prefix'['
2927  8D        adc     a,l
2928  41        ld      b,c
2929  2B        dec     hl
292A  2B        dec     hl
292B  72        ld      (hl),d
292C  2B        dec     hl
292D  73        ld      (hl),e
292E  CD 6A 29  call    $296A
2931  FE 0C     cp      $0C
2933  C2 FF 1A  jp      nz,$1AFF
2936  CD BA 1C  call    $1CBA
2939  C3 D6 1F  jp      $1FD6
293C  FE 81     cp      $81
293E  20        jr      nz,
293F  C8        ret     z
2940  ED 5B     prefix'['
2942  8D        adc     a,l
2943  41        ld      b,c
2944  2A 83 41  ld      hl,($4183)
2947  22 8D 41  ld      ($418D),hl
294A  D7        rst     10
294B  28        jr      z,
294C  1A        ld      a,(de)
294D  C5        push    bc
294E  CD 19 0B  call    $0B19
2951  CD BC 10  call    $10BC
2954  CD FE 29  call    $29FE
2957  C1        pop     bc
2958  2A 65 41  ld      hl,($4165)
295B  22 63 41  ld      ($4163),hl
295E  21 58 41  ld      hl,$4158
2961  CB 66     'f'
2963  20        jr      nz,
2964  A0        and     b
2965  18        jr      
2966  28        jr      z,
2967  CD FD 2F  call    $2FFD
296A  21 58 41  ld      hl,$4158
296D  CB A6     $A6
296F  CB AE     $AE
2971  C9        ret
2972  CD 8A 14  call    $148A
2975  3A A2 40  ld      a,($40A2)
2978  38        jr      c,
2979  04        inc     b
297A  CD AD 1C  call    $1CAD
297D  AF        xor     a
297E  F5        push    af
297F  3E 0C     ld      a,$0C
2981  E5        push    hl
2982  CD BF 29  call    $29BF
2985  E1        pop     hl
2986  CD 19 0B  call    $0B19
2989  21 58 41  ld      hl,$4158
298C  CB EE     $EE
298E  C1        pop     bc
298F  C5        push    bc
2990  CD FC 1B  call    $1BFC
2993  CD CD 28  call    $28CD
2996  C1        pop     bc
2997  30 12     jr      nc,$12
2999  FE 0B     cp      $0B
299B  28        jr      z,
299C  85        add     a,l
299D  FE 0D     cp      $0D
299F  28        jr      z,
29A0  FA B8 28  jp      m,$28B8
29A3  F7        rst     30
29A4  C5        push    bc
29A5  CD D9 29  call    $29D9
29A8  C1        pop     bc
29A9  18        jr      
29AA  E4 FE 81  call    po,$81FE
29AD  28        jr      z,
29AE  8D        adc     a,l
29AF  FE 8A     cp      $8A
29B1  28        jr      z,
29B2  E8        ret     pe
29B3  FE 0C     cp      $0C
29B5  28        jr      z,
29B6  E4 FE 8D  call    po,$8DFE
29B9  3E 0C     ld      a,$0C
29BB  28        jr      z,
29BC  DE 18     sbc     a,$18
29BE  D0        ret     nc
29BF  22 8D 41  ld      ($418D),hl
29C2  22 83 41  ld      ($4183),hl
29C5  EB        ex      de,hl
29C6  CD BD 23  call    $23BD
29C9  CD 4E 20  call    $204E
29CC  CD BA 1C  call    $1CBA
29CF  CD FE 29  call    $29FE
29D2  2A 63 41  ld      hl,($4163)
29D5  22 65 41  ld      ($4165),hl
29D8  C9        ret
29D9  FE 0C     cp      $0C
29DB  D8        ret     c
29DC  CD 2E 13  call    $132E
29DF  EB        ex      de,hl
29E0  21 58 41  ld      hl,$4158
29E3  CB 66     'f'
29E5  28        jr      z,
29E6  02        ld      (bc),a
29E7  CB 3B     $3B
29E9  2A 8D 41  ld      hl,($418D)
29EC  D7        rst     10
29ED  DA 8D 27  jp      c,$278D
29F0  22 8D 41  ld      ($418D),hl
29F3  EB        ex      de,hl
29F4  CD EC 30  call    $30EC
29F7  F5        push    af
29F8  CD DC 1B  call    $1BDC
29FB  F1        pop     af
29FC  18        jr      
29FD  13        inc     de
29FE  CD FE 26  call    $26FE
2A01  21 57 41  ld      hl,$4157
2A04  CB CE     $CE
2A06  3E 87     ld      a,$87
2A08  21 58 41  ld      hl,$4158
2A0B  CB 66     'f'
2A0D  20        jr      nz,
2A0E  02        ld      (bc),a
2A0F  3E 0C     ld      a,$0C
2A11  01 0B 00  ld      bc,$000B
2A14  CD 98 17  call    $1798
2A17  28        jr      z,
2A18  02        ld      (bc),a
2A19  0D        dec     c
2A1A  0D        dec     c
2A1B  21 9E 41  ld      hl,$419E
2A1E  11 9D 41  ld      de,$419D
2A21  ED B0     prefix$B0
2A23  2B        dec     hl
2A24  77        ld      (hl),a
2A25  C3 B1 26  jp      $26B1
2A28  CD B3 16  call    $16B3
2A2B  C0        ret     nz
2A2C  21 C6 17  ld      hl,$17C6
2A2F  3E B5     ld      a,$B5
2A31  C3 16 19  jp      $1916
2A34  21 35 42  ld      hl,$4235
2A37  18        jr      
2A38  08        ex      af,af
2A39  21 3A 42  ld      hl,$423A
2A3C  18        jr      
2A3D  03        inc     bc
2A3E  21 3F 42  ld      hl,$423F
2A41  CB FE     $FE
2A43  ED 5B     prefix'['
2A45  6B        ld      l,e
2A46  41        ld      b,c
2A47  CD 47 28  call    $2847
2A4A  21 5B 41  ld      hl,$415B
2A4D  CB EE     $EE
2A4F  18        jr      
2A50  09        add     hl,bc
2A51  CD BE 19  call    $19BE
2A54  CD CD 2D  call    $2DCD
2A57  CD 7F 17  call    $177F
2A5A  CD 85 17  call    $1785
2A5D  CD BE 28  call    $28BE
2A60  C3 8D 27  jp      $278D
2A63  CD CE 19  call    $19CE
2A66  21 5C 41  ld      hl,$415C
2A69  B6        or      (hl)
2A6A  77        ld      (hl),a
2A6B  21 BD 40  ld      hl,$40BD
2A6E  01 61 00  ld      bc,$0061
2A71  ED B0     prefix$B0
2A73  18        jr      
2A74  E8        ret     pe
2A75  CB BE     $BE
2A77  CD 42 28  call    $2842
2A7A  23        inc     hl
2A7B  4E        ld      c,(hl)
2A7C  23        inc     hl
2A7D  46        ld      b,(hl)
2A7E  C3 2E 2D  jp      $2D2E
2A81  21 5B 41  ld      hl,$415B
2A84  CB 86     $86
2A86  21 35 42  ld      hl,$4235
2A89  CD 75 2A  call    $2A75
2A8C  28        jr      z,
2A8D  1E 21     ld      e,$21
2A8F  3A 42 CB  ld      a,($CB42)
2A92  7E        ld      a,(hl)
2A93  C4 64 2D  call    nz,$2D64
2A96  21 3F 42  ld      hl,$423F
2A99  CB 7E     '~'
2A9B  C4 64 2D  call    nz,$2D64
2A9E  CD 79 17  call    $1779
2AA1  28        jr      z,
2AA2  09        add     hl,bc
2AA3  2A 33 42  ld      hl,($4233)
2AA6  B7        or      a
2AA7  ED 42     prefix'B'
2AA9  22 33 42  ld      ($4233),hl
2AAC  CD B9 2D  call    $2DB9
2AAF  22 67 41  ld      ($4167),hl
2AB2  CD C8 2A  call    $2AC8
2AB5  CD 98 17  call    $1798
2AB8  C0        ret     nz
2AB9  23        inc     hl
2ABA  7E        ld      a,(hl)
2ABB  E6 09     and     $09
2ABD  FE 09     cp      $09
2ABF  C8        ret     z
2AC0  21 D5 17  ld      hl,$17D5
2AC3  3E B7     ld      a,$B7
2AC5  C3 55 19  jp      $1955
2AC8  21 58 41  ld      hl,$4158
2ACB  CB 4E     'N'
2ACD  C4 15 1B  call    nz,$1B15
2AD0  18        jr      
2AD1  8E        adc     a,(hl)
2AD2  21 5B 41  ld      hl,$415B
2AD5  CB 8E     $8E
2AD7  21 3A 42  ld      hl,$423A
2ADA  CD 75 2A  call    $2A75
2ADD  28        jr      z,
2ADE  CD 21 35  call    $3521
2AE1  42        ld      b,d
2AE2  18        jr      
2AE3  AD        xor     l
2AE4  21 5B 41  ld      hl,$415B
2AE7  CB 96     $96
2AE9  21 3F 42  ld      hl,$423F
2AEC  CD 75 2A  call    $2A75
2AEF  28        jr      z,
2AF0  BB        cp      e
2AF1  21 35 42  ld      hl,$4235
2AF4  CB 7E     '~'
2AF6  C4 64 2D  call    nz,$2D64
2AF9  21 3A 42  ld      hl,$423A
2AFC  18        jr      
2AFD  9B        sbc     a,e
2AFE  CD BE 19  call    $19BE
2B01  CD 20 2B  call    $2B20
2B04  CD C8 2A  call    $2AC8
2B07  21 FE 2A  ld      hl,$2AFE
2B0A  0E 01     ld      c,$01
2B0C  C3 60 19  jp      $1960
2B0F  21 51 2A  ld      hl,$2A51
2B12  0E 00     ld      c,$00
2B14  18        jr      
2B15  F6 CD     or      $CD
2B17  92        sub     d
2B18  2C        inc     l
2B19  21 9C 2C  ld      hl,$2C9C
2B1C  0E 01     ld      c,$01
2B1E  18        jr      
2B1F  EC CB BE  call    pe,$BECB
2B22  CD 42 28  call    $2842
2B25  CD 4C 28  call    $284C
2B28  EB        ex      de,hl
2B29  ED 4B     prefix'K'
2B2B  FA 43 03  jp      m,$0343
2B2E  B7        or      a
2B2F  E5        push    hl
2B30  ED 42     prefix'B'
2B32  28        jr      z,
2B33  0D        dec     c
2B34  30 02     jr      nc,$02
2B36  E1        pop     hl
2B37  C9        ret
2B38  44        ld      b,h
2B39  4D        ld      c,l
2B3A  E1        pop     hl
2B3B  E5        push    hl
2B3C  D5        push    de
2B3D  2B        dec     hl
2B3E  ED B8     prefix$B8
2B40  D1        pop     de
2B41  E1        pop     hl
2B42  22 30 42  ld      ($4230),hl
2B45  2B        dec     hl
2B46  EB        ex      de,hl
2B47  D7        rst     10
2B48  EB        ex      de,hl
2B49  2A FA 43  ld      hl,($43FA)
2B4C  19        add     hl,de
2B4D  22 FA 43  ld      ($43FA),hl
2B50  06 0A     ld      b,$0A
2B52  21 44 42  ld      hl,$4244
2B55  C5        push    bc
2B56  CB 7E     '~'
2B58  E5        push    hl
2B59  28        jr      z,
2B5A  24        inc     h
2B5B  CD B5 2D  call    $2DB5
2B5E  30 1F     jr      nc,$1F
2B60  2A 30 42  ld      hl,($4230)
2B63  B7        or      a
2B64  ED 42     prefix'B'
2B66  38        jr      c,
2B67  17        rla
2B68  60        ld      h,b
2B69  69        ld      l,c
2B6A  19        add     hl,de
2B6B  44        ld      b,h
2B6C  4D        ld      c,l
2B6D  E1        pop     hl
2B6E  E5        push    hl
2B6F  23        inc     hl
2B70  71        ld      (hl),c
2B71  23        inc     hl
2B72  70        ld      (hl),b
2B73  23        inc     hl
2B74  E5        push    hl
2B75  CD 4D 28  call    $284D
2B78  19        add     hl,de
2B79  44        ld      b,h
2B7A  4D        ld      c,l
2B7B  E1        pop     hl
2B7C  71        ld      (hl),c
2B7D  23        inc     hl
2B7E  70        ld      (hl),b
2B7F  E1        pop     hl
2B80  CD 34 28  call    $2834
2B83  C1        pop     bc
2B84  10        djnz    
2B85  CF        rst     08
2B86  C9        ret
2B87  CD CE 19  call    $19CE
2B8A  21 5C 41  ld      hl,$415C
2B8D  AE        xor     (hl)
2B8E  77        ld      (hl),a
2B8F  CD 8D 27  call    $278D
2B92  21 87 2B  ld      hl,$2B87
2B95  0E 01     ld      c,$01
2B97  C3 8F 19  jp      $198F
2B9A  21 63 2A  ld      hl,$2A63
2B9D  0E 00     ld      c,$00
2B9F  18        jr      
2BA0  F6 21     or      $21
2BA2  D1        pop     de
2BA3  2C        inc     l
2BA4  0E 01     ld      c,$01
2BA6  18        jr      
2BA7  EF        rst     28
2BA8  21 5B 41  ld      hl,$415B
2BAB  CB 6E     'n'
2BAD  C8        ret     z
2BAE  CB AE     $AE
2BB0  4E        ld      c,(hl)
2BB1  21 35 42  ld      hl,$4235
2BB4  06 03     ld      b,$03
2BB6  16 01     ld      d,$01
2BB8  CB 7E     '~'
2BBA  28        jr      z,
2BBB  04        inc     b
2BBC  7A        ld      a,d
2BBD  A1        and     c
2BBE  28        jr      z,
2BBF  07        rlca
2BC0  CB 22     $22
2BC2  CD 34 28  call    $2834
2BC5  10        djnz    
2BC6  F1        pop     af
2BC7  79        ld      a,c
2BC8  B2        or      d
2BC9  23        inc     hl
2BCA  23        inc     hl
2BCB  EB        ex      de,hl
2BCC  ED 4B     prefix'K'
2BCE  67        ld      h,a
2BCF  41        ld      b,c
2BD0  2A 5D 41  ld      hl,($415D)
2BD3  B7        or      a
2BD4  ED 42     prefix'B'
2BD6  28        jr      z,
2BD7  6A        ld      l,d
2BD8  32 5B 41  ld      ($415B),a
2BDB  C5        push    bc
2BDC  E1        pop     hl
2BDD  22 6B 41  ld      ($416B),hl
2BE0  2B        dec     hl
2BE1  EB        ex      de,hl
2BE2  CD 47 28  call    $2847
2BE5  CD CA 24  call    $24CA
2BE8  CD 15 1B  call    $1B15
2BEB  18        jr      
2BEC  55        ld      d,l
2BED  CD 79 17  call    $1779
2BF0  28        jr      z,
2BF1  B6        or      (hl)
2BF2  E5        push    hl
2BF3  3A 32 42  ld      a,($4232)
2BF6  CD BE 19  call    $19BE
2BF9  E3        ex      (sp),hl
2BFA  CB 5E     '^'
2BFC  CB 9E     $9E
2BFE  E1        pop     hl
2BFF  E5        push    hl
2C00  C4 20 2B  call    nz,$2B20
2C03  CD C0 2D  call    $2DC0
2C06  EB        ex      de,hl
2C07  E1        pop     hl
2C08  22 30 42  ld      ($4230),hl
2C0B  ED 4B     prefix'K'
2C0D  33        inc     sp
2C0E  42        ld      b,d
2C0F  2A 67 41  ld      hl,($4167)
2C12  B7        or      a
2C13  ED 42     prefix'B'
2C15  28        jr      z,
2C16  2B        dec     hl
2C17  EB        ex      de,hl
2C18  D7        rst     10
2C19  28        jr      z,
2C1A  02        ld      (bc),a
2C1B  30 06     jr      nc,$06
2C1D  CD 8C 17  call    $178C
2C20  C3 54 26  jp      $2654
2C23  2A FA 43  ld      hl,($43FA)
2C26  42        ld      b,d
2C27  4B        ld      c,e
2C28  D7        rst     10
2C29  22 FA 43  ld      ($43FA),hl
2C2C  23        inc     hl
2C2D  E5        push    hl
2C2E  EB        ex      de,hl
2C2F  2A 33 42  ld      hl,($4233)
2C32  ED B0     prefix$B0
2C34  1B        dec     de
2C35  2A 30 42  ld      hl,($4230)
2C38  CB FE     $FE
2C3A  C1        pop     bc
2C3B  23        inc     hl
2C3C  71        ld      (hl),c
2C3D  23        inc     hl
2C3E  70        ld      (hl),b
2C3F  CD 47 28  call    $2847
2C42  CD 8C 17  call    $178C
2C45  C3 8D 27  jp      $278D
2C48  21 5B 41  ld      hl,$415B
2C4B  CB 46     'F'
2C4D  C8        ret     z
2C4E  21 35 42  ld      hl,$4235
2C51  CD 92 2C  call    $2C92
2C54  CD 42 28  call    $2842
2C57  E5        push    hl
2C58  21 58 41  ld      hl,$4158
2C5B  CB 46     'F'
2C5D  20        jr      nz,
2C5E  05        dec     b
2C5F  CD 12 2D  call    $2D12
2C62  18        jr      
2C63  07        rlca
2C64  21 61 00  ld      hl,$0061
2C67  19        add     hl,de
2C68  22 6D 41  ld      ($416D),hl
2C6B  E1        pop     hl
2C6C  CD 42 28  call    $2842
2C6F  EB        ex      de,hl
2C70  CD 0F 28  call    $280F
2C73  22 71 41  ld      ($4171),hl
2C76  22 6F 41  ld      ($416F),hl
2C79  C3 9E 17  jp      $179E
2C7C  21 5B 41  ld      hl,$415B
2C7F  CB 4E     'N'
2C81  C8        ret     z
2C82  21 3A 42  ld      hl,$423A
2C85  18        jr      
2C86  CA 21 5B  jp      z,$5B21
2C89  41        ld      b,c
2C8A  CB 56     'V'
2C8C  C8        ret     z
2C8D  21 3F 42  ld      hl,$423F
2C90  18        jr      
2C91  BF        cp      a
2C92  E5        push    hl
2C93  CD 98 17  call    $1798
2C96  E1        pop     hl
2C97  C8        ret     z
2C98  E1        pop     hl
2C99  C3 60 26  jp      $2660
2C9C  F5        push    af
2C9D  CD BE 19  call    $19BE
2CA0  CD 42 28  call    $2842
2CA3  ED 53     prefix'S'
2CA5  6D        ld      l,l
2CA6  41        ld      b,c
2CA7  CD 6C 2C  call    $2C6C
2CAA  CD B4 26  call    $26B4
2CAD  E1        pop     hl
2CAE  3E 9E     ld      a,$9E
2CB0  DF        rst     18
2CB1  20        jr      nz,
2CB2  0D        dec     c
2CB3  3E 97     ld      a,$97
2CB5  DF        rst     18
2CB6  C2 AA 17  jp      nz,$17AA
2CB9  7C        ld      a,h
2CBA  DF        rst     18
2CBB  20        jr      nz,
2CBC  F1        pop     af
2CBD  C3 7D 16  jp      $167D
2CC0  7C        ld      a,h
2CC1  CD CE 2D  call    $2DCE
2CC4  CD BE 19  call    $19BE
2CC7  CB BE     $BE
2CC9  CD 79 17  call    $1779
2CCC  CB DE     $DE
2CCE  C3 57 2A  jp      $2A57
2CD1  CD CE 19  call    $19CE
2CD4  21 BD 40  ld      hl,$40BD
2CD7  EB        ex      de,hl
2CD8  C3 6E 2A  jp      $2A6E
2CDB  CD 92 2C  call    $2C92
2CDE  3A 58 41  ld      a,($4158)
2CE1  CB 5F     '_'
2CE3  C2 54 26  jp      nz,$2654
2CE6  2A 67 41  ld      hl,($4167)
2CE9  ED 5B     prefix'['
2CEB  5D        ld      e,l
2CEC  41        ld      b,c
2CED  D7        rst     10
2CEE  C8        ret     z
2CEF  01 61 00  ld      bc,$0061
2CF2  09        add     hl,bc
2CF3  4D        ld      c,l
2CF4  44        ld      b,h
2CF5  2A 67 41  ld      hl,($4167)
2CF8  2B        dec     hl
2CF9  EB        ex      de,hl
2CFA  CD 21 28  call    $2821
2CFD  EB        ex      de,hl
2CFE  ED 5B     prefix'['
2D00  FA 43 D5  jp      m,$D543
2D03  ED B8     prefix$B8
2D05  13        inc     de
2D06  CD 12 2D  call    $2D12
2D09  21 57 41  ld      hl,$4157
2D0C  CB FE     $FE
2D0E  E1        pop     hl
2D0F  C3 70 2C  jp      $2C70
2D12  EB        ex      de,hl
2D13  11 BD 40  ld      de,$40BD
2D16  01 61 00  ld      bc,$0061
2D19  ED B0     prefix$B0
2D1B  22 6D 41  ld      ($416D),hl
2D1E  CD CA 24  call    $24CA
2D21  CD 15 1B  call    $1B15
2D24  3E 09     ld      a,$09
2D26  E7        rst     20
2D27  2A C8 40  ld      hl,($40C8)
2D2A  22 7B 41  ld      ($417B),hl
2D2D  C9        ret
2D2E  03        inc     bc
2D2F  CD B9 2D  call    $2DB9
2D32  E5        push    hl
2D33  C5        push    bc
2D34  E1        pop     hl
2D35  C1        pop     bc
2D36  E5        push    hl
2D37  D5        push    de
2D38  C5        push    bc
2D39  28        jr      z,
2D3A  02        ld      (bc),a
2D3B  ED B0     prefix$B0
2D3D  C1        pop     bc
2D3E  D1        pop     de
2D3F  E1        pop     hl
2D40  D7        rst     10
2D41  F5        push    af
2D42  28        jr      z,
2D43  02        ld      (bc),a
2D44  44        ld      b,h
2D45  4D        ld      c,l
2D46  2A 63 41  ld      hl,($4163)
2D49  B7        or      a
2D4A  ED 42     prefix'B'
2D4C  22 63 41  ld      ($4163),hl
2D4F  22 61 41  ld      ($4161),hl
2D52  2A 5D 41  ld      hl,($415D)
2D55  ED 42     prefix'B'
2D57  22 5D 41  ld      ($415D),hl
2D5A  2A 6B 41  ld      hl,($416B)
2D5D  ED 42     prefix'B'
2D5F  22 6B 41  ld      ($416B),hl
2D62  F1        pop     af
2D63  C9        ret
2D64  C5        push    bc
2D65  22 30 42  ld      ($4230),hl
2D68  CD B5 2D  call    $2DB5
2D6B  D5        push    de
2D6C  E1        pop     hl
2D6D  B7        or      a
2D6E  ED 42     prefix'B'
2D70  60        ld      h,b
2D71  69        ld      l,c
2D72  C1        pop     bc
2D73  D0        ret     nc
2D74  B7        or      a
2D75  ED 42     prefix'B'
2D77  D5        push    de
2D78  EB        ex      de,hl
2D79  2A 30 42  ld      hl,($4230)
2D7C  CD 47 28  call    $2847
2D7F  CD 42 28  call    $2842
2D82  EB        ex      de,hl
2D83  B7        or      a
2D84  ED 42     prefix'B'
2D86  EB        ex      de,hl
2D87  72        ld      (hl),d
2D88  2B        dec     hl
2D89  73        ld      (hl),e
2D8A  D1        pop     de
2D8B  C9        ret
2D8C  06 00     ld      b,$00
2D8E  2A 79 41  ld      hl,($4179)
2D91  09        add     hl,bc
2D92  03        inc     bc
2D93  ED B9     prefix$B9
2D95  79        ld      a,c
2D96  C9        ret
2D97  21 58 41  ld      hl,$4158
2D9A  CB 4E     'N'
2D9C  20        jr      nz,
2D9D  05        dec     b
2D9E  CD C0 2D  call    $2DC0
2DA1  30 03     jr      nc,$03
2DA3  21 00 00  ld      hl,$0000
2DA6  CD AC 27  call    $27AC
2DA9  21 29 42  ld      hl,$4229
2DAC  11 A5 41  ld      de,$41A5
2DAF  01 04 00  ld      bc,$0004
2DB2  ED B0     prefix$B0
2DB4  C9        ret
2DB5  23        inc     hl
2DB6  4E        ld      c,(hl)
2DB7  23        inc     hl
2DB8  46        ld      b,(hl)
2DB9  2A 67 41  ld      hl,($4167)
2DBC  B7        or      a
2DBD  ED 42     prefix'B'
2DBF  C9        ret
2DC0  11 E2 00  ld      de,$00E2
2DC3  2A FA 43  ld      hl,($43FA)
2DC6  D7        rst     10
2DC7  ED 5B     prefix'['
2DC9  67        ld      h,a
2DCA  41        ld      b,c
2DCB  D7        rst     10
2DCC  C9        ret
2DCD  79        ld      a,c
2DCE  32 32 42  ld      ($4232),a
2DD1  2A 63 41  ld      hl,($4163)
2DD4  22 33 42  ld      ($4233),hl
2DD7  C9        ret
2DD8  CD 98 17  call    $1798
2DDB  C8        ret     z
2DDC  AF        xor     a
2DDD  32 2D 42  ld      ($422D),a
2DE0  3E 97     ld      a,$97
2DE2  DF        rst     18
2DE3  C0        ret     nz
2DE4  2A 71 41  ld      hl,($4171)
2DE7  3E 9C     ld      a,$9C
2DE9  DF        rst     18
2DEA  20        jr      nz,
2DEB  1E F7     ld      e,$F7
2DED  28        jr      z,
2DEE  03        inc     bc
2DEF  32 2D 42  ld      ($422D),a
2DF2  3E A6     ld      a,$A6
2DF4  DF        rst     18
2DF5  20        jr      nz,
2DF6  E9        jp      (hl)
2DF7  3A 2D 42  ld      a,($422D)
2DFA  2A 6D 41  ld      hl,($416D)
2DFD  CD 56 2E  call    $2E56
2E00  28        jr      z,
2E01  08        ex      af,af
2E02  CD F5 27  call    $27F5
2E05  D2 44 26  jp      nc,$2644
2E08  18        jr      
2E09  F3        di
2E0A  22 6F 41  ld      ($416F),hl
2E0D  CD 7D 16  call    $167D
2E10  18        jr      
2E11  3B        dec     sp
2E12  CD 98 17  call    $1798
2E15  C8        ret     z
2E16  AF        xor     a
2E17  32 2D 42  ld      ($422D),a
2E1A  3E 97     ld      a,$97
2E1C  DF        rst     18
2E1D  C0        ret     nz
2E1E  3E 9C     ld      a,$9C
2E20  DF        rst     18
2E21  C2 AA 17  jp      nz,$17AA
2E24  F7        rst     30
2E25  28        jr      z,
2E26  03        inc     bc
2E27  32 2D 42  ld      ($422D),a
2E2A  3E A5     ld      a,$A5
2E2C  DF        rst     18
2E2D  20        jr      nz,
2E2E  EB        ex      de,hl
2E2F  3A 2D 42  ld      a,($422D)
2E32  2A 6D 41  ld      hl,($416D)
2E35  B7        or      a
2E36  28        jr      z,
2E37  0C        inc     c
2E38  CD 56 2E  call    $2E56
2E3B  28        jr      z,
2E3C  07        rlca
2E3D  CD F5 27  call    $27F5
2E40  30 C3     jr      nc,$C3
2E42  18        jr      
2E43  F4 CD F5  call    p,$F5CD
2E46  27        daa
2E47  D2 AA 17  jp      nc,$17AA
2E4A  22 6D 41  ld      ($416D),hl
2E4D  CD BE 28  call    $28BE
2E50  21 BD 40  ld      hl,$40BD
2E53  CB 96     $96
2E55  C9        ret
2E56  F5        push    af
2E57  7E        ld      a,(hl)
2E58  FE 0D     cp      $0D
2E5A  16 08     ld      d,$08
2E5C  28        jr      z,
2E5D  01 57 F1  ld      bc,$F157
2E60  B7        or      a
2E61  C8        ret     z
2E62  BA        cp      d
2E63  C9        ret
2E64  CD BA 1C  call    $1CBA
2E67  CD 43 17  call    $1743
2E6A  C0        ret     nz
2E6B  21 A8 40  ld      hl,$40A8
2E6E  11 A9 41  ld      de,$41A9
2E71  01 18 00  ld      bc,$0018
2E74  ED B0     prefix$B0
2E76  2A 7B 41  ld      hl,($417B)
2E79  E5        push    hl
2E7A  2A C0 40  ld      hl,($40C0)
2E7D  E5        push    hl
2E7E  CD 3D 0B  call    $0B3D
2E81  CD 71 17  call    $1771
2E84  21 56 41  ld      hl,$4156
2E87  CB E6     $E6
2E89  CB EE     $EE
2E8B  3E A4     ld      a,$A4
2E8D  DF        rst     18
2E8E  28        jr      z,
2E8F  03        inc     bc
2E90  F7        rst     30
2E91  28        jr      z,
2E92  F8        ret     m
2E93  F5        push    af
2E94  CD FD 2F  call    $2FFD
2E97  C1        pop     bc
2E98  B7        or      a
2E99  28        jr      z,
2E9A  38        jr      c,
2E9B  78        ld      a,b
2E9C  2A 61 41  ld      hl,($4161)
2E9F  CD 56 2E  call    $2E56
2EA2  20        jr      nz,
2EA3  EF        rst     28
2EA4  CD 0F 2F  call    $2F0F
2EA7  CD BC 10  call    $10BC
2EAA  EF        rst     28
2EAB  28        jr      z,
2EAC  1A        ld      a,(de)
2EAD  FE A4     cp      $A4
2EAF  28        jr      z,
2EB0  CD FE 84  call    $84FE
2EB3  28        jr      z,
2EB4  1E FE     ld      e,$FE
2EB6  9B        sbc     a,e
2EB7  28        jr      z,
2EB8  1A        ld      a,(de)
2EB9  FE 81     cp      $81
2EBB  20        jr      nz,
2EBC  EA CD FD  jp      pe,$FDCD
2EBF  2F        cpl
2EC0  CD 66 30  call    $3066
2EC3  38        jr      c,
2EC4  E2 18 E3  jp      po,$E318
2EC7  F7        rst     30
2EC8  28        jr      z,
2EC9  E0        ret     po
2ECA  FE 0E     cp      $0E
2ECC  28        jr      z,
2ECD  B0        or      b
2ECE  CD 33 2F  call    $2F33
2ED1  18        jr      
2ED2  D7        rst     10
2ED3  E1        pop     hl
2ED4  22 C0 40  ld      ($40C0),hl
2ED7  E1        pop     hl
2ED8  22 7B 41  ld      ($417B),hl
2EDB  2A AA 40  ld      hl,($40AA)
2EDE  ED 5B     prefix'['
2EE0  AB        xor     e
2EE1  41        ld      b,c
2EE2  CD FA 30  call    $30FA
2EE5  2A A8 40  ld      hl,($40A8)
2EE8  ED 5B     prefix'['
2EEA  A9        xor     c
2EEB  41        ld      b,c
2EEC  CD EF 30  call    $30EF
2EEF  21 AD 41  ld      hl,$41AD
2EF2  11 91 41  ld      de,$4191
2EF5  01 10 00  ld      bc,$0010
2EF8  ED B0     prefix$B0
2EFA  11 BC 40  ld      de,$40BC
2EFD  0E 04     ld      c,$04
2EFF  ED B0     prefix$B0
2F01  2A 67 41  ld      hl,($4167)
2F04  CD 2A 28  call    $282A
2F07  CD 75 17  call    $1775
2F0A  21 56 41  ld      hl,$4156
2F0D  CB AE     $AE
2F0F  21 56 41  ld      hl,$4156
2F12  CB A6     $A6
2F14  3E 9B     ld      a,$9B
2F16  DF        rst     18
2F17  C2 A3 24  jp      nz,$24A3
2F1A  C3 4F 0B  jp      $0B4F
2F1D  CD FD 2F  call    $2FFD
2F20  CD 66 30  call    $3066
2F23  38        jr      c,
2F24  05        dec     b
2F25  3E 81     ld      a,$81
2F27  DF        rst     18
2F28  20        jr      nz,
2F29  F3        di
2F2A  2A 61 41  ld      hl,($4161)
2F2D  CD 2D 28  call    $282D
2F30  C3 E5 1B  jp      $1BE5
2F33  CD 0C 27  call    $270C
2F36  C8        ret     z
2F37  CD 6D 30  call    $306D
2F3A  D8        ret     c
2F3B  47        ld      b,a
2F3C  2A 67 41  ld      hl,($4167)
2F3F  ED 5B     prefix'['
2F41  61        ld      h,c
2F42  41        ld      b,c
2F43  B7        or      a
2F44  ED 52     prefix'R'
2F46  C8        ret     z
2F47  EB        ex      de,hl
2F48  7E        ld      a,(hl)
2F49  FE 0F     cp      $0F
2F4B  38        jr      c,
2F4C  09        add     hl,bc
2F4D  FE 80     cp      $80
2F4F  D0        ret     nc
2F50  CD 6D 30  call    $306D
2F53  D8        ret     c
2F54  18        jr      
2F55  47        ld      b,a
2F56  FE 08     cp      $08
2F58  28        jr      z,
2F59  04        inc     b
2F5A  FE 0D     cp      $0D
2F5C  20        jr      nz,
2F5D  0E C5     ld      c,$C5
2F5F  CD AD 1C  call    $1CAD
2F62  C1        pop     bc
2F63  DA 8D 27  jp      c,$278D
2F66  CD 22 31  call    $3122
2F69  19        add     hl,de
2F6A  18        jr      
2F6B  0D        dec     c
2F6C  FE 0B     cp      $0B
2F6E  30 03     jr      nc,$03
2F70  FE 06     cp      $06
2F72  C0        ret     nz
2F73  CD 22 31  call    $3122
2F76  D7        rst     10
2F77  38        jr      c,
2F78  EA EB 2A  jp      pe,$2AEB
2F7B  61        ld      h,c
2F7C  41        ld      b,c
2F7D  CD 47 28  call    $2847
2F80  2A 67 41  ld      hl,($4167)
2F83  ED 5B     prefix'['
2F85  61        ld      h,c
2F86  41        ld      b,c
2F87  E5        push    hl
2F88  D7        rst     10
2F89  44        ld      b,h
2F8A  4D        ld      c,l
2F8B  E1        pop     hl
2F8C  23        inc     hl
2F8D  22 67 41  ld      ($4167),hl
2F90  2B        dec     hl
2F91  54        ld      d,h
2F92  5D        ld      e,l
2F93  2B        dec     hl
2F94  ED B8     prefix$B8
2F96  EB        ex      de,hl
2F97  77        ld      (hl),a
2F98  CD 20 1D  call    $1D20
2F9B  18        jr      
2F9C  63        ld      h,e
2F9D  C5        push    bc
2F9E  CD 2E 13  call    $132E
2FA1  C1        pop     bc
2FA2  78        ld      a,b
2FA3  E5        push    hl
2FA4  C5        push    bc
2FA5  CD 2E 13  call    $132E
2FA8  EB        ex      de,hl
2FA9  C1        pop     bc
2FAA  E1        pop     hl
2FAB  B9        cp      c
2FAC  20        jr      nz,
2FAD  06 CD     ld      b,$CD
2FAF  19        add     hl,de
2FB0  0B        dec     bc
2FB1  C3 23 1D  jp      $1D23
2FB4  2C        inc     l
2FB5  2D        dec     l
2FB6  20        jr      nz,
2FB7  1F        rra
2FB8  1C        inc     e
2FB9  1D        dec     e
2FBA  28        jr      z,
2FBB  1F        rra
2FBC  FE 0F     cp      $0F
2FBE  C0        ret     nz
2FBF  79        ld      a,c
2FC0  2A 67 41  ld      hl,($4167)
2FC3  ED 5B     prefix'['
2FC5  61        ld      h,c
2FC6  41        ld      b,c
2FC7  D7        rst     10
2FC8  44        ld      b,h
2FC9  4D        ld      c,l
2FCA  62        ld      h,d
2FCB  6B        ld      l,e
2FCC  23        inc     hl
2FCD  ED B0     prefix$B0
2FCF  1B        dec     de
2FD0  ED 53     prefix'S'
2FD2  67        ld      h,a
2FD3  41        ld      b,c
2FD4  C3 FF 30  jp      $30FF
2FD7  1C        inc     e
2FD8  1D        dec     e
2FD9  28        jr      z,
2FDA  A5        and     l
2FDB  E5        push    hl
2FDC  D7        rst     10
2FDD  EB        ex      de,hl
2FDE  E1        pop     hl
2FDF  D5        push    de
2FE0  F5        push    af
2FE1  E5        push    hl
2FE2  2A 61 41  ld      hl,($4161)
2FE5  7E        ld      a,(hl)
2FE6  70        ld      (hl),b
2FE7  21 71 40  ld      hl,$4071
2FEA  CB CE     $CE
2FEC  CD 09 31  call    $3109
2FEF  E1        pop     hl
2FF0  CD EC 30  call    $30EC
2FF3  F1        pop     af
2FF4  CD 09 31  call    $3109
2FF7  E1        pop     hl
2FF8  CD AE 2F  call    $2FAE
2FFB  18        jr      
2FFC  03        inc     bc
2FFD  CD 0A 30  call    $300A
3000  CD 06 14  call    $1406
3003  22 7B 41  ld      ($417B),hl
3006  3A 2D 42  ld      a,($422D)
3009  C9        ret
300A  AF        xor     a
300B  2A 5D 41  ld      hl,($415D)
300E  ED 5B     prefix'['
3010  61        ld      h,c
3011  41        ld      b,c
3012  D7        rst     10
3013  3F        ccf
3014  EB        ex      de,hl
3015  D4 0E 28  call    nc,$280E
3018  32 2D 42  ld      ($422D),a
301B  DA 44 26  jp      c,$2644
301E  22 61 41  ld      ($4161),hl
3021  22 63 41  ld      ($4163),hl
3024  FE 18     cp      $18
3026  38        jr      c,
3027  53        ld      d,e
3028  FE 1C     cp      $1C
302A  30 4F     jr      nc,'O'
302C  CD 6D 30  call    $306D
302F  21 56 41  ld      hl,$4156
3032  7E        ld      a,(hl)
3033  CB 6F     'o'
3035  F5        push    af
3036  30 04     jr      nc,$04
3038  28        jr      z,
3039  02        ld      (bc),a
303A  CB E6     $E6
303C  3A 2D 42  ld      a,($422D)
303F  CD 81 0C  call    $0C81
3042  06 00     ld      b,$00
3044  04        inc     b
3045  23        inc     hl
3046  7E        ld      a,(hl)
3047  FE FF     cp      $FF
3049  20        jr      nz,
304A  F9        ld      sp,phl
304B  2B        dec     hl
304C  E5        push    hl
304D  C5        push    bc
304E  7E        ld      a,(hl)
304F  CD 7B 30  call    $307B
3052  C1        pop     bc
3053  E1        pop     hl
3054  10        djnz    
3055  F5        push    af
3056  F1        pop     af
3057  32 56 41  ld      ($4156),a
305A  28        jr      z,
305B  04        inc     b
305C  CB 67     'g'
305E  C0        ret     nz
305F  D8        ret     c
3060  2A 61 41  ld      hl,($4161)
3063  36 0F     ld      (hl),$0F
3065  C9        ret
3066  FE 10     cp      $10
3068  D8        ret     c
3069  FE 80     cp      $80
306B  3F        ccf
306C  D8        ret     c
306D  4F        ld      c,a
306E  FE 18     cp      $18
3070  3F        ccf
3071  D0        ret     nc
3072  FE 1C     cp      $1C
3074  D0        ret     nc
3075  CD A8 0C  call    $0CA8
3078  07        rlca
3079  79        ld      a,c
307A  C9        ret
307B  FE 0F     cp      $0F
307D  38        jr      c,
307E  23        inc     hl
307F  FE 80     cp      $80
3081  30 1F     jr      nc,$1F
3083  CD 2E 13  call    $132E
3086  E5        push    hl
3087  CD 89 16  call    $1689
308A  E1        pop     hl
308B  20        jr      nz,
308C  5F        ld      e,a
308D  EB        ex      de,hl
308E  2A 61 41  ld      hl,($4161)
3091  BE        cp      (hl)
3092  20        jr      nz,
3093  08        ex      af,af
3094  7A        ld      a,d
3095  B3        or      e
3096  7E        ld      a,(hl)
3097  36 0F     ld      (hl),$0F
3099  CA C0 2F  jp      z,$2FC0
309C  CD FF 30  call    $30FF
309F  C3 00 30  jp      $3000
30A2  21 E9 15  ld      hl,$15E9
30A5  CD 13 27  call    $2713
30A8  C0        ret     nz
30A9  E9        jp      (hl)
30AA  EE 03     xor     $03
30AC  18        jr      
30AD  5B        ld      e,e
30AE  CD F2 13  call    $13F2
30B1  CD F7 30  call    $30F7
30B4  CD 1A 31  call    $311A
30B7  EB        ex      de,hl
30B8  2A 7B 41  ld      hl,($417B)
30BB  22 C0 40  ld      ($40C0),hl
30BE  18        jr      
30BF  2F        cpl
30C0  3E 10     ld      a,$10
30C2  18        jr      
30C3  0A        ld      a,(bc)
30C4  3E 80     ld      a,$80
30C6  18        jr      
30C7  06 3E     ld      b,$3E
30C9  40        ld      b,b
30CA  18        jr      
30CB  02        ld      (bc),a
30CC  3E 20     ld      a,$20
30CE  32 BE 40  ld      ($40BE),a
30D1  C9        ret
30D2  3E 04     ld      a,$04
30D4  18        jr      
30D5  0A        ld      a,(bc)
30D6  3E 01     ld      a,$01
30D8  18        jr      
30D9  06 3E     ld      b,$3E
30DB  02        ld      (bc),a
30DC  18        jr      
30DD  02        ld      (bc),a
30DE  3E 03     ld      a,$03
30E0  C3 97 12  jp      $1297
30E3  CD E8 13  call    $13E8
30E6  CD 3F 17  call    $173F
30E9  CD 1A 31  call    $311A
30EC  11 00 00  ld      de,$0000
30EF  EB        ex      de,hl
30F0  D7        rst     10
30F1  C3 19 0B  jp      $0B19
30F4  CD 1A 31  call    $311A
30F7  11 00 00  ld      de,$0000
30FA  EB        ex      de,hl
30FB  D7        rst     10
30FC  C3 5D 0B  jp      $0B5D
30FF  21 71 40  ld      hl,$4071
3102  CB CE     $CE
3104  21 BF 40  ld      hl,$40BF
3107  CB EE     $EE
3109  CD 6C 11  call    $116C
310C  CD 9F 0B  call    $0B9F
310F  21 71 40  ld      hl,$4071
3112  CB 8E     $8E
3114  21 BF 40  ld      hl,$40BF
3117  CB AE     $AE
3119  C9        ret
311A  2A 61 41  ld      hl,($4161)
311D  CD 42 28  call    $2842
3120  EB        ex      de,hl
3121  C9        ret
3122  78        ld      a,b
3123  CD 2E 13  call    $132E
3126  E5        push    hl
3127  CD 1A 31  call    $311A
312A  D1        pop     de
312B  C9        ret
312C  3E BA     ld      a,$BA
312E  CD 12 01  call    $0112
3131  D0        ret     nc
3132  CD EF 26  call    $26EF
3135  EB        ex      de,hl
3136  21 9D 41  ld      hl,$419D
3139  0E 0A     ld      c,$0A
313B  ED B0     prefix$B0
313D  ED 5B     prefix'['
313F  6B        ld      l,e
3140  41        ld      b,c
3141  2A 67 41  ld      hl,($4167)
3144  CD D1 31  call    $31D1
3147  18        jr      
3148  3C        inc     a
3149  3E BB     ld      a,$BB
314B  CD 12 01  call    $0112
314E  D0        ret     nc
314F  11 9D 41  ld      de,$419D
3152  21 9F 41  ld      hl,$419F
3155  01 05 00  ld      bc,$0005
3158  ED B0     prefix$B0
315A  EB        ex      de,hl
315B  36 BB     ld      (hl),$BB
315D  23        inc     hl
315E  36 3A     ld      (hl),$3A
3160  CD B1 26  call    $26B1
3163  CD CA 31  call    $31CA
3166  ED 5B     prefix'['
3168  63        ld      h,e
3169  41        ld      b,c
316A  D5        push    de
316B  2A FA 43  ld      hl,($43FA)
316E  2B        dec     hl
316F  CD 13 32  call    $3213
3172  D1        pop     de
3173  30 10     jr      nc,$10
3175  E5        push    hl
3176  D7        rst     10
3177  44        ld      b,h
3178  4D        ld      c,l
3179  E1        pop     hl
317A  03        inc     bc
317B  CD FE 2C  call    $2CFE
317E  2A FA 43  ld      hl,($43FA)
3181  2B        dec     hl
3182  22 71 41  ld      ($4171),hl
3185  C3 8D 27  jp      $278D
3188  57        ld      d,a
3189  D5        push    de
318A  CD AA 17  call    $17AA
318D  CD FE 26  call    $26FE
3190  72        ld      (hl),d
3191  23        inc     hl
3192  36 9B     ld      (hl),$9B
3194  E5        push    hl
3195  CD B1 26  call    $26B1
3198  CD BC 10  call    $10BC
319B  E1        pop     hl
319C  06 05     ld      b,$05
319E  E5        push    hl
319F  C5        push    bc
31A0  CD B1 26  call    $26B1
31A3  EF        rst     28
31A4  20        jr      nz,
31A5  10        djnz    
31A6  F7        rst     30
31A7  C4 0C 27  call    nz,$270C
31AA  C1        pop     bc
31AB  E1        pop     hl
31AC  28        jr      z,
31AD  F0        ret     p
31AE  23        inc     hl
31AF  77        ld      (hl),a
31B0  10        djnz    
31B1  EC 2B 04  call    pe,$042B
31B4  18        jr      
31B5  E8        ret     pe
31B6  C1        pop     bc
31B7  E1        pop     hl
31B8  D1        pop     de
31B9  FE 97     cp      $97
31BB  C8        ret     z
31BC  FE 81     cp      $81
31BE  28        jr      z,
31BF  C9        ret
31C0  FE 9C     cp      $9C
31C2  28        jr      z,
31C3  03        inc     bc
31C4  D5        push    de
31C5  18        jr      
31C6  D7        rst     10
31C7  CD 8D 27  call    $278D
31CA  0E 96     ld      c,$96
31CC  CD DE 27  call    $27DE
31CF  37        scf
31D0  C9        ret
31D1  F3        di
31D2  22 30 42  ld      ($4230),hl
31D5  D5        push    de
31D6  CD 97 33  call    $3397
31D9  21 9F 41  ld      hl,$419F
31DC  11 AA AA  ld      de,$AAAA
31DF  CD BF 32  call    $32BF
31E2  CD CA 31  call    $31CA
31E5  D1        pop     de
31E6  2A 30 42  ld      hl,($4230)
31E9  01 20 00  ld      bc,$0020
31EC  ED 42     prefix'B'
31EE  D7        rst     10
31EF  38        jr      c,
31F0  0A        ld      a,(bc)
31F1  EB        ex      de,hl
31F2  11 00 00  ld      de,$0000
31F5  CD BF 32  call    $32BF
31F8  EB        ex      de,hl
31F9  18        jr      
31FA  EB        ex      de,hl
31FB  09        add     hl,bc
31FC  7D        ld      a,l
31FD  CD EF 26  call    $26EF
3200  B7        or      a
3201  28        jr      z,
3202  08        ex      af,af
3203  4F        ld      c,a
3204  77        ld      (hl),a
3205  E5        push    hl
3206  23        inc     hl
3207  EB        ex      de,hl
3208  ED B0     prefix$B0
320A  E1        pop     hl
320B  11 EE EE  ld      de,$EEEE
320E  CD BF 32  call    $32BF
3211  FB        ei
3212  C9        ret
3213  F3        di
3214  22 30 42  ld      ($4230),hl
3217  21 BD 40  ld      hl,$40BD
321A  CB F6     $F6
321C  D5        push    de
321D  21 CE 41  ld      hl,$41CE
3220  CD F5 32  call    $32F5
3223  D2 B6 32  jp      nc,$32B6
3226  21 AA AA  ld      hl,$AAAA
3229  D7        rst     10
322A  20        jr      nz,
322B  20        jr      nz,
322C  21 CE 41  ld      hl,$41CE
322F  E5        push    hl
3230  11 A4 41  ld      de,$41A4
3233  01 05 00  ld      bc,$0005
3236  ED B0     prefix$B0
3238  CD B1 26  call    $26B1
323B  CD 12 11  call    $1112
323E  E1        pop     hl
323F  11 9D 41  ld      de,$419D
3242  06 05     ld      b,$05
3244  1A        ld      a,(de)
3245  BE        cp      (hl)
3246  20        jr      nz,
3247  04        inc     b
3248  23        inc     hl
3249  13        inc     de
324A  10        djnz    
324B  F8        ret     m
324C  D1        pop     de
324D  20        jr      nz,
324E  CD 2A 30  call    $302A
3251  42        ld      b,d
3252  01 20 00  ld      bc,$0020
3255  ED 42     prefix'B'
3257  D7        rst     10
3258  D5        push    de
3259  30 06     jr      nc,$06
325B  09        add     hl,bc
325C  4D        ld      c,l
325D  11 CE 41  ld      de,$41CE
3260  D5        push    de
3261  F5        push    af
3262  EB        ex      de,hl
3263  C5        push    bc
3264  CD F5 32  call    $32F5
3267  30 48     jr      nc,'H'
3269  28        jr      z,
326A  07        rlca
326B  E5        push    hl
326C  21 58 41  ld      hl,$4158
326F  CB FE     $FE
3271  E1        pop     hl
3272  EB        ex      de,hl
3273  01 EE EE  ld      bc,$EEEE
3276  B7        or      a
3277  ED 42     prefix'B'
3279  C1        pop     bc
327A  28        jr      z,
327B  07        rlca
327C  F1        pop     af
327D  E1        pop     hl
327E  30 CF     jr      nc,$CF
3280  D1        pop     de
3281  18        jr      
3282  0B        dec     bc
3283  F1        pop     af
3284  E1        pop     hl
3285  7E        ld      a,(hl)
3286  30 0F     jr      nc,$0F
3288  D1        pop     de
3289  B9        cp      c
328A  28        jr      z,
328B  0D        dec     c
328C  38        jr      c,
328D  0B        dec     bc
328E  CD 9E 32  call    $329E
3291  E5        push    hl
3292  CD 54 26  call    $2654
3295  E1        pop     hl
3296  C9        ret
3297  54        ld      d,h
3298  5D        ld      e,l
3299  B7        or      a
329A  28        jr      z,
329B  04        inc     b
329C  23        inc     hl
329D  4F        ld      c,a
329E  ED B0     prefix$B0
32A0  D5        push    de
32A1  CD B8 32  call    $32B8
32A4  21 58 41  ld      hl,$4158
32A7  CB 7E     '~'
32A9  CB BE     $BE
32AB  C4 64 26  call    nz,$2664
32AE  E1        pop     hl
32AF  37        scf
32B0  C9        ret
32B1  C1        pop     bc
32B2  F1        pop     af
32B3  E1        pop     hl
32B4  18        jr      
32B5  02        ld      (bc),a
32B6  D1        pop     de
32B7  B7        or      a
32B8  21 BD 40  ld      hl,$40BD
32BB  CB B6     $B6
32BD  FB        ei
32BE  C9        ret
32BF  D5        push    de
32C0  D5        push    de
32C1  DD E1     prefix$E1
32C3  11 0E 00  ld      de,$000E
32C6  CD 9A 33  call    $339A
32C9  CD A3 33  call    $33A3
32CC  CD A3 33  call    $33A3
32CF  D1        pop     de
32D0  06 1F     ld      b,$1F
32D2  10        djnz    
32D3  FE CD     cp      $CD
32D5  60        ld      h,b
32D6  33        inc     sp
32D7  06 1A     ld      b,$1A
32D9  10        djnz    
32DA  FE 06     cp      $06
32DC  10        djnz    
32DD  C5        push    bc
32DE  5E        ld      e,(hl)
32DF  23        inc     hl
32E0  56        ld      d,(hl)
32E1  23        inc     hl
32E2  DD 19     prefix$19
32E4  CD 60 33  call    $3360
32E7  06 19     ld      b,$19
32E9  10        djnz    
32EA  FE C1     cp      $C1
32EC  10        djnz    
32ED  EF        rst     28
32EE  E3        ex      (sp),hl
32EF  E3        ex      (sp),hl
32F0  DD E5     prefix$E5
32F2  D1        pop     de
32F3  18        jr      
32F4  6B        ld      l,e
32F5  CD B2 33  call    $33B2
32F8  CD C4 33  call    $33C4
32FB  D0        ret     nc
32FC  CD BC 33  call    $33BC
32FF  16 07     ld      d,$07
3301  06 0E     ld      b,$0E
3303  10        djnz    
3304  FE CD     cp      $CD
3306  B2        or      d
3307  33        inc     sp
3308  1E 0D     ld      e,$0D
330A  CD B2 33  call    $33B2
330D  20        jr      nz,
330E  E6 1D     and     $1D
3310  20        jr      nz,
3311  F8        ret     m
3312  1E 16     ld      e,$16
3314  1D        dec     e
3315  28        jr      z,
3316  DE DB     sbc     a,$DB
3318  11 A9 CB  ld      de,$CBA9
331B  77        ld      (hl),a
331C  28        jr      z,
331D  F6 15     or      $15
331F  20        jr      nz,
3320  E0        ret     po
3321  CD BC 33  call    $33BC
3324  06 72     ld      b,'r'
3326  10        djnz    
3327  FE CD     cp      $CD
3329  B2        or      d
332A  33        inc     sp
332B  20        jr      nz,
332C  F4 CD BC  call    p,$BCCD
332F  33        inc     sp
3330  06 34     ld      b,$34
3332  10        djnz    
3333  FE CD     cp      $CD
3335  7C        ld      a,h
3336  33        inc     sp
3337  06 2E     ld      b,$2E
3339  10        djnz    
333A  FE D5     cp      $D5
333C  D5        push    de
333D  DD E1     prefix$E1
333F  16 10     ld      d,$10
3341  D5        push    de
3342  CD 7C 33  call    $337C
3345  06 2C     ld      b,$2C
3347  10        djnz    
3348  FE 73     cp      's'
334A  23        inc     hl
334B  72        ld      (hl),d
334C  23        inc     hl
334D  DD 19     prefix$19
334F  D1        pop     de
3350  15        dec     d
3351  20        jr      nz,
3352  EE DD     xor     $DD
3354  E5        push    hl
3355  CD 7C 33  call    $337C
3358  EB        ex      de,hl
3359  C1        pop     bc
335A  ED 42     prefix'B'
335C  EB        ex      de,hl
335D  D1        pop     de
335E  37        scf
335F  C9        ret
3360  0E 10     ld      c,$10
3362  CB 3A     $3A
3364  CB 1B     rr      e$1B
3366  D4 AB 33  call    nc,$33AB
3369  06 22     ld      b,$22
336B  30 02     jr      nc,$02
336D  06 25     ld      b,$25
336F  10        djnz    
3370  FE CD     cp      $CD
3372  AB        xor     e
3373  33        inc     sp
3374  0D        dec     c
3375  C8        ret     z
3376  06 20     ld      b,$20
3378  10        djnz    
3379  FE 18     cp      $18
337B  E6 06     and     $06
337D  10        djnz    
337E  18        jr      
337F  06 C5     ld      b,$C5
3381  06 34     ld      b,$34
3383  10        djnz    
3384  FE C1     cp      $C1
3386  CD B2 33  call    $33B2
3389  37        scf
338A  20        jr      nz,
338B  01 AF CB  ld      bc,$CBAF
338E  1A        ld      a,(de)
338F  CB 1B     rr      e$1B
3391  CD BC 33  call    $33BC
3394  10        djnz    
3395  EA C9 11  jp      pe,$11C9
3398  00        nop
3399  0C        inc     c
339A  CD A7 33  call    $33A7
339D  1B        dec     de
339E  7B        ld      a,e
339F  B2        or      d
33A0  20        jr      nz,
33A1  F8        ret     m
33A2  C9        ret
33A3  06 49     ld      b,'I'
33A5  18        jr      
33A6  02        ld      (bc),a
33A7  06 97     ld      b,$97
33A9  10        djnz    
33AA  FE DB     cp      $DB
33AC  11 EE 80  ld      de,$80EE
33AF  D3 11     out     ($11),a
33B1  C9        ret
33B2  DB 11     in      a,($11)
33B4  A9        xor     c
33B5  CB 77     'w'
33B7  F5        push    af
33B8  A9        xor     c
33B9  4F        ld      c,a
33BA  F1        pop     af
33BB  C9        ret
33BC  DB 11     in      a,($11)
33BE  A9        xor     c
33BF  CB 77     'w'
33C1  28        jr      z,
33C2  F9        ld      sp,phl
33C3  C9        ret
33C4  E5        push    hl
33C5  C5        push    bc
33C6  3E 97     ld      a,$97
33C8  DF        rst     18
33C9  C1        pop     bc
33CA  E1        pop     hl
33CB  C0        ret     nz
33CC  CD B2 33  call    $33B2
33CF  28        jr      z,
33D0  F3        di
33D1  37        scf
33D2  C9        ret
33D3  21 0E 42  ld      hl,$420E
33D6  22 77 41  ld      ($4177),hl
33D9  CD 80 37  call    $3780
33DC  CD D5 16  call    $16D5
33DF  CD C3 16  call    $16C3
33E2  21 80 34  ld      hl,$3480
33E5  22 58 40  ld      ($4058),hl
33E8  21 E6 37  ld      hl,$37E6
33EB  11 CE 41  ld      de,$41CE
33EE  01 0E 00  ld      bc,$000E
33F1  ED B0     prefix$B0
33F3  3E 03     ld      a,$03
33F5  D3 14     out     ($14),a
33F7  1E 00     ld      e,$00
33F9  0E 1B     ld      c,$1B
33FB  21 F4 37  ld      hl,$37F4
33FE  06 0C     ld      b,$0C
3400  ED B3     prefix$B3
3402  3E 10     ld      a,$10
3404  ED 79     prefix'y'
3406  ED 78     prefix'x'
3408  E6 10     and     $10
340A  0F        rrca
340B  0F        rrca
340C  32 59 41  ld      ($4159),a
340F  01 E8 08  ld      bc,$08E8
3412  79        ld      a,c
3413  C5        push    bc
3414  D5        push    de
3415  DF        rst     18
3416  D1        pop     de
3417  C1        pop     bc
3418  37        scf
3419  20        jr      nz,
341A  01 B7 CB  ld      bc,$CBB7
341D  13        inc     de
341E  0C        inc     c
341F  10        djnz    
3420  F1        pop     af
3421  7B        ld      a,e
3422  32 5A 41  ld      ($415A),a
3425  CB 7F     $7F
3427  21 DB 41  ld      hl,$41DB
342A  28        jr      z,
342B  06 CB     ld      b,$CB
342D  FE 2B     cp      $2B
342F  2B        dec     hl
3430  CB F6     $F6
3432  CD E0 37  call    $37E0
3435  28        jr      z,
3436  05        dec     b
3437  21 D9 41  ld      hl,$41D9
343A  CB FE     $FE
343C  21 D5 41  ld      hl,$41D5
343F  5F        ld      e,a
3440  E6 0F     and     $0F
3442  B6        or      (hl)
3443  77        ld      (hl),a
3444  7B        ld      a,e
3445  E6 70     and     'p'
3447  CB 6F     'o'
3449  20        jr      nz,
344A  0F        rrca
344B  CB F6     $F6
344D  FE 20     cp      $20
344F  30 11     jr      nc,$11
3451  16 57     ld      d,'W'
3453  B7        or      a
3454  28        jr      z,
3455  14        inc     d
3456  16 40     ld      d,'@'
3458  18        jr      
3459  10        djnz    
345A  CB FE     $FE
345C  CB 67     'g'
345E  20        jr      nz,
345F  02        ld      (bc),a
3460  CB F6     $F6
3462  16 08     ld      d,$08
3464  FE 50     cp      'P'
3466  38        jr      c,
3467  02        ld      (bc),a
3468  16 01     ld      d,$01
346A  21 D0 41  ld      hl,$41D0
346D  72        ld      (hl),d
346E  2B        dec     hl
346F  2B        dec     hl
3470  0E 14     ld      c,$14
3472  46        ld      b,(hl)
3473  23        inc     hl
3474  ED B3     prefix$B3
3476  0E 1A     ld      c,$1A
3478  46        ld      b,(hl)
3479  23        inc     hl
347A  ED B3     prefix$B3
347C  CD 1C 37  call    $371C
347F  C9        ret
3480  F3        di
3481  F5        push    af
3482  C5        push    bc
3483  D5        push    de
3484  E5        push    hl
3485  FB        ei
3486  3E 01     ld      a,$01
3488  D3 1A     out     ($1A),a
348A  DB 1A     in      a,($1A)
348C  E6 70     and     'p'
348E  28        jr      z,
348F  17        rla
3490  4F        ld      c,a
3491  3E 3F     ld      a,$3F
3493  CD 6C 37  call    $376C
3496  CB 69     'i'
3498  28        jr      z,
3499  09        add     hl,bc
349A  CD 90 37  call    $3790
349D  CD 90 37  call    $3790
34A0  CD 90 37  call    $3790
34A3  3E 30     ld      a,$30
34A5  D3 1A     out     ($1A),a
34A7  CD 90 37  call    $3790
34AA  F3        di
34AB  E1        pop     hl
34AC  D1        pop     de
34AD  C1        pop     bc
34AE  F1        pop     af
34AF  C3 1E 02  jp      $021E
34B2  CD 79 37  call    $3779
34B5  21 59 41  ld      hl,$4159
34B8  CB 7F     $7F
34BA  28        jr      z,
34BB  03        inc     bc
34BC  CB 9E     $9E
34BE  C9        ret
34BF  CB 56     'V'
34C1  C0        ret     nz
34C2  CB 67     'g'
34C4  CB 9E     $9E
34C6  C8        ret     z
34C7  CB DE     $DE
34C9  C9        ret
34CA  CD B2 34  call    $34B2
34CD  F3        di
34CE  ED 5B     prefix'['
34D0  73        ld      (hl),e
34D1  41        ld      b,c
34D2  21 CE 41  ld      hl,$41CE
34D5  D7        rst     10
34D6  CA 91 35  jp      z,$3591
34D9  2A 75 41  ld      hl,($4175)
34DC  EB        ex      de,hl
34DD  D7        rst     10
34DE  28        jr      z,
34DF  52        ld      d,d
34E0  7C        ld      a,h
34E1  B7        or      a
34E2  20        jr      nz,
34E3  17        rla
34E4  7D        ld      a,l
34E5  FE 05     cp      $05
34E7  30 12     jr      nc,$12
34E9  44        ld      b,h
34EA  4D        ld      c,l
34EB  21 CE 41  ld      hl,$41CE
34EE  22 75 41  ld      ($4175),hl
34F1  EB        ex      de,hl
34F2  ED B0     prefix$B0
34F4  ED 53     prefix'S'
34F6  73        ld      (hl),e
34F7  41        ld      b,c
34F8  CD FB 36  call    $36FB
34FB  FB        ei
34FC  2A 75 41  ld      hl,($4175)
34FF  7E        ld      a,(hl)
3500  23        inc     hl
3501  22 75 41  ld      ($4175),hl
3504  21 59 41  ld      hl,$4159
3507  CB 6E     'n'
3509  28        jr      z,
350A  1E CB     ld      e,$CB
350C  AE        xor     (hl)
350D  ED 4B     prefix'K'
350F  B2        or      d
3510  00        nop
3511  41        ld      b,c
3512  2A B6 00  ld      hl,($00B6)
3515  BE        cp      (hl)
3516  28        jr      z,
3517  07        rlca
3518  23        inc     hl
3519  10        djnz    
351A  FA 3E 3F  jp      m,$3F3E
351D  18        jr      
351E  33        inc     sp
351F  79        ld      a,c
3520  90        sub     b
3521  2A B8 00  ld      hl,($00B8)
3524  CD 8A 37  call    $378A
3527  18        jr      
3528  29        add     hl,jl
3529  FE 1B     cp      $1B
352B  20        jr      nz,
352C  0E CB     ld      c,$CB
352E  EE C3     xor     $C3
3530  CD 34 CD  call    $CD34
3533  80        add     a,b
3534  37        scf
3535  FB        ei
3536  CD FB 36  call    $36FB
3539  18        jr      
353A  26 FE     ld      h,$FE
353C  0A        ld      a,(bc)
353D  F5        push    af
353E  CC BA 1C  call    z,$1CBA
3541  F1        pop     af
3542  2A B6 00  ld      hl,($00B6)
3545  2B        dec     hl
3546  01 80 00  ld      bc,$0080
3549  B7        or      a
354A  C8        ret     z
354B  ED B9     prefix$B9
354D  3E 0F     ld      a,$0F
354F  20        jr      nz,
3550  01 79 18  ld      bc,$1879
3553  2B        dec     hl
3554  28        jr      z,
3555  21 FE A1  ld      hl,$A1FE
3558  28        jr      z,
3559  1D        dec     e
355A  FE 03     cp      $03
355C  28        jr      z,
355D  1E CD     ld      e,$CD
355F  5B        ld      e,e
3560  1B        dec     de
3561  CD 9A 35  call    $359A
3564  3E 9B     ld      a,$9B
3566  DF        rst     18
3567  C2 A3 24  jp      nz,$24A3
356A  CD C9 16  call    $16C9
356D  C8        ret     z
356E  F5        push    af
356F  3E 87     ld      a,$87
3571  DF        rst     18
3572  C4 2E 18  call    nz,$182E
3575  F1        pop     af
3576  C9        ret
3577  CD 4E 20  call    $204E
357A  18        jr      
357B  E5        push    hl
357C  C3 A3 24  jp      $24A3
357F  32 1E 42  ld      ($421E),a
3582  32 1F 42  ld      ($421F),a
3585  2A 7B 41  ld      hl,($417B)
3588  22 73 40  ld      ($4073),hl
358B  FE A0     cp      $A0
358D  18        jr      
358E  C5        push    bc
358F  FF        rst     38
3590  FF        rst     38
3591  FB        ei
3592  CD FB 36  call    $36FB
3595  18        jr      
3596  CA CD 21  jp      z,$21CD
3599  36 2A     ld      (hl),$2A
359B  77        ld      (hl),a
359C  41        ld      b,c
359D  11 0E 42  ld      de,$420E
35A0  D7        rst     10
35A1  C8        ret     z
35A2  D8        ret     c
35A3  1A        ld      a,(de)
35A4  E5        push    hl
35A5  D5        push    de
35A6  CD B9 35  call    $35B9
35A9  D1        pop     de
35AA  C1        pop     bc
35AB  D8        ret     c
35AC  0D        dec     c
35AD  28        jr      z,
35AE  05        dec     b
35AF  21 0F 42  ld      hl,$420F
35B2  ED B0     prefix$B0
35B4  EB        ex      de,hl
35B5  22 77 41  ld      ($4177),hl
35B8  C9        ret
35B9  57        ld      d,a
35BA  21 B4 40  ld      hl,$40B4
35BD  7E        ld      a,(hl)
35BE  FE BA     cp      $BA
35C0  28        jr      z,
35C1  03        inc     bc
35C2  32 BC 40  ld      ($40BC),a
35C5  36 BA     ld      (hl),$BA
35C7  CD B2 34  call    $34B2
35CA  CB 5E     '^'
35CC  7A        ld      a,d
35CD  57        ld      d,a
35CE  28        jr      z,
35CF  15        dec     d
35D0  DB 1A     in      a,($1A)
35D2  CB 7F     $7F
35D4  20        jr      nz,
35D5  0F        rrca
35D6  CB 57     'W'
35D8  28        jr      z,
35D9  0B        dec     bc
35DA  7A        ld      a,d
35DB  D3 18     out     ($18),a
35DD  3A BC 40  ld      a,($40BC)
35E0  32 B4 40  ld      ($40B4),a
35E3  B7        or      a
35E4  C9        ret
35E5  7A        ld      a,d
35E6  37        scf
35E7  C9        ret
35E8  FE 87     cp      $87
35EA  CA 2E 18  jp      z,$182E
35ED  CD D7 37  call    $37D7
35F0  38        jr      c,
35F1  25        dec     h
35F2  F5        push    af
35F3  3E 97     ld      a,$97
35F5  CD 11 2A  call    $2A11
35F8  3E 1B     ld      a,$1B
35FA  CD D7 37  call    $37D7
35FD  F1        pop     af
35FE  CD D7 37  call    $37D7
3601  6F        ld      l,a
3602  DF        rst     18
3603  7D        ld      a,l
3604  20        jr      nz,
3605  FB        ei
3606  C9        ret
3607  EF        rst     28
3608  20        jr      nz,
3609  DE F7     sbc     a,$F7
360B  20        jr      nz,
360C  02        ld      (bc),a
360D  B7        or      a
360E  C8        ret     z
360F  CD 11 2A  call    $2A11
3612  CD CE 37  call    $37CE
3615  30 1C     jr      nc,$1C
3617  F5        push    af
3618  CD 9A 35  call    $359A
361B  CD C1 1C  call    $1CC1
361E  F1        pop     af
361F  18        jr      
3620  F1        pop     af
3621  CD B3 16  call    $16B3
3624  C0        ret     nz
3625  CD CE 37  call    $37CE
3628  D8        ret     c
3629  CD CA 1C  call    $1CCA
362C  C8        ret     z
362D  CD E6 27  call    $27E6
3630  22 5F 41  ld      ($415F),hl
3633  2A B8 00  ld      hl,($00B8)
3636  ED 4B     prefix'K'
3638  B2        or      d
3639  00        nop
363A  ED B1     prefix$B1
363C  20        jr      nz,
363D  1A        ld      a,(de)
363E  3E 1B     ld      a,$1B
3640  CD D7 37  call    $37D7
3643  0C        inc     c
3644  3A B2 00  ld      a,($00B2)
3647  91        sub     c
3648  2A B6 00  ld      hl,($00B6)
364B  CD 8A 37  call    $378A
364E  CD D7 37  call    $37D7
3651  FE 0A     cp      $0A
3653  3E 0D     ld      a,$0D
3655  28        jr      z,
3656  F7        rst     30
3657  C9        ret
3658  FE 87     cp      $87
365A  28        jr      z,
365B  15        dec     d
365C  FE 80     cp      $80
365E  D0        ret     nc
365F  2A B4 00  ld      hl,($00B4)
3662  CD 8A 37  call    $378A
3665  B7        or      a
3666  C8        ret     z
3667  FE FF     cp      $FF
3669  20        jr      nz,
366A  E3        ex      (sp),hl
366B  00        nop
366C  00        nop
366D  00        nop
366E  00        nop
366F  00        nop
3670  00        nop
3671  2A 5F 41  ld      hl,($415F)
3674  CD 57 28  call    $2857
3677  2E 0F     ld      l,$0F
3679  CB 7A     'z'
367B  28        jr      z,
367C  05        dec     b
367D  CD A7 06  call    $06A7
3680  2E 0E     ld      l,$0E
3682  EB        ex      de,hl
3683  CD 14 22  call    $2214
3686  2D        dec     l
3687  C8        ret     z
3688  45        ld      b,l
3689  4B        ld      c,e
368A  79        ld      a,c
368B  C5        push    bc
368C  CD 12 36  call    $3612
368F  CD 9A 35  call    $359A
3692  38        jr      c,
3693  FB        ei
3694  C1        pop     bc
3695  10        djnz    
3696  F3        di
3697  C9        ret
3698  CD C9 16  call    $16C9
369B  28        jr      z,
369C  10        djnz    
369D  CB A7     $A7
369F  CD 60 37  call    $3760
36A2  CD 1C 37  call    $371C
36A5  CB 66     'f'
36A7  CC D5 16  call    z,$16D5
36AA  C3 E6 18  jp      $18E6
36AD  F3        di
36AE  CD 80 37  call    $3780
36B1  FB        ei
36B2  CD 79 37  call    $3779
36B5  CB 47     'G'
36B7  28        jr      z,
36B8  04        inc     b
36B9  DB 18     in      a,($18)
36BB  18        jr      
36BC  F5        push    af
36BD  CD E0 37  call    $37E0
36C0  C4 60 37  call    nz,$3760
36C3  3E 30     ld      a,$30
36C5  D3 1A     out     ($1A),a
36C7  CD CF 16  call    $16CF
36CA  18        jr      
36CB  DE CD     sbc     a,$CD
36CD  B7        or      a
36CE  16 28     ld      d,$28
36D0  0C        inc     c
36D1  CD C3 16  call    $16C3
36D4  21 0E 42  ld      hl,$420E
36D7  22 77 41  ld      ($4177),hl
36DA  C3 C8 18  jp      $18C8
36DD  CD 79 37  call    $3779
36E0  CB 57     'W'
36E2  28        jr      z,
36E3  0D        dec     c
36E4  21 59 41  ld      hl,$4159
36E7  CB 5E     '^'
36E9  20        jr      nz,
36EA  0B        dec     bc
36EB  CB 56     'V'
36ED  28        jr      z,
36EE  02        ld      (bc),a
36EF  CB 6F     'o'
36F1  CA 64 26  jp      z,$2664
36F4  CB DE     $DE
36F6  CD BD 16  call    $16BD
36F9  18        jr      
36FA  D9        exx
36FB  CD C9 16  call    $16C9
36FE  C8        ret     z
36FF  21 59 41  ld      hl,$4159
3702  CB 66     'f'
3704  C0        ret     nz
3705  F5        push    af
3706  CD E0 37  call    $37E0
3709  28        jr      z,
370A  32 3E 11  ld      ($113E),a
370D  CD 2D 37  call    $372D
3710  38        jr      c,
3711  4C        ld      c,h
3712  F1        pop     af
3713  CB E6     $E6
3715  C9        ret
3716  21 59 41  ld      hl,$4159
3719  CB 66     'f'
371B  C8        ret     z
371C  F5        push    af
371D  CD E0 37  call    $37E0
3720  28        jr      z,
3721  24        inc     h
3722  3E 13     ld      a,$13
3724  CD 2D 37  call    $372D
3727  38        jr      c,
3728  35        dec     (hl)
3729  F1        pop     af
372A  CB A6     $A6
372C  C9        ret
372D  C5        push    bc
372E  47        ld      b,a
372F  CD 79 37  call    $3779
3732  CB 67     'g'
3734  78        ld      a,b
3735  C1        pop     bc
3736  37        scf
3737  D5        push    de
3738  C4 CD 35  call    nz,$35CD
373B  D1        pop     de
373C  C9        ret
373D  CB E6     $E6
373F  3A F1 37  ld      a,($37F1)
3742  CB FF     $FF
3744  18        jr      
3745  05        dec     b
3746  3A F1 37  ld      a,($37F1)
3749  CB A6     $A6
374B  E5        push    hl
374C  21 5A 41  ld      hl,$415A
374F  CB 7E     '~'
3751  E1        pop     hl
3752  28        jr      z,
3753  02        ld      (bc),a
3754  CB F7     $F7
3756  F5        push    af
3757  3E 05     ld      a,$05
3759  D3 1A     out     ($1A),a
375B  F1        pop     af
375C  D3 1A     out     ($1A),a
375E  F1        pop     af
375F  C9        ret
3760  F5        push    af
3761  CB 67     'g'
3763  3A F1 37  ld      a,($37F1)
3766  28        jr      z,
3767  DA CB CF  jp      c,$CFCB
376A  18        jr      
376B  D6 CD     sub     $CD
376D  C9        ret
376E  16 C8     ld      d,$C8
3770  2A 73 41  ld      hl,($4173)
3773  77        ld      (hl),a
3774  23        inc     hl
3775  22 73 41  ld      ($4173),hl
3778  C9        ret
3779  3E 10     ld      a,$10
377B  D3 1A     out     ($1A),a
377D  DB 1A     in      a,($1A)
377F  C9        ret
3780  21 CE 41  ld      hl,$41CE
3783  22 73 41  ld      ($4173),hl
3786  22 75 41  ld      ($4175),hl
3789  C9        ret
378A  4F        ld      c,a
378B  06 00     ld      b,$00
378D  09        add     hl,bc
378E  7E        ld      a,(hl)
378F  C9        ret
3790  DB 18     in      a,($18)
3792  21 5A 41  ld      hl,$415A
3795  CB 7E     '~'
3797  20        jr      nz,
3798  02        ld      (bc),a
3799  E6 7F     and     $7F
379B  FE 15     cp      $15
379D  21 59 41  ld      hl,$4159
37A0  28        jr      z,
37A1  0F        rrca
37A2  CB 56     'V'
37A4  28        jr      z,
37A5  12        ld      (de),a
37A6  FE 11     cp      $11
37A8  20        jr      nz,
37A9  03        inc     bc
37AA  CB DE     $DE
37AC  C9        ret
37AD  FE 13     cp      $13
37AF  20        jr      nz,
37B0  03        inc     bc
37B1  CB 9E     $9E
37B3  C9        ret
37B4  FE 14     cp      $14
37B6  28        jr      z,
37B7  F9        ld      sp,phl
37B8  ED 5B     prefix'['
37BA  73        ld      (hl),e
37BB  41        ld      b,c
37BC  21 0D 42  ld      hl,$420D
37BF  D7        rst     10
37C0  C8        ret     z
37C1  01 0A 00  ld      bc,$000A
37C4  ED 42     prefix'B'
37C6  30 03     jr      nc,$03
37C8  CD 16 37  call    $3716
37CB  C3 6C 37  jp      $376C
37CE  21 18 42  ld      hl,$4218
37D1  ED 5B     prefix'['
37D3  77        ld      (hl),a
37D4  41        ld      b,c
37D5  D7        rst     10
37D6  C9        ret
37D7  2A 77 41  ld      hl,($4177)
37DA  77        ld      (hl),a
37DB  23        inc     hl
37DC  22 77 41  ld      ($4177),hl
37DF  C9        ret
37E0  21 59 41  ld      hl,$4159
37E3  CB 56     'V'
37E5  C9        ret
37E6  02        ld      (bc),a
37E7  07        rlca
37E8  01 0A 00  ld      bc,$000A
37EB  18        jr      
37EC  04        inc     b
37ED  00        nop
37EE  01 18 05  ld      bc,$0518
37F1  28        jr      z,
37F2  03        inc     bc
37F3  41        ld      b,c
37F4  00        nop
37F5  18        jr      
37F6  04        inc     b
37F7  44        ld      b,h
37F8  01 00 03  ld      bc,$0300
37FB  00        nop
37FC  05        dec     b
37FD  00        nop
37FE  02        ld      (bc),a
37FF  58        ld      e,b
3800            end
