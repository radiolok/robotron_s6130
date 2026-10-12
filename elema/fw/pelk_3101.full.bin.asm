0000            org     $0000
0000  C3 8D 01  jmp     $018D
0003  BE        cmp     m
0004  AB        xra     e
0005  01 C5 FF  lxi     b,$FFC5
0008  F8        rm
0009  28        nop                  ;Note: Alternative opcode used
000A  D0        rnc
000B  21 58 1B  lxi     h,$1B58
000E  44        mov     b,h
000F  16 2A     mvi     d,$2A
0011  12        stax    d
0012  90        sub     b
0013  10        nop                  ;Note: Alternative opcode used
0014  FB        ei
0015  0E 2E     mvi     c,$2E
0017  0E 61     mvi     c,'a'
0019  0D        dcr     c
001A  80        add     b
001B  0C        inr     c
001C  F0        rp
001D  0A        ldax    b
001E  C0        rnz
001F  23        inx     h
0020  40        mov     b,b
0021  1D        dcr     e
0022  96        sub     m
0023  19        dad
0024  A8        xra     b
0025  16 50     mvi     d,'P'
0027  14        inr     d
0028  C6 11     adi     $11
002A  3C        inr     a
002B  0F        rrc
002C  10        nop                  ;Note: Alternative opcode used
002D  0E F8     mvi     c,$F8
002F  0C        inr     c
0030  1C        inr     e
0031  0C        inr     c
0032  FF        rst     7
0033  FF        rst     7
0034  FF        rst     7
0035  FF        rst     7
0036  FF        rst     7
0037  FF        rst     7
0038  C3 00 00  jmp     $0000
003B  40        mov     b,b
003C  1D        dcr     e
003D  A8        xra     b
003E  16 D8     mvi     d,$D8
0040  0E 80     mvi     c,$80
0042  0C        inr     c
0043  86        add     m
0044  0B        dcx     b
0045  F0        rp
0046  0A        ldax    b
0047  E8        rpe
0048  80        add     b
0049  40        mov     b,b
004A  1D        dcr     e
004B  A8        xra     b
004C  16 D8     mvi     d,$D8
004E  0E 1C     mvi     c,$1C
0050  0C        inr     c
0051  80        add     b
0052  20        nop                  ;Note: Alternative opcode used
0053  40        mov     b,b
0054  1D        dcr     e
0055  00        nop
0056  1A        ldax    d
0057  E0        rpo
0058  15        dcr     d
0059  24        inr     h
005A  13        inx     d
005B  CC 10 3C  cz      $3C10
005E  0F        rrc
005F  E4 0C 54  cpo     $540C
0062  0B        dcx     b
0063  80        add     b
0064  20        nop                  ;Note: Alternative opcode used
0065  40        mov     b,b
0066  1D        dcr     e
0067  00        nop
0068  1A        ldax    d
0069  E0        rpo
006A  15        dcr     d
006B  24        inr     h
006C  13        inx     d
006D  CC 10 3C  cz      $3C10
0070  0F        rrc
0071  E4 0C 68  cpo     $680C
0074  29        dad     h
0075  A8        xra     b
0076  16 30     mvi     d,$30
0078  11 3C 0F  lxi     d,$0F3C
007B  10        nop                  ;Note: Alternative opcode used
007C  0E 10     mvi     c,$10
007E  0E 98     mvi     c,$98
0080  21 A8 16  lxi     h,$16A8
0083  30        nop                  ;Note: Alternative opcode used
0084  11 3C 0F  lxi     d,$0F3C
0087  10        nop                  ;Note: Alternative opcode used
0088  0E 98     mvi     c,$98
008A  3A A0 0F  lda     $0FA0
008D  50        mov     d,b
008E  00        nop
008F  39        dad     sp
0090  09        dad     b
0091  22 1B 3D  shld    $3D1B
0094  21 0B 1E  lxi     h,$1E0B
0097  63        mov     h,e
0098  0C        inr     c
0099  0F        rrc
009A  10        nop                  ;Note: Alternative opcode used
009B  2D        dcr     l
009C  0E 12     mvi     c,$12
009E  14        inr     d
009F  3B        dcx     sp
00A0  15        dcr     d
00A1  1A        ldax    d
00A2  16 2F     mvi     d,$2F
00A4  11 18 17  lxi     d,$1718
00A7  02        stax    b
00A8  0A        ldax    b
00A9  13        inx     d
00AA  20        nop                  ;Note: Alternative opcode used
00AB  64        mov     h,h
00AC  1D        dcr     e
00AD  19        dad
00AE  08        nop                  ;Note: Alternative opcode used
00AF  01 03 0D  lxi     b,$0D03
00B2  05        dcr     b
00B3  29        dad     h
00B4  1C        inr     e
00B5  07        rlc
00B6  04        inr     b
00B7  62        mov     h,d
00B8  1F        rar
00B9  06 61     mvi     b,'a'
00BB  23        inx     h
00BC  33        inx     sp
00BD  2B        dcx     h
00BE  35        dcr     m
00BF  5F        mov     e,a
00C0  2E 3A     mvi     l,$3A
00C2  2A 55 40  lhld    $4055
00C5  38        nop                  ;Note: Alternative opcode used
00C6  4D        mov     c,l
00C7  56        mov     d,m
00C8  48        mov     c,b
00C9  4F        mov     c,a
00CA  5E        mov     e,m
00CB  57        mov     d,a
00CC  2C        inr     l
00CD  53        mov     d,e
00CE  32 59 4C  sta     $4C59
00D1  24        inr     h
00D2  46        mov     b,m
00D3  5A        mov     e,d
00D4  26 3F     mvi     h,$3F
00D6  41        mov     b,c
00D7  5B        mov     e,e
00D8  4B        mov     c,e
00D9  4E        mov     c,m
00DA  50        mov     d,b
00DB  5C        mov     e,h
00DC  3C        inr     a
00DD  4A        mov     c,d
00DE  51        mov     d,c
00DF  5D        mov     e,l
00E0  36 42     mvi     m,'B'
00E2  34        inr     m
00E3  58        mov     e,b
00E4  49        mov     c,c
00E5  30        nop                  ;Note: Alternative opcode used
00E6  44        mov     b,h
00E7  54        mov     d,h
00E8  28        nop                  ;Note: Alternative opcode used
00E9  52        mov     d,d
00EA  27        daa
00EB  3E 60     mvi     a,'`'
00ED  47        mov     b,a
00EE  37        stc
00EF  43        mov     b,e
00F0  25        dcr     h
00F1  45        mov     b,l
00F2  31 63 75  lxi     sp,$7563
00F5  7F        mov     a,a
00F6  6D        mov     l,l
00F7  63        mov     h,e
00F8  65        mov     h,l
00F9  75        mov     m,l
00FA  66        mov     h,m
00FB  4C        mov     c,h
00FC  65        mov     h,l
00FD  6D        mov     l,l
00FE  65        mov     h,l
00FF  5C        mov     e,h
0100  6D        mov     l,l
0101  75        mov     m,l
0102  75        mov     m,l
0103  54        mov     d,h
0104  6E        mov     l,m
0105  66        mov     h,m
0106  6D        mov     l,l
0107  0A        ldax    b
0108  6D        mov     l,l
0109  76        hlt
010A  65        mov     h,l
010B  0A        ldax    b
010C  65        mov     h,l
010D  66        mov     h,m
010E  65        mov     h,l
010F  02        stax    b
0110  B5        ora     l
0111  6D        mov     l,l
0112  75        mov     m,l
0113  D2 BD 75  jnc     $75BD
0116  7D        mov     a,l
0117  64        mov     h,h
0118  6D        mov     l,l
0119  BD        cmp     l
011A  AD        xra     l
011B  BE        cmp     m
011C  65        mov     h,l
011D  6E        mov     l,m
011E  1A        ldax    d
011F  66        mov     h,m
0120  12        stax    d
0121  7D        mov     a,l
0122  13        inx     d
0123  1C        inr     e
0124  7E        mov     a,m
0125  7F        mov     a,a
0126  7D        mov     a,l
0127  6C        mov     l,h
0128  74        mov     m,h
0129  7E        mov     a,m
012A  74        mov     m,h
012B  6C        mov     l,h
012C  6C        mov     l,h
012D  7D        mov     a,l
012E  6C        mov     l,h
012F  6C        mov     l,h
0130  75        mov     m,l
0131  76        hlt
0132  7E        mov     a,m
0133  6C        mov     l,h
0134  75        mov     m,l
0135  74        mov     m,h
0136  75        mov     m,l
0137  74        mov     m,h
0138  7D        mov     a,l
0139  76        hlt
013A  6D        mov     l,l
013B  6C        mov     l,h
013C  6C        mov     l,h
013D  74        mov     m,h
013E  74        mov     m,h
013F  74        mov     m,h
0140  7D        mov     a,l
0141  75        mov     m,l
0142  7E        mov     a,m
0143  74        mov     m,h
0144  7E        mov     a,m
0145  7D        mov     a,l
0146  7D        mov     a,l
0147  74        mov     m,h
0148  75        mov     m,l
0149  7D        mov     a,l
014A  74        mov     m,h
014B  5C        mov     e,h
014C  6C        mov     l,h
014D  75        mov     m,l
014E  54        mov     d,h
014F  75        mov     m,l
0150  FF        rst     7
0151  5C        mov     e,h
0152  13        inx     d
0153  24        inr     h
0154  13        inx     d
0155  75        mov     m,l
0156  1A        ldax    d
0157  C0        rnz
0158  09        dad     b
0159  90        sub     b
015A  0A        ldax    b
015B  60        mov     h,b
015C  0B        dcx     b
015D  30        nop                  ;Note: Alternative opcode used
015E  0C        inr     c
015F  00        nop
0160  0D        dcr     c
0161  A0        ana     b
0162  0E 46     mvi     c,'F'
0164  10        nop                  ;Note: Alternative opcode used
0165  10        nop                  ;Note: Alternative opcode used
0166  11 C0 09  lxi     d,$09C0
0169  90        sub     b
016A  0A        ldax    b
016B  D0        rnc
016C  0D        dcr     c
016D  A0        ana     b
016E  0E 70     mvi     c,'p'
0170  0F        rrc
0171  40        mov     b,b
0172  10        nop                  ;Note: Alternative opcode used
0173  E0        rpo
0174  11 50 14  lxi     d,$1450
0177  90        sub     b
0178  0A        ldax    b
0179  60        mov     h,b
017A  0B        dcx     b
017B  A0        ana     b
017C  0E 40     mvi     c,'@'
017E  10        nop                  ;Note: Alternative opcode used
017F  10        nop                  ;Note: Alternative opcode used
0180  11 E0 11  lxi     d,$11E0
0183  80        add     b
0184  13        inx     d
0185  90        sub     b
0186  17        ral
0187  0A        ldax    b
0188  0C        inr     c
0189  0E 12     mvi     c,$12
018B  FF        rst     7
018C  FF        rst     7
018D  3A 00 A0  lda     $A000
0190  FE 52     cpi     'R'
0192  CA 01 A0  jz      $A001
0195  AF        xra     a
0196  32 52 61  sta     $6152
0199  21 24 13  lxi     h,$1324
019C  22 08 60  shld    $6008
019F  31 00 62  lxi     sp,$6200
01A2  CD 5B 02  call    $025B
01A5  CD 82 02  call    $0282
01A8  3E FF     mvi     a,$FF
01AA  D3 F2     out     $F2
01AC  CD 3F 02  call    $023F
01AF  2A 10 60  lhld    $6010
01B2  11 AB 55  lxi     d,$55AB
01B5  19        dad
01B6  7C        mov     a,h
01B7  B5        ora     l
01B8  C4 A3 02  cnz     $02A3
01BB  FB        ei
01BC  21 A0 0F  lxi     h,$0FA0
01BF  CD 29 08  call    $0829
01C2  3A 5D 60  lda     $605D
01C5  FE 76     cpi     'v'
01C7  CC A3 02  cz      $02A3
01CA  3A 59 60  lda     $6059
01CD  E6 18     ani     $18
01CF  FE 18     cpi     $18
01D1  CA F6 01  jz      $01F6
01D4  3E AA     mvi     a,$AA
01D6  32 1A 61  sta     $611A
01D9  CD 8B 26  call    $268B
01DC  23        inx     h
01DD  5E        mov     e,m
01DE  23        inx     h
01DF  56        mov     d,m
01E0  EB        xchg
01E1  22 69 60  shld    $6069
01E4  22 67 60  shld    $6067
01E7  3A 59 60  lda     $6059
01EA  F6 18     ori     $18
01EC  32 59 60  sta     $6059
01EF  AF        xra     a
01F0  32 C5 60  sta     $60C5
01F3  32 65 60  sta     $6065
01F6  AF        xra     a
01F7  32 15 60  sta     $6015
01FA  32 57 61  sta     $6157
01FD  32 D1 60  sta     $60D1
0200  32 EF 60  sta     $60EF
0203  32 46 61  sta     $6146
0206  32 54 61  sta     $6154
0209  32 45 61  sta     $6145
020C  32 C3 60  sta     $60C3
020F  32 66 60  sta     $6066
0212  32 65 60  sta     $6065
0215  32 4C 61  sta     $614C
0218  32 53 61  sta     $6153
021B  CD 24 0F  call    $0F24
021E  CD 34 0F  call    $0F34
0221  CD 44 0F  call    $0F44
0224  CD BE 09  call    $09BE
0227  CD 9E 06  call    $069E
022A  CD 3C 03  call    $033C
022D  CD 9D 05  call    $059D
0230  CD 98 03  call    $0398
0233  CD D4 05  call    $05D4
0236  CD 09 0F  call    $0F09
0239  CD 9C 02  call    $029C
023C  C3 15 09  jmp     $0915
023F  3A 17 60  lda     $6017
0242  E6 F0     ani     $F0
0244  47        mov     b,a
0245  3A 28 60  lda     $6028
0248  E6 0F     ani     $0F
024A  B0        ora     b
024B  D3 F0     out     $F0
024D  3A 38 60  lda     $6038
0250  E6 0F     ani     $0F
0252  47        mov     b,a
0253  3A 44 60  lda     $6044
0256  E6 F0     ani     $F0
0258  D3 F1     out     $F1
025A  C9        ret
025B  3E 80     mvi     a,$80
025D  D3 EF     out     $EF
025F  D3 F3     out     $F3
0261  3E 30     mvi     a,$30
0263  D3 E3     out     $E3
0265  3E 70     mvi     a,'p'
0267  D3 E3     out     $E3
0269  3E 20     mvi     a,$20
026B  D3 E7     out     $E7
026D  3E B0     mvi     a,$B0
026F  D3 E7     out     $E7
0271  3E FF     mvi     a,$FF
0273  D3 E7     out     $E7
0275  3E D2     mvi     a,$D2
0277  D3 FC     out     $FC
0279  3E 27     mvi     a,$27
027B  D3 FD     out     $FD
027D  3E 61     mvi     a,'a'
027F  D3 FD     out     $FD
0281  C9        ret
0282  AF        xra     a
0283  D3 F5     out     $F5
0285  D3 F5     out     $F5
0287  D3 F5     out     $F5
0289  3E 40     mvi     a,'@'
028B  D3 F5     out     $F5
028D  3E DE     mvi     a,$DE
028F  D3 F5     out     $F5
0291  AF        xra     a
0292  D3 F5     out     $F5
0294  C9        ret
0295  DB FD     in      $FD
0297  F6 10     ori     $10
0299  D3 FD     out     $FD
029B  C9        ret
029C  DB FD     in      $FD
029E  E6 EF     ani     $EF
02A0  D3 FD     out     $FD
02A2  C9        ret
02A3  CD 95 02  call    $0295
02A6  21 00 62  lxi     h,$6200
02A9  36 FF     mvi     m,$FF
02AB  23        inx     h
02AC  22 67 60  shld    $6067
02AF  22 69 60  shld    $6069
02B2  21 00 6F  lxi     h,$6F00
02B5  22 0E 61  shld    $610E
02B8  21 59 60  lxi     h,$6059
02BB  36 FE     mvi     m,$FE
02BD  23        inx     h
02BE  36 FE     mvi     m,$FE
02C0  23        inx     h
02C1  36 FD     mvi     m,$FD
02C3  21 67 01  lxi     h,$0167
02C6  22 4D 60  shld    $604D
02C9  3E CC     mvi     a,$CC
02CB  32 17 60  sta     $6017
02CE  32 28 60  sta     $6028
02D1  32 38 60  sta     $6038
02D4  32 44 60  sta     $6044
02D7  D3 F0     out     $F0
02D9  D3 F1     out     $F1
02DB  3E 0C     mvi     a,$0C
02DD  32 1F 60  sta     $601F
02E0  3E 18     mvi     a,$18
02E2  32 30 60  sta     $6030
02E5  21 6C 00  lxi     h,$006C
02E8  22 1D 60  shld    $601D
02EB  22 4F 60  shld    $604F
02EE  21 0C 03  lxi     h,$030C
02F1  22 53 60  shld    $6053
02F4  21 6C 03  lxi     h,$036C
02F7  22 51 60  shld    $6051
02FA  AF        xra     a
02FB  32 57 60  sta     $6057
02FE  32 58 60  sta     $6058
0301  32 77 60  sta     $6077
0304  32 C5 60  sta     $60C5
0307  32 65 60  sta     $6065
030A  32 1E 61  sta     $611E
030D  32 49 61  sta     $6149
0310  32 EE 60  sta     $60EE
0313  32 1F 61  sta     $611F
0316  DB ED     in      $ED
0318  E6 7F     ani     $7F
031A  D3 ED     out     $ED
031C  3E 03     mvi     a,$03
031E  32 5C 60  sta     $605C
0321  CD 4A 27  call    $274A
0324  21 55 AA  lxi     h,$AA55
0327  22 10 60  shld    $6010
032A  21 42 61  lxi     h,$6142
032D  3A 59 60  lda     $6059
0330  77        mov     m,a
0331  23        inx     h
0332  3A 5A 60  lda     $605A
0335  77        mov     m,a
0336  23        inx     h
0337  3A 5B 60  lda     $605B
033A  77        mov     m,a
033B  C9        ret
033C  AF        xra     a
033D  32 18 60  sta     $6018
0340  21 B4 00  lxi     h,$00B4
0343  CD 27 04  call    $0427
0346  CD 4D 04  call    $044D
0349  CD D4 05  call    $05D4
034C  3E 01     mvi     a,$01
034E  32 18 60  sta     $6018
0351  21 D0 07  lxi     h,$07D0
0354  CD 32 04  call    $0432
0357  CD 4D 04  call    $044D
035A  DB F8     in      $F8
035C  E6 40     ani     '@'
035E  CA 6C 03  jz      $036C
0361  3E FF     mvi     a,$FF
0363  32 6B 60  sta     $606B
0366  CD 95 02  call    $0295
0369  C3 83 03  jmp     $0383
036C  AF        xra     a
036D  32 6B 60  sta     $606B
0370  DB F8     in      $F8
0372  E6 40     ani     '@'
0374  CA 6C 03  jz      $036C
0377  3E 03     mvi     a,$03
0379  32 1A 60  sta     $601A
037C  3A 1A 60  lda     $601A
037F  B7        ora     a
0380  C2 7C 03  jnz     $037C
0383  DB F8     in      $F8
0385  E6 40     ani     '@'
0387  C2 83 03  jnz     $0383
038A  21 00 00  lxi     h,$0000
038D  22 1A 60  shld    $601A
0390  3E 05     mvi     a,$05
0392  32 1C 60  sta     $601C
0395  C3 D4 05  jmp     $05D4
0398  3A 6B 60  lda     $606B
039B  3C        inr     a
039C  C2 AB 03  jnz     $03AB
039F  21 E0 01  lxi     h,$01E0
03A2  CD 27 04  call    $0427
03A5  CD 4D 04  call    $044D
03A8  C3 D4 05  jmp     $05D4
03AB  21 1E 00  lxi     h,$001E
03AE  CD 27 04  call    $0427
03B1  CD 4D 04  call    $044D
03B4  3A 1A 60  lda     $601A
03B7  B7        ora     a
03B8  C2 B4 03  jnz     $03B4
03BB  21 FA 05  lxi     h,$05FA
03BE  22 1A 60  shld    $601A
03C1  DB F8     in      $F8
03C3  E6 40     ani     '@'
03C5  C2 C1 03  jnz     $03C1
03C8  2A 1A 60  lhld    $601A
03CB  22 55 60  shld    $6055
03CE  EB        xchg
03CF  21 00 00  lxi     h,$0000
03D2  22 1A 60  shld    $601A
03D5  21 0E 06  lxi     h,$060E
03D8  CD EE 09  call    $09EE
03DB  EB        xchg
03DC  21 C0 00  lxi     h,$00C0
03DF  CD EE 09  call    $09EE
03E2  DA FA 03  jc      $03FA
03E5  21 3C 06  lxi     h,$063C
03E8  22 55 60  shld    $6055
03EB  CD D4 05  call    $05D4
03EE  2A 1D 60  lhld    $601D
03F1  CD 6B 0D  call    $0D6B
03F4  CD 39 08  call    $0839
03F7  C3 D4 05  jmp     $05D4
03FA  01 CA 00  lxi     b,$00CA
03FD  2A 55 60  lhld    $6055
0400  09        dad     b
0401  22 55 60  shld    $6055
0404  EB        xchg
0405  2A 51 60  lhld    $6051
0408  CD EE 09  call    $09EE
040B  DA 18 04  jc      $0418
040E  EB        xchg
040F  22 51 60  shld    $6051
0412  CD 05 0B  call    $0B05
0415  CD E3 0F  call    $0FE3
0418  11 CA 00  lxi     d,$00CA
041B  C3 EB 03  jmp     $03EB
041E  2A 22 60  lhld    $6022
0421  C3 27 04  jmp     $0427
0424  2A 24 60  lhld    $6024
0427  7C        mov     a,h
0428  07        rlc
0429  E6 01     ani     $01
042B  32 18 60  sta     $6018
042E  7C        mov     a,h
042F  E6 7F     ani     $7F
0431  67        mov     h,a
0432  7D        mov     a,l
0433  11 EC FF  lxi     d,$FFEC
0436  19        dad
0437  D2 49 04  jnc     $0449
043A  3F        cmc
043B  22 1A 60  shld    $601A
043E  3E 0A     mvi     a,$0A
0440  32 19 60  sta     $6019
0443  CE 00     aci     $00
0445  32 1C 60  sta     $601C
0448  C9        ret
0449  1F        rar
044A  C3 40 04  jmp     $0440
044D  21 CA 04  lxi     h,$04CA
0450  22 02 60  shld    $6002
0453  DB F2     in      $F2
0455  E6 FC     ani     $FC
0457  D3 F2     out     $F2
0459  21 08 00  lxi     h,$0008
045C  22 26 60  shld    $6026
045F  3E 01     mvi     a,$01
0461  32 12 60  sta     $6012
0464  21 19 60  lxi     h,$6019
0467  7E        mov     a,m
0468  B7        ora     a
0469  CA 9B 04  jz      $049B
046C  35        dcr     m
046D  2A 26 60  lhld    $6026
0470  54        mov     d,h
0471  5D        mov     e,l
0472  23        inx     h
0473  23        inx     h
0474  22 26 60  shld    $6026
0477  3A 18 60  lda     $6018
047A  3D        dcr     a
047B  3A 17 60  lda     $6017
047E  CA 85 04  jz      $0485
0481  07        rlc
0482  C3 86 04  jmp     $0486
0485  0F        rrc
0486  32 17 60  sta     $6017
0489  E6 0F     ani     $0F
048B  47        mov     b,a
048C  DB F0     in      $F0
048E  E6 F0     ani     $F0
0490  B0        ora     b
0491  D3 F0     out     $F0
0493  1A        ldax    d
0494  D3 E0     out     $E0
0496  13        inx     d
0497  1A        ldax    d
0498  D3 E0     out     $E0
049A  C9        ret
049B  2A 1A 60  lhld    $601A
049E  7C        mov     a,h
049F  B5        ora     l
04A0  CA AD 04  jz      $04AD
04A3  2B        dcx     h
04A4  22 1A 60  shld    $601A
04A7  11 1C 00  lxi     d,$001C
04AA  C3 77 04  jmp     $0477
04AD  21 1C 60  lxi     h,$601C
04B0  B6        ora     m
04B1  CA BF 04  jz      $04BF
04B4  35        dcr     m
04B5  11 1C 00  lxi     d,$001C
04B8  07        rlc
04B9  83        add     e
04BA  5F        mov     e,a
04BB  C3 77 04  jmp     $0477
04BE  C9        ret
04BF  DB F2     in      $F2
04C1  F6 03     ori     $03
04C3  D3 F2     out     $F2
04C5  AF        xra     a
04C6  32 12 60  sta     $6012
04C9  C9        ret
04CA  CD 64 04  call    $0464
04CD  D1        pop     d
04CE  C1        pop     b
04CF  3E 20     mvi     a,$20
04D1  D3 FC     out     $FC
04D3  F1        pop     psw
04D4  E1        pop     h
04D5  FB        ei
04D6  C9        ret
04D7  2A 31 60  lhld    $6031
04DA  7C        mov     a,h
04DB  07        rlc
04DC  E6 01     ani     $01
04DE  32 29 60  sta     $6029
04E1  7C        mov     a,h
04E2  E6 7F     ani     $7F
04E4  67        mov     h,a
04E5  7D        mov     a,l
04E6  11 EC FF  lxi     d,$FFEC
04E9  19        dad
04EA  D2 FC 04  jnc     $04FC
04ED  22 2B 60  shld    $602B
04F0  3E 0A     mvi     a,$0A
04F2  3F        cmc
04F3  32 2A 60  sta     $602A
04F6  CE 00     aci     $00
04F8  32 2D 60  sta     $602D
04FB  C9        ret
04FC  1F        rar
04FD  C3 F3 04  jmp     $04F3
0500  21 96 05  lxi     h,$0596
0503  22 04 60  shld    $6004
0506  DB F2     in      $F2
0508  E6 F3     ani     $F3
050A  D3 F2     out     $F2
050C  21 08 00  lxi     h,$0008
050F  22 33 60  shld    $6033
0512  3E 01     mvi     a,$01
0514  32 13 60  sta     $6013
0517  21 2A 60  lxi     h,$602A
051A  7E        mov     a,m
051B  B7        ora     a
051C  CA 56 05  jz      $0556
051F  35        dcr     m
0520  2A 33 60  lhld    $6033
0523  54        mov     d,h
0524  5D        mov     e,l
0525  23        inx     h
0526  23        inx     h
0527  22 33 60  shld    $6033
052A  3A 29 60  lda     $6029
052D  3D        dcr     a
052E  3A 28 60  lda     $6028
0531  2A 2E 60  lhld    $602E
0534  CA 3C 05  jz      $053C
0537  07        rlc
0538  23        inx     h
0539  C3 3E 05  jmp     $053E
053C  0F        rrc
053D  2B        dcx     h
053E  22 2E 60  shld    $602E
0541  32 28 60  sta     $6028
0544  E6 F0     ani     $F0
0546  47        mov     b,a
0547  DB F0     in      $F0
0549  E6 0F     ani     $0F
054B  B0        ora     b
054C  D3 F0     out     $F0
054E  1A        ldax    d
054F  D3 E1     out     $E1
0551  13        inx     d
0552  1A        ldax    d
0553  D3 E1     out     $E1
0555  C9        ret
0556  2A 2B 60  lhld    $602B
0559  7C        mov     a,h
055A  B5        ora     l
055B  CA 68 05  jz      $0568
055E  2B        dcx     h
055F  22 2B 60  shld    $602B
0562  11 1C 00  lxi     d,$001C
0565  C3 2A 05  jmp     $052A
0568  21 2D 60  lxi     h,$602D
056B  B6        ora     m
056C  CA 8B 05  jz      $058B
056F  35        dcr     m
0570  11 1C 00  lxi     d,$001C
0573  07        rlc
0574  83        add     e
0575  5F        mov     e,a
0576  C3 2A 05  jmp     $052A
0579  21 29 60  lxi     h,$6029
057C  7E        mov     a,m
057D  B7        ora     a
057E  CA 8B 05  jz      $058B
0581  35        dcr     m
0582  23        inx     h
0583  77        mov     m,a
0584  23        inx     h
0585  23        inx     h
0586  23        inx     h
0587  77        mov     m,a
0588  C3 17 05  jmp     $0517
058B  DB F2     in      $F2
058D  F6 0C     ori     $0C
058F  D3 F2     out     $F2
0591  AF        xra     a
0592  32 13 60  sta     $6013
0595  C9        ret
0596  FB        ei
0597  CD 17 05  call    $0517
059A  C3 CD 04  jmp     $04CD
059D  0E 96     mvi     c,$96
059F  CD C4 05  call    $05C4
05A2  0D        dcr     c
05A3  C2 9F 05  jnz     $059F
05A6  CD C4 05  call    $05C4
05A9  3A 38 60  lda     $6038
05AC  FE 66     cpi     'f'
05AE  C2 A6 05  jnz     $05A6
05B1  DB F8     in      $F8
05B3  E6 20     ani     $20
05B5  CA A6 05  jz      $05A6
05B8  3E 01     mvi     a,$01
05BA  32 3D 60  sta     $603D
05BD  DB F2     in      $F2
05BF  F6 30     ori     $30
05C1  D3 F2     out     $F2
05C3  C9        ret
05C4  21 39 60  lxi     h,$6039
05C7  AF        xra     a
05C8  77        mov     m,a
05C9  23        inx     h
05CA  3C        inr     a
05CB  77        mov     m,a
05CC  3D        dcr     a
05CD  23        inx     h
05CE  77        mov     m,a
05CF  23        inx     h
05D0  77        mov     m,a
05D1  CD 29 06  call    $0629
05D4  3A 12 60  lda     $6012
05D7  B7        ora     a
05D8  C2 D4 05  jnz     $05D4
05DB  C9        ret
05DC  3A 3F 60  lda     $603F
05DF  47        mov     b,a
05E0  21 8F 00  lxi     h,$008F
05E3  16 00     mvi     d,$00
05E5  58        mov     e,b
05E6  19        dad
05E7  7E        mov     a,m
05E8  32 3E 60  sta     $603E
05EB  C9        ret
05EC  21 3E 60  lxi     h,$603E
05EF  7E        mov     a,m
05F0  2B        dcx     h
05F1  96        sub     m
05F2  47        mov     b,a
05F3  0E 32     mvi     c,$32
05F5  21 39 60  lxi     h,$6039
05F8  DA 04 06  jc      $0604
05FB  B9        cmp     c
05FC  D2 0C 06  jnc     $060C
05FF  36 00     mvi     m,$00
0601  C3 11 06  jmp     $0611
0604  3E 64     mvi     a,'d'
0606  80        add     b
0607  B9        cmp     c
0608  DA FF 05  jc      $05FF
060B  47        mov     b,a
060C  3E 64     mvi     a,'d'
060E  90        sub     b
060F  36 01     mvi     m,$01
0611  21 3B 60  lxi     h,$603B
0614  06 0A     mvi     b,$0A
0616  4F        mov     c,a
0617  90        sub     b
0618  DA 1D 06  jc      $061D
061B  77        mov     m,a
061C  48        mov     c,b
061D  79        mov     a,c
061E  37        stc
061F  3F        cmc
0620  1F        rar
0621  2B        dcx     h
0622  77        mov     m,a
0623  23        inx     h
0624  23        inx     h
0625  CE 00     aci     $00
0627  77        mov     m,a
0628  C9        ret
0629  21 98 06  lxi     h,$0698
062C  22 02 60  shld    $6002
062F  DB F2     in      $F2
0631  E6 CF     ani     $CF
0633  D3 F2     out     $F2
0635  21 3B 00  lxi     h,$003B
0638  22 41 60  shld    $6041
063B  3E 02     mvi     a,$02
063D  32 12 60  sta     $6012
0640  21 3A 60  lxi     h,$603A
0643  7E        mov     a,m
0644  B7        ora     a
0645  CA 72 06  jz      $0672
0648  35        dcr     m
0649  2A 41 60  lhld    $6041
064C  54        mov     d,h
064D  5D        mov     e,l
064E  23        inx     h
064F  23        inx     h
0650  22 41 60  shld    $6041
0653  3A 39 60  lda     $6039
0656  3D        dcr     a
0657  3A 38 60  lda     $6038
065A  CA 61 06  jz      $0661
065D  07        rlc
065E  C3 62 06  jmp     $0662
0661  0F        rrc
0662  32 38 60  sta     $6038
0665  E6 0F     ani     $0F
0667  47        mov     b,a
0668  DB F1     in      $F1
066A  E6 F0     ani     $F0
066C  B0        ora     b
066D  D3 F1     out     $F1
066F  C3 93 04  jmp     $0493
0672  23        inx     h
0673  B6        ora     m
0674  CA 7E 06  jz      $067E
0677  35        dcr     m
0678  11 45 00  lxi     d,$0045
067B  C3 53 06  jmp     $0653
067E  23        inx     h
067F  B6        ora     m
0680  CA 8D 06  jz      $068D
0683  35        dcr     m
0684  11 45 00  lxi     d,$0045
0687  07        rlc
0688  83        add     e
0689  5F        mov     e,a
068A  C3 53 06  jmp     $0653
068D  21 3E 60  lxi     h,$603E
0690  7E        mov     a,m
0691  2B        dcx     h
0692  77        mov     m,a
0693  AF        xra     a
0694  32 12 60  sta     $6012
0697  C9        ret
0698  CD 40 06  call    $0640
069B  C3 CD 04  jmp     $04CD
069E  21 00 05  lxi     h,$0500
06A1  22 45 60  shld    $6045
06A4  21 64 05  lxi     h,$0564
06A7  22 47 60  shld    $6047
06AA  CD D5 06  call    $06D5
06AD  3A 13 60  lda     $6013
06B0  B7        ora     a
06B1  C2 AD 06  jnz     $06AD
06B4  C9        ret
06B5  3A 49 60  lda     $6049
06B8  C3 BE 06  jmp     $06BE
06BB  3A 4A 60  lda     $604A
06BE  06 0A     mvi     b,$0A
06C0  21 45 60  lxi     h,$6045
06C3  FE 14     cpi     $14
06C5  D2 CD 06  jnc     $06CD
06C8  36 00     mvi     m,$00
06CA  C3 CF 06  jmp     $06CF
06CD  36 01     mvi     m,$01
06CF  23        inx     h
06D0  23        inx     h
06D1  4F        mov     c,a
06D2  C3 16 06  jmp     $0616
06D5  21 34 07  lxi     h,$0734
06D8  22 04 60  shld    $6004
06DB  21 73 00  lxi     h,$0073
06DE  22 4B 60  shld    $604B
06E1  3E 02     mvi     a,$02
06E3  32 13 60  sta     $6013
06E6  21 46 60  lxi     h,$6046
06E9  7E        mov     a,m
06EA  B7        ora     a
06EB  CA 18 07  jz      $0718
06EE  35        dcr     m
06EF  2A 4B 60  lhld    $604B
06F2  54        mov     d,h
06F3  5D        mov     e,l
06F4  23        inx     h
06F5  23        inx     h
06F6  22 4B 60  shld    $604B
06F9  3A 45 60  lda     $6045
06FC  3D        dcr     a
06FD  3A 44 60  lda     $6044
0700  CA 07 07  jz      $0707
0703  07        rlc
0704  C3 08 07  jmp     $0708
0707  0F        rrc
0708  32 44 60  sta     $6044
070B  E6 F0     ani     $F0
070D  47        mov     b,a
070E  DB F1     in      $F1
0710  E6 0F     ani     $0F
0712  B0        ora     b
0713  D3 F1     out     $F1
0715  C3 4E 05  jmp     $054E
0718  23        inx     h
0719  B6        ora     m
071A  CA 24 07  jz      $0724
071D  35        dcr     m
071E  11 7D 00  lxi     d,$007D
0721  C3 F9 06  jmp     $06F9
0724  23        inx     h
0725  B6        ora     m
0726  CA 91 05  jz      $0591
0729  35        dcr     m
072A  11 7D 00  lxi     d,$007D
072D  07        rlc
072E  83        add     e
072F  5F        mov     e,a
0730  C3 F9 06  jmp     $06F9
0733  C9        ret
0734  FB        ei
0735  CD E6 06  call    $06E6
0738  C3 CD 04  jmp     $04CD
073B  DB F2     in      $F2
073D  E6 7F     ani     $7F
073F  D3 F2     out     $F2
0741  21 5E 07  lxi     h,$075E
0744  22 06 60  shld    $6006
0747  3A 15 60  lda     $6015
074A  E6 7F     ani     $7F
074C  32 15 60  sta     $6015
074F  3E 01     mvi     a,$01
0751  32 14 60  sta     $6014
0754  2A 8D 00  lhld    $008D
0757  7D        mov     a,l
0758  D3 E6     out     $E6
075A  7C        mov     a,h
075B  D3 E6     out     $E6
075D  C9        ret
075E  AF        xra     a
075F  32 14 60  sta     $6014
0762  C3 CD 04  jmp     $04CD
0765  DB F2     in      $F2
0767  F6 80     ori     $80
0769  D3 F2     out     $F2
076B  C9        ret
076C  21 FF 04  lxi     h,$04FF
076F  CD 29 08  call    $0829
0772  21 A0 07  lxi     h,$07A0
0775  22 02 60  shld    $6002
0778  3E 40     mvi     a,'@'
077A  32 12 60  sta     $6012
077D  CD BF 07  call    $07BF
0780  E6 38     ani     $38
0782  0F        rrc
0783  0F        rrc
0784  5F        mov     e,a
0785  2A 4D 60  lhld    $604D
0788  16 00     mvi     d,$00
078A  19        dad
078B  54        mov     d,h
078C  5D        mov     e,l
078D  DB F2     in      $F2
078F  E6 BF     ani     $BF
0791  D3 F2     out     $F2
0793  3A 53 61  lda     $6153
0796  3C        inr     a
0797  C2 93 04  jnz     $0493
079A  11 85 01  lxi     d,$0185
079D  C3 93 04  jmp     $0493
07A0  DB F2     in      $F2
07A2  F6 40     ori     '@'
07A4  D3 F2     out     $F2
07A6  21 B5 07  lxi     h,$07B5
07A9  22 02 60  shld    $6002
07AC  11 8B 00  lxi     d,$008B
07AF  CD 93 04  call    $0493
07B2  C3 CD 04  jmp     $04CD
07B5  CD BD 05  call    $05BD
07B8  AF        xra     a
07B9  32 12 60  sta     $6012
07BC  C3 CD 04  jmp     $04CD
07BF  21 F3 00  lxi     h,$00F3
07C2  3A 3F 60  lda     $603F
07C5  5F        mov     e,a
07C6  16 00     mvi     d,$00
07C8  19        dad
07C9  7E        mov     a,m
07CA  C9        ret
07CB  21 5B 60  lxi     h,$605B
07CE  7E        mov     a,m
07CF  E6 08     ani     $08
07D1  CA DF 07  jz      $07DF
07D4  7E        mov     a,m
07D5  E6 10     ani     $10
07D7  CA 06 08  jz      $0806
07DA  7E        mov     a,m
07DB  F6 C0     ori     $C0
07DD  77        mov     m,a
07DE  C9        ret
07DF  7E        mov     a,m
07E0  07        rlc
07E1  D2 D4 07  jnc     $07D4
07E4  CD DC 05  call    $05DC
07E7  3A 4A 60  lda     $604A
07EA  FE 14     cpi     $14
07EC  DA F0 07  jc      $07F0
07EF  17        ral
07F0  32 49 60  sta     $6049
07F3  21 01 00  lxi     h,$0001
07F6  22 22 60  shld    $6022
07F9  2A 24 60  lhld    $6024
07FC  2B        dcx     h
07FD  22 24 60  shld    $6024
0800  01 7F 78  lxi     b,$787F
0803  C3 1A 08  jmp     $081A
0806  7E        mov     a,m
0807  E6 40     ani     '@'
0809  CA 30 08  jz      $0830
080C  21 3F 60  lxi     h,$603F
080F  46        mov     b,m
0810  36 20     mvi     m,$20
0812  23        inx     h
0813  70        mov     m,b
0814  CD DC 05  call    $05DC
0817  01 BF 18  lxi     b,$18BF
081A  21 15 60  lxi     h,$6015
081D  7E        mov     a,m
081E  B0        ora     b
081F  77        mov     m,a
0820  21 5B 60  lxi     h,$605B
0823  7E        mov     a,m
0824  A1        ana     c
0825  77        mov     m,a
0826  21 88 13  lxi     h,$1388
0829  2B        dcx     h
082A  7C        mov     a,h
082B  B5        ora     l
082C  C2 29 08  jnz     $0829
082F  C9        ret
0830  3A 40 60  lda     $6040
0833  32 3F 60  sta     $603F
0836  C3 DA 07  jmp     $07DA
0839  3A 15 60  lda     $6015
083C  07        rlc
083D  DC 3B 07  cc      $073B
0840  21 15 60  lxi     h,$6015
0843  7E        mov     a,m
0844  E6 40     ani     '@'
0846  CA 5D 08  jz      $085D
0849  3A 12 60  lda     $6012
084C  B7        ora     a
084D  C2 5D 08  jnz     $085D
0850  7E        mov     a,m
0851  E6 BF     ani     $BF
0853  77        mov     m,a
0854  CD 1E 04  call    $041E
0857  CD 4D 04  call    $044D
085A  21 15 60  lxi     h,$6015
085D  7E        mov     a,m
085E  E6 20     ani     $20
0860  CA 77 08  jz      $0877
0863  3A 13 60  lda     $6013
0866  B7        ora     a
0867  C2 77 08  jnz     $0877
086A  7E        mov     a,m
086B  E6 DF     ani     $DF
086D  77        mov     m,a
086E  CD B5 06  call    $06B5
0871  CD D5 06  call    $06D5
0874  21 15 60  lxi     h,$6015
0877  7E        mov     a,m
0878  E6 10     ani     $10
087A  CA 91 08  jz      $0891
087D  3A 12 60  lda     $6012
0880  B7        ora     a
0881  C2 40 08  jnz     $0840
0884  7E        mov     a,m
0885  E6 EF     ani     $EF
0887  77        mov     m,a
0888  CD EC 05  call    $05EC
088B  CD 29 06  call    $0629
088E  21 15 60  lxi     h,$6015
0891  7E        mov     a,m
0892  E6 F0     ani     $F0
0894  C2 39 08  jnz     $0839
0897  7E        mov     a,m
0898  E6 08     ani     $08
089A  CA BC 08  jz      $08BC
089D  7E        mov     a,m
089E  E6 F7     ani     $F7
08A0  77        mov     m,a
08A1  21 12 60  lxi     h,$6012
08A4  7E        mov     a,m
08A5  23        inx     h
08A6  B6        ora     m
08A7  23        inx     h
08A8  B6        ora     m
08A9  C2 A1 08  jnz     $08A1
08AC  CD 6C 07  call    $076C
08AF  3A 12 60  lda     $6012
08B2  B7        ora     a
08B3  C2 AF 08  jnz     $08AF
08B6  CD CB 07  call    $07CB
08B9  C3 39 08  jmp     $0839
08BC  21 15 60  lxi     h,$6015
08BF  7E        mov     a,m
08C0  E6 04     ani     $04
08C2  CA D9 08  jz      $08D9
08C5  3A 12 60  lda     $6012
08C8  B7        ora     a
08C9  C2 D9 08  jnz     $08D9
08CC  7E        mov     a,m
08CD  E6 FB     ani     $FB
08CF  77        mov     m,a
08D0  CD 24 04  call    $0424
08D3  CD 4D 04  call    $044D
08D6  21 15 60  lxi     h,$6015
08D9  7E        mov     a,m
08DA  E6 02     ani     $02
08DC  CA F3 08  jz      $08F3
08DF  3A 13 60  lda     $6013
08E2  B7        ora     a
08E3  C2 F3 08  jnz     $08F3
08E6  7E        mov     a,m
08E7  E6 FD     ani     $FD
08E9  77        mov     m,a
08EA  CD BB 06  call    $06BB
08ED  CD D5 06  call    $06D5
08F0  21 15 60  lxi     h,$6015
08F3  7E        mov     a,m
08F4  0F        rrc
08F5  D2 0D 09  jnc     $090D
08F8  3A 12 60  lda     $6012
08FB  47        mov     b,a
08FC  3A 13 60  lda     $6013
08FF  B0        ora     b
0900  C2 0D 09  jnz     $090D
0903  7E        mov     a,m
0904  E6 FE     ani     $FE
0906  77        mov     m,a
0907  CD D7 04  call    $04D7
090A  CD 00 05  call    $0500
090D  3A 15 60  lda     $6015
0910  B7        ora     a
0911  C2 39 08  jnz     $0839
0914  C9        ret
0915  21 A1 09  lxi     h,$09A1
0918  22 06 60  shld    $6006
091B  2A 89 00  lhld    $0089
091E  CD 57 07  call    $0757
0921  CD 11 24  call    $2411
0924  CD BE 09  call    $09BE
0927  CD 0A 12  call    $120A
092A  CD E2 09  call    $09E2
092D  C2 74 09  jnz     $0974
0930  3A 66 60  lda     $6066
0933  B7        ora     a
0934  C2 3D 09  jnz     $093D
0937  CD 65 07  call    $0765
093A  C3 24 09  jmp     $0924
093D  CD 11 24  call    $2411
0940  F3        di
0941  3A 3F 60  lda     $603F
0944  FE 65     cpi     'e'
0946  DA 59 09  jc      $0959
0949  CA 68 09  jz      $0968
094C  21 8F 09  lxi     h,$098F
094F  06 06     mvi     b,$06
0951  CD 95 09  call    $0995
0954  FB        ei
0955  DA 24 09  jc      $0924
0958  F3        di
0959  2A 69 60  lhld    $6069
095C  77        mov     m,a
095D  23        inx     h
095E  22 69 60  shld    $6069
0961  22 67 60  shld    $6067
0964  FB        ei
0965  C3 7A 09  jmp     $097A
0968  CD D1 0A  call    $0AD1
096B  23        inx     h
096C  22 67 60  shld    $6067
096F  FB        ei
0970  2A 69 60  lhld    $6069
0973  EB        xchg
0974  EB        xchg
0975  7E        mov     a,m
0976  23        inx     h
0977  22 69 60  shld    $6069
097A  21 CD 04  lxi     h,$04CD
097D  22 06 60  shld    $6006
0980  32 3F 60  sta     $603F
0983  D6 64     sui     'd'
0985  21 15 09  lxi     h,$0915
0988  E5        push    h
0989  D2 19 0B  jnc     $0B19
098C  C3 F5 09  jmp     $09F5
098F  67        mov     h,a
0990  68        mov     l,b
0991  6B        mov     l,e
0992  75        mov     m,l
0993  9D        sbb     l
0994  9E        sbb     m
0995  0E 00     mvi     c,$00
0997  BE        cmp     m
0998  C8        rz
0999  23        inx     h
099A  0C        inr     c
099B  05        dcr     b
099C  C2 97 09  jnz     $0997
099F  37        stc
09A0  C9        ret
09A1  3E 20     mvi     a,$20
09A3  D3 FC     out     $FC
09A5  FB        ei
09A6  3E 01     mvi     a,$01
09A8  32 3E 60  sta     $603E
09AB  CD EC 05  call    $05EC
09AE  CD 29 06  call    $0629
09B1  3A 12 60  lda     $6012
09B4  B7        ora     a
09B5  C2 B1 09  jnz     $09B1
09B8  CD BD 05  call    $05BD
09BB  C3 CD 04  jmp     $04CD
09BE  DB F8     in      $F8
09C0  E6 04     ani     $04
09C2  C0        rnz
09C3  CD 3B 07  call    $073B
09C6  3A 14 60  lda     $6014
09C9  B7        ora     a
09CA  C2 C6 09  jnz     $09C6
09CD  F3        di
09CE  21 CD 04  lxi     h,$04CD
09D1  22 06 60  shld    $6006
09D4  DB F8     in      $F8
09D6  E6 04     ani     $04
09D8  CA D4 09  jz      $09D4
09DB  FB        ei
09DC  CD 65 07  call    $0765
09DF  C3 9D 05  jmp     $059D
09E2  2A 69 60  lhld    $6069
09E5  EB        xchg
09E6  2A 67 60  lhld    $6067
09E9  CD EE 09  call    $09EE
09EC  B5        ora     l
09ED  C9        ret
09EE  7D        mov     a,l
09EF  93        sub     e
09F0  6F        mov     l,a
09F1  7C        mov     a,h
09F2  9A        sbb     d
09F3  67        mov     h,a
09F4  C9        ret
09F5  3A 57 60  lda     $6057
09F8  B7        ora     a
09F9  CA 10 0A  jz      $0A10
09FC  CD 09 0F  call    $0F09
09FF  3A D1 60  lda     $60D1
0A02  FE FF     cpi     $FF
0A04  C8        rz
0A05  2A 69 60  lhld    $6069
0A08  2B        dcx     h
0A09  22 69 60  shld    $6069
0A0C  22 67 60  shld    $6067
0A0F  C9        ret
0A10  CD DC 05  call    $05DC
0A13  3A 5B 60  lda     $605B
0A16  E6 10     ani     $10
0A18  3E 12     mvi     a,$12
0A1A  CA 2A 0A  jz      $0A2A
0A1D  CD BF 07  call    $07BF
0A20  E6 C0     ani     $C0
0A22  07        rlc
0A23  07        rlc
0A24  21 87 01  lxi     h,$0187
0A27  85        add     l
0A28  6F        mov     l,a
0A29  7E        mov     a,m
0A2A  32 4A 60  sta     $604A
0A2D  3E 9E     mvi     a,$9E
0A2F  32 15 60  sta     $6015
0A32  CD DD 0A  call    $0ADD
0A35  3A 58 60  lda     $6058
0A38  07        rlc
0A39  DA A5 0A  jc      $0AA5
0A3C  07        rlc
0A3D  DA 51 0A  jc      $0A51
0A40  CD F9 0A  call    $0AF9
0A43  D2 CA 0A  jnc     $0ACA
0A46  3E 40     mvi     a,'@'
0A48  32 58 60  sta     $6058
0A4B  CD 09 0F  call    $0F09
0A4E  C3 CA 0A  jmp     $0ACA
0A51  CD F3 0A  call    $0AF3
0A54  DA 8B 0A  jc      $0A8B
0A57  3A 59 60  lda     $6059
0A5A  E6 20     ani     $20
0A5C  C2 CA 0A  jnz     $0ACA
0A5F  3A 3F 60  lda     $603F
0A62  FE 68     cpi     'h'
0A64  CA 6C 0A  jz      $0A6C
0A67  FE 08     cpi     $08
0A69  C2 CA 0A  jnz     $0ACA
0A6C  F3        di
0A6D  D5        push    d
0A6E  CD E2 09  call    $09E2
0A71  CA C1 0A  jz      $0AC1
0A74  44        mov     b,h
0A75  4D        mov     c,l
0A76  2A 67 60  lhld    $6067
0A79  EB        xchg
0A7A  21 08 00  lxi     h,$0008
0A7D  19        dad
0A7E  22 67 60  shld    $6067
0A81  FB        ei
0A82  CD 4B 18  call    $184B
0A85  CD D1 0A  call    $0AD1
0A88  C3 C9 0A  jmp     $0AC9
0A8B  3E 02     mvi     a,$02
0A8D  32 57 60  sta     $6057
0A90  3A C3 60  lda     $60C3
0A93  B7        ora     a
0A94  CA FC 09  jz      $09FC
0A97  AF        xra     a
0A98  32 C3 60  sta     $60C3
0A9B  2A EC 60  lhld    $60EC
0A9E  2B        dcx     h
0A9F  22 EC 60  shld    $60EC
0AA2  C3 FC 09  jmp     $09FC
0AA5  CD F9 0A  call    $0AF9
0AA8  DA B3 0A  jc      $0AB3
0AAB  3A 58 60  lda     $6058
0AAE  E6 7F     ani     $7F
0AB0  32 58 60  sta     $6058
0AB3  CD ED 0A  call    $0AED
0AB6  D2 CA 0A  jnc     $0ACA
0AB9  3E 01     mvi     a,$01
0ABB  32 57 60  sta     $6057
0ABE  C3 FC 09  jmp     $09FC
0AC1  CD D1 0A  call    $0AD1
0AC4  23        inx     h
0AC5  22 67 60  shld    $6067
0AC8  FB        ei
0AC9  D1        pop     d
0ACA  EB        xchg
0ACB  22 1D 60  shld    $601D
0ACE  C3 39 08  jmp     $0839
0AD1  2A 69 60  lhld    $6069
0AD4  3E 65     mvi     a,'e'
0AD6  11 07 00  lxi     d,$0007
0AD9  77        mov     m,a
0ADA  19        dad
0ADB  77        mov     m,a
0ADC  C9        ret
0ADD  3A 1F 60  lda     $601F
0AE0  6F        mov     l,a
0AE1  26 00     mvi     h,$00
0AE3  22 24 60  shld    $6024
0AE6  EB        xchg
0AE7  2A 1D 60  lhld    $601D
0AEA  19        dad
0AEB  EB        xchg
0AEC  C9        ret
0AED  2A 55 60  lhld    $6055
0AF0  C3 EE 09  jmp     $09EE
0AF3  2A 51 60  lhld    $6051
0AF6  C3 EE 09  jmp     $09EE
0AF9  2A 53 60  lhld    $6053
0AFC  C3 EE 09  jmp     $09EE
0AFF  2A 4F 60  lhld    $604F
0B02  C3 EE 09  jmp     $09EE
0B05  3A 1F 60  lda     $601F
0B08  26 00     mvi     h,$00
0B0A  6F        mov     l,a
0B0B  29        dad     h
0B0C  29        dad     h
0B0D  29        dad     h
0B0E  EB        xchg
0B0F  2A 51 60  lhld    $6051
0B12  CD EE 09  call    $09EE
0B15  22 53 60  shld    $6053
0B18  C9        ret
0B19  FE 40     cpi     '@'
0B1B  D2 09 0F  jnc     $0F09
0B1E  21 2B 0B  lxi     h,$0B2B
0B21  07        rlc
0B22  5F        mov     e,a
0B23  16 00     mvi     d,$00
0B25  19        dad
0B26  5E        mov     e,m
0B27  23        inx     h
0B28  56        mov     d,m
0B29  EB        xchg
0B2A  E9        pchl
0B2B  5D        mov     e,l
0B2C  18        nop                  ;Note: Alternative opcode used
0B2D  FE 0C     cpi     $0C
0B2F  09        dad     b
0B30  0F        rrc
0B31  14        inr     d
0B32  0C        inr     c
0B33  3C        inr     a
0B34  0C        inr     c
0B35  35        dcr     m
0B36  10        nop                  ;Note: Alternative opcode used
0B37  88        adc     b
0B38  1C        inr     e
0B39  2F        cma
0B3A  0C        inr     c
0B3B  C8        rz
0B3C  25        dcr     h
0B3D  69        mov     l,c
0B3E  2E 09     mvi     l,$09
0B40  0F        rrc
0B41  09        dad     b
0B42  0F        rrc
0B43  09        dad     b
0B44  0F        rrc
0B45  09        dad     b
0B46  0F        rrc
0B47  09        dad     b
0B48  0F        rrc
0B49  09        dad     b
0B4A  0F        rrc
0B4B  09        dad     b
0B4C  0F        rrc
0B4D  97        sub     a
0B4E  18        nop                  ;Note: Alternative opcode used
0B4F  AB        xra     e
0B50  0B        dcx     b
0B51  BB        cmp     e
0B52  0B        dcx     b
0B53  09        dad     b
0B54  0F        rrc
0B55  54        mov     d,h
0B56  0F        rrc
0B57  E4 0B 08  cpo     $080B
0B5A  10        nop                  ;Note: Alternative opcode used
0B5B  78        mov     a,b
0B5C  0E E5     mvi     c,$E5
0B5E  0D        dcr     c
0B5F  C4 10 09  cnz     $0910
0B62  0F        rrc
0B63  9C        sbb     h
0B64  25        dcr     h
0B65  59        mov     e,c
0B66  0F        rrc
0B67  CF        rst     1
0B68  0D        dcr     c
0B69  B3        ora     e
0B6A  0C        inr     c
0B6B  A7        ana     a
0B6C  0E 44     mvi     c,'D'
0B6E  0E DA     mvi     c,$DA
0B70  0D        dcr     c
0B71  3F        cmc
0B72  0E 34     mvi     c,$34
0B74  0E 4F     mvi     c,'O'
0B76  0E 09     mvi     c,$09
0B78  0F        rrc
0B79  BB        cmp     e
0B7A  24        inr     h
0B7B  65        mov     h,l
0B7C  0E 88     mvi     c,$88
0B7E  2C        inr     l
0B7F  09        dad     b
0B80  0F        rrc
0B81  05        dcr     b
0B82  36 F4     mvi     m,$F4
0B84  0E 13     mvi     c,$13
0B86  25        dcr     h
0B87  FC 0E 09  cm      $090E
0B8A  0F        rrc
0B8B  09        dad     b
0B8C  0F        rrc
0B8D  09        dad     b
0B8E  0F        rrc
0B8F  09        dad     b
0B90  0F        rrc
0B91  09        dad     b
0B92  0F        rrc
0B93  5A        mov     e,d
0B94  19        dad
0B95  09        dad     b
0B96  0F        rrc
0B97  2F        cma
0B98  23        inx     h
0B99  D4 24 B3  cnc     $B324
0B9C  26 2A     mvi     h,$2A
0B9E  0C        inr     c
0B9F  0F        rrc
0BA0  0C        inr     c
0BA1  9A        sbb     d
0BA2  0F        rrc
0BA3  A1        ana     c
0BA4  0F        rrc
0BA5  3A 2E 09  lda     $092E
0BA8  0F        rrc
0BA9  44        mov     b,h
0BAA  0C        inr     c
0BAB  DB ED     in      $ED
0BAD  E6 7F     ani     $7F
0BAF  D3 ED     out     $ED
0BB1  E1        pop     h
0BB2  CD 3F 02  call    $023F
0BB5  CD FC 09  call    $09FC
0BB8  C3 CA 01  jmp     $01CA
0BBB  3A 58 60  lda     $6058
0BBE  E6 7F     ani     $7F
0BC0  32 58 60  sta     $6058
0BC3  2A 1D 60  lhld    $601D
0BC6  22 4F 60  shld    $604F
0BC9  11 0C 00  lxi     d,$000C
0BCC  19        dad
0BCD  EB        xchg
0BCE  2A 51 60  lhld    $6051
0BD1  CD EE 09  call    $09EE
0BD4  D2 09 0F  jnc     $0F09
0BD7  2A 55 60  lhld    $6055
0BDA  22 51 60  shld    $6051
0BDD  AF        xra     a
0BDE  32 77 60  sta     $6077
0BE1  C3 06 0C  jmp     $0C06
0BE4  2A 4F 60  lhld    $604F
0BE7  11 0C 00  lxi     d,$000C
0BEA  19        dad
0BEB  EB        xchg
0BEC  2A 1D 60  lhld    $601D
0BEF  22 51 60  shld    $6051
0BF2  CD EE 09  call    $09EE
0BF5  D2 FE 0B  jnc     $0BFE
0BF8  21 00 00  lxi     h,$0000
0BFB  22 4F 60  shld    $604F
0BFE  3A 57 60  lda     $6057
0C01  F6 02     ori     $02
0C03  32 57 60  sta     $6057
0C06  CD 05 0B  call    $0B05
0C09  CD E3 0F  call    $0FE3
0C0C  C3 09 0F  jmp     $0F09
0C0F  0E 01     mvi     c,$01
0C11  C3 19 0C  jmp     $0C19
0C14  3A 30 60  lda     $6030
0C17  0F        rrc
0C18  4F        mov     c,a
0C19  CD CC 12  call    $12CC
0C1C  26 00     mvi     h,$00
0C1E  69        mov     l,c
0C1F  22 31 60  shld    $6031
0C22  3E 01     mvi     a,$01
0C24  32 15 60  sta     $6015
0C27  C3 39 08  jmp     $0839
0C2A  0E 01     mvi     c,$01
0C2C  C3 34 0C  jmp     $0C34
0C2F  3A 30 60  lda     $6030
0C32  0F        rrc
0C33  4F        mov     c,a
0C34  CD 0C 13  call    $130C
0C37  26 80     mvi     h,$80
0C39  C3 1E 0C  jmp     $0C1E
0C3C  3E 04     mvi     a,$04
0C3E  32 15 60  sta     $6015
0C41  C3 32 0A  jmp     $0A32
0C44  2A 69 60  lhld    $6069
0C47  5E        mov     e,m
0C48  23        inx     h
0C49  56        mov     d,m
0C4A  23        inx     h
0C4B  23        inx     h
0C4C  22 69 60  shld    $6069
0C4F  7A        mov     a,d
0C50  E6 80     ani     $80
0C52  62        mov     h,d
0C53  6B        mov     l,e
0C54  C2 69 0C  jnz     $0C69
0C57  22 22 60  shld    $6022
0C5A  2A 1D 60  lhld    $601D
0C5D  19        dad
0C5E  22 1D 60  shld    $601D
0C61  3E 40     mvi     a,'@'
0C63  32 15 60  sta     $6015
0C66  C3 39 08  jmp     $0839
0C69  7A        mov     a,d
0C6A  E6 7F     ani     $7F
0C6C  57        mov     d,a
0C6D  2A 1D 60  lhld    $601D
0C70  CD EE 09  call    $09EE
0C73  22 1D 60  shld    $601D
0C76  EB        xchg
0C77  CD 7F 0D  call    $0D7F
0C7A  C3 39 08  jmp     $0839
0C7D  3A 1F 60  lda     $601F
0C80  5F        mov     e,a
0C81  16 00     mvi     d,$00
0C83  2A 1D 60  lhld    $601D
0C86  CD EE 09  call    $09EE
0C89  DA FC 09  jc      $09FC
0C8C  3A C3 60  lda     $60C3
0C8F  B7        ora     a
0C90  C2 A9 0C  jnz     $0CA9
0C93  3A 58 60  lda     $6058
0C96  07        rlc
0C97  DA A9 0C  jc      $0CA9
0C9A  E5        push    h
0C9B  D5        push    d
0C9C  EB        xchg
0C9D  2A 4F 60  lhld    $604F
0CA0  EB        xchg
0CA1  CD EE 09  call    $09EE
0CA4  D1        pop     d
0CA5  E1        pop     h
0CA6  DA FC 09  jc      $09FC
0CA9  22 1D 60  shld    $601D
0CAC  EB        xchg
0CAD  CD 7F 0D  call    $0D7F
0CB0  C3 39 08  jmp     $0839
0CB3  2A 1D 60  lhld    $601D
0CB6  EB        xchg
0CB7  CD FF 0A  call    $0AFF
0CBA  B5        ora     l
0CBB  CA E3 0C  jz      $0CE3
0CBE  2A 69 60  lhld    $6069
0CC1  2B        dcx     h
0CC2  CD D4 0A  call    $0AD4
0CC5  2A 4F 60  lhld    $604F
0CC8  22 6B 60  shld    $606B
0CCB  3A 1F 60  lda     $601F
0CCE  5F        mov     e,a
0CCF  07        rlc
0CD0  07        rlc
0CD1  83        add     e
0CD2  5F        mov     e,a
0CD3  16 00     mvi     d,$00
0CD5  19        dad
0CD6  22 4F 60  shld    $604F
0CD9  CD FE 0C  call    $0CFE
0CDC  2A 6B 60  lhld    $606B
0CDF  22 4F 60  shld    $604F
0CE2  C9        ret
0CE3  2A 69 60  lhld    $6069
0CE6  2B        dcx     h
0CE7  22 69 60  shld    $6069
0CEA  3E 68     mvi     a,'h'
0CEC  77        mov     m,a
0CED  23        inx     h
0CEE  77        mov     m,a
0CEF  23        inx     h
0CF0  77        mov     m,a
0CF1  23        inx     h
0CF2  77        mov     m,a
0CF3  23        inx     h
0CF4  77        mov     m,a
0CF5  23        inx     h
0CF6  3E EF     mvi     a,$EF
0CF8  77        mov     m,a
0CF9  23        inx     h
0CFA  77        mov     m,a
0CFB  23        inx     h
0CFC  77        mov     m,a
0CFD  C9        ret
0CFE  3A 52 61  lda     $6152
0D01  FE 04     cpi     $04
0D03  CA D5 23  jz      $23D5
0D06  21 B8 0B  lxi     h,$0BB8
0D09  CD 29 08  call    $0829
0D0C  3A 30 60  lda     $6030
0D0F  4F        mov     c,a
0D10  CD CC 12  call    $12CC
0D13  2A 1D 60  lhld    $601D
0D16  CD 9C 0D  call    $0D9C
0D19  3A C3 60  lda     $60C3
0D1C  B7        ora     a
0D1D  C2 5E 0D  jnz     $0D5E
0D20  2A 4F 60  lhld    $604F
0D23  CD 9C 0D  call    $0D9C
0D26  2A 1D 60  lhld    $601D
0D29  EB        xchg
0D2A  CD 68 0D  call    $0D68
0D2D  AF        xra     a
0D2E  32 57 60  sta     $6057
0D31  32 58 60  sta     $6058
0D34  3A 30 60  lda     $6030
0D37  26 00     mvi     h,$00
0D39  6F        mov     l,a
0D3A  22 31 60  shld    $6031
0D3D  CD 9C 0D  call    $0D9C
0D40  23        inx     h
0D41  22 69 60  shld    $6069
0D44  3A 15 60  lda     $6015
0D47  F6 01     ori     $01
0D49  32 15 60  sta     $6015
0D4C  CD 39 08  call    $0839
0D4F  21 12 60  lxi     h,$6012
0D52  7E        mov     a,m
0D53  23        inx     h
0D54  B6        ora     m
0D55  C2 4F 0D  jnz     $0D4F
0D58  21 B8 0B  lxi     h,$0BB8
0D5B  C3 29 08  jmp     $0829
0D5E  5E        mov     e,m
0D5F  23        inx     h
0D60  56        mov     d,m
0D61  23        inx     h
0D62  22 69 60  shld    $6069
0D65  C3 26 0D  jmp     $0D26
0D68  22 1D 60  shld    $601D
0D6B  CD EE 09  call    $09EE
0D6E  DA 7C 0D  jc      $0D7C
0D71  B5        ora     l
0D72  C8        rz
0D73  22 22 60  shld    $6022
0D76  3E 40     mvi     a,'@'
0D78  32 15 60  sta     $6015
0D7B  C9        ret
0D7C  CD 94 0D  call    $0D94
0D7F  7C        mov     a,h
0D80  F6 80     ori     $80
0D82  67        mov     h,a
0D83  23        inx     h
0D84  23        inx     h
0D85  22 22 60  shld    $6022
0D88  21 02 00  lxi     h,$0002
0D8B  22 24 60  shld    $6024
0D8E  3E 44     mvi     a,'D'
0D90  32 15 60  sta     $6015
0D93  C9        ret
0D94  7D        mov     a,l
0D95  2F        cma
0D96  6F        mov     l,a
0D97  7C        mov     a,h
0D98  2F        cma
0D99  67        mov     h,a
0D9A  23        inx     h
0D9B  C9        ret
0D9C  EB        xchg
0D9D  2A 69 60  lhld    $6069
0DA0  73        mov     m,e
0DA1  23        inx     h
0DA2  72        mov     m,d
0DA3  23        inx     h
0DA4  22 69 60  shld    $6069
0DA7  C9        ret
0DA8  21 B8 0B  lxi     h,$0BB8
0DAB  CD 29 08  call    $0829
0DAE  3A 30 60  lda     $6030
0DB1  6F        mov     l,a
0DB2  26 00     mvi     h,$00
0DB4  22 31 60  shld    $6031
0DB7  4F        mov     c,a
0DB8  CD CC 12  call    $12CC
0DBB  2A 1D 60  lhld    $601D
0DBE  EB        xchg
0DBF  2A 4F 60  lhld    $604F
0DC2  CD 68 0D  call    $0D68
0DC5  AF        xra     a
0DC6  32 57 60  sta     $6057
0DC9  32 58 60  sta     $6058
0DCC  C3 44 0D  jmp     $0D44
0DCF  06 20     mvi     b,$20
0DD1  21 5A 60  lxi     h,$605A
0DD4  CD 54 0E  call    $0E54
0DD7  C3 34 0F  jmp     $0F34
0DDA  21 59 60  lxi     h,$6059
0DDD  06 20     mvi     b,$20
0DDF  CD 54 0E  call    $0E54
0DE2  C3 24 0F  jmp     $0F24
0DE5  21 5A 60  lxi     h,$605A
0DE8  7E        mov     a,m
0DE9  E6 07     ani     $07
0DEB  FE 05     cpi     $05
0DED  DA FD 0D  jc      $0DFD
0DF0  CA F8 0D  jz      $0DF8
0DF3  06 05     mvi     b,$05
0DF5  C3 FF 0D  jmp     $0DFF
0DF8  06 03     mvi     b,$03
0DFA  C3 FF 0D  jmp     $0DFF
0DFD  06 06     mvi     b,$06
0DFF  7E        mov     a,m
0E00  E6 F8     ani     $F8
0E02  B0        ora     b
0E03  77        mov     m,a
0E04  CD 34 0F  call    $0F34
0E07  CD 0D 0E  call    $0E0D
0E0A  C3 05 0B  jmp     $0B05
0E0D  21 5A 60  lxi     h,$605A
0E10  7E        mov     a,m
0E11  0F        rrc
0E12  DA 17 0E  jc      $0E17
0E15  06 0C     mvi     b,$0C
0E17  0F        rrc
0E18  DA 1D 0E  jc      $0E1D
0E1B  06 0A     mvi     b,$0A
0E1D  0F        rrc
0E1E  DA 23 0E  jc      $0E23
0E21  06 08     mvi     b,$08
0E23  0F        rrc
0E24  DA 29 0E  jc      $0E29
0E27  05        dcr     b
0E28  05        dcr     b
0E29  0F        rrc
0E2A  78        mov     a,b
0E2B  DA 30 0E  jc      $0E30
0E2E  C6 06     adi     $06
0E30  32 1F 60  sta     $601F
0E33  C9        ret
0E34  06 10     mvi     b,$10
0E36  21 5A 60  lxi     h,$605A
0E39  CD 54 0E  call    $0E54
0E3C  C3 04 0E  jmp     $0E04
0E3F  06 08     mvi     b,$08
0E41  C3 36 0E  jmp     $0E36
0E44  06 08     mvi     b,$08
0E46  21 5B 60  lxi     h,$605B
0E49  CD 54 0E  call    $0E54
0E4C  C3 44 0F  jmp     $0F44
0E4F  06 10     mvi     b,$10
0E51  C3 46 0E  jmp     $0E46
0E54  7E        mov     a,m
0E55  A0        ana     b
0E56  C2 5F 0E  jnz     $0E5F
0E59  7E        mov     a,m
0E5A  B0        ora     b
0E5B  77        mov     m,a
0E5C  C3 09 0F  jmp     $0F09
0E5F  2F        cma
0E60  46        mov     b,m
0E61  A0        ana     b
0E62  C3 5B 0E  jmp     $0E5B
0E65  3A 58 60  lda     $6058
0E68  F6 80     ori     $80
0E6A  32 58 60  sta     $6058
0E6D  3A 57 60  lda     $6057
0E70  E6 FD     ani     $FD
0E72  32 57 60  sta     $6057
0E75  C3 FC 09  jmp     $09FC
0E78  21 5B 60  lxi     h,$605B
0E7B  7E        mov     a,m
0E7C  E6 07     ani     $07
0E7E  FE 05     cpi     $05
0E80  DA 96 0E  jc      $0E96
0E83  CA 8E 0E  jz      $0E8E
0E86  06 05     mvi     b,$05
0E88  11 67 01  lxi     d,$0167
0E8B  C3 9B 0E  jmp     $0E9B
0E8E  06 03     mvi     b,$03
0E90  11 77 01  lxi     d,$0177
0E93  C3 9B 0E  jmp     $0E9B
0E96  06 06     mvi     b,$06
0E98  11 57 01  lxi     d,$0157
0E9B  7E        mov     a,m
0E9C  E6 F8     ani     $F8
0E9E  B0        ora     b
0E9F  77        mov     m,a
0EA0  EB        xchg
0EA1  22 4D 60  shld    $604D
0EA4  C3 44 0F  jmp     $0F44
0EA7  21 59 60  lxi     h,$6059
0EAA  7E        mov     a,m
0EAB  E6 07     ani     $07
0EAD  FE 05     cpi     $05
0EAF  DA C1 0E  jc      $0EC1
0EB2  CA BB 0E  jz      $0EBB
0EB5  01 24 05  lxi     b,$0524
0EB8  C3 C4 0E  jmp     $0EC4
0EBB  01 30 03  lxi     b,$0330
0EBE  C3 C4 0E  jmp     $0EC4
0EC1  01 18 06  lxi     b,$0618
0EC4  7E        mov     a,m
0EC5  E6 F8     ani     $F8
0EC7  B0        ora     b
0EC8  77        mov     m,a
0EC9  79        mov     a,c
0ECA  32 30 60  sta     $6030
0ECD  C3 24 0F  jmp     $0F24
0ED0  2A 4F 60  lhld    $604F
0ED3  44        mov     b,h
0ED4  4D        mov     c,l
0ED5  2A 1D 60  lhld    $601D
0ED8  EB        xchg
0ED9  2A 69 60  lhld    $6069
0EDC  73        mov     m,e
0EDD  23        inx     h
0EDE  72        mov     m,d
0EDF  23        inx     h
0EE0  71        mov     m,c
0EE1  23        inx     h
0EE2  70        mov     m,b
0EE3  23        inx     h
0EE4  22 69 60  shld    $6069
0EE7  C9        ret
0EE8  00        nop
0EE9  7E        mov     a,m
0EEA  12        stax    d
0EEB  23        inx     h
0EEC  13        inx     d
0EED  0B        dcx     b
0EEE  78        mov     a,b
0EEF  B1        ora     c
0EF0  C2 E8 0E  jnz     $0EE8
0EF3  C9        ret
0EF4  3E 04     mvi     a,$04
0EF6  32 5C 60  sta     $605C
0EF9  C3 09 0F  jmp     $0F09
0EFC  3A 52 61  lda     $6152
0EFF  FE 04     cpi     $04
0F01  CA D8 23  jz      $23D8
0F04  3E 02     mvi     a,$02
0F06  32 5C 60  sta     $605C
0F09  21 1B 0F  lxi     h,$0F1B
0F0C  22 0E 60  shld    $600E
0F0F  DB ED     in      $ED
0F11  F6 60     ori     '`'
0F13  D3 ED     out     $ED
0F15  3A 5C 60  lda     $605C
0F18  D3 E4     out     $E4
0F1A  C9        ret
0F1B  DB ED     in      $ED
0F1D  E6 9F     ani     $9F
0F1F  D3 ED     out     $ED
0F21  C3 CD 04  jmp     $04CD
0F24  3A 59 60  lda     $6059
0F27  D3 EC     out     $EC
0F29  DB ED     in      $ED
0F2B  E6 FE     ani     $FE
0F2D  D3 ED     out     $ED
0F2F  F6 01     ori     $01
0F31  D3 ED     out     $ED
0F33  C9        ret
0F34  3A 5A 60  lda     $605A
0F37  D3 EC     out     $EC
0F39  DB ED     in      $ED
0F3B  E6 FD     ani     $FD
0F3D  D3 ED     out     $ED
0F3F  F6 02     ori     $02
0F41  D3 ED     out     $ED
0F43  C9        ret
0F44  3A 5B 60  lda     $605B
0F47  D3 EC     out     $EC
0F49  DB ED     in      $ED
0F4B  E6 FB     ani     $FB
0F4D  D3 ED     out     $ED
0F4F  F6 04     ori     $04
0F51  D3 ED     out     $ED
0F53  C9        ret
0F54  0E 80     mvi     c,$80
0F56  C3 5B 0F  jmp     $0F5B
0F59  0E 00     mvi     c,$00
0F5B  2A 1D 60  lhld    $601D
0F5E  EB        xchg
0F5F  21 77 60  lxi     h,$6077
0F62  7E        mov     a,m
0F63  FE 22     cpi     $22
0F65  C8        rz
0F66  34        inr     m
0F67  46        mov     b,m
0F68  05        dcr     b
0F69  CA 86 0F  jz      $0F86
0F6C  CD D8 0F  call    $0FD8
0F6F  CA 8F 0F  jz      $0F8F
0F72  DA 68 0F  jc      $0F68
0F75  78        mov     a,b
0F76  07        rlc
0F77  47        mov     b,a
0F78  85        add     l
0F79  6F        mov     l,a
0F7A  54        mov     d,h
0F7B  5D        mov     e,l
0F7C  2B        dcx     h
0F7D  2B        dcx     h
0F7E  CD C6 0F  call    $0FC6
0F81  EB        xchg
0F82  2A 1D 60  lhld    $601D
0F85  EB        xchg
0F86  23        inx     h
0F87  79        mov     a,c
0F88  B2        ora     d
0F89  77        mov     m,a
0F8A  23        inx     h
0F8B  73        mov     m,e
0F8C  C3 09 0F  jmp     $0F09
0F8F  3A 77 60  lda     $6077
0F92  3D        dcr     a
0F93  32 77 60  sta     $6077
0F96  2B        dcx     h
0F97  C3 87 0F  jmp     $0F87
0F9A  AF        xra     a
0F9B  32 77 60  sta     $6077
0F9E  C3 09 0F  jmp     $0F09
0FA1  CD FD 0F  call    $0FFD
0FA4  C8        rz
0FA5  CD D8 0F  call    $0FD8
0FA8  CA B1 0F  jz      $0FB1
0FAB  D0        rnc
0FAC  05        dcr     b
0FAD  C8        rz
0FAE  C3 A5 0F  jmp     $0FA5
0FB1  78        mov     a,b
0FB2  80        add     b
0FB3  47        mov     b,a
0FB4  54        mov     d,h
0FB5  5D        mov     e,l
0FB6  1B        dcx     d
0FB7  23        inx     h
0FB8  CD CF 0F  call    $0FCF
0FBB  21 77 60  lxi     h,$6077
0FBE  35        dcr     m
0FBF  AF        xra     a
0FC0  32 BC 60  sta     $60BC
0FC3  C3 09 0F  jmp     $0F09
0FC6  7E        mov     a,m
0FC7  12        stax    d
0FC8  2B        dcx     h
0FC9  1B        dcx     d
0FCA  05        dcr     b
0FCB  C2 C6 0F  jnz     $0FC6
0FCE  C9        ret
0FCF  7E        mov     a,m
0FD0  12        stax    d
0FD1  13        inx     d
0FD2  23        inx     h
0FD3  05        dcr     b
0FD4  C2 CF 0F  jnz     $0FCF
0FD7  C9        ret
0FD8  23        inx     h
0FD9  7E        mov     a,m
0FDA  E6 7F     ani     $7F
0FDC  BA        cmp     d
0FDD  23        inx     h
0FDE  D8        rc
0FDF  C0        rnz
0FE0  7E        mov     a,m
0FE1  BB        cmp     e
0FE2  C9        ret
0FE3  2A 51 60  lhld    $6051
0FE6  CD 00 10  call    $1000
0FE9  C8        rz
0FEA  0E 00     mvi     c,$00
0FEC  CD D8 0F  call    $0FD8
0FEF  D2 F8 0F  jnc     $0FF8
0FF2  0C        inr     c
0FF3  05        dcr     b
0FF4  C2 EC 0F  jnz     $0FEC
0FF7  C9        ret
0FF8  79        mov     a,c
0FF9  32 77 60  sta     $6077
0FFC  C9        ret
0FFD  2A 1D 60  lhld    $601D
1000  EB        xchg
1001  21 77 60  lxi     h,$6077
1004  7E        mov     a,m
1005  B7        ora     a
1006  47        mov     b,a
1007  C9        ret
1008  2A 69 60  lhld    $6069
100B  11 03 00  lxi     d,$0003
100E  19        dad
100F  36 63     mvi     m,'c'
1011  CD FD 0F  call    $0FFD
1014  CA 24 10  jz      $1024
1017  CD D8 0F  call    $0FD8
101A  CA 20 10  jz      $1020
101D  D2 2A 10  jnc     $102A
1020  05        dcr     b
1021  C2 17 10  jnz     $1017
1024  01 04 00  lxi     b,$0004
1027  C3 4B 10  jmp     $104B
102A  2B        dcx     h
102B  7E        mov     a,m
102C  E6 80     ani     $80
102E  23        inx     h
102F  C2 20 10  jnz     $1020
1032  C3 83 10  jmp     $1083
1035  CD FD 0F  call    $0FFD
1038  CA 73 10  jz      $1073
103B  CD D8 0F  call    $0FD8
103E  CA 44 10  jz      $1044
1041  D2 83 10  jnc     $1083
1044  05        dcr     b
1045  C2 3B 10  jnz     $103B
1048  01 03 00  lxi     b,$0003
104B  2A 69 60  lhld    $6069
104E  09        dad     b
104F  EB        xchg
1050  2A 67 60  lhld    $6067
1053  CD EE 09  call    $09EE
1056  B5        ora     l
1057  C2 67 10  jnz     $1067
105A  F3        di
105B  2A 69 60  lhld    $6069
105E  2B        dcx     h
105F  22 69 60  shld    $6069
1062  22 67 60  shld    $6067
1065  FB        ei
1066  C9        ret
1067  F3        di
1068  44        mov     b,h
1069  4D        mov     c,l
106A  2A 69 60  lhld    $6069
106D  2B        dcx     h
106E  CD 4B 18  call    $184B
1071  FB        ei
1072  C9        ret
1073  3E 40     mvi     a,'@'
1075  32 58 60  sta     $6058
1078  3E 02     mvi     a,$02
107A  32 57 60  sta     $6057
107D  2A 51 60  lhld    $6051
1080  C3 94 10  jmp     $1094
1083  4E        mov     c,m
1084  2B        dcx     h
1085  7E        mov     a,m
1086  E6 7F     ani     $7F
1088  47        mov     b,a
1089  7E        mov     a,m
108A  E6 80     ani     $80
108C  32 BC 60  sta     $60BC
108F  60        mov     h,b
1090  69        mov     l,c
1091  C2 A8 10  jnz     $10A8
1094  22 1D 60  shld    $601D
1097  CD EE 09  call    $09EE
109A  22 22 60  shld    $6022
109D  CD E4 11  call    $11E4
10A0  3E 40     mvi     a,'@'
10A2  32 15 60  sta     $6015
10A5  C3 39 08  jmp     $0839
10A8  EB        xchg
10A9  22 BD 60  shld    $60BD
10AC  EB        xchg
10AD  22 1D 60  shld    $601D
10B0  CD EE 09  call    $09EE
10B3  22 22 60  shld    $6022
10B6  C3 EF 10  jmp     $10EF
10B9  06 20     mvi     b,$20
10BB  21 5B 60  lxi     h,$605B
10BE  CD 54 0E  call    $0E54
10C1  C3 44 0F  jmp     $0F44
10C4  CD B9 10  call    $10B9
10C7  3E 01     mvi     a,$01
10C9  32 BC 60  sta     $60BC
10CC  2A 1D 60  lhld    $601D
10CF  22 BD 60  shld    $60BD
10D2  EB        xchg
10D3  2A 4F 60  lhld    $604F
10D6  CD EE 09  call    $09EE
10D9  B5        ora     l
10DA  C2 F7 10  jnz     $10F7
10DD  2A 51 60  lhld    $6051
10E0  CD EE 09  call    $09EE
10E3  1F        rar
10E4  67        mov     h,a
10E5  7D        mov     a,l
10E6  1F        rar
10E7  6F        mov     l,a
10E8  22 22 60  shld    $6022
10EB  19        dad
10EC  22 1D 60  shld    $601D
10EF  3E 40     mvi     a,'@'
10F1  32 15 60  sta     $6015
10F4  CD 39 08  call    $0839
10F7  CD FD 11  call    $11FD
10FA  11 03 00  lxi     d,$0003
10FD  19        dad
10FE  22 69 60  shld    $6069
1101  22 67 60  shld    $6067
1104  CD E2 09  call    $09E2
1107  CA 04 11  jz      $1104
110A  EB        xchg
110B  3A BC 60  lda     $60BC
110E  E6 80     ani     $80
1110  7E        mov     a,m
1111  C2 32 11  jnz     $1132
1114  FE 64     cpi     'd'
1116  D2 71 11  jnc     $1171
1119  3A 1F 60  lda     $601F
111C  0F        rrc
111D  5F        mov     e,a
111E  CD 80 0C  call    $0C80
1121  CD E2 09  call    $09E2
1124  EB        xchg
1125  23        inx     h
1126  22 69 60  shld    $6069
1129  C2 04 11  jnz     $1104
112C  22 67 60  shld    $6067
112F  C3 04 11  jmp     $1104
1132  FE 18     cpi     $18
1134  CA C7 11  jz      $11C7
1137  FE 64     cpi     'd'
1139  D2 42 11  jnc     $1142
113C  3A 1F 60  lda     $601F
113F  C3 1D 11  jmp     $111D
1142  21 54 11  lxi     h,$1154
1145  06 06     mvi     b,$06
1147  CD 95 09  call    $0995
114A  DA F7 11  jc      $11F7
114D  21 5A 11  lxi     h,$115A
1150  79        mov     a,c
1151  C3 21 0B  jmp     $0B21
1154  75        mov     m,l
1155  69        mov     l,c
1156  68        mov     l,b
1157  65        mov     h,l
1158  9F        sbb     a
1159  A0        ana     b
115A  80        add     b
115B  11 C7 11  lxi     d,$11C7
115E  C7        rst     0
115F  11 C7 11  lxi     d,$11C7
1162  66        mov     h,m
1163  11 66 11  lxi     d,$1166
1166  CD A1 0F  call    $0FA1
1169  3A BC 60  lda     $60BC
116C  B7        ora     a
116D  C8        rz
116E  C3 F7 11  jmp     $11F7
1171  FE 68     cpi     'h'
1173  CA 19 11  jz      $1119
1176  FE 65     cpi     'e'
1178  CA C4 11  jz      $11C4
117B  FE 75     cpi     'u'
117D  C2 F7 11  jnz     $11F7
1180  2A C1 60  lhld    $60C1
1183  22 69 60  shld    $6069
1186  2A 1D 60  lhld    $601D
1189  EB        xchg
118A  2A BF 60  lhld    $60BF
118D  22 1D 60  shld    $601D
1190  CD EE 09  call    $09EE
1193  B5        ora     l
1194  CA A5 11  jz      $11A5
1197  22 22 60  shld    $6022
119A  3E 40     mvi     a,'@'
119C  32 15 60  sta     $6015
119F  CD 39 08  call    $0839
11A2  C3 F7 10  jmp     $10F7
11A5  CD 5A 10  call    $105A
11A8  3A BC 60  lda     $60BC
11AB  17        ral
11AC  D4 B9 10  cnc     $10B9
11AF  2A 1D 60  lhld    $601D
11B2  EB        xchg
11B3  2A BD 60  lhld    $60BD
11B6  22 1D 60  shld    $601D
11B9  EB        xchg
11BA  CD EE 09  call    $09EE
11BD  AF        xra     a
11BE  32 BC 60  sta     $60BC
11C1  C3 77 0C  jmp     $0C77
11C4  CD B9 10  call    $10B9
11C7  AF        xra     a
11C8  32 BC 60  sta     $60BC
11CB  2A C1 60  lhld    $60C1
11CE  22 69 60  shld    $6069
11D1  2A BD 60  lhld    $60BD
11D4  EB        xchg
11D5  2A 1D 60  lhld    $601D
11D8  CD EE 09  call    $09EE
11DB  D2 E4 11  jnc     $11E4
11DE  CD 94 0D  call    $0D94
11E1  F6 80     ori     $80
11E3  67        mov     h,a
11E4  EB        xchg
11E5  2A 69 60  lhld    $6069
11E8  2B        dcx     h
11E9  36 A3     mvi     m,$A3
11EB  23        inx     h
11EC  73        mov     m,e
11ED  23        inx     h
11EE  72        mov     m,d
11EF  23        inx     h
11F0  36 A3     mvi     m,$A3
11F2  23        inx     h
11F3  22 69 60  shld    $6069
11F6  C9        ret
11F7  CD 5A 10  call    $105A
11FA  C3 04 11  jmp     $1104
11FD  2A 1D 60  lhld    $601D
1200  22 BF 60  shld    $60BF
1203  2A 69 60  lhld    $6069
1206  22 C1 60  shld    $60C1
1209  C9        ret
120A  DB F8     in      $F8
120C  E6 08     ani     $08
120E  C0        rnz
120F  32 57 60  sta     $6057
1212  21 CD 04  lxi     h,$04CD
1215  22 06 60  shld    $6006
1218  CD 95 02  call    $0295
121B  2A 1D 60  lhld    $601D
121E  EB        xchg
121F  21 F0 00  lxi     h,$00F0
1222  CD 6B 0D  call    $0D6B
1225  CD 39 08  call    $0839
1228  CD D4 05  call    $05D4
122B  2A 4F 60  lhld    $604F
122E  22 1D 60  shld    $601D
1231  21 10 0E  lxi     h,$0E10
1234  22 31 60  shld    $6031
1237  3E 01     mvi     a,$01
1239  32 15 60  sta     $6015
123C  CD 39 08  call    $0839
123F  DB F8     in      $F8
1241  E6 40     ani     '@'
1243  C2 66 12  jnz     $1266
1246  3A 13 60  lda     $6013
1249  B7        ora     a
124A  C8        rz
124B  DB F8     in      $F8
124D  E6 10     ani     $10
124F  CA 46 12  jz      $1246
1252  21 68 01  lxi     h,$0168
1255  22 2B 60  shld    $602B
1258  3A 59 60  lda     $6059
125B  F6 18     ori     $18
125D  32 59 60  sta     $6059
1260  CD 24 0F  call    $0F24
1263  C3 AD 06  jmp     $06AD
1266  3A 13 60  lda     $6013
1269  B7        ora     a
126A  C8        rz
126B  DB F8     in      $F8
126D  E6 40     ani     '@'
126F  C2 66 12  jnz     $1266
1272  21 6C 00  lxi     h,$006C
1275  22 2B 60  shld    $602B
1278  CD AD 06  call    $06AD
127B  21 64 00  lxi     h,$0064
127E  22 35 60  shld    $6035
1281  CD 3C 03  call    $033C
1284  CD 98 03  call    $0398
1287  CD 9C 02  call    $029C
128A  DB F8     in      $F8
128C  E6 08     ani     $08
128E  CA 0F 12  jz      $120F
1291  CD BE 09  call    $09BE
1294  CD E2 09  call    $09E2
1297  CA 8A 12  jz      $128A
129A  2A 69 60  lhld    $6069
129D  7E        mov     a,m
129E  FE 8A     cpi     $8A
12A0  CA 9C 22  jz      $229C
12A3  AF        xra     a
12A4  32 4C 61  sta     $614C
12A7  32 49 61  sta     $6149
12AA  3A 59 60  lda     $6059
12AD  E6 08     ani     $08
12AF  C2 B4 12  jnz     $12B4
12B2  2B        dcx     h
12B3  2B        dcx     h
12B4  F3        di
12B5  EB        xchg
12B6  2A 67 60  lhld    $6067
12B9  CD EE 09  call    $09EE
12BC  44        mov     b,h
12BD  4D        mov     c,l
12BE  2A 1C 61  lhld    $611C
12C1  23        inx     h
12C2  22 69 60  shld    $6069
12C5  CD 4B 18  call    $184B
12C8  C3 22 16  jmp     $1622
12CB  00        nop
12CC  2A 35 60  lhld    $6035
12CF  06 00     mvi     b,$00
12D1  09        dad     b
12D2  22 35 60  shld    $6035
12D5  DB F8     in      $F8
12D7  E6 10     ani     $10
12D9  C2 E2 12  jnz     $12E2
12DC  3E 60     mvi     a,'`'
12DE  32 37 60  sta     $6037
12E1  C9        ret
12E2  3A 37 60  lda     $6037
12E5  FE 60     cpi     '`'
12E7  CC 09 0F  cz      $0F09
12EA  3A 37 60  lda     $6037
12ED  91        sub     c
12EE  DA F5 12  jc      $12F5
12F1  32 37 60  sta     $6037
12F4  C9        ret
12F5  3A 3F 60  lda     $603F
12F8  FE 65     cpi     'e'
12FA  01 07 00  lxi     b,$0007
12FD  CA 03 13  jz      $1303
1300  01 00 00  lxi     b,$0000
1303  CD 4B 10  call    $104B
1306  CD 09 0F  call    $0F09
1309  33        inx     sp
130A  33        inx     sp
130B  C9        ret
130C  3A 37 60  lda     $6037
130F  81        add     c
1310  32 37 60  sta     $6037
1313  2A 35 60  lhld    $6035
1316  79        mov     a,c
1317  2F        cma
1318  3C        inr     a
1319  5F        mov     e,a
131A  16 FF     mvi     d,$FF
131C  19        dad
131D  D2 00 13  jnc     $1300
1320  22 35 60  shld    $6035
1323  C9        ret
1324  DB E8     in      $E8
1326  47        mov     b,a
1327  FB        ei
1328  FE 68     cpi     'h'
132A  CA 53 13  jz      $1353
132D  3A C3 60  lda     $60C3
1330  FE FF     cpi     $FF
1332  C2 62 13  jnz     $1362
1335  CD ED 24  call    $24ED
1338  78        mov     a,b
1339  FE 57     cpi     'W'
133B  C2 CD 04  jnz     $04CD
133E  3A 5E 60  lda     $605E
1341  3C        inr     a
1342  32 5E 60  sta     $605E
1345  FE 03     cpi     $03
1347  D2 CD 04  jnc     $04CD
134A  21 60 60  lxi     h,$6060
134D  85        add     l
134E  6F        mov     l,a
134F  70        mov     m,b
1350  C3 CD 04  jmp     $04CD
1353  3A 5E 60  lda     $605E
1356  FE 03     cpi     $03
1358  DA 68 13  jc      $1368
135B  AF        xra     a
135C  32 5E 60  sta     $605E
135F  C3 CD 04  jmp     $04CD
1362  CD 03 25  call    $2503
1365  C3 3E 13  jmp     $133E
1368  3A 1F 61  lda     $611F
136B  FE FF     cpi     $FF
136D  C2 7A 13  jnz     $137A
1370  AF        xra     a
1371  32 1F 61  sta     $611F
1374  32 5E 60  sta     $605E
1377  C3 CD 04  jmp     $04CD
137A  3A 5E 60  lda     $605E
137D  FE 02     cpi     $02
137F  CA 87 13  jz      $1387
1382  21 62 60  lxi     h,$6062
1385  36 FF     mvi     m,$FF
1387  B7        ora     a
1388  C2 D3 13  jnz     $13D3
138B  3A C5 60  lda     $60C5
138E  FE FF     cpi     $FF
1390  3E 00     mvi     a,$00
1392  32 C5 60  sta     $60C5
1395  CA A8 17  jz      $17A8
1398  3A 20 61  lda     $6120
139B  FE FF     cpi     $FF
139D  C2 BB 13  jnz     $13BB
13A0  3A 45 61  lda     $6145
13A3  FE FF     cpi     $FF
13A5  C2 B2 13  jnz     $13B2
13A8  AF        xra     a
13A9  32 20 61  sta     $6120
13AC  32 45 61  sta     $6145
13AF  C3 BB 13  jmp     $13BB
13B2  AF        xra     a
13B3  32 20 61  sta     $6120
13B6  06 6A     mvi     b,'j'
13B8  C3 B1 14  jmp     $14B1
13BB  AF        xra     a
13BC  32 66 60  sta     $6066
13BF  32 5E 60  sta     $605E
13C2  32 4F 61  sta     $614F
13C5  32 50 61  sta     $6150
13C8  3E FF     mvi     a,$FF
13CA  32 63 60  sta     $6063
13CD  32 64 60  sta     $6064
13D0  C3 0E 15  jmp     $150E
13D3  AF        xra     a
13D4  32 5E 60  sta     $605E
13D7  21 61 60  lxi     h,$6061
13DA  4E        mov     c,m
13DB  23        inx     h
13DC  46        mov     b,m
13DD  23        inx     h
13DE  7E        mov     a,m
13DF  B9        cmp     c
13E0  C2 22 14  jnz     $1422
13E3  23        inx     h
13E4  7E        mov     a,m
13E5  B8        cmp     b
13E6  CA F3 13  jz      $13F3
13E9  AF        xra     a
13EA  32 4F 61  sta     $614F
13ED  32 66 60  sta     $6066
13F0  C3 22 14  jmp     $1422
13F3  CD E2 09  call    $09E2
13F6  C2 CD 04  jnz     $04CD
13F9  3A 50 61  lda     $6150
13FC  B7        ora     a
13FD  C2 CD 04  jnz     $04CD
1400  AF        xra     a
1401  3A 4F 61  lda     $614F
1404  3C        inr     a
1405  32 4F 61  sta     $614F
1408  FE 14     cpi     $14
140A  DA CD 04  jc      $04CD
140D  3E FF     mvi     a,$FF
140F  32 66 60  sta     $6066
1412  C3 CD 04  jmp     $04CD
1415  21 61 60  lxi     h,$6061
1418  4E        mov     c,m
1419  23        inx     h
141A  46        mov     b,m
141B  23        inx     h
141C  71        mov     m,c
141D  23        inx     h
141E  70        mov     m,b
141F  C3 CD 04  jmp     $04CD
1422  79        mov     a,c
1423  48        mov     c,b
1424  21 17 15  lxi     h,$1517
1427  11 1F 15  lxi     d,$151F
142A  06 08     mvi     b,$08
142C  CD D5 17  call    $17D5
142F  D2 33 14  jnc     $1433
1432  E9        pchl
1433  3A 61 60  lda     $6061
1436  4F        mov     c,a
1437  3A 62 60  lda     $6062
143A  21 17 15  lxi     h,$1517
143D  11 1F 15  lxi     d,$151F
1440  06 08     mvi     b,$08
1442  CD D5 17  call    $17D5
1445  D2 49 14  jnc     $1449
1448  E9        pchl
1449  21 61 60  lxi     h,$6061
144C  7E        mov     a,m
144D  D6 30     sui     $30
144F  F2 5C 14  jp      $145C
1452  23        inx     h
1453  7E        mov     a,m
1454  D6 30     sui     $30
1456  F2 15 14  jp      $1415
1459  C3 63 14  jmp     $1463
145C  23        inx     h
145D  7E        mov     a,m
145E  FE FF     cpi     $FF
1460  C2 15 14  jnz     $1415
1463  21 61 60  lxi     h,$6061
1466  4E        mov     c,m
1467  23        inx     h
1468  46        mov     b,m
1469  23        inx     h
146A  7E        mov     a,m
146B  B9        cmp     c
146C  CA 75 14  jz      $1475
146F  23        inx     h
1470  7E        mov     a,m
1471  B9        cmp     c
1472  C2 84 14  jnz     $1484
1475  21 63 60  lxi     h,$6063
1478  7E        mov     a,m
1479  B8        cmp     b
147A  CA 15 14  jz      $1415
147D  23        inx     h
147E  7E        mov     a,m
147F  B8        cmp     b
1480  CA 15 14  jz      $1415
1483  48        mov     c,b
1484  79        mov     a,c
1485  FE FF     cpi     $FF
1487  CA 15 14  jz      $1415
148A  3A 65 60  lda     $6065
148D  FE FF     cpi     $FF
148F  CA AA 16  jz      $16AA
1492  79        mov     a,c
1493  D6 30     sui     $30
1495  F2 DC 16  jp      $16DC
1498  79        mov     a,c
1499  FE 66     cpi     'f'
149B  CA FC 14  jz      $14FC
149E  47        mov     b,a
149F  FE 9C     cpi     $9C
14A1  CA D1 14  jz      $14D1
14A4  3A C4 60  lda     $60C4
14A7  FE FF     cpi     $FF
14A9  3E 00     mvi     a,$00
14AB  32 C4 60  sta     $60C4
14AE  CA D9 14  jz      $14D9
14B1  2A 67 60  lhld    $6067
14B4  70        mov     m,b
14B5  78        mov     a,b
14B6  FE 8B     cpi     $8B
14B8  C2 BF 14  jnz     $14BF
14BB  AF        xra     a
14BC  32 C3 60  sta     $60C3
14BF  78        mov     a,b
14C0  23        inx     h
14C1  E5        push    h
14C2  21 E2 16  lxi     h,$16E2
14C5  11 E7 16  lxi     d,$16E7
14C8  06 05     mvi     b,$05
14CA  CD D5 17  call    $17D5
14CD  D2 04 15  jnc     $1504
14D0  E9        pchl
14D1  3E FF     mvi     a,$FF
14D3  32 C4 60  sta     $60C4
14D6  C3 15 14  jmp     $1415
14D9  21 63 16  lxi     h,$1663
14DC  48        mov     c,b
14DD  06 14     mvi     b,$14
14DF  CD C6 17  call    $17C6
14E2  D2 15 14  jnc     $1415
14E5  FE 0A     cpi     $0A
14E7  D2 ED 14  jnc     $14ED
14EA  C3 F4 14  jmp     $14F4
14ED  D6 0A     sui     $0A
14EF  C3 F4 14  jmp     $14F4
14F2  3E 76     mvi     a,'v'
14F4  32 1A 61  sta     $611A
14F7  06 9C     mvi     b,$9C
14F9  C3 B1 14  jmp     $14B1
14FC  3E FF     mvi     a,$FF
14FE  32 66 60  sta     $6066
1501  C3 15 14  jmp     $1415
1504  E1        pop     h
1505  22 67 60  shld    $6067
1508  32 5D 60  sta     $605D
150B  C3 15 14  jmp     $1415
150E  32 5D 60  sta     $605D
1511  C3 CD 04  jmp     $04CD
1514  C3 15 14  jmp     $1415
1517  36 3E     mvi     m,$3E
1519  3F        cmc
151A  4C        mov     c,h
151B  5D        mov     e,l
151C  64        mov     h,h
151D  66        mov     h,m
151E  65        mov     h,l
151F  82        add     d
1520  16 AA     mvi     d,$AA
1522  16 C8     mvi     d,$C8
1524  16 2F     mvi     d,$2F
1526  15        dcr     d
1527  FB        ei
1528  15        dcr     d
1529  2A 17 78  lhld    $7817
152C  17        ral
152D  73        mov     m,e
152E  17        ral
152F  79        mov     a,c
1530  FE FF     cpi     $FF
1532  CA BA 15  jz      $15BA
1535  32 1A 61  sta     $611A
1538  FE 0F     cpi     $0F
153A  CA 45 16  jz      $1645
153D  11 0C 00  lxi     d,$000C
1540  2A 0F 24  lhld    $240F
1543  CD EE 09  call    $09EE
1546  EB        xchg
1547  2A 69 60  lhld    $6069
154A  EB        xchg
154B  CD EE 09  call    $09EE
154E  DA 15 14  jc      $1415
1551  2A 67 60  lhld    $6067
1554  22 C6 60  shld    $60C6
1557  3E FF     mvi     a,$FF
1559  32 C8 60  sta     $60C8
155C  3A 1A 61  lda     $611A
155F  21 6D 16  lxi     h,$166D
1562  06 0A     mvi     b,$0A
1564  CD C6 17  call    $17C6
1567  D2 15 14  jnc     $1415
156A  47        mov     b,a
156B  3A 1A 61  lda     $611A
156E  F5        push    psw
156F  78        mov     a,b
1570  32 1A 61  sta     $611A
1573  CD 8B 26  call    $268B
1576  D2 B3 15  jnc     $15B3
1579  3A 59 60  lda     $6059
157C  E6 F7     ani     $F7
157E  32 59 60  sta     $6059
1581  CD 24 0F  call    $0F24
1584  CD 09 0F  call    $0F09
1587  2A 1D 60  lhld    $601D
158A  EB        xchg
158B  2A 67 60  lhld    $6067
158E  73        mov     m,e
158F  23        inx     h
1590  72        mov     m,d
1591  23        inx     h
1592  22 67 60  shld    $6067
1595  22 69 60  shld    $6069
1598  CD 4E 16  call    $164E
159B  3A 59 60  lda     $6059
159E  F1        pop     psw
159F  32 1A 61  sta     $611A
15A2  3A 59 60  lda     $6059
15A5  77        mov     m,a
15A6  23        inx     h
15A7  3A 5A 60  lda     $605A
15AA  77        mov     m,a
15AB  23        inx     h
15AC  3A 5B 60  lda     $605B
15AF  77        mov     m,a
15B0  C3 15 14  jmp     $1415
15B3  F1        pop     psw
15B4  32 1A 61  sta     $611A
15B7  C3 15 14  jmp     $1415
15BA  32 50 61  sta     $6150
15BD  3A C8 60  lda     $60C8
15C0  FE FF     cpi     $FF
15C2  C2 15 14  jnz     $1415
15C5  2A 67 60  lhld    $6067
15C8  EB        xchg
15C9  2A C6 60  lhld    $60C6
15CC  23        inx     h
15CD  23        inx     h
15CE  CD EE 09  call    $09EE
15D1  B5        ora     l
15D2  C2 D8 15  jnz     $15D8
15D5  C3 15 14  jmp     $1415
15D8  3A 59 60  lda     $6059
15DB  E6 08     ani     $08
15DD  C2 15 14  jnz     $1415
15E0  3A 59 60  lda     $6059
15E3  F6 08     ori     $08
15E5  32 59 60  sta     $6059
15E8  CD 24 0F  call    $0F24
15EB  CD 09 0F  call    $0F09
15EE  16 91     mvi     d,$91
15F0  AF        xra     a
15F1  32 C8 60  sta     $60C8
15F4  3A 1A 61  lda     $611A
15F7  4F        mov     c,a
15F8  C3 05 16  jmp     $1605
15FB  16 80     mvi     d,$80
15FD  3A 59 60  lda     $6059
1600  E6 08     ani     $08
1602  CA 15 14  jz      $1415
1605  79        mov     a,c
1606  FE FF     cpi     $FF
1608  CA 98 13  jz      $1398
160B  FE 0F     cpi     $0F
160D  CA 49 16  jz      $1649
1610  21 6D 16  lxi     h,$166D
1613  06 0A     mvi     b,$0A
1615  CD C6 17  call    $17C6
1618  D2 15 14  jnc     $1415
161B  32 1A 61  sta     $611A
161E  42        mov     b,d
161F  C3 B1 14  jmp     $14B1
1622  22 67 60  shld    $6067
1625  FB        ei
1626  2A 59 60  lhld    $6059
1629  22 42 61  shld    $6142
162C  3A 5B 60  lda     $605B
162F  32 44 61  sta     $6144
1632  3A 59 60  lda     $6059
1635  E6 08     ani     $08
1637  C0        rnz
1638  2A 1C 61  lhld    $611C
163B  23        inx     h
163C  22 C6 60  shld    $60C6
163F  23        inx     h
1640  23        inx     h
1641  22 69 60  shld    $6069
1644  C9        ret
1645  00        nop
1646  00        nop
1647  00        nop
1648  00        nop
1649  00        nop
164A  00        nop
164B  C3 15 14  jmp     $1415
164E  11 03 00  lxi     d,$0003
1651  21 24 61  lxi     h,$6124
1654  06 0A     mvi     b,$0A
1656  3A 1A 61  lda     $611A
1659  4F        mov     c,a
165A  79        mov     a,c
165B  B8        cmp     b
165C  C8        rz
165D  19        dad
165E  05        dcr     b
165F  C2 5A 16  jnz     $165A
1662  C9        ret
1663  30        nop                  ;Note: Alternative opcode used
1664  34        inr     m
1665  38        nop                  ;Note: Alternative opcode used
1666  3C        inr     a
1667  40        mov     b,b
1668  44        mov     b,h
1669  48        mov     c,b
166A  4C        mov     c,h
166B  50        mov     d,b
166C  54        mov     d,h
166D  00        nop
166E  04        inr     b
166F  08        nop                  ;Note: Alternative opcode used
1670  0C        inr     c
1671  10        nop                  ;Note: Alternative opcode used
1672  14        inr     d
1673  18        nop                  ;Note: Alternative opcode used
1674  1C        inr     e
1675  20        nop                  ;Note: Alternative opcode used
1676  24        inr     h
1677  4B        mov     c,e
1678  4D        mov     c,l
1679  45        mov     b,l
167A  33        inx     sp
167B  37        stc
167C  41        mov     b,c
167D  30        nop                  ;Note: Alternative opcode used
167E  0C        inr     c
167F  04        inr     b
1680  08        nop                  ;Note: Alternative opcode used
1681  00        nop
1682  79        mov     a,c
1683  FE FF     cpi     $FF
1685  CA 98 13  jz      $1398
1688  FE 42     cpi     'B'
168A  CA F2 14  jz      $14F2
168D  06 07     mvi     b,$07
168F  21 77 16  lxi     h,$1677
1692  CD C6 17  call    $17C6
1695  D2 9D 16  jnc     $169D
1698  C6 9A     adi     $9A
169A  C3 99 14  jmp     $1499
169D  06 04     mvi     b,$04
169F  CD C6 17  call    $17C6
16A2  D2 98 13  jnc     $1398
16A5  C6 5F     adi     '_'
16A7  C3 99 14  jmp     $1499
16AA  79        mov     a,c
16AB  FE FF     cpi     $FF
16AD  CA BB 16  jz      $16BB
16B0  D6 30     sui     $30
16B2  F2 DC 16  jp      $16DC
16B5  3E 30     mvi     a,$30
16B7  81        add     c
16B8  C3 99 14  jmp     $1499
16BB  AF        xra     a
16BC  32 65 60  sta     $6065
16BF  DB ED     in      $ED
16C1  E6 7F     ani     $7F
16C3  D3 ED     out     $ED
16C5  C3 98 13  jmp     $1398
16C8  3E FF     mvi     a,$FF
16CA  32 65 60  sta     $6065
16CD  DB ED     in      $ED
16CF  F6 80     ori     $80
16D1  D3 ED     out     $ED
16D3  79        mov     a,c
16D4  FE FF     cpi     $FF
16D6  CA 98 13  jz      $1398
16D9  C3 B0 16  jmp     $16B0
16DC  3E 34     mvi     a,$34
16DE  81        add     c
16DF  C3 99 14  jmp     $1499
16E2  69        mov     l,c
16E3  7E        mov     a,m
16E4  65        mov     h,l
16E5  7B        mov     a,e
16E6  83        add     e
16E7  F1        pop     psw
16E8  16 F1     mvi     d,$F1
16EA  16 FB     mvi     d,$FB
16EC  16 14     mvi     d,$14
16EE  17        ral
16EF  FB        ei
16F0  16 11     mvi     d,$11
16F2  02        stax    b
16F3  00        nop
16F4  E1        pop     h
16F5  19        dad
16F6  77        mov     m,a
16F7  23        inx     h
16F8  C3 1F 17  jmp     $171F
16FB  47        mov     b,a
16FC  3A 54 61  lda     $6154
16FF  B7        ora     a
1700  C2 0E 17  jnz     $170E
1703  78        mov     a,b
1704  11 06 00  lxi     d,$0006
1707  E1        pop     h
1708  19        dad
1709  77        mov     m,a
170A  23        inx     h
170B  C3 05 15  jmp     $1505
170E  E1        pop     h
170F  06 8F     mvi     b,$8F
1711  C3 B1 14  jmp     $14B1
1714  11 02 00  lxi     d,$0002
1717  E1        pop     h
1718  19        dad
1719  77        mov     m,a
171A  23        inx     h
171B  23        inx     h
171C  C3 1F 17  jmp     $171F
171F  3A D1 60  lda     $60D1
1722  FE FF     cpi     $FF
1724  CA 15 14  jz      $1415
1727  C3 05 15  jmp     $1505
172A  AF        xra     a
172B  32 51 61  sta     $6151
172E  79        mov     a,c
172F  FE FF     cpi     $FF
1731  CA 6A 17  jz      $176A
1734  F5        push    psw
1735  3E FF     mvi     a,$FF
1737  32 45 61  sta     $6145
173A  F1        pop     psw
173B  D6 30     sui     $30
173D  F2 5A 17  jp      $175A
1740  3A 65 60  lda     $6065
1743  FE FF     cpi     $FF
1745  CA 54 17  jz      $1754
1748  79        mov     a,c
1749  2A 67 60  lhld    $6067
174C  36 98     mvi     m,$98
174E  23        inx     h
174F  77        mov     m,a
1750  23        inx     h
1751  C3 05 15  jmp     $1505
1754  79        mov     a,c
1755  C6 30     adi     $30
1757  C3 49 17  jmp     $1749
175A  79        mov     a,c
175B  C6 34     adi     $34
175D  FE 65     cpi     'e'
175F  CA 49 17  jz      $1749
1762  FE 68     cpi     'h'
1764  CA 49 17  jz      $1749
1767  C3 15 14  jmp     $1415
176A  32 50 61  sta     $6150
176D  32 20 61  sta     $6120
1770  C3 15 14  jmp     $1415
1773  3E FF     mvi     a,$FF
1775  C3 79 17  jmp     $1779
1778  AF        xra     a
1779  32 EE 60  sta     $60EE
177C  3E FF     mvi     a,$FF
177E  32 50 61  sta     $6150
1781  3A 59 60  lda     $6059
1784  E6 10     ani     $10
1786  C2 15 14  jnz     $1415
1789  3A D1 60  lda     $60D1
178C  FE FF     cpi     $FF
178E  CA 15 14  jz      $1415
1791  79        mov     a,c
1792  FE 90     cpi     $90
1794  CA BB 17  jz      $17BB
1797  FE FF     cpi     $FF
1799  CA C0 17  jz      $17C0
179C  D6 30     sui     $30
179E  F2 B5 17  jp      $17B5
17A1  79        mov     a,c
17A2  67        mov     h,a
17A3  AF        xra     a
17A4  32 C5 60  sta     $60C5
17A7  7C        mov     a,h
17A8  32 EF 60  sta     $60EF
17AB  3E FF     mvi     a,$FF
17AD  32 C3 60  sta     $60C3
17B0  3E 9A     mvi     a,$9A
17B2  C3 99 14  jmp     $1499
17B5  3E 34     mvi     a,$34
17B7  81        add     c
17B8  C3 A2 17  jmp     $17A2
17BB  3E FF     mvi     a,$FF
17BD  C3 A2 17  jmp     $17A2
17C0  32 C5 60  sta     $60C5
17C3  C3 14 15  jmp     $1514
17C6  7E        mov     a,m
17C7  B9        cmp     c
17C8  C2 CE 17  jnz     $17CE
17CB  78        mov     a,b
17CC  37        stc
17CD  C9        ret
17CE  23        inx     h
17CF  05        dcr     b
17D0  C2 C6 17  jnz     $17C6
17D3  B7        ora     a
17D4  C9        ret
17D5  BE        cmp     m
17D6  CA E2 17  jz      $17E2
17D9  23        inx     h
17DA  13        inx     d
17DB  13        inx     d
17DC  05        dcr     b
17DD  C2 D5 17  jnz     $17D5
17E0  B7        ora     a
17E1  C9        ret
17E2  EB        xchg
17E3  5E        mov     e,m
17E4  23        inx     h
17E5  56        mov     d,m
17E6  EB        xchg
17E7  37        stc
17E8  C9        ret
17E9  47        mov     b,a
17EA  3A 3F 60  lda     $603F
17ED  F5        push    psw
17EE  78        mov     a,b
17EF  32 3F 60  sta     $603F
17F2  21 00 20  lxi     h,$2000
17F5  CD 29 08  call    $0829
17F8  CD DC 05  call    $05DC
17FB  3E 51     mvi     a,'Q'
17FD  32 49 60  sta     $6049
1800  32 4A 60  sta     $604A
1803  3E FF     mvi     a,$FF
1805  32 53 61  sta     $6153
1808  3E 3A     mvi     a,$3A
180A  32 15 60  sta     $6015
180D  CD 39 08  call    $0839
1810  3E 20     mvi     a,$20
1812  32 15 60  sta     $6015
1815  3E 12     mvi     a,$12
1817  32 49 60  sta     $6049
181A  CD 39 08  call    $0839
181D  AF        xra     a
181E  32 53 61  sta     $6153
1821  F1        pop     psw
1822  32 3F 60  sta     $603F
1825  21 00 15  lxi     h,$1500
1828  CD 29 08  call    $0829
182B  3A 5B 60  lda     $605B
182E  E6 08     ani     $08
1830  C0        rnz
1831  21 03 80  lxi     h,$8003
1834  22 22 60  shld    $6022
1837  21 02 00  lxi     h,$0002
183A  22 24 60  shld    $6024
183D  3E 44     mvi     a,'D'
183F  32 15 60  sta     $6015
1842  CD 39 08  call    $0839
1845  21 00 20  lxi     h,$2000
1848  C3 29 08  jmp     $0829
184B  1A        ldax    d
184C  77        mov     m,a
184D  23        inx     h
184E  13        inx     d
184F  0B        dcx     b
1850  78        mov     a,b
1851  B1        ora     c
1852  C2 4B 18  jnz     $184B
1855  C9        ret
1856  21 02 00  lxi     h,$0002
1859  22 24 60  shld    $6024
185C  C9        ret
185D  3A C3 60  lda     $60C3
1860  B7        ora     a
1861  C2 7D 0C  jnz     $0C7D
1864  3A 1F 60  lda     $601F
1867  5F        mov     e,a
1868  16 00     mvi     d,$00
186A  2A 1D 60  lhld    $601D
186D  CD EE 09  call    $09EE
1870  EB        xchg
1871  2A 4F 60  lhld    $604F
1874  EB        xchg
1875  CD EE 09  call    $09EE
1878  DA 81 18  jc      $1881
187B  CD 9D 21  call    $219D
187E  C3 7D 0C  jmp     $0C7D
1881  3A 58 60  lda     $6058
1884  E6 80     ani     $80
1886  C2 7E 18  jnz     $187E
1889  CD 09 0F  call    $0F09
188C  2A 69 60  lhld    $6069
188F  2B        dcx     h
1890  22 69 60  shld    $6069
1893  22 67 60  shld    $6067
1896  C9        ret
1897  CD 03 21  call    $2103
189A  DA 09 0F  jc      $0F09
189D  AF        xra     a
189E  32 57 60  sta     $6057
18A1  2A 69 60  lhld    $6069
18A4  2B        dcx     h
18A5  2B        dcx     h
18A6  22 69 60  shld    $6069
18A9  7E        mov     a,m
18AA  FE 64     cpi     'd'
18AC  DA 3F 19  jc      $193F
18AF  21 3E 1F  lxi     h,$1F3E
18B2  11 C8 18  lxi     d,$18C8
18B5  06 07     mvi     b,$07
18B7  CD D5 17  call    $17D5
18BA  D2 BE 18  jnc     $18BE
18BD  E9        pchl
18BE  CD 87 1E  call    $1E87
18C1  2A 69 60  lhld    $6069
18C4  22 67 60  shld    $6067
18C7  C9        ret
18C8  F8        rm
18C9  18        nop                  ;Note: Alternative opcode used
18CA  ED 21 11  call    $1121        ;Note: Alternative opcode used
18CD  19        dad
18CE  E2 18 D6  jpo     $D618
18D1  18        nop                  ;Note: Alternative opcode used
18D2  DC 18 EC  cc      $EC18
18D5  18        nop                  ;Note: Alternative opcode used
18D6  CD 2F 0C  call    $0C2F
18D9  C3 49 19  jmp     $1949
18DC  CD 14 0C  call    $0C14
18DF  C3 49 19  jmp     $1949
18E2  2A 69 60  lhld    $6069
18E5  23        inx     h
18E6  22 69 60  shld    $6069
18E9  C3 C4 18  jmp     $18C4
18EC  2A 69 60  lhld    $6069
18EF  22 67 60  shld    $6067
18F2  CD 3C 0C  call    $0C3C
18F5  C3 51 19  jmp     $1951
18F8  2A 69 60  lhld    $6069
18FB  22 67 60  shld    $6067
18FE  CD C0 1D  call    $1DC0
1901  C3 51 19  jmp     $1951
1904  2A 69 60  lhld    $6069
1907  23        inx     h
1908  22 69 60  shld    $6069
190B  22 67 60  shld    $6067
190E  2B        dcx     h
190F  2B        dcx     h
1910  C9        ret
1911  CD 04 19  call    $1904
1914  CD 25 19  call    $1925
1917  22 69 60  shld    $6069
191A  22 67 60  shld    $6067
191D  60        mov     h,b
191E  69        mov     l,c
191F  CD B0 20  call    $20B0
1922  C3 51 19  jmp     $1951
1925  7E        mov     a,m
1926  F6 80     ori     $80
1928  32 32 60  sta     $6032
192B  2B        dcx     h
192C  7E        mov     a,m
192D  32 31 60  sta     $6031
1930  3E 01     mvi     a,$01
1932  32 15 60  sta     $6015
1935  2B        dcx     h
1936  56        mov     d,m
1937  2B        dcx     h
1938  5E        mov     e,m
1939  2B        dcx     h
193A  46        mov     b,m
193B  2B        dcx     h
193C  4E        mov     c,m
193D  2B        dcx     h
193E  C9        ret
193F  CD C0 1D  call    $1DC0
1942  2A 69 60  lhld    $6069
1945  7E        mov     a,m
1946  CD E9 17  call    $17E9
1949  F3        di
194A  2A 69 60  lhld    $6069
194D  22 67 60  shld    $6067
1950  FB        ei
1951  3A 52 61  lda     $6152
1954  FE 05     cpi     $05
1956  CA D5 23  jz      $23D5
1959  C9        ret
195A  2A 69 60  lhld    $6069
195D  3A D1 60  lda     $60D1
1960  FE FF     cpi     $FF
1962  C2 66 19  jnz     $1966
1965  23        inx     h
1966  7E        mov     a,m
1967  23        inx     h
1968  22 69 60  shld    $6069
196B  CA 71 19  jz      $1971
196E  CD 57 1B  call    $1B57
1971  F5        push    psw
1972  CD 11 24  call    $2411
1975  F1        pop     psw
1976  CD 59 1F  call    $1F59
1979  2A 69 60  lhld    $6069
197C  22 67 60  shld    $6067
197F  C3 CE 19  jmp     $19CE
1982  7E        mov     a,m
1983  32 1B 61  sta     $611B
1986  FE 64     cpi     'd'
1988  DA 3F 1A  jc      $1A3F
198B  21 79 1B  lxi     h,$1B79
198E  11 83 1B  lxi     d,$1B83
1991  06 0A     mvi     b,$0A
1993  CD D5 17  call    $17D5
1996  D2 C4 19  jnc     $19C4
1999  E9        pchl
199A  11 9B 1E  lxi     d,$1E9B
199D  21 94 1E  lxi     h,$1E94
19A0  06 07     mvi     b,$07
19A2  CD D5 17  call    $17D5
19A5  D2 C4 19  jnc     $19C4
19A8  32 10 61  sta     $6110
19AB  22 12 61  shld    $6112
19AE  CD 5A 1C  call    $1C5A
19B1  2B        dcx     h
19B2  2B        dcx     h
19B3  CD F8 20  call    $20F8
19B6  3A 10 61  lda     $6110
19B9  77        mov     m,a
19BA  CD C0 19  call    $19C0
19BD  C3 C4 19  jmp     $19C4
19C0  2A 12 61  lhld    $6112
19C3  E9        pchl
19C4  CD 65 07  call    $0765
19C7  2A 69 60  lhld    $6069
19CA  23        inx     h
19CB  22 69 60  shld    $6069
19CE  EB        xchg
19CF  E5        push    h
19D0  D5        push    d
19D1  2A E6 60  lhld    $60E6
19D4  23        inx     h
19D5  EB        xchg
19D6  2A DB 60  lhld    $60DB
19D9  CD EE 09  call    $09EE
19DC  DA 01 1A  jc      $1A01
19DF  D1        pop     d
19E0  E1        pop     h
19E1  2A 67 60  lhld    $6067
19E4  CD EE 09  call    $09EE
19E7  B5        ora     l
19E8  EB        xchg
19E9  C2 82 19  jnz     $1982
19EC  3A 66 60  lda     $6066
19EF  FE FF     cpi     $FF
19F1  C2 CE 19  jnz     $19CE
19F4  2A 69 60  lhld    $6069
19F7  2B        dcx     h
19F8  22 69 60  shld    $6069
19FB  3A 1B 61  lda     $611B
19FE  C3 86 19  jmp     $1986
1A01  D1        pop     d
1A02  E1        pop     h
1A03  C3 FF 1A  jmp     $1AFF
1A06  2A E6 60  lhld    $60E6
1A09  7E        mov     a,m
1A0A  23        inx     h
1A0B  22 E6 60  shld    $60E6
1A0E  C3 E9 17  jmp     $17E9
1A11  CD DD 0A  call    $0ADD
1A14  CD F3 0A  call    $0AF3
1A17  D2 2A 1A  jnc     $1A2A
1A1A  3A 58 60  lda     $6058
1A1D  E6 80     ani     $80
1A1F  C2 2A 1A  jnz     $1A2A
1A22  CD 09 0F  call    $0F09
1A25  33        inx     sp
1A26  33        inx     sp
1A27  C3 C4 19  jmp     $19C4
1A2A  2A 1D 60  lhld    $601D
1A2D  EB        xchg
1A2E  CD FF 0A  call    $0AFF
1A31  D0        rnc
1A32  3A 58 60  lda     $6058
1A35  E6 40     ani     '@'
1A37  C0        rnz
1A38  AF        xra     a
1A39  32 58 60  sta     $6058
1A3C  C9        ret
1A3D  3E 68     mvi     a,'h'
1A3F  32 D7 60  sta     $60D7
1A42  CD 11 1A  call    $1A11
1A45  2A E6 60  lhld    $60E6
1A48  7E        mov     a,m
1A49  FE 64     cpi     'd'
1A4B  DA 69 1A  jc      $1A69
1A4E  21 3E 1F  lxi     h,$1F3E
1A51  11 97 1B  lxi     d,$1B97
1A54  06 07     mvi     b,$07
1A56  CD D5 17  call    $17D5
1A59  D2 5D 1A  jnc     $1A5D
1A5C  E9        pchl
1A5D  11 9B 1E  lxi     d,$1E9B
1A60  CD 8A 1E  call    $1E8A
1A63  CD 5A 1C  call    $1C5A
1A66  C3 C4 19  jmp     $19C4
1A69  47        mov     b,a
1A6A  3A 51 61  lda     $6151
1A6D  B7        ora     a
1A6E  C2 98 1A  jnz     $1A98
1A71  3A D7 60  lda     $60D7
1A74  B8        cmp     b
1A75  CA 9E 1A  jz      $1A9E
1A78  78        mov     a,b
1A79  CD 06 1A  call    $1A06
1A7C  3A D7 60  lda     $60D7
1A7F  FE 68     cpi     'h'
1A81  CA A4 1A  jz      $1AA4
1A84  2A E6 60  lhld    $60E6
1A87  2B        dcx     h
1A88  77        mov     m,a
1A89  32 3F 60  sta     $603F
1A8C  21 DC 05  lxi     h,$05DC
1A8F  CD 29 08  call    $0829
1A92  CD F5 09  call    $09F5
1A95  C3 C4 19  jmp     $19C4
1A98  CD 5A 1C  call    $1C5A
1A9B  C3 7C 1A  jmp     $1A7C
1A9E  CD 5A 1C  call    $1C5A
1AA1  C3 B2 1A  jmp     $1AB2
1AA4  3A 51 61  lda     $6151
1AA7  B7        ora     a
1AA8  C2 B2 1A  jnz     $1AB2
1AAB  2A E6 60  lhld    $60E6
1AAE  2B        dcx     h
1AAF  3E 68     mvi     a,'h'
1AB1  77        mov     m,a
1AB2  CD 11 1A  call    $1A11
1AB5  CD 3C 0C  call    $0C3C
1AB8  C3 C4 19  jmp     $19C4
1ABB  3A D7 60  lda     $60D7
1ABE  CD D6 1A  call    $1AD6
1AC1  C3 CE 19  jmp     $19CE
1AC4  2A E6 60  lhld    $60E6
1AC7  7E        mov     a,m
1AC8  32 D7 60  sta     $60D7
1ACB  C6 02     adi     $02
1ACD  CD D6 1A  call    $1AD6
1AD0  CD 06 1A  call    $1A06
1AD3  C3 7C 1A  jmp     $1A7C
1AD6  32 22 60  sta     $6022
1AD9  CD 56 18  call    $1856
1ADC  3E 80     mvi     a,$80
1ADE  32 23 60  sta     $6023
1AE1  3E 02     mvi     a,$02
1AE3  32 15 60  sta     $6015
1AE6  C9        ret
1AE7  2A 2E 60  lhld    $602E
1AEA  EB        xchg
1AEB  2A CD 60  lhld    $60CD
1AEE  AF        xra     a
1AEF  CD 13 1F  call    $1F13
1AF2  2A 1D 60  lhld    $601D
1AF5  EB        xchg
1AF6  2A CF 60  lhld    $60CF
1AF9  C3 B0 20  jmp     $20B0
1AFC  CD E7 1A  call    $1AE7
1AFF  F3        di
1B00  AF        xra     a
1B01  32 66 60  sta     $6066
1B04  2F        cma
1B05  32 3F 60  sta     $603F
1B08  2A DB 60  lhld    $60DB
1B0B  22 67 60  shld    $6067
1B0E  22 69 60  shld    $6069
1B11  3A C9 60  lda     $60C9
1B14  32 1F 60  sta     $601F
1B17  3A CB 60  lda     $60CB
1B1A  32 30 60  sta     $6030
1B1D  FB        ei
1B1E  2A DD 60  lhld    $60DD
1B21  22 59 60  shld    $6059
1B24  3A DF 60  lda     $60DF
1B27  32 5B 60  sta     $605B
1B2A  CD 24 0F  call    $0F24
1B2D  CD 34 0F  call    $0F34
1B30  CD 44 0F  call    $0F44
1B33  AF        xra     a
1B34  32 D1 60  sta     $60D1
1B37  32 58 60  sta     $6058
1B3A  32 51 61  sta     $6151
1B3D  C9        ret
1B3E  3A 1F 60  lda     $601F
1B41  32 C9 60  sta     $60C9
1B44  3A 30 60  lda     $6030
1B47  32 CB 60  sta     $60CB
1B4A  2A 2E 60  lhld    $602E
1B4D  22 CD 60  shld    $60CD
1B50  2A 1D 60  lhld    $601D
1B53  22 CF 60  shld    $60CF
1B56  C9        ret
1B57  F5        push    psw
1B58  CD 3E 1B  call    $1B3E
1B5B  3E FF     mvi     a,$FF
1B5D  32 D1 60  sta     $60D1
1B60  2A 69 60  lhld    $6069
1B63  2B        dcx     h
1B64  2B        dcx     h
1B65  22 DB 60  shld    $60DB
1B68  22 E6 60  shld    $60E6
1B6B  2A 59 60  lhld    $6059
1B6E  22 DD 60  shld    $60DD
1B71  3A 5B 60  lda     $605B
1B74  32 DF 60  sta     $60DF
1B77  F1        pop     psw
1B78  C9        ret
1B79  68        mov     l,b
1B7A  98        sbb     b
1B7B  78        mov     a,b
1B7C  64        mov     h,h
1B7D  75        mov     m,l
1B7E  65        mov     h,l
1B7F  8C        adc     h
1B80  77        mov     m,a
1B81  7A        mov     a,d
1B82  6A        mov     l,d
1B83  3D        dcr     a
1B84  1A        ldax    d
1B85  5A        mov     e,d
1B86  19        dad
1B87  FC 1A F7  cm      $F71A
1B8A  1C        inr     e
1B8B  48        mov     c,b
1B8C  1D        dcr     e
1B8D  ED 1B D4  call    $D41B        ;Note: Alternative opcode used
1B90  1B        dcx     d
1B91  C8        rz
1B92  1B        dcx     d
1B93  CE 1B     aci     $1B
1B95  90        sub     b
1B96  1C        inr     e
1B97  E2 1B 48  jpo     $481B
1B9A  22 A5 1B  shld    $1BA5
1B9D  5D        mov     e,l
1B9E  1A        ldax    d
1B9F  E1        pop     h
1BA0  1D        dcr     e
1BA1  F8        rm
1BA2  1D        dcr     e
1BA3  B7        ora     a
1BA4  1D        dcr     e
1BA5  2A E6 60  lhld    $60E6
1BA8  23        inx     h
1BA9  5E        mov     e,m
1BAA  23        inx     h
1BAB  56        mov     d,m
1BAC  E5        push    h
1BAD  3A 1F 60  lda     $601F
1BB0  6F        mov     l,a
1BB1  26 00     mvi     h,$00
1BB3  19        dad
1BB4  EB        xchg
1BB5  E1        pop     h
1BB6  72        mov     m,d
1BB7  2B        dcx     h
1BB8  73        mov     m,e
1BB9  CD 5A 1C  call    $1C5A
1BBC  2B        dcx     h
1BBD  2B        dcx     h
1BBE  CD F8 20  call    $20F8
1BC1  23        inx     h
1BC2  22 E6 60  shld    $60E6
1BC5  C3 7C 1A  jmp     $1A7C
1BC8  CD BB 0B  call    $0BBB
1BCB  C3 C4 19  jmp     $19C4
1BCE  CD E4 0B  call    $0BE4
1BD1  C3 C4 19  jmp     $19C4
1BD4  3A 58 60  lda     $6058
1BD7  F6 80     ori     $80
1BD9  32 58 60  sta     $6058
1BDC  CD 09 0F  call    $0F09
1BDF  C3 C4 19  jmp     $19C4
1BE2  3A D7 60  lda     $60D7
1BE5  FE 68     cpi     'h'
1BE7  CA 4E 1C  jz      $1C4E
1BEA  C3 54 1C  jmp     $1C54
1BED  2A 69 60  lhld    $6069
1BF0  36 FA     mvi     m,$FA
1BF2  F3        di
1BF3  23        inx     h
1BF4  22 67 60  shld    $6067
1BF7  FB        ei
1BF8  36 FA     mvi     m,$FA
1BFA  2A E6 60  lhld    $60E6
1BFD  7E        mov     a,m
1BFE  FE 65     cpi     'e'
1C00  CA 13 1C  jz      $1C13
1C03  EB        xchg
1C04  2A DB 60  lhld    $60DB
1C07  CD EE 09  call    $09EE
1C0A  B5        ora     l
1C0B  CA FC 1A  jz      $1AFC
1C0E  EB        xchg
1C0F  23        inx     h
1C10  C3 FD 1B  jmp     $1BFD
1C13  23        inx     h
1C14  23        inx     h
1C15  23        inx     h
1C16  5E        mov     e,m
1C17  23        inx     h
1C18  56        mov     d,m
1C19  23        inx     h
1C1A  22 E6 60  shld    $60E6
1C1D  2A 1D 60  lhld    $601D
1C20  EB        xchg
1C21  CD 68 0D  call    $0D68
1C24  32 15 60  sta     $6015
1C27  CD 39 08  call    $0839
1C2A  2A E6 60  lhld    $60E6
1C2D  5E        mov     e,m
1C2E  23        inx     h
1C2F  56        mov     d,m
1C30  23        inx     h
1C31  23        inx     h
1C32  22 E6 60  shld    $60E6
1C35  EB        xchg
1C36  22 31 60  shld    $6031
1C39  3E 01     mvi     a,$01
1C3B  32 15 60  sta     $6015
1C3E  CD 39 08  call    $0839
1C41  C3 C4 19  jmp     $19C4
1C44  22 67 60  shld    $6067
1C47  2B        dcx     h
1C48  22 69 60  shld    $6069
1C4B  C3 C4 19  jmp     $19C4
1C4E  CD 5A 1C  call    $1C5A
1C51  C3 B2 1A  jmp     $1AB2
1C54  CD 5A 1C  call    $1C5A
1C57  C3 7C 1A  jmp     $1A7C
1C5A  2A E6 60  lhld    $60E6
1C5D  23        inx     h
1C5E  22 E6 60  shld    $60E6
1C61  C9        ret
1C62  2A 1D 60  lhld    $601D
1C65  EB        xchg
1C66  2A 1F 60  lhld    $601F
1C69  19        dad
1C6A  79        mov     a,c
1C6B  32 D9 60  sta     $60D9
1C6E  22 D7 60  shld    $60D7
1C71  EB        xchg
1C72  2A E6 60  lhld    $60E6
1C75  CD E8 20  call    $20E8
1C78  3A D9 60  lda     $60D9
1C7B  4F        mov     c,a
1C7C  71        mov     m,c
1C7D  23        inx     h
1C7E  22 E6 60  shld    $60E6
1C81  23        inx     h
1C82  73        mov     m,e
1C83  23        inx     h
1C84  72        mov     m,d
1C85  C3 E2 1B  jmp     $1BE2
1C88  CD B7 1C  call    $1CB7
1C8B  3E 6A     mvi     a,'j'
1C8D  32 1B 61  sta     $611B
1C90  2A E6 60  lhld    $60E6
1C93  CD 06 21  call    $2106
1C96  DA 45 1E  jc      $1E45
1C99  CD 4B 1E  call    $1E4B
1C9C  7E        mov     a,m
1C9D  FE 64     cpi     'd'
1C9F  DA 86 1D  jc      $1D86
1CA2  06 07     mvi     b,$07
1CA4  21 3E 1F  lxi     h,$1F3E
1CA7  11 3A 1D  lxi     d,$1D3A
1CAA  CD D5 17  call    $17D5
1CAD  D2 B1 1C  jnc     $1CB1
1CB0  E9        pchl
1CB1  CD 87 1E  call    $1E87
1CB4  C3 C4 19  jmp     $19C4
1CB7  2A 69 60  lhld    $6069
1CBA  36 FA     mvi     m,$FA
1CBC  23        inx     h
1CBD  22 69 60  shld    $6069
1CC0  CD 57 1B  call    $1B57
1CC3  2A E6 60  lhld    $60E6
1CC6  36 FA     mvi     m,$FA
1CC8  22 E6 60  shld    $60E6
1CCB  23        inx     h
1CCC  F3        di
1CCD  22 69 60  shld    $6069
1CD0  23        inx     h
1CD1  22 67 60  shld    $6067
1CD4  FB        ei
1CD5  C9        ret
1CD6  CD B7 1C  call    $1CB7
1CD9  3E 64     mvi     a,'d'
1CDB  32 1B 61  sta     $611B
1CDE  3E FF     mvi     a,$FF
1CE0  32 51 61  sta     $6151
1CE3  C3 F7 1C  jmp     $1CF7
1CE6  2A 69 60  lhld    $6069
1CE9  23        inx     h
1CEA  22 69 60  shld    $6069
1CED  3E 01     mvi     a,$01
1CEF  32 46 61  sta     $6146
1CF2  3E 65     mvi     a,'e'
1CF4  C3 6E 19  jmp     $196E
1CF7  2A E6 60  lhld    $60E6
1CFA  CD 06 21  call    $2106
1CFD  DA 45 1E  jc      $1E45
1D00  CD 4B 1E  call    $1E4B
1D03  7E        mov     a,m
1D04  FE 64     cpi     'd'
1D06  DA 86 1D  jc      $1D86
1D09  06 07     mvi     b,$07
1D0B  21 3E 1F  lxi     h,$1F3E
1D0E  11 1E 1D  lxi     d,$1D1E
1D11  CD D5 17  call    $17D5
1D14  D2 18 1D  jnc     $1D18
1D17  E9        pchl
1D18  CD 87 1E  call    $1E87
1D1B  C3 C4 19  jmp     $19C4
1D1E  86        add     m
1D1F  1D        dcr     e
1D20  4C        mov     c,h
1D21  21 86 1D  lxi     h,$1D86
1D24  86        add     m
1D25  1D        dcr     e
1D26  D5        push    d
1D27  1D        dcr     e
1D28  DB 1D     in      $1D
1D2A  B5        ora     l
1D2B  1A        ldax    d
1D2C  BA        cmp     d
1D2D  1D        dcr     e
1D2E  0B        dcx     b
1D2F  22 CF 1D  shld    $1DCF
1D32  CF        rst     1
1D33  1D        dcr     e
1D34  D5        push    d
1D35  1D        dcr     e
1D36  DB 1D     in      $1D
1D38  B5        ora     l
1D39  1A        ldax    d
1D3A  86        add     m
1D3B  1D        dcr     e
1D3C  53        mov     d,e
1D3D  1E 75     mvi     e,'u'
1D3F  1E 42     mvi     e,'B'
1D41  1E D5     mvi     e,$D5
1D43  1D        dcr     e
1D44  DB 1D     in      $1D
1D46  B5        ora     l
1D47  1A        ldax    d
1D48  2A E6 60  lhld    $60E6
1D4B  CD 06 21  call    $2106
1D4E  DA 45 1E  jc      $1E45
1D51  CD 4B 1E  call    $1E4B
1D54  7E        mov     a,m
1D55  32 E0 60  sta     $60E0
1D58  FE 64     cpi     'd'
1D5A  DA 78 1D  jc      $1D78
1D5D  21 3E 1F  lxi     h,$1F3E
1D60  11 2C 1D  lxi     d,$1D2C
1D63  06 07     mvi     b,$07
1D65  CD D5 17  call    $17D5
1D68  D2 6C 1D  jnc     $1D6C
1D6B  E9        pchl
1D6C  CD 87 1E  call    $1E87
1D6F  2A E6 60  lhld    $60E6
1D72  3E F0     mvi     a,$F0
1D74  77        mov     m,a
1D75  C3 C4 19  jmp     $19C4
1D78  36 68     mvi     m,'h'
1D7A  CD C0 1D  call    $1DC0
1D7D  3A E0 60  lda     $60E0
1D80  CD E9 17  call    $17E9
1D83  C3 C4 19  jmp     $19C4
1D86  CD C3 21  call    $21C3
1D89  CA 0F 1E  jz      $1E0F
1D8C  3A 1F 60  lda     $601F
1D8F  5F        mov     e,a
1D90  16 00     mvi     d,$00
1D92  2A 1D 60  lhld    $601D
1D95  CD EE 09  call    $09EE
1D98  EB        xchg
1D99  2A 4F 60  lhld    $604F
1D9C  EB        xchg
1D9D  CD EE 09  call    $09EE
1DA0  DA AC 1D  jc      $1DAC
1DA3  CD 9D 21  call    $219D
1DA6  CD 7D 0C  call    $0C7D
1DA9  C3 C4 19  jmp     $19C4
1DAC  3A 58 60  lda     $6058
1DAF  E6 80     ani     $80
1DB1  CA 42 1E  jz      $1E42
1DB4  C3 A6 1D  jmp     $1DA6
1DB7  CD 5A 1C  call    $1C5A
1DBA  CD C0 1D  call    $1DC0
1DBD  C3 C4 19  jmp     $19C4
1DC0  3A 1F 60  lda     $601F
1DC3  5F        mov     e,a
1DC4  16 00     mvi     d,$00
1DC6  2A 1D 60  lhld    $601D
1DC9  CD EE 09  call    $09EE
1DCC  C3 A9 0C  jmp     $0CA9
1DCF  CD 5A 1C  call    $1C5A
1DD2  C3 C4 19  jmp     $19C4
1DD5  CD 2F 0C  call    $0C2F
1DD8  C3 C4 19  jmp     $19C4
1DDB  CD 14 0C  call    $0C14
1DDE  C3 C4 19  jmp     $19C4
1DE1  3A D7 60  lda     $60D7
1DE4  FE 68     cpi     'h'
1DE6  CA F2 1D  jz      $1DF2
1DE9  CD 14 0C  call    $0C14
1DEC  CD 5A 1C  call    $1C5A
1DEF  C3 45 1A  jmp     $1A45
1DF2  CD 14 0C  call    $0C14
1DF5  C3 CF 1D  jmp     $1DCF
1DF8  3A D7 60  lda     $60D7
1DFB  FE 68     cpi     'h'
1DFD  CA 09 1E  jz      $1E09
1E00  CD 2F 0C  call    $0C2F
1E03  CD 5A 1C  call    $1C5A
1E06  C3 45 1A  jmp     $1A45
1E09  CD 2F 0C  call    $0C2F
1E0C  C3 CF 1D  jmp     $1DCF
1E0F  3A 58 60  lda     $6058
1E12  E6 80     ani     $80
1E14  CA 42 1E  jz      $1E42
1E17  3A 1F 60  lda     $601F
1E1A  6F        mov     l,a
1E1B  26 00     mvi     h,$00
1E1D  EB        xchg
1E1E  2A 1D 60  lhld    $601D
1E21  AF        xra     a
1E22  CD EE 09  call    $09EE
1E25  DA 42 1E  jc      $1E42
1E28  E5        push    h
1E29  2A E6 60  lhld    $60E6
1E2C  CD F8 20  call    $20F8
1E2F  36 68     mvi     m,'h'
1E31  22 E6 60  shld    $60E6
1E34  2B        dcx     h
1E35  2B        dcx     h
1E36  2B        dcx     h
1E37  2B        dcx     h
1E38  2B        dcx     h
1E39  EB        xchg
1E3A  E1        pop     h
1E3B  EB        xchg
1E3C  73        mov     m,e
1E3D  23        inx     h
1E3E  72        mov     m,d
1E3F  C3 BA 1D  jmp     $1DBA
1E42  CD 5A 1C  call    $1C5A
1E45  CD 09 0F  call    $0F09
1E48  C3 C4 19  jmp     $19C4
1E4B  2A E6 60  lhld    $60E6
1E4E  2B        dcx     h
1E4F  22 E6 60  shld    $60E6
1E52  C9        ret
1E53  2A E6 60  lhld    $60E6
1E56  2B        dcx     h
1E57  56        mov     d,m
1E58  2B        dcx     h
1E59  5E        mov     e,m
1E5A  2B        dcx     h
1E5B  22 E6 60  shld    $60E6
1E5E  2A 1D 60  lhld    $601D
1E61  CD EE 09  call    $09EE
1E64  EB        xchg
1E65  2A 1D 60  lhld    $601D
1E68  EB        xchg
1E69  CD 68 0D  call    $0D68
1E6C  32 15 60  sta     $6015
1E6F  CD 39 08  call    $0839
1E72  C3 C4 19  jmp     $19C4
1E75  2A E6 60  lhld    $60E6
1E78  2B        dcx     h
1E79  CD 25 19  call    $1925
1E7C  22 E6 60  shld    $60E6
1E7F  60        mov     h,b
1E80  69        mov     l,c
1E81  CD B0 20  call    $20B0
1E84  C3 C4 19  jmp     $19C4
1E87  11 A9 1E  lxi     d,$1EA9
1E8A  21 94 1E  lxi     h,$1E94
1E8D  06 07     mvi     b,$07
1E8F  CD D5 17  call    $17D5
1E92  D0        rnc
1E93  E9        pchl
1E94  7C        mov     a,h
1E95  7D        mov     a,l
1E96  87        add     a
1E97  89        adc     c
1E98  88        adc     b
1E99  85        add     l
1E9A  84        add     h
1E9B  78        mov     a,b
1E9C  0E E5     mvi     c,$E5
1E9E  0D        dcr     c
1E9F  3F        cmc
1EA0  0E 4F     mvi     c,'O'
1EA2  0E 34     mvi     c,$34
1EA4  0E 44     mvi     c,'D'
1EA6  0E A7     mvi     c,$A7
1EA8  0E B7     mvi     c,$B7
1EAA  1E CF     mvi     e,$CF
1EAC  1E 3F     mvi     e,$3F
1EAE  0E 4F     mvi     c,'O'
1EB0  0E 34     mvi     c,$34
1EB2  0E 44     mvi     c,'D'
1EB4  0E C3     mvi     c,$C3
1EB6  1E 3A     mvi     e,$3A
1EB8  5B        mov     e,e
1EB9  60        mov     h,b
1EBA  CD F2 1E  call    $1EF2
1EBD  32 5B 60  sta     $605B
1EC0  C3 78 0E  jmp     $0E78
1EC3  3A 59 60  lda     $6059
1EC6  CD F2 1E  call    $1EF2
1EC9  32 59 60  sta     $6059
1ECC  C3 A7 0E  jmp     $0EA7
1ECF  3A 5A 60  lda     $605A
1ED2  47        mov     b,a
1ED3  F6 07     ori     $07
1ED5  4F        mov     c,a
1ED6  78        mov     a,b
1ED7  0F        rrc
1ED8  DA E0 1E  jc      $1EE0
1EDB  3E FD     mvi     a,$FD
1EDD  C3 EB 1E  jmp     $1EEB
1EE0  0F        rrc
1EE1  DA E9 1E  jc      $1EE9
1EE4  3E FB     mvi     a,$FB
1EE6  C3 EB 1E  jmp     $1EEB
1EE9  3E FE     mvi     a,$FE
1EEB  A1        ana     c
1EEC  32 5A 60  sta     $605A
1EEF  C3 E5 0D  jmp     $0DE5
1EF2  47        mov     b,a
1EF3  F6 07     ori     $07
1EF5  4F        mov     c,a
1EF6  78        mov     a,b
1EF7  0F        rrc
1EF8  DA 00 1F  jc      $1F00
1EFB  3E FD     mvi     a,$FD
1EFD  C3 0B 1F  jmp     $1F0B
1F00  0F        rrc
1F01  DA 09 1F  jc      $1F09
1F04  3E FB     mvi     a,$FB
1F06  C3 0B 1F  jmp     $1F0B
1F09  3E FE     mvi     a,$FE
1F0B  A1        ana     c
1F0C  C9        ret
1F0D  7C        mov     a,h
1F0E  BA        cmp     d
1F0F  C0        rnz
1F10  7D        mov     a,l
1F11  BB        cmp     e
1F12  C9        ret
1F13  F5        push    psw
1F14  CD EE 09  call    $09EE
1F17  DA 30 1F  jc      $1F30
1F1A  B5        ora     l
1F1B  CA 29 1F  jz      $1F29
1F1E  F1        pop     psw
1F1F  B4        ora     h
1F20  67        mov     h,a
1F21  22 31 60  shld    $6031
1F24  3E 01     mvi     a,$01
1F26  C3 2C 1F  jmp     $1F2C
1F29  F1        pop     psw
1F2A  3E 00     mvi     a,$00
1F2C  32 15 60  sta     $6015
1F2F  C9        ret
1F30  F1        pop     psw
1F31  2A CD 60  lhld    $60CD
1F34  EB        xchg
1F35  CD EE 09  call    $09EE
1F38  7C        mov     a,h
1F39  F6 80     ori     $80
1F3B  C3 20 1F  jmp     $1F20
1F3E  68        mov     l,b
1F3F  A3        ana     e
1F40  65        mov     h,l
1F41  FF        rst     7
1F42  67        mov     h,a
1F43  6B        mov     l,e
1F44  64        mov     h,h
1F45  53        mov     d,e
1F46  1F        rar
1F47  57        mov     d,a
1F48  22 26 20  shld    $2026
1F4B  5A        mov     e,d
1F4C  1C        inr     e
1F4D  F3        di
1F4E  1F        rar
1F4F  FF        rst     7
1F50  1F        rar
1F51  16 20     mvi     d,$20
1F53  CD 06 20  call    $2006
1F56  C3 8D 1F  jmp     $1F8D
1F59  32 E8 60  sta     $60E8
1F5C  2A E6 60  lhld    $60E6
1F5F  22 47 61  shld    $6147
1F62  2A 1D 60  lhld    $601D
1F65  22 E4 60  shld    $60E4
1F68  2A 2E 60  lhld    $602E
1F6B  22 E2 60  shld    $60E2
1F6E  2A E6 60  lhld    $60E6
1F71  2B        dcx     h
1F72  7E        mov     a,m
1F73  FE 65     cpi     'e'
1F75  C2 8D 1F  jnz     $1F8D
1F78  22 E6 60  shld    $60E6
1F7B  E5        push    h
1F7C  CD 06 20  call    $2006
1F7F  E1        pop     h
1F80  C3 C7 1F  jmp     $1FC7
1F83  CD 09 0F  call    $0F09
1F86  2A 47 61  lhld    $6147
1F89  22 E6 60  shld    $60E6
1F8C  C9        ret
1F8D  2A E6 60  lhld    $60E6
1F90  CD 06 21  call    $2106
1F93  DA 83 1F  jc      $1F83
1F96  3A 46 61  lda     $6146
1F99  B7        ora     a
1F9A  CA AC 1F  jz      $1FAC
1F9D  2A E6 60  lhld    $60E6
1FA0  2B        dcx     h
1FA1  7E        mov     a,m
1FA2  FE 67     cpi     'g'
1FA4  CA 4D 20  jz      $204D
1FA7  FE 6B     cpi     'k'
1FA9  CA 4D 20  jz      $204D
1FAC  2A E6 60  lhld    $60E6
1FAF  2B        dcx     h
1FB0  22 E6 60  shld    $60E6
1FB3  4E        mov     c,m
1FB4  3A E8 60  lda     $60E8
1FB7  B9        cmp     c
1FB8  CA 4D 20  jz      $204D
1FBB  0E 68     mvi     c,'h'
1FBD  B9        cmp     c
1FBE  C2 C7 1F  jnz     $1FC7
1FC1  7E        mov     a,m
1FC2  FE A3     cpi     $A3
1FC4  CA C1 20  jz      $20C1
1FC7  7E        mov     a,m
1FC8  FE 64     cpi     'd'
1FCA  DA 53 1F  jc      $1F53
1FCD  FE FF     cpi     $FF
1FCF  CA 5A 1C  jz      $1C5A
1FD2  21 3E 1F  lxi     h,$1F3E
1FD5  11 45 1F  lxi     d,$1F45
1FD8  06 07     mvi     b,$07
1FDA  CD D5 17  call    $17D5
1FDD  D2 E1 1F  jnc     $1FE1
1FE0  E9        pchl
1FE1  CD 87 1E  call    $1E87
1FE4  C3 8D 1F  jmp     $1F8D
1FE7  3A 30 60  lda     $6030
1FEA  0F        rrc
1FEB  6F        mov     l,a
1FEC  26 00     mvi     h,$00
1FEE  EB        xchg
1FEF  2A E2 60  lhld    $60E2
1FF2  C9        ret
1FF3  CD E7 1F  call    $1FE7
1FF6  CD EE 09  call    $09EE
1FF9  22 E2 60  shld    $60E2
1FFC  C3 8D 1F  jmp     $1F8D
1FFF  CD E7 1F  call    $1FE7
2002  19        dad
2003  C3 F9 1F  jmp     $1FF9
2006  3A 1F 60  lda     $601F
2009  5F        mov     e,a
200A  16 00     mvi     d,$00
200C  2A E4 60  lhld    $60E4
200F  CD EE 09  call    $09EE
2012  22 E4 60  shld    $60E4
2015  C9        ret
2016  3A 1F 60  lda     $601F
2019  5F        mov     e,a
201A  16 00     mvi     d,$00
201C  2A E4 60  lhld    $60E4
201F  19        dad
2020  22 E4 60  shld    $60E4
2023  C3 8D 1F  jmp     $1F8D
2026  CD 2C 20  call    $202C
2029  C3 8D 1F  jmp     $1F8D
202C  2A E6 60  lhld    $60E6
202F  2B        dcx     h
2030  56        mov     d,m
2031  2B        dcx     h
2032  5E        mov     e,m
2033  E5        push    h
2034  2A E2 60  lhld    $60E2
2037  CD EE 09  call    $09EE
203A  22 E2 60  shld    $60E2
203D  E1        pop     h
203E  2B        dcx     h
203F  2B        dcx     h
2040  2B        dcx     h
2041  56        mov     d,m
2042  2B        dcx     h
2043  5E        mov     e,m
2044  2B        dcx     h
2045  22 E6 60  shld    $60E6
2048  EB        xchg
2049  22 E4 60  shld    $60E4
204C  C9        ret
204D  3A 46 61  lda     $6146
2050  B7        ora     a
2051  CA 61 20  jz      $2061
2054  3A 1F 60  lda     $601F
2057  5F        mov     e,a
2058  16 00     mvi     d,$00
205A  2A E4 60  lhld    $60E4
205D  19        dad
205E  22 E4 60  shld    $60E4
2061  AF        xra     a
2062  32 57 60  sta     $6057
2065  2A E6 60  lhld    $60E6
2068  7E        mov     a,m
2069  FE 65     cpi     'e'
206B  C2 82 20  jnz     $2082
206E  3A 46 61  lda     $6146
2071  B7        ora     a
2072  C2 7B 20  jnz     $207B
2075  CD 2C 20  call    $202C
2078  C3 85 20  jmp     $2085
207B  2A E6 60  lhld    $60E6
207E  23        inx     h
207F  22 E6 60  shld    $60E6
2082  CD 06 20  call    $2006
2085  2A E2 60  lhld    $60E2
2088  AF        xra     a
2089  32 46 61  sta     $6146
208C  EB        xchg
208D  2A 2E 60  lhld    $602E
2090  3E 80     mvi     a,$80
2092  CD 13 1F  call    $1F13
2095  2A 1D 60  lhld    $601D
2098  EB        xchg
2099  2A E4 60  lhld    $60E4
209C  CD B0 20  call    $20B0
209F  2A 1D 60  lhld    $601D
20A2  EB        xchg
20A3  CD FF 0A  call    $0AFF
20A6  D0        rnc
20A7  3A 58 60  lda     $6058
20AA  E6 7F     ani     $7F
20AC  32 58 60  sta     $6058
20AF  C9        ret
20B0  3A 15 60  lda     $6015
20B3  F5        push    psw
20B4  CD 68 0D  call    $0D68
20B7  4F        mov     c,a
20B8  F1        pop     psw
20B9  B1        ora     c
20BA  C8        rz
20BB  32 15 60  sta     $6015
20BE  C3 39 08  jmp     $0839
20C1  23        inx     h
20C2  22 E6 60  shld    $60E6
20C5  C3 85 20  jmp     $2085
20C8  2A 67 60  lhld    $6067
20CB  22 4A 61  shld    $614A
20CE  2A E6 60  lhld    $60E6
20D1  EB        xchg
20D2  2A 4A 61  lhld    $614A
20D5  2B        dcx     h
20D6  22 4A 61  shld    $614A
20D9  AF        xra     a
20DA  CD EE 09  call    $09EE
20DD  44        mov     b,h
20DE  4D        mov     c,l
20DF  EB        xchg
20E0  23        inx     h
20E1  E5        push    h
20E2  23        inx     h
20E3  EB        xchg
20E4  E1        pop     h
20E5  C3 4B 18  jmp     $184B
20E8  7E        mov     a,m
20E9  23        inx     h
20EA  77        mov     m,a
20EB  2B        dcx     h
20EC  2B        dcx     h
20ED  E5        push    h
20EE  CD EE 09  call    $09EE
20F1  B5        ora     l
20F2  E1        pop     h
20F3  C2 E8 20  jnz     $20E8
20F6  23        inx     h
20F7  C9        ret
20F8  EB        xchg
20F9  2A DB 60  lhld    $60DB
20FC  23        inx     h
20FD  22 DB 60  shld    $60DB
2100  C3 E8 20  jmp     $20E8
2103  2A 69 60  lhld    $6069
2106  3A 49 61  lda     $6149
2109  FE FF     cpi     $FF
210B  37        stc
210C  3F        cmc
210D  C0        rnz
210E  11 09 00  lxi     d,$0009
2111  CD EE 09  call    $09EE
2114  EB        xchg
2115  2A 0E 61  lhld    $610E
2118  EB        xchg
2119  C3 EE 09  jmp     $09EE
211C  2B        dcx     h
211D  56        mov     d,m
211E  2B        dcx     h
211F  5E        mov     e,m
2120  E5        push    h
2121  3A 1F 60  lda     $601F
2124  26 00     mvi     h,$00
2126  6F        mov     l,a
2127  EB        xchg
2128  AF        xra     a
2129  CD EE 09  call    $09EE
212C  DA 39 21  jc      $2139
212F  EB        xchg
2130  E1        pop     h
2131  73        mov     m,e
2132  23        inx     h
2133  72        mov     m,d
2134  23        inx     h
2135  3A 1F 60  lda     $601F
2138  C9        ret
2139  E1        pop     h
213A  5E        mov     e,m
213B  23        inx     h
213C  56        mov     d,m
213D  7B        mov     a,e
213E  B2        ora     d
213F  E5        push    h
2140  CA 49 21  jz      $2149
2143  36 00     mvi     m,$00
2145  2B        dcx     h
2146  36 00     mvi     m,$00
2148  7B        mov     a,e
2149  E1        pop     h
214A  23        inx     h
214B  C9        ret
214C  2A E6 60  lhld    $60E6
214F  2B        dcx     h
2150  56        mov     d,m
2151  2B        dcx     h
2152  5E        mov     e,m
2153  2B        dcx     h
2154  CD C9 21  call    $21C9
2157  CA D1 21  jz      $21D1
215A  2A E6 60  lhld    $60E6
215D  CD 1C 21  call    $211C
2160  B7        ora     a
2161  CA 87 21  jz      $2187
2164  E5        push    h
2165  F5        push    psw
2166  CD 9D 21  call    $219D
2169  F1        pop     psw
216A  CD 80 0C  call    $0C80
216D  E1        pop     h
216E  CD F8 20  call    $20F8
2171  36 68     mvi     m,'h'
2173  22 E6 60  shld    $60E6
2176  2A 69 60  lhld    $6069
2179  23        inx     h
217A  22 69 60  shld    $6069
217D  2A 67 60  lhld    $6067
2180  23        inx     h
2181  22 67 60  shld    $6067
2184  C3 C4 19  jmp     $19C4
2187  2B        dcx     h
2188  2B        dcx     h
2189  2B        dcx     h
218A  CD C9 21  call    $21C9
218D  CA 97 21  jz      $2197
2190  23        inx     h
2191  22 E6 60  shld    $60E6
2194  C3 F7 1C  jmp     $1CF7
2197  22 E6 60  shld    $60E6
219A  C3 0F 1E  jmp     $1E0F
219D  3A 58 60  lda     $6058
21A0  B7        ora     a
21A1  C8        rz
21A2  2A 1D 60  lhld    $601D
21A5  EB        xchg
21A6  CD F3 0A  call    $0AF3
21A9  D8        rc
21AA  3A 57 60  lda     $6057
21AD  E6 FD     ani     $FD
21AF  32 57 60  sta     $6057
21B2  3A 58 60  lda     $6058
21B5  E6 7F     ani     $7F
21B7  32 58 60  sta     $6058
21BA  CD F9 0A  call    $0AF9
21BD  D8        rc
21BE  AF        xra     a
21BF  32 58 60  sta     $6058
21C2  C9        ret
21C3  2A E6 60  lhld    $60E6
21C6  C3 CA 21  jmp     $21CA
21C9  2B        dcx     h
21CA  7E        mov     a,m
21CB  FE 65     cpi     'e'
21CD  C8        rz
21CE  FE FF     cpi     $FF
21D0  C9        ret
21D1  3A 1F 60  lda     $601F
21D4  6F        mov     l,a
21D5  26 00     mvi     h,$00
21D7  AF        xra     a
21D8  CD EE 09  call    $09EE
21DB  DA 5A 21  jc      $215A
21DE  B5        ora     l
21DF  CA 5A 21  jz      $215A
21E2  3A 58 60  lda     $6058
21E5  E6 80     ani     $80
21E7  C2 5A 21  jnz     $215A
21EA  C3 42 1E  jmp     $1E42
21ED  2A 69 60  lhld    $6069
21F0  CD 1C 21  call    $211C
21F3  B7        ora     a
21F4  CA 05 22  jz      $2205
21F7  CD C3 1D  call    $1DC3
21FA  2A 69 60  lhld    $6069
21FD  23        inx     h
21FE  22 69 60  shld    $6069
2201  22 67 60  shld    $6067
2204  C9        ret
2205  2B        dcx     h
2206  2B        dcx     h
2207  2B        dcx     h
2208  C3 FE 21  jmp     $21FE
220B  2A E6 60  lhld    $60E6
220E  CD 1C 21  call    $211C
2211  B7        ora     a
2212  CA 25 22  jz      $2225
2215  E5        push    h
2216  CD C3 1D  call    $1DC3
2219  E1        pop     h
221A  CD F8 20  call    $20F8
221D  36 68     mvi     m,'h'
221F  22 E6 60  shld    $60E6
2222  C3 C4 19  jmp     $19C4
2225  2B        dcx     h
2226  2B        dcx     h
2227  2B        dcx     h
2228  22 E6 60  shld    $60E6
222B  C3 48 1D  jmp     $1D48
222E  2A E6 60  lhld    $60E6
2231  23        inx     h
2232  23        inx     h
2233  23        inx     h
2234  CD 1C 21  call    $211C
2237  B7        ora     a
2238  CA 4E 22  jz      $224E
223B  2A E6 60  lhld    $60E6
223E  2B        dcx     h
223F  CD F8 20  call    $20F8
2242  36 68     mvi     m,'h'
2244  22 E6 60  shld    $60E6
2247  C9        ret
2248  CD 2E 22  call    $222E
224B  C3 E2 1B  jmp     $1BE2
224E  33        inx     sp
224F  33        inx     sp
2250  23        inx     h
2251  22 E6 60  shld    $60E6
2254  C3 C4 19  jmp     $19C4
2257  2A E6 60  lhld    $60E6
225A  2B        dcx     h
225B  56        mov     d,m
225C  2B        dcx     h
225D  5E        mov     e,m
225E  2B        dcx     h
225F  22 E6 60  shld    $60E6
2262  2A E4 60  lhld    $60E4
2265  CD EE 09  call    $09EE
2268  22 E4 60  shld    $60E4
226B  2A E6 60  lhld    $60E6
226E  2B        dcx     h
226F  7E        mov     a,m
2270  FE 65     cpi     'e'
2272  CA 82 22  jz      $2282
2275  FE 67     cpi     'g'
2277  CA 82 22  jz      $2282
227A  FE 6B     cpi     'k'
227C  CA 82 22  jz      $2282
227F  C3 8D 1F  jmp     $1F8D
2282  CD 2E 22  call    $222E
2285  3A 46 61  lda     $6146
2288  B7        ora     a
2289  C2 4D 20  jnz     $204D
228C  2A E4 60  lhld    $60E4
228F  3A 1F 60  lda     $601F
2292  5F        mov     e,a
2293  16 00     mvi     d,$00
2295  19        dad
2296  22 E4 60  shld    $60E4
2299  C3 4D 20  jmp     $204D
229C  3A 49 61  lda     $6149
229F  B7        ora     a
22A0  C2 F4 22  jnz     $22F4
22A3  3A EF 60  lda     $60EF
22A6  3E FF     mvi     a,$FF
22A8  32 EF 60  sta     $60EF
22AB  3A 4C 61  lda     $614C
22AE  F6 02     ori     $02
22B0  32 4C 61  sta     $614C
22B3  21 42 61  lxi     h,$6142
22B6  C3 B7 25  jmp     $25B7
22B9  3A 4C 61  lda     $614C
22BC  E6 FD     ani     $FD
22BE  32 4C 61  sta     $614C
22C1  F3        di
22C2  2A 69 60  lhld    $6069
22C5  2B        dcx     h
22C6  3A 4C 61  lda     $614C
22C9  B7        ora     a
22CA  C2 FE 22  jnz     $22FE
22CD  3E 01     mvi     a,$01
22CF  32 4C 61  sta     $614C
22D2  22 EA 60  shld    $60EA
22D5  2A EA 60  lhld    $60EA
22D8  23        inx     h
22D9  22 4D 61  shld    $614D
22DC  36 FF     mvi     m,$FF
22DE  23        inx     h
22DF  22 67 60  shld    $6067
22E2  22 69 60  shld    $6069
22E5  FB        ei
22E6  2A 1C 61  lhld    $611C
22E9  22 EC 60  shld    $60EC
22EC  3E FF     mvi     a,$FF
22EE  32 C3 60  sta     $60C3
22F1  C3 48 23  jmp     $2348
22F4  AF        xra     a
22F5  32 49 61  sta     $6149
22F8  32 4C 61  sta     $614C
22FB  C3 09 0F  jmp     $0F09
22FE  2A 1C 61  lhld    $611C
2301  EB        xchg
2302  2A 4D 61  lhld    $614D
2305  CD EE 09  call    $09EE
2308  22 E6 60  shld    $60E6
230B  2A 4D 61  lhld    $614D
230E  EB        xchg
230F  2A 69 60  lhld    $6069
2312  CD EE 09  call    $09EE
2315  44        mov     b,h
2316  4D        mov     c,l
2317  2A 4D 61  lhld    $614D
231A  EB        xchg
231B  2A 1C 61  lhld    $611C
231E  CD 4B 18  call    $184B
2321  2A E6 60  lhld    $60E6
2324  EB        xchg
2325  2A 69 60  lhld    $6069
2328  2B        dcx     h
2329  CD EE 09  call    $09EE
232C  C3 D2 22  jmp     $22D2
232F  3A 59 60  lda     $6059
2332  E6 10     ani     $10
2334  C0        rnz
2335  F3        di
2336  2A 69 60  lhld    $6069
2339  36 00     mvi     m,$00
233B  2B        dcx     h
233C  22 67 60  shld    $6067
233F  22 69 60  shld    $6069
2342  3A C3 60  lda     $60C3
2345  B7        ora     a
2346  FB        ei
2347  C8        rz
2348  2A EC 60  lhld    $60EC
234B  4E        mov     c,m
234C  3A EF 60  lda     $60EF
234F  FE FF     cpi     $FF
2351  CA B7 23  jz      $23B7
2354  FE 00     cpi     $00
2356  CA 7D 23  jz      $237D
2359  91        sub     c
235A  CA 6F 23  jz      $236F
235D  C3 B7 23  jmp     $23B7
2360  F3        di
2361  CD 8B 23  call    $238B
2364  2A 67 60  lhld    $6067
2367  36 9A     mvi     m,$9A
2369  23        inx     h
236A  22 67 60  shld    $6067
236D  FB        ei
236E  C9        ret
236F  3A EE 60  lda     $60EE
2372  FE FF     cpi     $FF
2374  C2 7D 23  jnz     $237D
2377  CD 09 0F  call    $0F09
237A  C3 80 23  jmp     $2380
237D  CD 8B 23  call    $238B
2380  CD AC 23  call    $23AC
2383  DA C0 23  jc      $23C0
2386  AF        xra     a
2387  32 C3 60  sta     $60C3
238A  C9        ret
238B  2A EC 60  lhld    $60EC
238E  7E        mov     a,m
238F  23        inx     h
2390  22 EC 60  shld    $60EC
2393  2A 67 60  lhld    $6067
2396  FE 65     cpi     'e'
2398  CA DC 23  jz      $23DC
239B  FE A3     cpi     $A3
239D  CA E1 23  jz      $23E1
23A0  77        mov     m,a
23A1  3A EE 60  lda     $60EE
23A4  FE FF     cpi     $FF
23A6  C8        rz
23A7  23        inx     h
23A8  22 67 60  shld    $6067
23AB  C9        ret
23AC  2A EC 60  lhld    $60EC
23AF  EB        xchg
23B0  2A EA 60  lhld    $60EA
23B3  AF        xra     a
23B4  C3 EE 09  jmp     $09EE
23B7  CD AC 23  call    $23AC
23BA  DA C0 23  jc      $23C0
23BD  C3 60 23  jmp     $2360
23C0  3A 59 60  lda     $6059
23C3  F6 10     ori     $10
23C5  32 59 60  sta     $6059
23C8  CD 24 0F  call    $0F24
23CB  CD 09 0F  call    $0F09
23CE  3A 52 61  lda     $6152
23D1  B7        ora     a
23D2  CA 86 23  jz      $2386
23D5  E1        pop     h
23D6  E1        pop     h
23D7  E9        pchl
23D8  AF        xra     a
23D9  C3 D5 23  jmp     $23D5
23DC  0E 08     mvi     c,$08
23DE  C3 E6 23  jmp     $23E6
23E1  0E 04     mvi     c,$04
23E3  C3 E6 23  jmp     $23E6
23E6  06 00     mvi     b,$00
23E8  C5        push    b
23E9  2A EC 60  lhld    $60EC
23EC  2B        dcx     h
23ED  EB        xchg
23EE  F3        di
23EF  2A 67 60  lhld    $6067
23F2  CD 4B 18  call    $184B
23F5  C1        pop     b
23F6  3A EE 60  lda     $60EE
23F9  FE FF     cpi     $FF
23FB  CA 06 24  jz      $2406
23FE  2A 67 60  lhld    $6067
2401  09        dad     b
2402  22 67 60  shld    $6067
2405  FB        ei
2406  2A EC 60  lhld    $60EC
2409  09        dad     b
240A  2B        dcx     h
240B  22 EC 60  shld    $60EC
240E  C9        ret
240F  E5        push    h
2410  6F        mov     l,a
2411  2A 67 60  lhld    $6067
2414  EB        xchg
2415  2A 0F 24  lhld    $240F
2418  CD EE 09  call    $09EE
241B  DA 7C 24  jc      $247C
241E  2A 0E 61  lhld    $610E
2421  CD EE 09  call    $09EE
2424  D2 77 24  jnc     $2477
2427  3A 1E 61  lda     $611E
242A  FE FF     cpi     $FF
242C  C8        rz
242D  3E FF     mvi     a,$FF
242F  32 1E 61  sta     $611E
2432  3A 59 60  lda     $6059
2435  E6 08     ani     $08
2437  C2 6D 24  jnz     $246D
243A  2A 67 60  lhld    $6067
243D  23        inx     h
243E  22 0E 61  shld    $610E
2441  36 FE     mvi     m,$FE
2443  23        inx     h
2444  36 FE     mvi     m,$FE
2446  22 67 60  shld    $6067
2449  AF        xra     a
244A  32 C8 60  sta     $60C8
244D  3A 1A 61  lda     $611A
2450  4F        mov     c,a
2451  21 6D 16  lxi     h,$166D
2454  06 0A     mvi     b,$0A
2456  CD C6 17  call    $17C6
2459  D2 09 0F  jnc     $0F09
245C  32 1A 61  sta     $611A
245F  CD 13 25  call    $2513
2462  2A 0E 61  lhld    $610E
2465  23        inx     h
2466  22 67 60  shld    $6067
2469  22 69 60  shld    $6069
246C  C9        ret
246D  2A 67 60  lhld    $6067
2470  2B        dcx     h
2471  22 0E 61  shld    $610E
2474  C3 09 0F  jmp     $0F09
2477  AF        xra     a
2478  32 1E 61  sta     $611E
247B  C9        ret
247C  3E FF     mvi     a,$FF
247E  32 49 61  sta     $6149
2481  CD 87 24  call    $2487
2484  C3 11 24  jmp     $2411
2487  2A 67 60  lhld    $6067
248A  11 09 00  lxi     d,$0009
248D  19        dad
248E  22 4A 61  shld    $614A
2491  2A 0E 61  lhld    $610E
2494  CD D1 20  call    $20D1
2497  F3        di
2498  2A 67 60  lhld    $6067
249B  2B        dcx     h
249C  22 67 60  shld    $6067
249F  2A 69 60  lhld    $6069
24A2  2B        dcx     h
24A3  22 69 60  shld    $6069
24A6  2A E6 60  lhld    $60E6
24A9  2B        dcx     h
24AA  22 E6 60  shld    $60E6
24AD  2A DB 60  lhld    $60DB
24B0  2B        dcx     h
24B1  22 DB 60  shld    $60DB
24B4  FB        ei
24B5  3E FF     mvi     a,$FF
24B7  32 1F 61  sta     $611F
24BA  C9        ret
24BB  3A 59 60  lda     $6059
24BE  E6 10     ani     $10
24C0  C0        rnz
24C1  3A 57 60  lda     $6057
24C4  B7        ora     a
24C5  C0        rnz
24C6  3E FF     mvi     a,$FF
24C8  32 C3 60  sta     $60C3
24CB  2A 69 60  lhld    $6069
24CE  2B        dcx     h
24CF  36 9A     mvi     m,$9A
24D1  C3 2F 23  jmp     $232F
24D4  2A 67 60  lhld    $6067
24D7  36 FF     mvi     m,$FF
24D9  23        inx     h
24DA  22 67 60  shld    $6067
24DD  22 69 60  shld    $6069
24E0  2A 1D 60  lhld    $601D
24E3  EB        xchg
24E4  2A 4F 60  lhld    $604F
24E7  CD 68 0D  call    $0D68
24EA  C3 39 08  jmp     $0839
24ED  3A 57 61  lda     $6157
24F0  B7        ora     a
24F1  C0        rnz
24F2  2F        cma
24F3  32 57 61  sta     $6157
24F6  2A 51 60  lhld    $6051
24F9  22 55 61  shld    $6155
24FC  2A 55 60  lhld    $6055
24FF  22 51 60  shld    $6051
2502  C9        ret
2503  3A 57 61  lda     $6157
2506  B7        ora     a
2507  C8        rz
2508  AF        xra     a
2509  32 57 61  sta     $6157
250C  2A 55 61  lhld    $6155
250F  22 51 60  shld    $6051
2512  C9        ret
2513  CD 8B 26  call    $268B
2516  D2 8E 25  jnc     $258E
2519  3A 1A 61  lda     $611A
251C  77        mov     m,a
251D  23        inx     h
251E  5E        mov     e,m
251F  23        inx     h
2520  56        mov     d,m
2521  23        inx     h
2522  36 FF     mvi     m,$FF
2524  E5        push    h
2525  EB        xchg
2526  22 18 61  shld    $6118
2529  2A C6 60  lhld    $60C6
252C  EB        xchg
252D  2A 69 60  lhld    $6069
2530  2B        dcx     h
2531  CD EE 09  call    $09EE
2534  44        mov     b,h
2535  4D        mov     c,l
2536  D5        push    d
2537  2A 69 60  lhld    $6069
253A  09        dad     b
253B  EB        xchg
253C  2A 0F 24  lhld    $240F
253F  CD EE 09  call    $09EE
2542  D1        pop     d
2543  DA 4E 25  jc      $254E
2546  2A 69 60  lhld    $6069
2549  2B        dcx     h
254A  EB        xchg
254B  C3 56 25  jmp     $2556
254E  2A C6 60  lhld    $60C6
2551  EB        xchg
2552  C3 79 25  jmp     $2579
2555  1B        dcx     d
2556  1A        ldax    d
2557  62        mov     h,d
2558  6B        mov     l,e
2559  09        dad     b
255A  77        mov     m,a
255B  2A 18 61  lhld    $6118
255E  2B        dcx     h
255F  CD EE 09  call    $09EE
2562  B5        ora     l
2563  C2 55 25  jnz     $2555
2566  2A C6 60  lhld    $60C6
2569  09        dad     b
256A  22 C6 60  shld    $60C6
256D  EB        xchg
256E  2A 69 60  lhld    $6069
2571  2B        dcx     h
2572  09        dad     b
2573  22 69 60  shld    $6069
2576  22 67 60  shld    $6067
2579  2A 18 61  lhld    $6118
257C  C5        push    b
257D  CD 4B 18  call    $184B
2580  C1        pop     b
2581  2A 18 61  lhld    $6118
2584  09        dad     b
2585  22 1C 61  shld    $611C
2588  EB        xchg
2589  E1        pop     h
258A  23        inx     h
258B  73        mov     m,e
258C  23        inx     h
258D  72        mov     m,d
258E  3A 59 60  lda     $6059
2591  F6 08     ori     $08
2593  32 59 60  sta     $6059
2596  CD 24 0F  call    $0F24
2599  C3 09 0F  jmp     $0F09
259C  CD 8B 26  call    $268B
259F  D8        rc
25A0  22 EC 60  shld    $60EC
25A3  CD AB 26  call    $26AB
25A6  2B        dcx     h
25A7  22 EA 60  shld    $60EA
25AA  2A 69 60  lhld    $6069
25AD  2B        dcx     h
25AE  22 67 60  shld    $6067
25B1  22 69 60  shld    $6069
25B4  CD 4E 16  call    $164E
25B7  7E        mov     a,m
25B8  32 21 61  sta     $6121
25BB  23        inx     h
25BC  7E        mov     a,m
25BD  32 22 61  sta     $6122
25C0  23        inx     h
25C1  7E        mov     a,m
25C2  32 23 61  sta     $6123
25C5  C3 D4 25  jmp     $25D4
25C8  F3        di
25C9  2A 69 60  lhld    $6069
25CC  2B        dcx     h
25CD  22 69 60  shld    $6069
25D0  22 67 60  shld    $6067
25D3  FB        ei
25D4  0E 07     mvi     c,$07
25D6  3A 59 60  lda     $6059
25D9  A1        ana     c
25DA  47        mov     b,a
25DB  3A 21 61  lda     $6121
25DE  A1        ana     c
25DF  B8        cmp     b
25E0  CA E8 25  jz      $25E8
25E3  3E 84     mvi     a,$84
25E5  C3 4D 26  jmp     $264D
25E8  21 5A 60  lxi     h,$605A
25EB  11 22 61  lxi     d,$6122
25EE  7E        mov     a,m
25EF  A1        ana     c
25F0  47        mov     b,a
25F1  1A        ldax    d
25F2  A1        ana     c
25F3  B8        cmp     b
25F4  CA FC 25  jz      $25FC
25F7  3E 7D     mvi     a,'}'
25F9  C3 4D 26  jmp     $264D
25FC  7E        mov     a,m
25FD  E6 08     ani     $08
25FF  47        mov     b,a
2600  1A        ldax    d
2601  E6 08     ani     $08
2603  B8        cmp     b
2604  CA 0C 26  jz      $260C
2607  3E 87     mvi     a,$87
2609  C3 4D 26  jmp     $264D
260C  7E        mov     a,m
260D  E6 10     ani     $10
260F  47        mov     b,a
2610  1A        ldax    d
2611  E6 10     ani     $10
2613  B8        cmp     b
2614  CA 1C 26  jz      $261C
2617  3E 88     mvi     a,$88
2619  C3 4D 26  jmp     $264D
261C  21 5B 60  lxi     h,$605B
261F  11 23 61  lxi     d,$6123
2622  7E        mov     a,m
2623  A1        ana     c
2624  47        mov     b,a
2625  1A        ldax    d
2626  A1        ana     c
2627  B8        cmp     b
2628  CA 30 26  jz      $2630
262B  3E 7C     mvi     a,'|'
262D  C3 4D 26  jmp     $264D
2630  7E        mov     a,m
2631  E6 08     ani     $08
2633  47        mov     b,a
2634  1A        ldax    d
2635  E6 08     ani     $08
2637  B8        cmp     b
2638  CA 40 26  jz      $2640
263B  3E 85     mvi     a,$85
263D  C3 4D 26  jmp     $264D
2640  7E        mov     a,m
2641  E6 10     ani     $10
2643  47        mov     b,a
2644  1A        ldax    d
2645  E6 10     ani     $10
2647  B8        cmp     b
2648  CA 5B 26  jz      $265B
264B  3E 89     mvi     a,$89
264D  F3        di
264E  2A 67 60  lhld    $6067
2651  77        mov     m,a
2652  23        inx     h
2653  36 6C     mvi     m,'l'
2655  23        inx     h
2656  22 67 60  shld    $6067
2659  FB        ei
265A  C9        ret
265B  3A 59 60  lda     $6059
265E  E6 EF     ani     $EF
2660  32 59 60  sta     $6059
2663  CD 24 0F  call    $0F24
2666  CD 09 0F  call    $0F09
2669  3A 4C 61  lda     $614C
266C  E6 02     ani     $02
266E  C2 B9 22  jnz     $22B9
2671  2A EC 60  lhld    $60EC
2674  5E        mov     e,m
2675  23        inx     h
2676  56        mov     d,m
2677  23        inx     h
2678  22 EC 60  shld    $60EC
267B  2A 1D 60  lhld    $601D
267E  EB        xchg
267F  CD 68 0D  call    $0D68
2682  CD 39 08  call    $0839
2685  C9        ret
2686  3E FF     mvi     a,$FF
2688  32 1A 61  sta     $611A
268B  21 F0 60  lxi     h,$60F0
268E  46        mov     b,m
268F  3A 1A 61  lda     $611A
2692  B8        cmp     b
2693  CA A1 26  jz      $26A1
2696  3E FF     mvi     a,$FF
2698  B8        cmp     b
2699  37        stc
269A  C8        rz
269B  23        inx     h
269C  23        inx     h
269D  23        inx     h
269E  C3 8E 26  jmp     $268E
26A1  22 16 61  shld    $6116
26A4  23        inx     h
26A5  5E        mov     e,m
26A6  23        inx     h
26A7  56        mov     d,m
26A8  EB        xchg
26A9  AF        xra     a
26AA  C9        ret
26AB  EB        xchg
26AC  23        inx     h
26AD  23        inx     h
26AE  5E        mov     e,m
26AF  23        inx     h
26B0  56        mov     d,m
26B1  EB        xchg
26B2  C9        ret
26B3  3A 1A 61  lda     $611A
26B6  FE 76     cpi     'v'
26B8  CA 47 27  jz      $2747
26BB  FE 00     cpi     $00
26BD  C2 C5 26  jnz     $26C5
26C0  3E 0A     mvi     a,$0A
26C2  32 1A 61  sta     $611A
26C5  CD 8B 26  call    $268B
26C8  D8        rc
26C9  22 10 61  shld    $6110
26CC  CD AB 26  call    $26AB
26CF  22 12 61  shld    $6112
26D2  EB        xchg
26D3  2A 10 61  lhld    $6110
26D6  EB        xchg
26D7  CD EE 09  call    $09EE
26DA  22 14 61  shld    $6114
26DD  2A 12 61  lhld    $6112
26E0  EB        xchg
26E1  2A 69 60  lhld    $6069
26E4  CD EE 09  call    $09EE
26E7  44        mov     b,h
26E8  4D        mov     c,l
26E9  2A 10 61  lhld    $6110
26EC  CD 4B 18  call    $184B
26EF  21 F0 60  lxi     h,$60F0
26F2  11 1E 00  lxi     d,$001E
26F5  19        dad
26F6  EB        xchg
26F7  2A 16 61  lhld    $6116
26FA  E5        push    h
26FB  23        inx     h
26FC  23        inx     h
26FD  23        inx     h
26FE  E5        push    h
26FF  EB        xchg
2700  CD EE 09  call    $09EE
2703  44        mov     b,h
2704  4D        mov     c,l
2705  E1        pop     h
2706  EB        xchg
2707  E1        pop     h
2708  CD 4B 18  call    $184B
270B  2A 16 61  lhld    $6116
270E  7E        mov     a,m
270F  FE FF     cpi     $FF
2711  CA 1A 27  jz      $271A
2714  CD 31 27  call    $2731
2717  C3 0E 27  jmp     $270E
271A  CD 31 27  call    $2731
271D  2A 14 61  lhld    $6114
2720  EB        xchg
2721  2A 69 60  lhld    $6069
2724  CD EE 09  call    $09EE
2727  22 67 60  shld    $6067
272A  22 69 60  shld    $6069
272D  CD 09 0F  call    $0F09
2730  C9        ret
2731  23        inx     h
2732  E5        push    h
2733  5E        mov     e,m
2734  23        inx     h
2735  56        mov     d,m
2736  2A 14 61  lhld    $6114
2739  EB        xchg
273A  CD EE 09  call    $09EE
273D  22 1C 61  shld    $611C
2740  EB        xchg
2741  E1        pop     h
2742  73        mov     m,e
2743  23        inx     h
2744  72        mov     m,d
2745  23        inx     h
2746  C9        ret
2747  CD 09 0F  call    $0F09
274A  21 F0 60  lxi     h,$60F0
274D  36 FF     mvi     m,$FF
274F  23        inx     h
2750  EB        xchg
2751  21 00 62  lxi     h,$6200
2754  36 FF     mvi     m,$FF
2756  22 1C 61  shld    $611C
2759  23        inx     h
275A  22 69 60  shld    $6069
275D  22 67 60  shld    $6067
2760  2B        dcx     h
2761  EB        xchg
2762  73        mov     m,e
2763  23        inx     h
2764  72        mov     m,d
2765  C9        ret
2766  FF        rst     7
2767  FF        rst     7
2768  FF        rst     7
2769  FF        rst     7
276A  FF        rst     7
276B  FF        rst     7
276C  FF        rst     7
276D  FF        rst     7
276E  FF        rst     7
276F  FF        rst     7
2770  FF        rst     7
2771  FF        rst     7
2772  FF        rst     7
2773  FF        rst     7
2774  FF        rst     7
2775  FF        rst     7
2776  FF        rst     7
2777  FF        rst     7
2778  FF        rst     7
2779  FF        rst     7
277A  FF        rst     7
277B  FF        rst     7
277C  FF        rst     7
277D  FF        rst     7
277E  FF        rst     7
277F  FF        rst     7
2780  FF        rst     7
2781  FF        rst     7
2782  FF        rst     7
2783  FF        rst     7
2784  FF        rst     7
2785  FF        rst     7
2786  FF        rst     7
2787  FF        rst     7
2788  FF        rst     7
2789  FF        rst     7
278A  FF        rst     7
278B  FF        rst     7
278C  FF        rst     7
278D  FF        rst     7
278E  FF        rst     7
278F  FF        rst     7
2790  FF        rst     7
2791  FF        rst     7
2792  FF        rst     7
2793  FF        rst     7
2794  FF        rst     7
2795  FF        rst     7
2796  FF        rst     7
2797  FF        rst     7
2798  FF        rst     7
2799  FF        rst     7
279A  FF        rst     7
279B  FF        rst     7
279C  FF        rst     7
279D  FF        rst     7
279E  FF        rst     7
279F  FF        rst     7
27A0  FF        rst     7
27A1  FF        rst     7
27A2  FF        rst     7
27A3  FF        rst     7
27A4  FF        rst     7
27A5  FF        rst     7
27A6  FF        rst     7
27A7  FF        rst     7
27A8  FF        rst     7
27A9  FF        rst     7
27AA  FF        rst     7
27AB  FF        rst     7
27AC  FF        rst     7
27AD  FF        rst     7
27AE  FF        rst     7
27AF  FF        rst     7
27B0  FF        rst     7
27B1  FF        rst     7
27B2  FF        rst     7
27B3  FF        rst     7
27B4  FF        rst     7
27B5  FF        rst     7
27B6  FF        rst     7
27B7  FF        rst     7
27B8  FF        rst     7
27B9  FF        rst     7
27BA  FF        rst     7
27BB  FF        rst     7
27BC  FF        rst     7
27BD  FF        rst     7
27BE  FF        rst     7
27BF  FF        rst     7
27C0  E5        push    h
27C1  F5        push    psw
27C2  C5        push    b
27C3  D5        push    d
27C4  2A 00 60  lhld    $6000
27C7  E9        pchl
27C8  E5        push    h
27C9  F5        push    psw
27CA  C5        push    b
27CB  D5        push    d
27CC  2A 02 60  lhld    $6002
27CF  E9        pchl
27D0  E5        push    h
27D1  F5        push    psw
27D2  C5        push    b
27D3  D5        push    d
27D4  2A 04 60  lhld    $6004
27D7  E9        pchl
27D8  E5        push    h
27D9  F5        push    psw
27DA  C5        push    b
27DB  D5        push    d
27DC  2A 06 60  lhld    $6006
27DF  E9        pchl
27E0  E5        push    h
27E1  F5        push    psw
27E2  C5        push    b
27E3  D5        push    d
27E4  2A 08 60  lhld    $6008
27E7  E9        pchl
27E8  E5        push    h
27E9  F5        push    psw
27EA  C5        push    b
27EB  D5        push    d
27EC  2A 0A 60  lhld    $600A
27EF  E9        pchl
27F0  E5        push    h
27F1  F5        push    psw
27F2  C5        push    b
27F3  D5        push    d
27F4  2A 0C 60  lhld    $600C
27F7  E9        pchl
27F8  E5        push    h
27F9  F5        push    psw
27FA  C5        push    b
27FB  D5        push    d
27FC  2A 0E 60  lhld    $600E
27FF  E9        pchl
2800  65        mov     h,l
2801  6C        mov     l,h
2802  00        nop
2803  6C        mov     l,h
2804  00        nop
2805  18        nop                  ;Note: Alternative opcode used
2806  00        nop
2807  65        mov     h,l
2808  67        mov     h,a
2809  67        mov     h,a
280A  FF        rst     7
280B  1C        inr     e
280C  1C        inr     e
280D  1C        inr     e
280E  1C        inr     e
280F  1C        inr     e
2810  1C        inr     e
2811  1C        inr     e
2812  1C        inr     e
2813  1C        inr     e
2814  1C        inr     e
2815  1C        inr     e
2816  1C        inr     e
2817  1C        inr     e
2818  1C        inr     e
2819  1C        inr     e
281A  1C        inr     e
281B  1C        inr     e
281C  1C        inr     e
281D  1C        inr     e
281E  1C        inr     e
281F  1C        inr     e
2820  1C        inr     e
2821  1C        inr     e
2822  1C        inr     e
2823  1C        inr     e
2824  1C        inr     e
2825  1C        inr     e
2826  1C        inr     e
2827  1C        inr     e
2828  1C        inr     e
2829  1C        inr     e
282A  81        add     c
282B  1C        inr     e
282C  1C        inr     e
282D  1C        inr     e
282E  1C        inr     e
282F  1C        inr     e
2830  1C        inr     e
2831  1C        inr     e
2832  1C        inr     e
2833  1C        inr     e
2834  1C        inr     e
2835  1C        inr     e
2836  1C        inr     e
2837  1C        inr     e
2838  1C        inr     e
2839  1C        inr     e
283A  1C        inr     e
283B  1C        inr     e
283C  1C        inr     e
283D  1C        inr     e
283E  1C        inr     e
283F  1C        inr     e
2840  1C        inr     e
2841  1C        inr     e
2842  1C        inr     e
2843  1C        inr     e
2844  1C        inr     e
2845  1C        inr     e
2846  1C        inr     e
2847  1C        inr     e
2848  1C        inr     e
2849  1C        inr     e
284A  1C        inr     e
284B  1C        inr     e
284C  65        mov     h,l
284D  6C        mov     l,h
284E  03        inx     b
284F  6C        mov     l,h
2850  00        nop
2851  18        nop                  ;Note: Alternative opcode used
2852  00        nop
2853  65        mov     h,l
2854  08        nop                  ;Note: Alternative opcode used
2855  08        nop                  ;Note: Alternative opcode used
2856  08        nop                  ;Note: Alternative opcode used
2857  08        nop                  ;Note: Alternative opcode used
2858  08        nop                  ;Note: Alternative opcode used
2859  08        nop                  ;Note: Alternative opcode used
285A  08        nop                  ;Note: Alternative opcode used
285B  08        nop                  ;Note: Alternative opcode used
285C  08        nop                  ;Note: Alternative opcode used
285D  08        nop                  ;Note: Alternative opcode used
285E  08        nop                  ;Note: Alternative opcode used
285F  08        nop                  ;Note: Alternative opcode used
2860  08        nop                  ;Note: Alternative opcode used
2861  08        nop                  ;Note: Alternative opcode used
2862  08        nop                  ;Note: Alternative opcode used
2863  08        nop                  ;Note: Alternative opcode used
2864  08        nop                  ;Note: Alternative opcode used
2865  08        nop                  ;Note: Alternative opcode used
2866  08        nop                  ;Note: Alternative opcode used
2867  08        nop                  ;Note: Alternative opcode used
2868  08        nop                  ;Note: Alternative opcode used
2869  08        nop                  ;Note: Alternative opcode used
286A  08        nop                  ;Note: Alternative opcode used
286B  08        nop                  ;Note: Alternative opcode used
286C  08        nop                  ;Note: Alternative opcode used
286D  08        nop                  ;Note: Alternative opcode used
286E  08        nop                  ;Note: Alternative opcode used
286F  08        nop                  ;Note: Alternative opcode used
2870  08        nop                  ;Note: Alternative opcode used
2871  08        nop                  ;Note: Alternative opcode used
2872  08        nop                  ;Note: Alternative opcode used
2873  08        nop                  ;Note: Alternative opcode used
2874  08        nop                  ;Note: Alternative opcode used
2875  08        nop                  ;Note: Alternative opcode used
2876  08        nop                  ;Note: Alternative opcode used
2877  08        nop                  ;Note: Alternative opcode used
2878  08        nop                  ;Note: Alternative opcode used
2879  08        nop                  ;Note: Alternative opcode used
287A  08        nop                  ;Note: Alternative opcode used
287B  08        nop                  ;Note: Alternative opcode used
287C  08        nop                  ;Note: Alternative opcode used
287D  08        nop                  ;Note: Alternative opcode used
287E  08        nop                  ;Note: Alternative opcode used
287F  08        nop                  ;Note: Alternative opcode used
2880  08        nop                  ;Note: Alternative opcode used
2881  08        nop                  ;Note: Alternative opcode used
2882  08        nop                  ;Note: Alternative opcode used
2883  08        nop                  ;Note: Alternative opcode used
2884  08        nop                  ;Note: Alternative opcode used
2885  08        nop                  ;Note: Alternative opcode used
2886  08        nop                  ;Note: Alternative opcode used
2887  08        nop                  ;Note: Alternative opcode used
2888  08        nop                  ;Note: Alternative opcode used
2889  08        nop                  ;Note: Alternative opcode used
288A  08        nop                  ;Note: Alternative opcode used
288B  08        nop                  ;Note: Alternative opcode used
288C  08        nop                  ;Note: Alternative opcode used
288D  08        nop                  ;Note: Alternative opcode used
288E  65        mov     h,l
288F  24        inr     h
2890  03        inx     b
2891  6C        mov     l,h
2892  00        nop
2893  18        nop                  ;Note: Alternative opcode used
2894  00        nop
2895  65        mov     h,l
2896  7C        mov     a,h
2897  7C        mov     a,h
2898  1C        inr     e
2899  14        inr     d
289A  0F        rrc
289B  26 A3     mvi     h,$A3
289D  44        mov     b,h
289E  01 A3 1C  lxi     b,$1CA3
28A1  14        inr     d
28A2  0F        rrc
28A3  26 65     mvi     h,'e'
28A5  10        nop                  ;Note: Alternative opcode used
28A6  02        stax    b
28A7  6C        mov     l,h
28A8  00        nop
28A9  18        nop                  ;Note: Alternative opcode used
28AA  00        nop
28AB  65        mov     h,l
28AC  7C        mov     a,h
28AD  1C        inr     e
28AE  14        inr     d
28AF  0F        rrc
28B0  26 A3     mvi     h,$A3
28B2  44        mov     b,h
28B3  01 A3 1C  lxi     b,$1CA3
28B6  14        inr     d
28B7  0F        rrc
28B8  26 65     mvi     h,'e'
28BA  10        nop                  ;Note: Alternative opcode used
28BB  02        stax    b
28BC  6C        mov     l,h
28BD  00        nop
28BE  18        nop                  ;Note: Alternative opcode used
28BF  00        nop
28C0  65        mov     h,l
28C1  7C        mov     a,h
28C2  1C        inr     e
28C3  14        inr     d
28C4  0F        rrc
28C5  26 A3     mvi     h,$A3
28C7  44        mov     b,h
28C8  01 A3 1C  lxi     b,$1CA3
28CB  14        inr     d
28CC  0F        rrc
28CD  26 65     mvi     h,'e'
28CF  10        nop                  ;Note: Alternative opcode used
28D0  02        stax    b
28D1  6C        mov     l,h
28D2  00        nop
28D3  18        nop                  ;Note: Alternative opcode used
28D4  00        nop
28D5  65        mov     h,l
28D6  7C        mov     a,h
28D7  7C        mov     a,h
28D8  63        mov     h,e
28D9  63        mov     h,e
28DA  63        mov     h,e
28DB  63        mov     h,e
28DC  63        mov     h,e
28DD  63        mov     h,e
28DE  63        mov     h,e
28DF  63        mov     h,e
28E0  63        mov     h,e
28E1  63        mov     h,e
28E2  63        mov     h,e
28E3  65        mov     h,l
28E4  F0        rp
28E5  00        nop
28E6  6C        mov     l,h
28E7  00        nop
28E8  18        nop                  ;Note: Alternative opcode used
28E9  00        nop
28EA  65        mov     h,l
28EB  7D        mov     a,l
28EC  63        mov     h,e
28ED  63        mov     h,e
28EE  63        mov     h,e
28EF  63        mov     h,e
28F0  63        mov     h,e
28F1  63        mov     h,e
28F2  63        mov     h,e
28F3  63        mov     h,e
28F4  63        mov     h,e
28F5  63        mov     h,e
28F6  63        mov     h,e
28F7  65        mov     h,l
28F8  DA 00 6C  jc      $6C00
28FB  00        nop
28FC  18        nop                  ;Note: Alternative opcode used
28FD  00        nop
28FE  65        mov     h,l
28FF  7D        mov     a,l
2900  63        mov     h,e
2901  63        mov     h,e
2902  63        mov     h,e
2903  63        mov     h,e
2904  63        mov     h,e
2905  63        mov     h,e
2906  63        mov     h,e
2907  63        mov     h,e
2908  63        mov     h,e
2909  63        mov     h,e
290A  63        mov     h,e
290B  7D        mov     a,l
290C  65        mov     h,l
290D  C4 00 30  cnz     $3000
2910  00        nop
2911  18        nop                  ;Note: Alternative opcode used
2912  00        nop
2913  65        mov     h,l
2914  3E 3E     mvi     a,$3E
2916  3E 3E     mvi     a,$3E
2918  3E 0E     mvi     a,$0E
291A  0E 0E     mvi     c,$0E
291C  0E 0E     mvi     c,$0E
291E  0E 0E     mvi     c,$0E
2920  0E 0E     mvi     c,$0E
2922  0E 0E     mvi     c,$0E
2924  0E 0E     mvi     c,$0E
2926  0E 0E     mvi     c,$0E
2928  0E 0E     mvi     c,$0E
292A  0E 0E     mvi     c,$0E
292C  0E 0E     mvi     c,$0E
292E  0E 0E     mvi     c,$0E
2930  0E 0E     mvi     c,$0E
2932  0E 0E     mvi     c,$0E
2934  0E 0E     mvi     c,$0E
2936  0E 0E     mvi     c,$0E
2938  0E 0E     mvi     c,$0E
293A  0E 0E     mvi     c,$0E
293C  0E 0E     mvi     c,$0E
293E  0E 0E     mvi     c,$0E
2940  0E 0E     mvi     c,$0E
2942  0E 0E     mvi     c,$0E
2944  0E 0E     mvi     c,$0E
2946  0E 0E     mvi     c,$0E
2948  0E 0E     mvi     c,$0E
294A  0E 0E     mvi     c,$0E
294C  0E 0E     mvi     c,$0E
294E  0E 0E     mvi     c,$0E
2950  0E 0E     mvi     c,$0E
2952  0E 0E     mvi     c,$0E
2954  0E 0E     mvi     c,$0E
2956  0E 0E     mvi     c,$0E
2958  0E 84     mvi     c,$84
295A  84        add     h
295B  65        mov     h,l
295C  6C        mov     l,h
295D  03        inx     b
295E  6C        mov     l,h
295F  00        nop
2960  30        nop                  ;Note: Alternative opcode used
2961  00        nop
2962  65        mov     h,l
2963  84        add     h
2964  84        add     h
2965  88        adc     b
2966  5E        mov     e,m
2967  30        nop                  ;Note: Alternative opcode used
2968  34        inr     m
2969  38        nop                  ;Note: Alternative opcode used
296A  3C        inr     a
296B  40        mov     b,b
296C  44        mov     b,h
296D  48        mov     c,b
296E  4C        mov     c,h
296F  50        mov     d,b
2970  54        mov     d,h
2971  58        mov     e,b
2972  5B        mov     e,e
2973  A3        ana     e
2974  8A        adc     d
2975  00        nop
2976  A3        ana     e
2977  2E 00     mvi     l,$00
2979  04        inr     b
297A  08        nop                  ;Note: Alternative opcode used
297B  0C        inr     c
297C  10        nop                  ;Note: Alternative opcode used
297D  14        inr     d
297E  18        nop                  ;Note: Alternative opcode used
297F  1C        inr     e
2980  20        nop                  ;Note: Alternative opcode used
2981  24        inr     h
2982  28        nop                  ;Note: Alternative opcode used
2983  2B        dcx     h
2984  65        mov     h,l
2985  CA 02 6C  jz      $6C02
2988  00        nop
2989  24        inr     h
298A  00        nop
298B  65        mov     h,l
298C  31 35 39  lxi     sp,$3935
298F  3D        dcr     a
2990  41        mov     b,c
2991  45        mov     b,l
2992  49        mov     c,c
2993  4D        mov     c,l
2994  51        mov     d,c
2995  55        mov     d,l
2996  59        mov     e,c
2997  5C        mov     e,h
2998  A3        ana     e
2999  9C        sbb     h
299A  00        nop
299B  A3        ana     e
299C  01 05 09  lxi     b,$0905
299F  0D        dcr     c
29A0  11 15 19  lxi     d,$1915
29A3  1D        dcr     e
29A4  21 25 29  lxi     h,$2925
29A7  2C        inr     l
29A8  65        mov     h,l
29A9  B8        cmp     b
29AA  02        stax    b
29AB  6C        mov     l,h
29AC  00        nop
29AD  24        inr     h
29AE  00        nop
29AF  65        mov     h,l
29B0  32 36 3A  sta     $3A36
29B3  3E 42     mvi     a,'B'
29B5  46        mov     b,m
29B6  4A        mov     c,d
29B7  4E        mov     c,m
29B8  52        mov     d,d
29B9  56        mov     d,m
29BA  5A        mov     e,d
29BB  5D        mov     e,l
29BC  A3        ana     e
29BD  9C        sbb     h
29BE  00        nop
29BF  A3        ana     e
29C0  02        stax    b
29C1  06 0A     mvi     b,$0A
29C3  0E 12     mvi     c,$12
29C5  16 1A     mvi     d,$1A
29C7  1E 22     mvi     e,$22
29C9  26 2A     mvi     h,$2A
29CB  2D        dcr     l
29CC  65        mov     h,l
29CD  B8        cmp     b
29CE  02        stax    b
29CF  6C        mov     l,h
29D0  00        nop
29D1  24        inr     h
29D2  00        nop
29D3  65        mov     h,l
29D4  5F        mov     e,a
29D5  33        inx     sp
29D6  37        stc
29D7  3B        dcx     sp
29D8  3F        cmc
29D9  43        mov     b,e
29DA  47        mov     b,a
29DB  4B        mov     c,e
29DC  4F        mov     c,a
29DD  53        mov     d,e
29DE  57        mov     d,a
29DF  79        mov     a,c
29E0  A3        ana     e
29E1  AE        xra     m
29E2  00        nop
29E3  A3        ana     e
29E4  A0        ana     b
29E5  79        mov     a,c
29E6  2F        cma
29E7  03        inx     b
29E8  07        rlc
29E9  0B        dcx     b
29EA  0F        rrc
29EB  13        inx     d
29EC  17        ral
29ED  1B        dcx     d
29EE  1F        rar
29EF  23        inx     h
29F0  27        daa
29F1  79        mov     a,c
29F2  65        mov     h,l
29F3  A6        ana     m
29F4  02        stax    b
29F5  6C        mov     l,h
29F6  00        nop
29F7  24        inr     h
29F8  00        nop
29F9  65        mov     h,l
29FA  84        add     h
29FB  84        add     h
29FC  60        mov     h,b
29FD  62        mov     h,d
29FE  61        mov     h,c
29FF  63        mov     h,e
2A00  65        mov     h,l
2A01  B4        ora     h
2A02  00        nop
2A03  6C        mov     l,h
2A04  00        nop
2A05  18        nop                  ;Note: Alternative opcode used
2A06  00        nop
2A07  65        mov     h,l
2A08  60        mov     h,b
2A09  62        mov     h,d
2A0A  61        mov     h,c
2A0B  63        mov     h,e
2A0C  88        adc     b
2A0D  65        mov     h,l
2A0E  B4        ora     h
2A0F  00        nop
2A10  6C        mov     l,h
2A11  00        nop
2A12  18        nop                  ;Note: Alternative opcode used
2A13  00        nop
2A14  65        mov     h,l
2A15  A3        ana     e
2A16  BA        cmp     d
2A17  00        nop
2A18  A3        ana     e
2A19  30        nop                  ;Note: Alternative opcode used
2A1A  18        nop                  ;Note: Alternative opcode used
2A1B  30        nop                  ;Note: Alternative opcode used
2A1C  30        nop                  ;Note: Alternative opcode used
2A1D  30        nop                  ;Note: Alternative opcode used
2A1E  A3        ana     e
2A1F  5A        mov     e,d
2A20  00        nop
2A21  A3        ana     e
2A22  34        inr     m
2A23  34        inr     m
2A24  34        inr     m
2A25  18        nop                  ;Note: Alternative opcode used
2A26  34        inr     m
2A27  A3        ana     e
2A28  8A        adc     d
2A29  00        nop
2A2A  A3        ana     e
2A2B  38        nop                  ;Note: Alternative opcode used
2A2C  38        nop                  ;Note: Alternative opcode used
2A2D  38        nop                  ;Note: Alternative opcode used
2A2E  18        nop                  ;Note: Alternative opcode used
2A2F  38        nop                  ;Note: Alternative opcode used
2A30  38        nop                  ;Note: Alternative opcode used
2A31  38        nop                  ;Note: Alternative opcode used
2A32  65        mov     h,l
2A33  D6 02     sui     $02
2A35  6C        mov     l,h
2A36  00        nop
2A37  18        nop                  ;Note: Alternative opcode used
2A38  00        nop
2A39  65        mov     h,l
2A3A  A3        ana     e
2A3B  AE        xra     m
2A3C  00        nop
2A3D  A3        ana     e
2A3E  30        nop                  ;Note: Alternative opcode used
2A3F  30        nop                  ;Note: Alternative opcode used
2A40  18        nop                  ;Note: Alternative opcode used
2A41  30        nop                  ;Note: Alternative opcode used
2A42  30        nop                  ;Note: Alternative opcode used
2A43  A3        ana     e
2A44  72        mov     m,d
2A45  00        nop
2A46  A3        ana     e
2A47  34        inr     m
2A48  34        inr     m
2A49  18        nop                  ;Note: Alternative opcode used
2A4A  34        inr     m
2A4B  34        inr     m
2A4C  A3        ana     e
2A4D  8A        adc     d
2A4E  00        nop
2A4F  A3        ana     e
2A50  38        nop                  ;Note: Alternative opcode used
2A51  38        nop                  ;Note: Alternative opcode used
2A52  18        nop                  ;Note: Alternative opcode used
2A53  38        nop                  ;Note: Alternative opcode used
2A54  38        nop                  ;Note: Alternative opcode used
2A55  65        mov     h,l
2A56  CA 02 6C  jz      $6C02
2A59  00        nop
2A5A  18        nop                  ;Note: Alternative opcode used
2A5B  00        nop
2A5C  65        mov     h,l
2A5D  A3        ana     e
2A5E  A2        ana     d
2A5F  00        nop
2A60  A3        ana     e
2A61  30        nop                  ;Note: Alternative opcode used
2A62  30        nop                  ;Note: Alternative opcode used
2A63  30        nop                  ;Note: Alternative opcode used
2A64  18        nop                  ;Note: Alternative opcode used
2A65  30        nop                  ;Note: Alternative opcode used
2A66  A3        ana     e
2A67  8A        adc     d
2A68  00        nop
2A69  A3        ana     e
2A6A  34        inr     m
2A6B  18        nop                  ;Note: Alternative opcode used
2A6C  34        inr     m
2A6D  34        inr     m
2A6E  34        inr     m
2A6F  A3        ana     e
2A70  8A        adc     d
2A71  00        nop
2A72  A3        ana     e
2A73  38        nop                  ;Note: Alternative opcode used
2A74  18        nop                  ;Note: Alternative opcode used
2A75  38        nop                  ;Note: Alternative opcode used
2A76  65        mov     h,l
2A77  BE        cmp     m
2A78  02        stax    b
2A79  6C        mov     l,h
2A7A  00        nop
2A7B  18        nop                  ;Note: Alternative opcode used
2A7C  00        nop
2A7D  65        mov     h,l
2A7E  67        mov     h,a
2A7F  67        mov     h,a
2A80  88        adc     b
2A81  A3        ana     e
2A82  E7        rst     4
2A83  00        nop
2A84  A3        ana     e
2A85  42        mov     b,d
2A86  46        mov     b,m
2A87  4A        mov     c,d
2A88  3A 41 46  lda     $4641
2A8B  3D        dcr     a
2A8C  3E 68     mvi     a,'h'
2A8E  68        mov     l,b
2A8F  32 39 45  sta     $4539
2A92  3D        dcr     a
2A93  35        dcr     m
2A94  43        mov     b,e
2A95  43        mov     b,e
2A96  65        mov     h,l
2A97  85        add     l
2A98  02        stax    b
2A99  6C        mov     l,h
2A9A  00        nop
2A9B  18        nop                  ;Note: Alternative opcode used
2A9C  00        nop
2A9D  65        mov     h,l
2A9E  67        mov     h,a
2A9F  67        mov     h,a
2AA0  88        adc     b
2AA1  4F        mov     c,a
2AA2  4F        mov     c,a
2AA3  4F        mov     c,a
2AA4  4F        mov     c,a
2AA5  6B        mov     l,e
2AA6  4F        mov     c,a
2AA7  4F        mov     c,a
2AA8  4F        mov     c,a
2AA9  67        mov     h,a
2AAA  4F        mov     c,a
2AAB  4F        mov     c,a
2AAC  4F        mov     c,a
2AAD  4F        mov     c,a
2AAE  6B        mov     l,e
2AAF  4F        mov     c,a
2AB0  4F        mov     c,a
2AB1  4F        mov     c,a
2AB2  67        mov     h,a
2AB3  4F        mov     c,a
2AB4  4F        mov     c,a
2AB5  4F        mov     c,a
2AB6  4F        mov     c,a
2AB7  4F        mov     c,a
2AB8  4F        mov     c,a
2AB9  4F        mov     c,a
2ABA  4F        mov     c,a
2ABB  20        nop                  ;Note: Alternative opcode used
2ABC  20        nop                  ;Note: Alternative opcode used
2ABD  20        nop                  ;Note: Alternative opcode used
2ABE  20        nop                  ;Note: Alternative opcode used
2ABF  20        nop                  ;Note: Alternative opcode used
2AC0  9E        sbb     m
2AC1  20        nop                  ;Note: Alternative opcode used
2AC2  20        nop                  ;Note: Alternative opcode used
2AC3  20        nop                  ;Note: Alternative opcode used
2AC4  20        nop                  ;Note: Alternative opcode used
2AC5  20        nop                  ;Note: Alternative opcode used
2AC6  9E        sbb     m
2AC7  20        nop                  ;Note: Alternative opcode used
2AC8  20        nop                  ;Note: Alternative opcode used
2AC9  20        nop                  ;Note: Alternative opcode used
2ACA  20        nop                  ;Note: Alternative opcode used
2ACB  20        nop                  ;Note: Alternative opcode used
2ACC  9E        sbb     m
2ACD  20        nop                  ;Note: Alternative opcode used
2ACE  20        nop                  ;Note: Alternative opcode used
2ACF  20        nop                  ;Note: Alternative opcode used
2AD0  20        nop                  ;Note: Alternative opcode used
2AD1  20        nop                  ;Note: Alternative opcode used
2AD2  9E        sbb     m
2AD3  20        nop                  ;Note: Alternative opcode used
2AD4  20        nop                  ;Note: Alternative opcode used
2AD5  20        nop                  ;Note: Alternative opcode used
2AD6  20        nop                  ;Note: Alternative opcode used
2AD7  20        nop                  ;Note: Alternative opcode used
2AD8  9E        sbb     m
2AD9  84        add     h
2ADA  65        mov     h,l
2ADB  A0        ana     b
2ADC  02        stax    b
2ADD  A8        xra     b
2ADE  00        nop
2ADF  24        inr     h
2AE0  00        nop
2AE1  65        mov     h,l
2AE2  3E 1F     mvi     a,$1F
2AE4  25        dcr     h
2AE5  0E 05     mvi     c,$05
2AE7  15        dcr     d
2AE8  06 01     mvi     b,$01
2AEA  68        mov     l,b
2AEB  1A        ldax    d
2AEC  17        ral
2AED  0B        dcx     b
2AEE  17        ral
2AEF  09        dad     b
2AF0  12        stax    d
2AF1  65        mov     h,l
2AF2  5C        mov     e,h
2AF3  01 6C 00  lxi     b,$006C
2AF6  24        inr     h
2AF7  00        nop
2AF8  65        mov     h,l
2AF9  89        adc     c
2AFA  3E 0A     mvi     a,$0A
2AFC  17        ral
2AFD  1A        ldax    d
2AFE  0F        rrc
2AFF  0E 17     mvi     c,$17
2B01  13        inx     d
2B02  07        rlc
2B03  11 0B 0D  lxi     d,$0D0B
2B06  1A        ldax    d
2B07  11 68 12  lxi     d,$1268
2B0A  1A        ldax    d
2B0B  22 07 11  shld    $1107
2B0E  16 0D     mvi     d,$0D
2B10  13        inx     d
2B11  0A        ldax    b
2B12  0E 15     mvi     c,$15
2B14  13        inx     d
2B15  11 65 BC  lxi     d,$BC65
2B18  01 6C 00  lxi     b,$006C
2B1B  24        inr     h
2B1C  00        nop
2B1D  65        mov     h,l
2B1E  89        adc     c
2B1F  85        add     l
2B20  56        mov     d,m
2B21  13        inx     d
2B22  16 15     mvi     d,$15
2B24  06 01     mvi     b,$01
2B26  68        mov     l,b
2B27  1D        dcr     e
2B28  16 13     mvi     d,$13
2B2A  02        stax    b
2B2B  17        ral
2B2C  65        mov     h,l
2B2D  FC 00 6C  cm      $6C00
2B30  00        nop
2B31  24        inr     h
2B32  00        nop
2B33  65        mov     h,l
2B34  85        add     l
2B35  87        add     a
2B36  39        dad     sp
2B37  0F        rrc
2B38  11 15 1B  lxi     d,$1B15
2B3B  1D        dcr     e
2B3C  11 15 15  lxi     d,$1515
2B3F  06 01     mvi     b,$01
2B41  68        mov     l,b
2B42  1D        dcr     e
2B43  0E 19     mvi     c,$19
2B45  68        mov     l,b
2B46  12        stax    d
2B47  11 07 0E  lxi     d,$0E07
2B4A  17        ral
2B4B  13        inx     d
2B4C  65        mov     h,l
2B4D  48        mov     c,b
2B4E  01 6C 00  lxi     b,$006C
2B51  24        inr     h
2B52  00        nop
2B53  65        mov     h,l
2B54  87        add     a
2B55  88        adc     b
2B56  42        mov     b,d
2B57  11 07 0E  lxi     d,$0E07
2B5A  17        ral
2B5B  1B        dcx     d
2B5C  68        mov     l,b
2B5D  0A        ldax    b
2B5E  68        mov     l,b
2B5F  16 0E     mvi     d,$0E
2B61  25        dcr     h
2B62  16 03     mvi     d,$03
2B64  22 0D 09  shld    $090D
2B67  88        adc     b
2B68  67        mov     h,a
2B69  67        mov     h,a
2B6A  65        mov     h,l
2B6B  9E        sbb     m
2B6C  01 6C 00  lxi     b,$006C
2B6F  24        inr     h
2B70  00        nop
2B71  65        mov     h,l
2B72  FF        rst     7
2B73  45        mov     b,l
2B74  45        mov     b,l
2B75  41        mov     b,c
2B76  41        mov     b,c
2B77  47        mov     b,a
2B78  47        mov     b,a
2B79  4A        mov     c,d
2B7A  4A        mov     c,d
2B7B  51        mov     d,c
2B7C  51        mov     d,c
2B7D  5F        mov     e,a
2B7E  5F        mov     e,a
2B7F  65        mov     h,l
2B80  FC 00 6C  cm      $6C00
2B83  00        nop
2B84  18        nop                  ;Note: Alternative opcode used
2B85  00        nop
2B86  65        mov     h,l
2B87  31 35 39  lxi     sp,$3935
2B8A  3D        dcr     a
2B8B  41        mov     b,c
2B8C  45        mov     b,l
2B8D  49        mov     c,c
2B8E  4D        mov     c,l
2B8F  51        mov     d,c
2B90  55        mov     d,l
2B91  59        mov     e,c
2B92  5C        mov     e,h
2B93  68        mov     l,b
2B94  68        mov     l,b
2B95  46        mov     b,m
2B96  1C        inr     e
2B97  68        mov     l,b
2B98  3D        dcr     a
2B99  4A        mov     c,d
2B9A  45        mov     b,l
2B9B  47        mov     b,a
2B9C  46        mov     b,m
2B9D  4A        mov     c,d
2B9E  4E        mov     c,m
2B9F  41        mov     b,c
2BA0  46        mov     b,m
2BA1  14        inr     d
2BA2  68        mov     l,b
2BA3  1C        inr     e
2BA4  68        mov     l,b
2BA5  3D        dcr     a
2BA6  4A        mov     c,d
2BA7  45        mov     b,l
2BA8  68        mov     l,b
2BA9  52        mov     d,d
2BAA  3E 47     mvi     a,'G'
2BAC  3E 68     mvi     a,'h'
2BAE  55        mov     d,l
2BAF  0E 0A     mvi     c,$0A
2BB1  1C        inr     e
2BB2  68        mov     l,b
2BB3  5D        mov     e,l
2BB4  68        mov     l,b
2BB5  4A        mov     c,d
2BB6  12        stax    d
2BB7  1A        ldax    d
2BB8  25        dcr     h
2BB9  15        dcr     d
2BBA  0E 1E     mvi     c,$1E
2BBC  68        mov     l,b
2BBD  0D        dcr     c
2BBE  1A        ldax    d
2BBF  15        dcr     d
2BC0  11 05 68  lxi     d,$6805
2BC3  1F        rar
2BC4  09        dad     b
2BC5  0F        rrc
2BC6  0E 19     mvi     c,$19
2BC8  13        inx     d
2BC9  65        mov     h,l
2BCA  5C        mov     e,h
2BCB  01 6C 00  lxi     b,$006C
2BCE  18        nop                  ;Note: Alternative opcode used
2BCF  00        nop
2BD0  65        mov     h,l
2BD1  67        mov     h,a
2BD2  67        mov     h,a
2BD3  3D        dcr     a
2BD4  1A        ldax    d
2BD5  15        dcr     d
2BD6  11 05 68  lxi     d,$6805
2BD9  17        ral
2BDA  11 0D 0B  lxi     d,$0B0D
2BDD  17        ral
2BDE  0E 00     mvi     c,$00
2BE0  01 02 03  lxi     b,$0302
2BE3  04        inr     b
2BE4  05        dcr     b
2BE5  06 07     mvi     b,$07
2BE7  08        nop                  ;Note: Alternative opcode used
2BE8  09        dad     b
2BE9  0A        ldax    b
2BEA  0B        dcx     b
2BEB  0C        inr     c
2BEC  0D        dcr     c
2BED  0E 0F     mvi     c,$0F
2BEF  10        nop                  ;Note: Alternative opcode used
2BF0  11 12 13  lxi     d,$1312
2BF3  14        inr     d
2BF4  15        dcr     d
2BF5  16 17     mvi     d,$17
2BF7  18        nop                  ;Note: Alternative opcode used
2BF8  19        dad
2BF9  1A        ldax    d
2BFA  1B        dcx     d
2BFB  1C        inr     e
2BFC  1D        dcr     e
2BFD  1E 1F     mvi     e,$1F
2BFF  20        nop                  ;Note: Alternative opcode used
2C00  21 22 23  lxi     h,$2322
2C03  24        inr     h
2C04  25        dcr     h
2C05  26 27     mvi     h,$27
2C07  28        nop                  ;Note: Alternative opcode used
2C08  29        dad     h
2C09  2A 2B 2C  lhld    $2C2B
2C0C  2D        dcr     l
2C0D  2E 2F     mvi     l,$2F
2C0F  30        nop                  ;Note: Alternative opcode used
2C10  31 32 33  lxi     sp,$3332
2C13  34        inr     m
2C14  35        dcr     m
2C15  36 37     mvi     m,$37
2C17  38        nop                  ;Note: Alternative opcode used
2C18  39        dad     sp
2C19  3A 3B 3C  lda     $3C3B
2C1C  3D        dcr     a
2C1D  3E 3F     mvi     a,$3F
2C1F  40        mov     b,b
2C20  41        mov     b,c
2C21  42        mov     b,d
2C22  43        mov     b,e
2C23  44        mov     b,h
2C24  45        mov     b,l
2C25  46        mov     b,m
2C26  47        mov     b,a
2C27  48        mov     c,b
2C28  49        mov     c,c
2C29  4A        mov     c,d
2C2A  4B        mov     c,e
2C2B  4C        mov     c,h
2C2C  4D        mov     c,l
2C2D  4E        mov     c,m
2C2E  4F        mov     c,a
2C2F  50        mov     d,b
2C30  51        mov     d,c
2C31  52        mov     d,d
2C32  53        mov     d,e
2C33  54        mov     d,h
2C34  55        mov     d,l
2C35  56        mov     d,m
2C36  57        mov     d,a
2C37  58        mov     e,b
2C38  59        mov     e,c
2C39  5A        mov     e,d
2C3A  5B        mov     e,e
2C3B  5C        mov     e,h
2C3C  5D        mov     e,l
2C3D  5E        mov     e,m
2C3E  5F        mov     e,a
2C3F  60        mov     h,b
2C40  61        mov     h,c
2C41  62        mov     h,d
2C42  63        mov     h,e
2C43  3E 01     mvi     a,$01
2C45  C3 72 2C  jmp     $2C72
2C48  3E 02     mvi     a,$02
2C4A  C3 72 2C  jmp     $2C72
2C4D  3E 06     mvi     a,$06
2C4F  C3 72 2C  jmp     $2C72
2C52  3E 07     mvi     a,$07
2C54  C3 72 2C  jmp     $2C72
2C57  3E 08     mvi     a,$08
2C59  C3 72 2C  jmp     $2C72
2C5C  3E 09     mvi     a,$09
2C5E  C3 72 2C  jmp     $2C72
2C61  3E 0A     mvi     a,$0A
2C63  C3 72 2C  jmp     $2C72
2C66  3E 50     mvi     a,'P'
2C68  C3 72 2C  jmp     $2C72
2C6B  3E 51     mvi     a,'Q'
2C6D  C3 72 2C  jmp     $2C72
2C70  3E 52     mvi     a,'R'
2C72  32 52 61  sta     $6152
2C75  21 02 62  lxi     h,$6202
2C78  22 69 60  shld    $6069
2C7B  22 67 60  shld    $6067
2C7E  36 8D     mvi     m,$8D
2C80  23        inx     h
2C81  22 67 60  shld    $6067
2C84  CD 15 09  call    $0915
2C87  C9        ret
2C88  3A 52 61  lda     $6152
2C8B  FE 01     cpi     $01
2C8D  CA F0 2C  jz      $2CF0
2C90  FE 02     cpi     $02
2C92  CA 12 2D  jz      $2D12
2C95  FE 06     cpi     $06
2C97  CA 1E 2D  jz      $2D1E
2C9A  FE 07     cpi     $07
2C9C  CA 2A 2D  jz      $2D2A
2C9F  FE 08     cpi     $08
2CA1  CA 36 2D  jz      $2D36
2CA4  FE 09     cpi     $09
2CA6  CA 51 2D  jz      $2D51
2CA9  FE 0A     cpi     $0A
2CAB  CA 45 2D  jz      $2D45
2CAE  FE 2C     cpi     $2C
2CB0  CA CC 31  jz      $31CC
2CB3  FE 2D     cpi     $2D
2CB5  CA DD 31  jz      $31DD
2CB8  FE 2E     cpi     $2E
2CBA  CA A3 32  jz      $32A3
2CBD  FE 50     cpi     'P'
2CBF  CA E4 2C  jz      $2CE4
2CC2  FE 51     cpi     'Q'
2CC4  CA D8 2C  jz      $2CD8
2CC7  FE 52     cpi     'R'
2CC9  CA CC 2C  jz      $2CCC
2CCC  21 B3 2B  lxi     h,$2BB3
2CCF  22 EC 60  shld    $60EC
2CD2  21 B4 2B  lxi     h,$2BB4
2CD5  C3 3F 2D  jmp     $2D3F
2CD8  21 A3 2B  lxi     h,$2BA3
2CDB  22 EC 60  shld    $60EC
2CDE  21 A8 2B  lxi     h,$2BA8
2CE1  C3 3F 2D  jmp     $2D3F
2CE4  21 52 33  lxi     h,$3352
2CE7  22 EC 60  shld    $60EC
2CEA  21 04 36  lxi     h,$3604
2CED  C3 3F 2D  jmp     $2D3F
2CF0  21 00 28  lxi     h,$2800
2CF3  22 EC 60  shld    $60EC
2CF6  21 71 2B  lxi     h,$2B71
2CF9  22 EA 60  shld    $60EA
2CFC  3E FF     mvi     a,$FF
2CFE  32 EF 60  sta     $60EF
2D01  32 C3 60  sta     $60C3
2D04  3A 59 60  lda     $6059
2D07  E6 EF     ani     $EF
2D09  32 59 60  sta     $6059
2D0C  CD 24 0F  call    $0F24
2D0F  C3 2F 23  jmp     $232F
2D12  21 72 2B  lxi     h,$2B72
2D15  22 EC 60  shld    $60EC
2D18  21 95 2B  lxi     h,$2B95
2D1B  C3 3F 2D  jmp     $2D3F
2D1E  21 96 2B  lxi     h,$2B96
2D21  22 EC 60  shld    $60EC
2D24  21 A2 2B  lxi     h,$2BA2
2D27  C3 3F 2D  jmp     $2D3F
2D2A  21 A9 2B  lxi     h,$2BA9
2D2D  22 EC 60  shld    $60EC
2D30  21 AD 2B  lxi     h,$2BAD
2D33  C3 3F 2D  jmp     $2D3F
2D36  21 AE 2B  lxi     h,$2BAE
2D39  22 EC 60  shld    $60EC
2D3C  21 B4 2B  lxi     h,$2BB4
2D3F  22 EA 60  shld    $60EA
2D42  C3 FC 2C  jmp     $2CFC
2D45  21 6A 2B  lxi     h,$2B6A
2D48  22 EC 60  shld    $60EC
2D4B  21 71 2B  lxi     h,$2B71
2D4E  C3 3F 2D  jmp     $2D3F
2D51  21 D0 07  lxi     h,$07D0
2D54  CD 29 08  call    $0829
2D57  CD A8 0D  call    $0DA8
2D5A  21 B5 2B  lxi     h,$2BB5
2D5D  22 EC 60  shld    $60EC
2D60  21 DE 2B  lxi     h,$2BDE
2D63  C3 3F 2D  jmp     $2D3F
2D66  3E 04     mvi     a,$04
2D68  32 52 61  sta     $6152
2D6B  AF        xra     a
2D6C  32 C3 60  sta     $60C3
2D6F  2A 67 60  lhld    $6067
2D72  36 68     mvi     m,'h'
2D74  23        inx     h
2D75  22 67 60  shld    $6067
2D78  CD 15 09  call    $0915
2D7B  2A 67 60  lhld    $6067
2D7E  22 69 60  shld    $6069
2D81  C9        ret
2D82  DB F8     in      $F8
2D84  E6 10     ani     $10
2D86  C2 8F 2D  jnz     $2D8F
2D89  CD 14 0C  call    $0C14
2D8C  C3 82 2D  jmp     $2D82
2D8F  C3 09 0F  jmp     $0F09
2D92  CD C0 1D  call    $1DC0
2D95  2A 69 60  lhld    $6069
2D98  2B        dcx     h
2D99  22 69 60  shld    $6069
2D9C  22 67 60  shld    $6067
2D9F  CD 3E 1B  call    $1B3E
2DA2  06 1B     mvi     b,$1B
2DA4  C5        push    b
2DA5  CD B9 2D  call    $2DB9
2DA8  C1        pop     b
2DA9  05        dcr     b
2DAA  C2 A4 2D  jnz     $2DA4
2DAD  CD E7 1A  call    $1AE7
2DB0  3E 46     mvi     a,'F'
2DB2  32 3F 60  sta     $603F
2DB5  CD F5 09  call    $09F5
2DB8  C9        ret
2DB9  3E 05     mvi     a,$05
2DBB  32 52 61  sta     $6152
2DBE  2A 67 60  lhld    $6067
2DC1  36 75     mvi     m,'u'
2DC3  23        inx     h
2DC4  22 67 60  shld    $6067
2DC7  CD 15 09  call    $0915
2DCA  C9        ret
2DCB  CD 4D 2C  call    $2C4D
2DCE  CD 66 2D  call    $2D66
2DD1  2A 1D 60  lhld    $601D
2DD4  EB        xchg
2DD5  21 BC 01  lxi     h,$01BC
2DD8  CD 68 0D  call    $0D68
2DDB  CD 39 08  call    $0839
2DDE  CD 52 2C  call    $2C52
2DE1  CD 66 2D  call    $2D66
2DE4  2A 1D 60  lhld    $601D
2DE7  EB        xchg
2DE8  21 C4 02  lxi     h,$02C4
2DEB  CD 68 0D  call    $0D68
2DEE  CD 39 08  call    $0839
2DF1  CD 57 2C  call    $2C57
2DF4  CD 66 2D  call    $2D66
2DF7  CD 43 2C  call    $2C43
2DFA  CD 48 2C  call    $2C48
2DFD  21 00 40  lxi     h,$4000
2E00  CD 29 08  call    $0829
2E03  CD 92 2D  call    $2D92
2E06  CD 09 0F  call    $0F09
2E09  CD 66 2D  call    $2D66
2E0C  B7        ora     a
2E0D  C2 1F 2E  jnz     $2E1F
2E10  CD 61 2C  call    $2C61
2E13  CD 48 2C  call    $2C48
2E16  21 00 40  lxi     h,$4000
2E19  CD 29 08  call    $0829
2E1C  CD 92 2D  call    $2D92
2E1F  CD 82 2D  call    $2D82
2E22  CD 5C 2C  call    $2C5C
2E25  C9        ret
2E26  21 01 62  lxi     h,$6201
2E29  22 69 60  shld    $6069
2E2C  22 67 60  shld    $6067
2E2F  CD CB 2D  call    $2DCB
2E32  21 10 60  lxi     h,$6010
2E35  36 00     mvi     m,$00
2E37  C3 00 00  jmp     $0000
2E3A  CD 2E 30  call    $302E
2E3D  FE 0D     cpi     $0D
2E3F  CA 4A 2E  jz      $2E4A
2E42  FE 12     cpi     $12
2E44  CA 4F 2E  jz      $2E4F
2E47  C3 09 0F  jmp     $0F09
2E4A  3E 02     mvi     a,$02
2E4C  C3 51 2E  jmp     $2E51
2E4F  3E 01     mvi     a,$01
2E51  32 24 61  sta     $6124
2E54  CD B2 02  call    $02B2
2E57  21 00 62  lxi     h,$6200
2E5A  36 FF     mvi     m,$FF
2E5C  23        inx     h
2E5D  22 69 60  shld    $6069
2E60  36 6D     mvi     m,'m'
2E62  23        inx     h
2E63  22 67 60  shld    $6067
2E66  C3 00 00  jmp     $0000
2E69  3A 24 61  lda     $6124
2E6C  FE 01     cpi     $01
2E6E  CA 3A 32  jz      $323A
2E71  FE 02     cpi     $02
2E73  CA FC 2F  jz      $2FFC
2E76  C3 00 00  jmp     $0000
2E79  21 01 62  lxi     h,$6201
2E7C  22 69 60  shld    $6069
2E7F  22 67 60  shld    $6067
2E82  CD 6B 2C  call    $2C6B
2E85  CD 66 2D  call    $2D66
2E88  2A 1D 60  lhld    $601D
2E8B  EB        xchg
2E8C  21 50 01  lxi     h,$0150
2E8F  CD 68 0D  call    $0D68
2E92  CD 39 08  call    $0839
2E95  CD 52 2C  call    $2C52
2E98  CD 66 2D  call    $2D66
2E9B  2A 1D 60  lhld    $601D
2E9E  EB        xchg
2E9F  21 28 02  lxi     h,$0228
2EA2  CD 68 0D  call    $0D68
2EA5  CD 39 08  call    $0839
2EA8  CD 70 2C  call    $2C70
2EAB  CD 66 2D  call    $2D66
2EAE  CD 66 2C  call    $2C66
2EB1  CD A8 0D  call    $0DA8
2EB4  CD FA 2D  call    $2DFA
2EB7  C3 32 2E  jmp     $2E32
2EBA  CD 09 0F  call    $0F09
2EBD  21 82 2F  lxi     h,$2F82
2EC0  22 08 60  shld    $6008
2EC3  AF        xra     a
2EC4  32 24 61  sta     $6124
2EC7  DB F8     in      $F8
2EC9  E6 08     ani     $08
2ECB  C2 EB 2E  jnz     $2EEB
2ECE  CD 09 0F  call    $0F09
2ED1  DB F8     in      $F8
2ED3  E6 08     ani     $08
2ED5  CA D1 2E  jz      $2ED1
2ED8  DB F8     in      $F8
2EDA  E6 04     ani     $04
2EDC  C2 D8 2E  jnz     $2ED8
2EDF  CD 09 0F  call    $0F09
2EE2  21 24 13  lxi     h,$1324
2EE5  22 08 60  shld    $6008
2EE8  C3 FC 2F  jmp     $2FFC
2EEB  CD 4F 2F  call    $2F4F
2EEE  3A 24 61  lda     $6124
2EF1  CD 5E 2F  call    $2F5E
2EF4  CA 2F 2F  jz      $2F2F
2EF7  3A 24 61  lda     $6124
2EFA  3C        inr     a
2EFB  32 24 61  sta     $6124
2EFE  CD 4F 2F  call    $2F4F
2F01  3A 25 61  lda     $6125
2F04  CD 5E 2F  call    $2F5E
2F07  CA 20 2F  jz      $2F20
2F0A  CD 09 0F  call    $0F09
2F0D  21 FF 8F  lxi     h,$8FFF
2F10  CD 29 08  call    $0829
2F13  CD 09 0F  call    $0F09
2F16  3A 24 61  lda     $6124
2F19  3D        dcr     a
2F1A  32 24 61  sta     $6124
2F1D  C3 C7 2E  jmp     $2EC7
2F20  CD 09 0F  call    $0F09
2F23  C3 C7 2E  jmp     $2EC7
2F26  21 24 13  lxi     h,$1324
2F29  22 08 60  shld    $6008
2F2C  C3 FC 2F  jmp     $2FFC
2F2F  3A 24 61  lda     $6124
2F32  3D        dcr     a
2F33  32 24 61  sta     $6124
2F36  CD 4F 2F  call    $2F4F
2F39  3A 25 61  lda     $6125
2F3C  CD 5E 2F  call    $2F5E
2F3F  CA 45 2F  jz      $2F45
2F42  CD 09 0F  call    $0F09
2F45  3A 24 61  lda     $6124
2F48  3C        inr     a
2F49  32 24 61  sta     $6124
2F4C  C3 C7 2E  jmp     $2EC7
2F4F  3A 24 61  lda     $6124
2F52  21 A3 2F  lxi     h,$2FA3
2F55  16 00     mvi     d,$00
2F57  5F        mov     e,a
2F58  19        dad
2F59  7E        mov     a,m
2F5A  32 25 61  sta     $6125
2F5D  C9        ret
2F5E  AF        xra     a
2F5F  32 26 61  sta     $6126
2F62  3E 01     mvi     a,$01
2F64  32 27 61  sta     $6127
2F67  21 FF FF  lxi     h,$FFFF
2F6A  2B        dcx     h
2F6B  7D        mov     a,l
2F6C  B4        ora     h
2F6D  CA 7C 2F  jz      $2F7C
2F70  3A 27 61  lda     $6127
2F73  B7        ora     a
2F74  C2 6A 2F  jnz     $2F6A
2F77  3A 26 61  lda     $6126
2F7A  B7        ora     a
2F7B  C9        ret
2F7C  CD 09 0F  call    $0F09
2F7F  C3 7C 2F  jmp     $2F7C
2F82  DB E8     in      $E8
2F84  FE 68     cpi     'h'
2F86  CA 99 2F  jz      $2F99
2F89  47        mov     b,a
2F8A  3A 25 61  lda     $6125
2F8D  B8        cmp     b
2F8E  C2 CD 04  jnz     $04CD
2F91  3E 0F     mvi     a,$0F
2F93  32 26 61  sta     $6126
2F96  C3 CD 04  jmp     $04CD
2F99  3A 27 61  lda     $6127
2F9C  3D        dcr     a
2F9D  32 27 61  sta     $6127
2FA0  C3 CD 04  jmp     $04CD
2FA3  43        mov     b,e
2FA4  4D        mov     c,l
2FA5  45        mov     b,l
2FA6  4F        mov     c,a
2FA7  4A        mov     c,d
2FA8  47        mov     b,a
2FA9  48        mov     c,b
2FAA  49        mov     c,c
2FAB  50        mov     d,b
2FAC  4B        mov     c,e
2FAD  4C        mov     c,h
2FAE  5D        mov     e,l
2FAF  4E        mov     c,m
2FB0  46        mov     b,m
2FB1  42        mov     b,d
2FB2  30        nop                  ;Note: Alternative opcode used
2FB3  2B        dcx     h
2FB4  28        nop                  ;Note: Alternative opcode used
2FB5  24        inr     h
2FB6  20        nop                  ;Note: Alternative opcode used
2FB7  1C        inr     e
2FB8  18        nop                  ;Note: Alternative opcode used
2FB9  14        inr     d
2FBA  10        nop                  ;Note: Alternative opcode used
2FBB  0C        inr     c
2FBC  08        nop                  ;Note: Alternative opcode used
2FBD  04        inr     b
2FBE  00        nop
2FBF  2E 35     mvi     l,$35
2FC1  01 05 09  lxi     b,$0905
2FC4  0D        dcr     c
2FC5  11 15 19  lxi     d,$1915
2FC8  1D        dcr     e
2FC9  21 25 29  lxi     h,$2925
2FCC  2C        inr     l
2FCD  41        mov     b,c
2FCE  31 2D 2A  lxi     sp,$2A2D
2FD1  26 22     mvi     h,$22
2FD3  1E 1A     mvi     e,$1A
2FD5  16 12     mvi     d,$12
2FD7  0E 0A     mvi     c,$0A
2FD9  06 02     mvi     b,$02
2FDB  3F        cmc
2FDC  3E 2F     mvi     a,$2F
2FDE  03        inx     b
2FDF  07        rlc
2FE0  0B        dcx     b
2FE1  0F        rrc
2FE2  13        inx     d
2FE3  17        ral
2FE4  1B        dcx     d
2FE5  1F        rar
2FE6  23        inx     h
2FE7  27        daa
2FE8  3E 37     mvi     a,$37
2FEA  33        inx     sp
2FEB  34        inr     m
2FEC  32 36 5E  sta     $5E36
2FEF  5C        mov     e,h
2FF0  57        mov     d,a
2FF1  58        mov     e,b
2FF2  52        mov     d,d
2FF3  53        mov     d,e
2FF4  54        mov     d,h
2FF5  55        mov     d,l
2FF6  51        mov     d,c
2FF7  66        mov     h,m
2FF8  65        mov     h,l
2FF9  64        mov     h,h
2FFA  44        mov     b,h
2FFB  56        mov     d,m
2FFC  CD 09 0F  call    $0F09
2FFF  01 BC 30  lxi     b,$30BC
3002  CD 6E 30  call    $306E
3005  21 44 30  lxi     h,$3044
3008  22 38 61  shld    $6138
300B  21 6D 16  lxi     h,$166D
300E  22 3A 61  shld    $613A
3011  3E 05     mvi     a,$05
3013  32 3C 61  sta     $613C
3016  CD 2E 30  call    $302E
3019  21 3C 61  lxi     h,$613C
301C  46        mov     b,m
301D  2A 3A 61  lhld    $613A
3020  CD 95 09  call    $0995
3023  DA 16 30  jc      $3016
3026  47        mov     b,a
3027  79        mov     a,c
3028  2A 38 61  lhld    $6138
302B  C3 21 0B  jmp     $0B21
302E  21 01 62  lxi     h,$6201
3031  22 69 60  shld    $6069
3034  22 67 60  shld    $6067
3037  AF        xra     a
3038  32 65 60  sta     $6065
303B  CD E2 09  call    $09E2
303E  CA 3B 30  jz      $303B
3041  EB        xchg
3042  7E        mov     a,m
3043  C9        ret
3044  BA        cmp     d
3045  2E 4E     mvi     l,'N'
3047  30        nop                  ;Note: Alternative opcode used
3048  F5        push    psw
3049  30        nop                  ;Note: Alternative opcode used
304A  26 2E     mvi     h,$2E
304C  79        mov     a,c
304D  2E 01     mvi     l,$01
304F  86        add     m
3050  30        nop                  ;Note: Alternative opcode used
3051  CD 6E 30  call    $306E
3054  CD 2E 30  call    $302E
3057  FE 90     cpi     $90
3059  C2 54 30  jnz     $3054
305C  CD 6E 30  call    $306E
305F  50        mov     d,b
3060  59        mov     e,c
3061  21 BF 30  lxi     h,$30BF
3064  CD EE 09  call    $09EE
3067  B5        ora     l
3068  C2 54 30  jnz     $3054
306B  CA FC 2F  jz      $2FFC
306E  0A        ldax    b
306F  32 59 60  sta     $6059
3072  03        inx     b
3073  0A        ldax    b
3074  32 5A 60  sta     $605A
3077  03        inx     b
3078  0A        ldax    b
3079  32 5B 60  sta     $605B
307C  03        inx     b
307D  CD 24 0F  call    $0F24
3080  CD 34 0F  call    $0F34
3083  C3 44 0F  jmp     $0F44
3086  00        nop
3087  00        nop
3088  00        nop
3089  FF        rst     7
308A  3E FF     mvi     a,$FF
308C  FF        rst     7
308D  3D        dcr     a
308E  FF        rst     7
308F  FF        rst     7
3090  3B        dcx     sp
3091  FF        rst     7
3092  3E FF     mvi     a,$FF
3094  FF        rst     7
3095  3D        dcr     a
3096  FF        rst     7
3097  FF        rst     7
3098  3B        dcx     sp
3099  FF        rst     7
309A  FF        rst     7
309B  1F        rar
309C  FF        rst     7
309D  FF        rst     7
309E  FF        rst     7
309F  37        stc
30A0  FF        rst     7
30A1  FF        rst     7
30A2  2F        cma
30A3  FF        rst     7
30A4  FF        rst     7
30A5  FF        rst     7
30A6  2F        cma
30A7  FF        rst     7
30A8  FF        rst     7
30A9  37        stc
30AA  FF        rst     7
30AB  FF        rst     7
30AC  1F        rar
30AD  FF        rst     7
30AE  FF        rst     7
30AF  3E FF     mvi     a,$FF
30B1  FF        rst     7
30B2  3D        dcr     a
30B3  FF        rst     7
30B4  FF        rst     7
30B5  3B        dcx     sp
30B6  37        stc
30B7  FF        rst     7
30B8  FF        rst     7
30B9  2F        cma
30BA  FF        rst     7
30BB  FF        rst     7
30BC  FF        rst     7
30BD  1F        rar
30BE  FF        rst     7
30BF  0F        rrc
30C0  14        inr     d
30C1  1C        inr     e
30C2  2D        dcr     l
30C3  18        nop                  ;Note: Alternative opcode used
30C4  26 2E     mvi     h,$2E
30C6  20        nop                  ;Note: Alternative opcode used
30C7  65        mov     h,l
30C8  76        hlt
30C9  75        mov     m,l
30CA  8A        adc     d
30CB  7C        mov     a,h
30CC  7D        mov     a,l
30CD  84        add     h
30CE  68        mov     l,b
30CF  92        sub     d
30D0  85        add     l
30D1  3F        cmc
30D2  31 3F 31  lxi     sp,$313F
30D5  3F        cmc
30D6  31 31 31  lxi     sp,$3131
30D9  3F        cmc
30DA  31 3F 31  lxi     sp,$313F
30DD  46        mov     b,m
30DE  31 4F 31  lxi     sp,$314F
30E1  58        mov     e,b
30E2  31 5D 31  lxi     sp,$315D
30E5  66        mov     h,m
30E6  31 76 31  lxi     sp,$3176
30E9  19        dad
30EA  31 1F 31  lxi     sp,$311F
30ED  25        dcr     h
30EE  31 A3 31  lxi     sp,$31A3
30F1  FC 2F 13  cm      $132F
30F4  31 21 BF  lxi     sp,$BF21
30F7  30        nop                  ;Note: Alternative opcode used
30F8  22 3A 61  shld    $613A
30FB  21 D1 30  lxi     h,$30D1
30FE  22 38 61  shld    $6138
3101  3E 12     mvi     a,$12
3103  32 3C 61  sta     $613C
3106  AF        xra     a
3107  32 24 61  sta     $6124
310A  CD 65 07  call    $0765
310D  CD A8 0D  call    $0DA8
3110  C3 16 30  jmp     $3016
3113  CD 44 0E  call    $0E44
3116  C3 2B 31  jmp     $312B
3119  CD 78 0E  call    $0E78
311C  C3 2B 31  jmp     $312B
311F  CD E5 0D  call    $0DE5
3122  C3 2B 31  jmp     $312B
3125  CD A7 0E  call    $0EA7
3128  C3 2B 31  jmp     $312B
312B  CD 09 0F  call    $0F09
312E  C3 0A 31  jmp     $310A
3131  3E 60     mvi     a,'`'
3133  CD 1F 32  call    $321F
3136  CD 2F 0C  call    $0C2F
3139  CD 2F 0C  call    $0C2F
313C  C3 0A 31  jmp     $310A
313F  78        mov     a,b
3140  CD 1F 32  call    $321F
3143  C3 0A 31  jmp     $310A
3146  78        mov     a,b
3147  06 0A     mvi     b,$0A
3149  CD 21 32  call    $3221
314C  C3 0A 31  jmp     $310A
314F  78        mov     a,b
3150  06 14     mvi     b,$14
3152  CD 21 32  call    $3221
3155  C3 0A 31  jmp     $310A
3158  3E 63     mvi     a,'c'
315A  C3 50 31  jmp     $3150
315D  CD C7 31  call    $31C7
3160  CD FE 31  call    $31FE
3163  C3 6F 31  jmp     $316F
3166  CD D8 31  call    $31D8
3169  CD F2 31  call    $31F2
316C  C3 6F 31  jmp     $316F
316F  AF        xra     a
3170  32 C3 60  sta     $60C3
3173  C3 0A 31  jmp     $310A
3176  06 14     mvi     b,$14
3178  C5        push    b
3179  3E 20     mvi     a,$20
317B  32 3F 60  sta     $603F
317E  CD F5 09  call    $09F5
3181  CD C0 1D  call    $1DC0
3184  CD 14 0C  call    $0C14
3187  CD 14 0C  call    $0C14
318A  3E 20     mvi     a,$20
318C  32 3F 60  sta     $603F
318F  CD F5 09  call    $09F5
3192  CD 2F 0C  call    $0C2F
3195  CD 2F 0C  call    $0C2F
3198  C1        pop     b
3199  05        dcr     b
319A  C2 78 31  jnz     $3178
319D  CD A8 0D  call    $0DA8
31A0  C3 0A 31  jmp     $310A
31A3  3A 30 60  lda     $6030
31A6  F5        push    psw
31A7  3E FF     mvi     a,$FF
31A9  32 30 60  sta     $6030
31AC  3A 24 61  lda     $6124
31AF  B7        ora     a
31B0  2F        cma
31B1  32 24 61  sta     $6124
31B4  CA BD 31  jz      $31BD
31B7  CD 2F 0C  call    $0C2F
31BA  C3 C0 31  jmp     $31C0
31BD  CD 14 0C  call    $0C14
31C0  F1        pop     psw
31C1  32 30 60  sta     $6030
31C4  C3 16 30  jmp     $3016
31C7  3E 2C     mvi     a,$2C
31C9  C3 E9 31  jmp     $31E9
31CC  21 73 2B  lxi     h,$2B73
31CF  22 EC 60  shld    $60EC
31D2  21 7E 2B  lxi     h,$2B7E
31D5  C3 3F 2D  jmp     $2D3F
31D8  3E 2D     mvi     a,$2D
31DA  C3 E9 31  jmp     $31E9
31DD  21 87 2B  lxi     h,$2B87
31E0  22 EC 60  shld    $60EC
31E3  21 93 2B  lxi     h,$2B93
31E6  C3 3F 2D  jmp     $2D3F
31E9  2A 69 60  lhld    $6069
31EC  22 67 60  shld    $6067
31EF  C3 72 2C  jmp     $2C72
31F2  06 0D     mvi     b,$0D
31F4  C5        push    b
31F5  CD B9 2D  call    $2DB9
31F8  C1        pop     b
31F9  05        dcr     b
31FA  C2 F4 31  jnz     $31F4
31FD  C9        ret
31FE  06 0C     mvi     b,$0C
3200  C5        push    b
3201  CD C0 1D  call    $1DC0
3204  C1        pop     b
3205  05        dcr     b
3206  C2 00 32  jnz     $3200
3209  21 73 2B  lxi     h,$2B73
320C  06 0C     mvi     b,$0C
320E  C5        push    b
320F  E5        push    h
3210  7E        mov     a,m
3211  CD E9 17  call    $17E9
3214  CD 3C 0C  call    $0C3C
3217  E1        pop     h
3218  23        inx     h
3219  C1        pop     b
321A  05        dcr     b
321B  C2 0E 32  jnz     $320E
321E  C9        ret
321F  06 14     mvi     b,$14
3221  32 3F 60  sta     $603F
3224  C5        push    b
3225  CD F5 09  call    $09F5
3228  C1        pop     b
3229  05        dcr     b
322A  C2 24 32  jnz     $3224
322D  C9        ret
322E  00        nop
322F  04        inr     b
3230  08        nop                  ;Note: Alternative opcode used
3231  0C        inr     c
3232  57        mov     d,a
3233  32 5D 32  sta     $325D
3236  AF        xra     a
3237  32 D9 32  sta     $32D9
323A  2A 55 60  lhld    $6055
323D  22 51 60  shld    $6051
3240  CD 09 0F  call    $0F09
3243  21 2E 32  lxi     h,$322E
3246  22 3A 61  shld    $613A
3249  21 32 32  lxi     h,$3232
324C  22 38 61  shld    $6138
324F  3E 04     mvi     a,$04
3251  32 3C 61  sta     $613C
3254  C3 0A 31  jmp     $310A
3257  21 2D 00  lxi     h,$002D
325A  22 33 61  shld    $6133
325D  CD 89 32  call    $3289
3260  06 28     mvi     b,$28
3262  C5        push    b
3263  CD 2F 0C  call    $0C2F
3266  C1        pop     b
3267  05        dcr     b
3268  C2 62 32  jnz     $3262
326B  2A 33 61  lhld    $6133
326E  2B        dcx     h
326F  22 33 61  shld    $6133
3272  7C        mov     a,h
3273  B5        ora     l
3274  C2 5D 32  jnz     $325D
3277  06 16     mvi     b,$16
3279  C5        push    b
327A  CD A8 0D  call    $0DA8
327D  C1        pop     b
327E  05        dcr     b
327F  C2 79 32  jnz     $3279
3282  AF        xra     a
3283  32 C3 60  sta     $60C3
3286  C3 0A 31  jmp     $310A
3289  06 14     mvi     b,$14
328B  C5        push    b
328C  CD 98 32  call    $3298
328F  CD A8 0D  call    $0DA8
3292  C1        pop     b
3293  05        dcr     b
3294  C2 8B 32  jnz     $328B
3297  C9        ret
3298  3E 2E     mvi     a,$2E
329A  2A 69 60  lhld    $6069
329D  22 67 60  shld    $6067
32A0  C3 72 2C  jmp     $2C72
32A3  21 DF 2B  lxi     h,$2BDF
32A6  22 EC 60  shld    $60EC
32A9  21 42 2C  lxi     h,$2C42
32AC  C3 3F 2D  jmp     $2D3F
32AF  01 8B 10  lxi     b,$108B
32B2  C5        push    b
32B3  CD C0 32  call    $32C0
32B6  C1        pop     b
32B7  0B        dcx     b
32B8  78        mov     a,b
32B9  B1        ora     c
32BA  C2 B2 32  jnz     $32B2
32BD  C3 0A 31  jmp     $310A
32C0  CD 3B 07  call    $073B
32C3  3A 14 60  lda     $6014
32C6  B7        ora     a
32C7  C2 C3 32  jnz     $32C3
32CA  21 00 25  lxi     h,$2500
32CD  CD 29 08  call    $0829
32D0  CD 65 07  call    $0765
32D3  21 00 25  lxi     h,$2500
32D6  C3 29 08  jmp     $0829
32D9  06 14     mvi     b,$14
32DB  C5        push    b
32DC  CD F0 32  call    $32F0
32DF  21 00 20  lxi     h,$2000
32E2  CD 29 08  call    $0829
32E5  CD F8 32  call    $32F8
32E8  C1        pop     b
32E9  05        dcr     b
32EA  C2 DB 32  jnz     $32DB
32ED  C3 0A 31  jmp     $310A
32F0  3E 31     mvi     a,$31
32F2  32 3F 60  sta     $603F
32F5  C3 F5 09  jmp     $09F5
32F8  CD 65 07  call    $0765
32FB  3E 09     mvi     a,$09
32FD  32 3F 60  sta     $603F
3300  CD DC 05  call    $05DC
3303  3E 1C     mvi     a,$1C
3305  32 15 60  sta     $6015
3308  CD 39 08  call    $0839
330B  3A 1F 60  lda     $601F
330E  5F        mov     e,a
330F  16 00     mvi     d,$00
3311  2A 1D 60  lhld    $601D
3314  19        dad
3315  22 1D 60  shld    $601D
3318  C9        ret
3319  DB E8     in      $E8
331B  FE 68     cpi     'h'
331D  C2 CD 04  jnz     $04CD
3320  3E 01     mvi     a,$01
3322  32 24 61  sta     $6124
3325  C3 CD 04  jmp     $04CD
3328  2A 08 60  lhld    $6008
332B  EB        xchg
332C  21 19 33  lxi     h,$3319
332F  22 08 60  shld    $6008
3332  AF        xra     a
3333  32 24 61  sta     $6124
3336  3A 24 61  lda     $6124
3339  B7        ora     a
333A  CA 36 33  jz      $3336
333D  AF        xra     a
333E  4F        mov     c,a
333F  32 24 61  sta     $6124
3342  3A 24 61  lda     $6124
3345  0C        inr     c
3346  B7        ora     a
3347  CA 42 33  jz      $3342
334A  EB        xchg
334B  22 08 60  shld    $6008
334E  79        mov     a,c
334F  FE A8     cpi     $A8
3351  C9        ret
3352  65        mov     h,l
3353  1C        inr     e
3354  02        stax    b
3355  6C        mov     l,h
3356  00        nop
3357  18        nop                  ;Note: Alternative opcode used
3358  00        nop
3359  65        mov     h,l
335A  1C        inr     e
335B  1C        inr     e
335C  1C        inr     e
335D  1C        inr     e
335E  1C        inr     e
335F  1C        inr     e
3360  1C        inr     e
3361  1C        inr     e
3362  1C        inr     e
3363  1C        inr     e
3364  1C        inr     e
3365  1C        inr     e
3366  1C        inr     e
3367  81        add     c
3368  1C        inr     e
3369  1C        inr     e
336A  1C        inr     e
336B  1C        inr     e
336C  1C        inr     e
336D  1C        inr     e
336E  1C        inr     e
336F  1C        inr     e
3370  1C        inr     e
3371  1C        inr     e
3372  1C        inr     e
3373  1C        inr     e
3374  1C        inr     e
3375  1C        inr     e
3376  1C        inr     e
3377  1C        inr     e
3378  1C        inr     e
3379  81        add     c
337A  1C        inr     e
337B  1C        inr     e
337C  1C        inr     e
337D  1C        inr     e
337E  1C        inr     e
337F  1C        inr     e
3380  1C        inr     e
3381  1C        inr     e
3382  1C        inr     e
3383  1C        inr     e
3384  1C        inr     e
3385  1C        inr     e
3386  1C        inr     e
3387  1C        inr     e
3388  1C        inr     e
3389  1C        inr     e
338A  1C        inr     e
338B  1C        inr     e
338C  1C        inr     e
338D  7A        mov     a,d
338E  65        mov     h,l
338F  AC        xra     h
3390  02        stax    b
3391  6C        mov     l,h
3392  00        nop
3393  18        nop                  ;Note: Alternative opcode used
3394  00        nop
3395  65        mov     h,l
3396  08        nop                  ;Note: Alternative opcode used
3397  08        nop                  ;Note: Alternative opcode used
3398  08        nop                  ;Note: Alternative opcode used
3399  08        nop                  ;Note: Alternative opcode used
339A  08        nop                  ;Note: Alternative opcode used
339B  08        nop                  ;Note: Alternative opcode used
339C  08        nop                  ;Note: Alternative opcode used
339D  08        nop                  ;Note: Alternative opcode used
339E  08        nop                  ;Note: Alternative opcode used
339F  08        nop                  ;Note: Alternative opcode used
33A0  08        nop                  ;Note: Alternative opcode used
33A1  08        nop                  ;Note: Alternative opcode used
33A2  08        nop                  ;Note: Alternative opcode used
33A3  08        nop                  ;Note: Alternative opcode used
33A4  08        nop                  ;Note: Alternative opcode used
33A5  08        nop                  ;Note: Alternative opcode used
33A6  08        nop                  ;Note: Alternative opcode used
33A7  08        nop                  ;Note: Alternative opcode used
33A8  08        nop                  ;Note: Alternative opcode used
33A9  08        nop                  ;Note: Alternative opcode used
33AA  08        nop                  ;Note: Alternative opcode used
33AB  08        nop                  ;Note: Alternative opcode used
33AC  08        nop                  ;Note: Alternative opcode used
33AD  08        nop                  ;Note: Alternative opcode used
33AE  08        nop                  ;Note: Alternative opcode used
33AF  08        nop                  ;Note: Alternative opcode used
33B0  08        nop                  ;Note: Alternative opcode used
33B1  08        nop                  ;Note: Alternative opcode used
33B2  08        nop                  ;Note: Alternative opcode used
33B3  08        nop                  ;Note: Alternative opcode used
33B4  08        nop                  ;Note: Alternative opcode used
33B5  08        nop                  ;Note: Alternative opcode used
33B6  08        nop                  ;Note: Alternative opcode used
33B7  08        nop                  ;Note: Alternative opcode used
33B8  08        nop                  ;Note: Alternative opcode used
33B9  08        nop                  ;Note: Alternative opcode used
33BA  08        nop                  ;Note: Alternative opcode used
33BB  08        nop                  ;Note: Alternative opcode used
33BC  08        nop                  ;Note: Alternative opcode used
33BD  08        nop                  ;Note: Alternative opcode used
33BE  08        nop                  ;Note: Alternative opcode used
33BF  65        mov     h,l
33C0  58        mov     e,b
33C1  02        stax    b
33C2  6C        mov     l,h
33C3  00        nop
33C4  18        nop                  ;Note: Alternative opcode used
33C5  00        nop
33C6  65        mov     h,l
33C7  7C        mov     a,h
33C8  7C        mov     a,h
33C9  7C        mov     a,h
33CA  63        mov     h,e
33CB  63        mov     h,e
33CC  63        mov     h,e
33CD  63        mov     h,e
33CE  63        mov     h,e
33CF  63        mov     h,e
33D0  63        mov     h,e
33D1  63        mov     h,e
33D2  63        mov     h,e
33D3  63        mov     h,e
33D4  63        mov     h,e
33D5  A3        ana     e
33D6  18        nop                  ;Note: Alternative opcode used
33D7  00        nop
33D8  A3        ana     e
33D9  1C        inr     e
33DA  14        inr     d
33DB  0F        rrc
33DC  26 A3     mvi     h,$A3
33DE  90        sub     b
33DF  00        nop
33E0  A3        ana     e
33E1  1C        inr     e
33E2  14        inr     d
33E3  0F        rrc
33E4  26 65     mvi     h,'e'
33E6  F8        rm
33E7  01 6C 00  lxi     b,$006C
33EA  18        nop                  ;Note: Alternative opcode used
33EB  00        nop
33EC  65        mov     h,l
33ED  7C        mov     a,h
33EE  7D        mov     a,l
33EF  63        mov     h,e
33F0  63        mov     h,e
33F1  63        mov     h,e
33F2  63        mov     h,e
33F3  63        mov     h,e
33F4  63        mov     h,e
33F5  63        mov     h,e
33F6  63        mov     h,e
33F7  63        mov     h,e
33F8  63        mov     h,e
33F9  63        mov     h,e
33FA  A3        ana     e
33FB  2E 00     mvi     l,$00
33FD  A3        ana     e
33FE  7D        mov     a,l
33FF  7D        mov     a,l
3400  1C        inr     e
3401  14        inr     d
3402  0F        rrc
3403  26 A3     mvi     h,$A3
3405  90        sub     b
3406  00        nop
3407  A3        ana     e
3408  1C        inr     e
3409  14        inr     d
340A  0F        rrc
340B  26 65     mvi     h,'e'
340D  F8        rm
340E  01 6C 00  lxi     b,$006C
3411  18        nop                  ;Note: Alternative opcode used
3412  00        nop
3413  65        mov     h,l
3414  7D        mov     a,l
3415  7D        mov     a,l
3416  7C        mov     a,h
3417  63        mov     h,e
3418  63        mov     h,e
3419  63        mov     h,e
341A  63        mov     h,e
341B  63        mov     h,e
341C  63        mov     h,e
341D  63        mov     h,e
341E  63        mov     h,e
341F  63        mov     h,e
3420  63        mov     h,e
3421  63        mov     h,e
3422  A3        ana     e
3423  44        mov     b,h
3424  00        nop
3425  A3        ana     e
3426  7D        mov     a,l
3427  1C        inr     e
3428  14        inr     d
3429  0F        rrc
342A  26 A3     mvi     h,$A3
342C  90        sub     b
342D  00        nop
342E  A3        ana     e
342F  1C        inr     e
3430  14        inr     d
3431  0F        rrc
3432  26 7D     mvi     h,'}'
3434  7D        mov     a,l
3435  7D        mov     a,l
3436  7C        mov     a,h
3437  7C        mov     a,h
3438  84        add     h
3439  84        add     h
343A  65        mov     h,l
343B  F8        rm
343C  01 6C 00  lxi     b,$006C
343F  30        nop                  ;Note: Alternative opcode used
3440  00        nop
3441  65        mov     h,l
3442  88        adc     b
3443  84        add     h
3444  5E        mov     e,m
3445  30        nop                  ;Note: Alternative opcode used
3446  34        inr     m
3447  38        nop                  ;Note: Alternative opcode used
3448  3C        inr     a
3449  40        mov     b,b
344A  44        mov     b,h
344B  48        mov     c,b
344C  4C        mov     c,h
344D  50        mov     d,b
344E  54        mov     d,h
344F  58        mov     e,b
3450  5B        mov     e,e
3451  68        mov     l,b
3452  68        mov     l,b
3453  68        mov     l,b
3454  68        mov     l,b
3455  9F        sbb     a
3456  81        add     c
3457  2E 00     mvi     l,$00
3459  04        inr     b
345A  08        nop                  ;Note: Alternative opcode used
345B  0C        inr     c
345C  10        nop                  ;Note: Alternative opcode used
345D  14        inr     d
345E  18        nop                  ;Note: Alternative opcode used
345F  1C        inr     e
3460  20        nop                  ;Note: Alternative opcode used
3461  24        inr     h
3462  28        nop                  ;Note: Alternative opcode used
3463  2B        dcx     h
3464  65        mov     h,l
3465  10        nop                  ;Note: Alternative opcode used
3466  02        stax    b
3467  6C        mov     l,h
3468  00        nop
3469  18        nop                  ;Note: Alternative opcode used
346A  00        nop
346B  65        mov     h,l
346C  31 35 39  lxi     sp,$3935
346F  3D        dcr     a
3470  41        mov     b,c
3471  45        mov     b,l
3472  49        mov     c,c
3473  4D        mov     c,l
3474  51        mov     d,c
3475  55        mov     d,l
3476  59        mov     e,c
3477  5C        mov     e,h
3478  A3        ana     e
3479  5A        mov     e,d
347A  00        nop
347B  A3        ana     e
347C  01 05 09  lxi     b,$0905
347F  0D        dcr     c
3480  11 15 19  lxi     d,$1915
3483  1D        dcr     e
3484  21 25 29  lxi     h,$2925
3487  2C        inr     l
3488  65        mov     h,l
3489  04        inr     b
348A  02        stax    b
348B  6C        mov     l,h
348C  00        nop
348D  18        nop                  ;Note: Alternative opcode used
348E  00        nop
348F  65        mov     h,l
3490  32 36 3A  sta     $3A36
3493  3E 42     mvi     a,'B'
3495  46        mov     b,m
3496  4A        mov     c,d
3497  4E        mov     c,m
3498  52        mov     d,d
3499  56        mov     d,m
349A  5A        mov     e,d
349B  5D        mov     e,l
349C  A3        ana     e
349D  5A        mov     e,d
349E  00        nop
349F  A3        ana     e
34A0  02        stax    b
34A1  06 0A     mvi     b,$0A
34A3  0E 12     mvi     c,$12
34A5  16 1A     mvi     d,$1A
34A7  1E 22     mvi     e,$22
34A9  26 2A     mvi     h,$2A
34AB  2D        dcr     l
34AC  65        mov     h,l
34AD  04        inr     b
34AE  02        stax    b
34AF  6C        mov     l,h
34B0  00        nop
34B1  18        nop                  ;Note: Alternative opcode used
34B2  00        nop
34B3  65        mov     h,l
34B4  5F        mov     e,a
34B5  33        inx     sp
34B6  37        stc
34B7  3B        dcx     sp
34B8  3F        cmc
34B9  43        mov     b,e
34BA  47        mov     b,a
34BB  4B        mov     c,e
34BC  4F        mov     c,a
34BD  53        mov     d,e
34BE  57        mov     d,a
34BF  A3        ana     e
34C0  6C        mov     l,h
34C1  00        nop
34C2  A3        ana     e
34C3  2F        cma
34C4  03        inx     b
34C5  07        rlc
34C6  0B        dcx     b
34C7  0F        rrc
34C8  13        inx     d
34C9  17        ral
34CA  1B        dcx     d
34CB  1F        rar
34CC  23        inx     h
34CD  27        daa
34CE  84        add     h
34CF  88        adc     b
34D0  65        mov     h,l
34D1  F8        rm
34D2  01 6C 00  lxi     b,$006C
34D5  24        inr     h
34D6  00        nop
34D7  65        mov     h,l
34D8  84        add     h
34D9  84        add     h
34DA  60        mov     h,b
34DB  62        mov     h,d
34DC  61        mov     h,c
34DD  63        mov     h,e
34DE  65        mov     h,l
34DF  9C        sbb     h
34E0  00        nop
34E1  6C        mov     l,h
34E2  00        nop
34E3  18        nop                  ;Note: Alternative opcode used
34E4  00        nop
34E5  65        mov     h,l
34E6  9F        sbb     a
34E7  68        mov     l,b
34E8  68        mov     l,b
34E9  68        mov     l,b
34EA  68        mov     l,b
34EB  68        mov     l,b
34EC  68        mov     l,b
34ED  30        nop                  ;Note: Alternative opcode used
34EE  79        mov     a,c
34EF  18        nop                  ;Note: Alternative opcode used
34F0  30        nop                  ;Note: Alternative opcode used
34F1  30        nop                  ;Note: Alternative opcode used
34F2  30        nop                  ;Note: Alternative opcode used
34F3  68        mov     l,b
34F4  68        mov     l,b
34F5  68        mov     l,b
34F6  68        mov     l,b
34F7  68        mov     l,b
34F8  68        mov     l,b
34F9  68        mov     l,b
34FA  68        mov     l,b
34FB  34        inr     m
34FC  34        inr     m
34FD  34        inr     m
34FE  79        mov     a,c
34FF  18        nop                  ;Note: Alternative opcode used
3500  34        inr     m
3501  68        mov     l,b
3502  68        mov     l,b
3503  68        mov     l,b
3504  68        mov     l,b
3505  68        mov     l,b
3506  68        mov     l,b
3507  38        nop                  ;Note: Alternative opcode used
3508  38        nop                  ;Note: Alternative opcode used
3509  38        nop                  ;Note: Alternative opcode used
350A  79        mov     a,c
350B  18        nop                  ;Note: Alternative opcode used
350C  38        nop                  ;Note: Alternative opcode used
350D  38        nop                  ;Note: Alternative opcode used
350E  38        nop                  ;Note: Alternative opcode used
350F  65        mov     h,l
3510  28        nop                  ;Note: Alternative opcode used
3511  02        stax    b
3512  6C        mov     l,h
3513  00        nop
3514  18        nop                  ;Note: Alternative opcode used
3515  00        nop
3516  65        mov     h,l
3517  84        add     h
3518  A3        ana     e
3519  3C        inr     a
351A  00        nop
351B  A3        ana     e
351C  30        nop                  ;Note: Alternative opcode used
351D  30        nop                  ;Note: Alternative opcode used
351E  18        nop                  ;Note: Alternative opcode used
351F  30        nop                  ;Note: Alternative opcode used
3520  30        nop                  ;Note: Alternative opcode used
3521  A3        ana     e
3522  78        mov     a,b
3523  00        nop
3524  A3        ana     e
3525  34        inr     m
3526  34        inr     m
3527  18        nop                  ;Note: Alternative opcode used
3528  34        inr     m
3529  34        inr     m
352A  A3        ana     e
352B  48        mov     c,b
352C  00        nop
352D  A3        ana     e
352E  38        nop                  ;Note: Alternative opcode used
352F  38        nop                  ;Note: Alternative opcode used
3530  18        nop                  ;Note: Alternative opcode used
3531  38        nop                  ;Note: Alternative opcode used
3532  38        nop                  ;Note: Alternative opcode used
3533  84        add     h
3534  88        adc     b
3535  65        mov     h,l
3536  1C        inr     e
3537  02        stax    b
3538  6C        mov     l,h
3539  00        nop
353A  24        inr     h
353B  00        nop
353C  65        mov     h,l
353D  A3        ana     e
353E  87        add     a
353F  00        nop
3540  A3        ana     e
3541  42        mov     b,d
3542  46        mov     b,m
3543  4A        mov     c,d
3544  3A 41 46  lda     $4641
3547  3D        dcr     a
3548  3E 68     mvi     a,'h'
354A  68        mov     l,b
354B  32 39 45  sta     $4539
354E  3D        dcr     a
354F  35        dcr     m
3550  43        mov     b,e
3551  31 84 84  lxi     sp,$8484
3554  65        mov     h,l
3555  25        dcr     h
3556  02        stax    b
3557  6C        mov     l,h
3558  00        nop
3559  18        nop                  ;Note: Alternative opcode used
355A  00        nop
355B  65        mov     h,l
355C  88        adc     b
355D  4F        mov     c,a
355E  4F        mov     c,a
355F  4F        mov     c,a
3560  6B        mov     l,e
3561  4F        mov     c,a
3562  4F        mov     c,a
3563  4F        mov     c,a
3564  67        mov     h,a
3565  4F        mov     c,a
3566  4F        mov     c,a
3567  6B        mov     l,e
3568  4F        mov     c,a
3569  4F        mov     c,a
356A  67        mov     h,a
356B  20        nop                  ;Note: Alternative opcode used
356C  20        nop                  ;Note: Alternative opcode used
356D  20        nop                  ;Note: Alternative opcode used
356E  20        nop                  ;Note: Alternative opcode used
356F  20        nop                  ;Note: Alternative opcode used
3570  9E        sbb     m
3571  9E        sbb     m
3572  20        nop                  ;Note: Alternative opcode used
3573  20        nop                  ;Note: Alternative opcode used
3574  20        nop                  ;Note: Alternative opcode used
3575  20        nop                  ;Note: Alternative opcode used
3576  20        nop                  ;Note: Alternative opcode used
3577  9E        sbb     m
3578  20        nop                  ;Note: Alternative opcode used
3579  20        nop                  ;Note: Alternative opcode used
357A  20        nop                  ;Note: Alternative opcode used
357B  20        nop                  ;Note: Alternative opcode used
357C  20        nop                  ;Note: Alternative opcode used
357D  9E        sbb     m
357E  20        nop                  ;Note: Alternative opcode used
357F  20        nop                  ;Note: Alternative opcode used
3580  20        nop                  ;Note: Alternative opcode used
3581  20        nop                  ;Note: Alternative opcode used
3582  20        nop                  ;Note: Alternative opcode used
3583  9E        sbb     m
3584  20        nop                  ;Note: Alternative opcode used
3585  20        nop                  ;Note: Alternative opcode used
3586  20        nop                  ;Note: Alternative opcode used
3587  20        nop                  ;Note: Alternative opcode used
3588  20        nop                  ;Note: Alternative opcode used
3589  65        mov     h,l
358A  10        nop                  ;Note: Alternative opcode used
358B  02        stax    b
358C  A8        xra     b
358D  00        nop
358E  18        nop                  ;Note: Alternative opcode used
358F  00        nop
3590  65        mov     h,l
3591  3E 1F     mvi     a,$1F
3593  25        dcr     h
3594  0E 05     mvi     c,$05
3596  15        dcr     d
3597  06 01     mvi     b,$01
3599  68        mov     l,b
359A  1A        ldax    d
359B  17        ral
359C  0B        dcx     b
359D  17        ral
359E  09        dad     b
359F  12        stax    d
35A0  68        mov     l,b
35A1  18        nop                  ;Note: Alternative opcode used
35A2  68        mov     l,b
35A3  89        adc     c
35A4  12        stax    d
35A5  1A        ldax    d
35A6  22 07 11  shld    $1107
35A9  16 0D     mvi     d,$0D
35AB  13        inx     d
35AC  0A        ldax    b
35AD  0E 15     mvi     c,$15
35AF  13        inx     d
35B0  11 65 1C  lxi     d,$1C65
35B3  02        stax    b
35B4  6C        mov     l,h
35B5  00        nop
35B6  18        nop                  ;Note: Alternative opcode used
35B7  00        nop
35B8  65        mov     h,l
35B9  89        adc     c
35BA  85        add     l
35BB  56        mov     d,m
35BC  13        inx     d
35BD  16 15     mvi     d,$15
35BF  06 01     mvi     b,$01
35C1  68        mov     l,b
35C2  1D        dcr     e
35C3  16 13     mvi     d,$13
35C5  02        stax    b
35C6  17        ral
35C7  68        mov     l,b
35C8  18        nop                  ;Note: Alternative opcode used
35C9  68        mov     l,b
35CA  85        add     l
35CB  87        add     a
35CC  09        dad     b
35CD  0F        rrc
35CE  11 15 1B  lxi     d,$1B15
35D1  1D        dcr     e
35D2  11 15 15  lxi     d,$1515
35D5  06 01     mvi     b,$01
35D7  68        mov     l,b
35D8  1D        dcr     e
35D9  0E 19     mvi     c,$19
35DB  68        mov     l,b
35DC  12        stax    d
35DD  11 07 0E  lxi     d,$0E07
35E0  17        ral
35E1  13        inx     d
35E2  65        mov     h,l
35E3  FC 01 6C  cm      $6C01
35E6  00        nop
35E7  18        nop                  ;Note: Alternative opcode used
35E8  65        mov     h,l
35E9  87        add     a
35EA  88        adc     b
35EB  42        mov     b,d
35EC  11 07 0E  lxi     d,$0E07
35EF  17        ral
35F0  1B        dcx     d
35F1  68        mov     l,b
35F2  0A        ldax    b
35F3  68        mov     l,b
35F4  16 0E     mvi     d,$0E
35F6  25        dcr     h
35F7  16 03     mvi     d,$03
35F9  22 0D 09  shld    $090D
35FC  7D        mov     a,l
35FD  65        mov     h,l
35FE  9E        sbb     m
35FF  01 6C 00  lxi     b,$006C
3602  18        nop                  ;Note: Alternative opcode used
3603  00        nop
3604  65        mov     h,l
3605  CD 28 33  call    $3328
3608  FF        rst     7
3609  FF        rst     7
360A  FF        rst     7
360B  FF        rst     7
360C  FF        rst     7
360D  FF        rst     7
360E  FF        rst     7
360F  FF        rst     7
3610  FF        rst     7
3611  FF        rst     7
3612  FF        rst     7
3613  FF        rst     7
3614  FF        rst     7
3615  FF        rst     7
3616  FF        rst     7
3617  FF        rst     7
3618  FF        rst     7
3619  FF        rst     7
361A  FF        rst     7
361B  FF        rst     7
361C  FF        rst     7
361D  FF        rst     7
361E  FF        rst     7
361F  FF        rst     7
3620  FF        rst     7
3621  FF        rst     7
3622  FF        rst     7
3623  FF        rst     7
3624  FF        rst     7
3625  FF        rst     7
3626  FF        rst     7
3627  FF        rst     7
3628  FF        rst     7
3629  FF        rst     7
362A  FF        rst     7
362B  FF        rst     7
362C  FF        rst     7
362D  FF        rst     7
362E  FF        rst     7
362F  FF        rst     7
3630  FF        rst     7
3631  FF        rst     7
3632  FF        rst     7
3633  FF        rst     7
3634  FF        rst     7
3635  FF        rst     7
3636  FF        rst     7
3637  FF        rst     7
3638  FF        rst     7
3639  FF        rst     7
363A  FF        rst     7
363B  FF        rst     7
363C  FF        rst     7
363D  FF        rst     7
363E  FF        rst     7
363F  FF        rst     7
3640  FF        rst     7
3641  FF        rst     7
3642  FF        rst     7
3643  FF        rst     7
3644  FF        rst     7
3645  FF        rst     7
3646  FF        rst     7
3647  FF        rst     7
3648  FF        rst     7
3649  FF        rst     7
364A  FF        rst     7
364B  FF        rst     7
364C  FF        rst     7
364D  FF        rst     7
364E  FF        rst     7
364F  FF        rst     7
3650  FF        rst     7
3651  FF        rst     7
3652  FF        rst     7
3653  FF        rst     7
3654  FF        rst     7
3655  FF        rst     7
3656  FF        rst     7
3657  FF        rst     7
3658  FF        rst     7
3659  FF        rst     7
365A  FF        rst     7
365B  FF        rst     7
365C  FF        rst     7
365D  FF        rst     7
365E  FF        rst     7
365F  FF        rst     7
3660  FF        rst     7
3661  FF        rst     7
3662  FF        rst     7
3663  FF        rst     7
3664  FF        rst     7
3665  FF        rst     7
3666  FF        rst     7
3667  FF        rst     7
3668  FF        rst     7
3669  FF        rst     7
366A  FF        rst     7
366B  FF        rst     7
366C  FF        rst     7
366D  FF        rst     7
366E  FF        rst     7
366F  FF        rst     7
3670  FF        rst     7
3671  FF        rst     7
3672  FF        rst     7
3673  FF        rst     7
3674  FF        rst     7
3675  FF        rst     7
3676  FF        rst     7
3677  FF        rst     7
3678  FF        rst     7
3679  FF        rst     7
367A  FF        rst     7
367B  FF        rst     7
367C  FF        rst     7
367D  FF        rst     7
367E  FF        rst     7
367F  FF        rst     7
3680  FF        rst     7
3681  FF        rst     7
3682  FF        rst     7
3683  FF        rst     7
3684  FF        rst     7
3685  FF        rst     7
3686  FF        rst     7
3687  FF        rst     7
3688  FF        rst     7
3689  FF        rst     7
368A  FF        rst     7
368B  FF        rst     7
368C  FF        rst     7
368D  FF        rst     7
368E  FF        rst     7
368F  FF        rst     7
3690  FF        rst     7
3691  FF        rst     7
3692  FF        rst     7
3693  FF        rst     7
3694  FF        rst     7
3695  FF        rst     7
3696  FF        rst     7
3697  FF        rst     7
3698  FF        rst     7
3699  FF        rst     7
369A  FF        rst     7
369B  FF        rst     7
369C  FF        rst     7
369D  FF        rst     7
369E  FF        rst     7
369F  FF        rst     7
36A0  FF        rst     7
36A1  FF        rst     7
36A2  FF        rst     7
36A3  FF        rst     7
36A4  FF        rst     7
36A5  FF        rst     7
36A6  FF        rst     7
36A7  FF        rst     7
36A8  FF        rst     7
36A9  FF        rst     7
36AA  FF        rst     7
36AB  FF        rst     7
36AC  FF        rst     7
36AD  FF        rst     7
36AE  FF        rst     7
36AF  FF        rst     7
36B0  FF        rst     7
36B1  FF        rst     7
36B2  FF        rst     7
36B3  FF        rst     7
36B4  FF        rst     7
36B5  FF        rst     7
36B6  FF        rst     7
36B7  FF        rst     7
36B8  FF        rst     7
36B9  FF        rst     7
36BA  FF        rst     7
36BB  FF        rst     7
36BC  FF        rst     7
36BD  FF        rst     7
36BE  FF        rst     7
36BF  FF        rst     7
36C0  FF        rst     7
36C1  FF        rst     7
36C2  FF        rst     7
36C3  FF        rst     7
36C4  FF        rst     7
36C5  FF        rst     7
36C6  FF        rst     7
36C7  FF        rst     7
36C8  FF        rst     7
36C9  FF        rst     7
36CA  FF        rst     7
36CB  FF        rst     7
36CC  FF        rst     7
36CD  FF        rst     7
36CE  FF        rst     7
36CF  FF        rst     7
36D0  FF        rst     7
36D1  FF        rst     7
36D2  FF        rst     7
36D3  FF        rst     7
36D4  FF        rst     7
36D5  FF        rst     7
36D6  FF        rst     7
36D7  FF        rst     7
36D8  FF        rst     7
36D9  FF        rst     7
36DA  FF        rst     7
36DB  FF        rst     7
36DC  FF        rst     7
36DD  FF        rst     7
36DE  FF        rst     7
36DF  FF        rst     7
36E0  FF        rst     7
36E1  FF        rst     7
36E2  FF        rst     7
36E3  FF        rst     7
36E4  FF        rst     7
36E5  FF        rst     7
36E6  FF        rst     7
36E7  FF        rst     7
36E8  FF        rst     7
36E9  FF        rst     7
36EA  FF        rst     7
36EB  FF        rst     7
36EC  FF        rst     7
36ED  FF        rst     7
36EE  FF        rst     7
36EF  FF        rst     7
36F0  FF        rst     7
36F1  FF        rst     7
36F2  FF        rst     7
36F3  FF        rst     7
36F4  FF        rst     7
36F5  FF        rst     7
36F6  FF        rst     7
36F7  FF        rst     7
36F8  FF        rst     7
36F9  FF        rst     7
36FA  FF        rst     7
36FB  FF        rst     7
36FC  FF        rst     7
36FD  FF        rst     7
36FE  FF        rst     7
36FF  FF        rst     7
3700  FF        rst     7
3701  FF        rst     7
3702  FF        rst     7
3703  FF        rst     7
3704  FF        rst     7
3705  FF        rst     7
3706  FF        rst     7
3707  FF        rst     7
3708  FF        rst     7
3709  FF        rst     7
370A  FF        rst     7
370B  FF        rst     7
370C  FF        rst     7
370D  FF        rst     7
370E  FF        rst     7
370F  FF        rst     7
3710  FF        rst     7
3711  FF        rst     7
3712  FF        rst     7
3713  FF        rst     7
3714  FF        rst     7
3715  FF        rst     7
3716  FF        rst     7
3717  FF        rst     7
3718  FF        rst     7
3719  FF        rst     7
371A  FF        rst     7
371B  FF        rst     7
371C  FF        rst     7
371D  FF        rst     7
371E  FF        rst     7
371F  FF        rst     7
3720  FF        rst     7
3721  FF        rst     7
3722  FF        rst     7
3723  FF        rst     7
3724  FF        rst     7
3725  FF        rst     7
3726  FF        rst     7
3727  FF        rst     7
3728  FF        rst     7
3729  FF        rst     7
372A  FF        rst     7
372B  FF        rst     7
372C  FF        rst     7
372D  FF        rst     7
372E  FF        rst     7
372F  FF        rst     7
3730  FF        rst     7
3731  FF        rst     7
3732  FF        rst     7
3733  FF        rst     7
3734  FF        rst     7
3735  FF        rst     7
3736  FF        rst     7
3737  FF        rst     7
3738  FF        rst     7
3739  FF        rst     7
373A  FF        rst     7
373B  FF        rst     7
373C  FF        rst     7
373D  FF        rst     7
373E  FF        rst     7
373F  FF        rst     7
3740  FF        rst     7
3741  FF        rst     7
3742  FF        rst     7
3743  FF        rst     7
3744  FF        rst     7
3745  FF        rst     7
3746  FF        rst     7
3747  FF        rst     7
3748  FF        rst     7
3749  FF        rst     7
374A  FF        rst     7
374B  FF        rst     7
374C  FF        rst     7
374D  FF        rst     7
374E  FF        rst     7
374F  FF        rst     7
3750  FF        rst     7
3751  FF        rst     7
3752  FF        rst     7
3753  FF        rst     7
3754  FF        rst     7
3755  FF        rst     7
3756  FF        rst     7
3757  FF        rst     7
3758  FF        rst     7
3759  FF        rst     7
375A  FF        rst     7
375B  FF        rst     7
375C  FF        rst     7
375D  FF        rst     7
375E  FF        rst     7
375F  FF        rst     7
3760  FF        rst     7
3761  FF        rst     7
3762  FF        rst     7
3763  FF        rst     7
3764  FF        rst     7
3765  FF        rst     7
3766  FF        rst     7
3767  FF        rst     7
3768  FF        rst     7
3769  FF        rst     7
376A  FF        rst     7
376B  FF        rst     7
376C  FF        rst     7
376D  FF        rst     7
376E  FF        rst     7
376F  FF        rst     7
3770  FF        rst     7
3771  FF        rst     7
3772  FF        rst     7
3773  FF        rst     7
3774  FF        rst     7
3775  FF        rst     7
3776  FF        rst     7
3777  FF        rst     7
3778  FF        rst     7
3779  FF        rst     7
377A  FF        rst     7
377B  FF        rst     7
377C  FF        rst     7
377D  FF        rst     7
377E  FF        rst     7
377F  FF        rst     7
3780  FF        rst     7
3781  FF        rst     7
3782  FF        rst     7
3783  FF        rst     7
3784  FF        rst     7
3785  FF        rst     7
3786  FF        rst     7
3787  FF        rst     7
3788  FF        rst     7
3789  FF        rst     7
378A  FF        rst     7
378B  FF        rst     7
378C  FF        rst     7
378D  FF        rst     7
378E  FF        rst     7
378F  FF        rst     7
3790  FF        rst     7
3791  FF        rst     7
3792  FF        rst     7
3793  FF        rst     7
3794  FF        rst     7
3795  FF        rst     7
3796  FF        rst     7
3797  FF        rst     7
3798  FF        rst     7
3799  FF        rst     7
379A  FF        rst     7
379B  FF        rst     7
379C  FF        rst     7
379D  FF        rst     7
379E  FF        rst     7
379F  FF        rst     7
37A0  FF        rst     7
37A1  FF        rst     7
37A2  FF        rst     7
37A3  FF        rst     7
37A4  FF        rst     7
37A5  FF        rst     7
37A6  FF        rst     7
37A7  FF        rst     7
37A8  FF        rst     7
37A9  FF        rst     7
37AA  FF        rst     7
37AB  FF        rst     7
37AC  FF        rst     7
37AD  FF        rst     7
37AE  FF        rst     7
37AF  FF        rst     7
37B0  FF        rst     7
37B1  FF        rst     7
37B2  FF        rst     7
37B3  FF        rst     7
37B4  FF        rst     7
37B5  FF        rst     7
37B6  FF        rst     7
37B7  FF        rst     7
37B8  FF        rst     7
37B9  FF        rst     7
37BA  FF        rst     7
37BB  FF        rst     7
37BC  FF        rst     7
37BD  FF        rst     7
37BE  FF        rst     7
37BF  FF        rst     7
37C0  FF        rst     7
37C1  FF        rst     7
37C2  FF        rst     7
37C3  FF        rst     7
37C4  FF        rst     7
37C5  FF        rst     7
37C6  FF        rst     7
37C7  FF        rst     7
37C8  FF        rst     7
37C9  FF        rst     7
37CA  FF        rst     7
37CB  FF        rst     7
37CC  FF        rst     7
37CD  FF        rst     7
37CE  FF        rst     7
37CF  FF        rst     7
37D0  FF        rst     7
37D1  FF        rst     7
37D2  FF        rst     7
37D3  FF        rst     7
37D4  FF        rst     7
37D5  FF        rst     7
37D6  FF        rst     7
37D7  FF        rst     7
37D8  FF        rst     7
37D9  FF        rst     7
37DA  FF        rst     7
37DB  FF        rst     7
37DC  FF        rst     7
37DD  FF        rst     7
37DE  FF        rst     7
37DF  FF        rst     7
37E0  FF        rst     7
37E1  FF        rst     7
37E2  FF        rst     7
37E3  FF        rst     7
37E4  FF        rst     7
37E5  FF        rst     7
37E6  FF        rst     7
37E7  FF        rst     7
37E8  FF        rst     7
37E9  FF        rst     7
37EA  FF        rst     7
37EB  FF        rst     7
37EC  FF        rst     7
37ED  FF        rst     7
37EE  FF        rst     7
37EF  FF        rst     7
37F0  FF        rst     7
37F1  FF        rst     7
37F2  FF        rst     7
37F3  FF        rst     7
37F4  FF        rst     7
37F5  FF        rst     7
37F6  FF        rst     7
37F7  FF        rst     7
37F8  FF        rst     7
37F9  FF        rst     7
37FA  FF        rst     7
37FB  FF        rst     7
37FC  FF        rst     7
37FD  FF        rst     7
37FE  FF        rst     7
37FF  FF        rst     7
3800  FF        rst     7
3801  FF        rst     7
3802  FF        rst     7
3803  FF        rst     7
3804  FF        rst     7
3805  FF        rst     7
3806  FF        rst     7
3807  FF        rst     7
3808  FF        rst     7
3809  FF        rst     7
380A  FF        rst     7
380B  FF        rst     7
380C  FF        rst     7
380D  FF        rst     7
380E  FF        rst     7
380F  FF        rst     7
3810  FF        rst     7
3811  FF        rst     7
3812  FF        rst     7
3813  FF        rst     7
3814  FF        rst     7
3815  FF        rst     7
3816  FF        rst     7
3817  FF        rst     7
3818  FF        rst     7
3819  FF        rst     7
381A  FF        rst     7
381B  FF        rst     7
381C  FF        rst     7
381D  FF        rst     7
381E  FF        rst     7
381F  FF        rst     7
3820  FF        rst     7
3821  FF        rst     7
3822  FF        rst     7
3823  FF        rst     7
3824  FF        rst     7
3825  FF        rst     7
3826  FF        rst     7
3827  FF        rst     7
3828  FF        rst     7
3829  FF        rst     7
382A  FF        rst     7
382B  FF        rst     7
382C  FF        rst     7
382D  FF        rst     7
382E  FF        rst     7
382F  FF        rst     7
3830  FF        rst     7
3831  FF        rst     7
3832  FF        rst     7
3833  FF        rst     7
3834  FF        rst     7
3835  FF        rst     7
3836  FF        rst     7
3837  FF        rst     7
3838  FF        rst     7
3839  FF        rst     7
383A  FF        rst     7
383B  FF        rst     7
383C  FF        rst     7
383D  FF        rst     7
383E  FF        rst     7
383F  FF        rst     7
3840  FF        rst     7
3841  FF        rst     7
3842  FF        rst     7
3843  FF        rst     7
3844  FF        rst     7
3845  FF        rst     7
3846  FF        rst     7
3847  FF        rst     7
3848  FF        rst     7
3849  FF        rst     7
384A  FF        rst     7
384B  FF        rst     7
384C  FF        rst     7
384D  FF        rst     7
384E  FF        rst     7
384F  FF        rst     7
3850  FF        rst     7
3851  FF        rst     7
3852  FF        rst     7
3853  FF        rst     7
3854  FF        rst     7
3855  FF        rst     7
3856  FF        rst     7
3857  FF        rst     7
3858  FF        rst     7
3859  FF        rst     7
385A  FF        rst     7
385B  FF        rst     7
385C  FF        rst     7
385D  FF        rst     7
385E  FF        rst     7
385F  FF        rst     7
3860  FF        rst     7
3861  FF        rst     7
3862  FF        rst     7
3863  FF        rst     7
3864  FF        rst     7
3865  FF        rst     7
3866  FF        rst     7
3867  FF        rst     7
3868  FF        rst     7
3869  FF        rst     7
386A  FF        rst     7
386B  FF        rst     7
386C  FF        rst     7
386D  FF        rst     7
386E  FF        rst     7
386F  FF        rst     7
3870  FF        rst     7
3871  FF        rst     7
3872  FF        rst     7
3873  FF        rst     7
3874  FF        rst     7
3875  FF        rst     7
3876  FF        rst     7
3877  FF        rst     7
3878  FF        rst     7
3879  FF        rst     7
387A  FF        rst     7
387B  FF        rst     7
387C  FF        rst     7
387D  FF        rst     7
387E  FF        rst     7
387F  FF        rst     7
3880  FF        rst     7
3881  FF        rst     7
3882  FF        rst     7
3883  FF        rst     7
3884  FF        rst     7
3885  FF        rst     7
3886  FF        rst     7
3887  FF        rst     7
3888  FF        rst     7
3889  FF        rst     7
388A  FF        rst     7
388B  FF        rst     7
388C  FF        rst     7
388D  FF        rst     7
388E  FF        rst     7
388F  FF        rst     7
3890  FF        rst     7
3891  FF        rst     7
3892  FF        rst     7
3893  FF        rst     7
3894  FF        rst     7
3895  FF        rst     7
3896  FF        rst     7
3897  FF        rst     7
3898  FF        rst     7
3899  FF        rst     7
389A  FF        rst     7
389B  FF        rst     7
389C  FF        rst     7
389D  FF        rst     7
389E  FF        rst     7
389F  FF        rst     7
38A0  FF        rst     7
38A1  FF        rst     7
38A2  FF        rst     7
38A3  FF        rst     7
38A4  FF        rst     7
38A5  FF        rst     7
38A6  FF        rst     7
38A7  FF        rst     7
38A8  FF        rst     7
38A9  FF        rst     7
38AA  FF        rst     7
38AB  FF        rst     7
38AC  FF        rst     7
38AD  FF        rst     7
38AE  FF        rst     7
38AF  FF        rst     7
38B0  FF        rst     7
38B1  FF        rst     7
38B2  FF        rst     7
38B3  FF        rst     7
38B4  FF        rst     7
38B5  FF        rst     7
38B6  FF        rst     7
38B7  FF        rst     7
38B8  FF        rst     7
38B9  FF        rst     7
38BA  FF        rst     7
38BB  FF        rst     7
38BC  FF        rst     7
38BD  FF        rst     7
38BE  FF        rst     7
38BF  FF        rst     7
38C0  FF        rst     7
38C1  FF        rst     7
38C2  FF        rst     7
38C3  FF        rst     7
38C4  FF        rst     7
38C5  FF        rst     7
38C6  FF        rst     7
38C7  FF        rst     7
38C8  FF        rst     7
38C9  FF        rst     7
38CA  FF        rst     7
38CB  FF        rst     7
38CC  FF        rst     7
38CD  FF        rst     7
38CE  FF        rst     7
38CF  FF        rst     7
38D0  FF        rst     7
38D1  FF        rst     7
38D2  FF        rst     7
38D3  FF        rst     7
38D4  FF        rst     7
38D5  FF        rst     7
38D6  FF        rst     7
38D7  FF        rst     7
38D8  FF        rst     7
38D9  FF        rst     7
38DA  FF        rst     7
38DB  FF        rst     7
38DC  FF        rst     7
38DD  FF        rst     7
38DE  FF        rst     7
38DF  FF        rst     7
38E0  FF        rst     7
38E1  FF        rst     7
38E2  FF        rst     7
38E3  FF        rst     7
38E4  FF        rst     7
38E5  FF        rst     7
38E6  FF        rst     7
38E7  FF        rst     7
38E8  FF        rst     7
38E9  FF        rst     7
38EA  FF        rst     7
38EB  FF        rst     7
38EC  FF        rst     7
38ED  FF        rst     7
38EE  FF        rst     7
38EF  FF        rst     7
38F0  FF        rst     7
38F1  FF        rst     7
38F2  FF        rst     7
38F3  FF        rst     7
38F4  FF        rst     7
38F5  FF        rst     7
38F6  FF        rst     7
38F7  FF        rst     7
38F8  FF        rst     7
38F9  FF        rst     7
38FA  FF        rst     7
38FB  FF        rst     7
38FC  FF        rst     7
38FD  FF        rst     7
38FE  FF        rst     7
38FF  FF        rst     7
3900  FF        rst     7
3901  FF        rst     7
3902  FF        rst     7
3903  FF        rst     7
3904  FF        rst     7
3905  FF        rst     7
3906  FF        rst     7
3907  FF        rst     7
3908  FF        rst     7
3909  FF        rst     7
390A  FF        rst     7
390B  FF        rst     7
390C  FF        rst     7
390D  FF        rst     7
390E  FF        rst     7
390F  FF        rst     7
3910  FF        rst     7
3911  FF        rst     7
3912  FF        rst     7
3913  FF        rst     7
3914  FF        rst     7
3915  FF        rst     7
3916  FF        rst     7
3917  FF        rst     7
3918  FF        rst     7
3919  FF        rst     7
391A  FF        rst     7
391B  FF        rst     7
391C  FF        rst     7
391D  FF        rst     7
391E  FF        rst     7
391F  FF        rst     7
3920  FF        rst     7
3921  FF        rst     7
3922  FF        rst     7
3923  FF        rst     7
3924  FF        rst     7
3925  FF        rst     7
3926  FF        rst     7
3927  FF        rst     7
3928  FF        rst     7
3929  FF        rst     7
392A  FF        rst     7
392B  FF        rst     7
392C  FF        rst     7
392D  FF        rst     7
392E  FF        rst     7
392F  FF        rst     7
3930  FF        rst     7
3931  FF        rst     7
3932  FF        rst     7
3933  FF        rst     7
3934  FF        rst     7
3935  FF        rst     7
3936  FF        rst     7
3937  FF        rst     7
3938  FF        rst     7
3939  FF        rst     7
393A  FF        rst     7
393B  FF        rst     7
393C  FF        rst     7
393D  FF        rst     7
393E  FF        rst     7
393F  FF        rst     7
3940  FF        rst     7
3941  FF        rst     7
3942  FF        rst     7
3943  FF        rst     7
3944  FF        rst     7
3945  FF        rst     7
3946  FF        rst     7
3947  FF        rst     7
3948  FF        rst     7
3949  FF        rst     7
394A  FF        rst     7
394B  FF        rst     7
394C  FF        rst     7
394D  FF        rst     7
394E  FF        rst     7
394F  FF        rst     7
3950  FF        rst     7
3951  FF        rst     7
3952  FF        rst     7
3953  FF        rst     7
3954  FF        rst     7
3955  FF        rst     7
3956  FF        rst     7
3957  FF        rst     7
3958  FF        rst     7
3959  FF        rst     7
395A  FF        rst     7
395B  FF        rst     7
395C  FF        rst     7
395D  FF        rst     7
395E  FF        rst     7
395F  FF        rst     7
3960  FF        rst     7
3961  FF        rst     7
3962  FF        rst     7
3963  FF        rst     7
3964  FF        rst     7
3965  FF        rst     7
3966  FF        rst     7
3967  FF        rst     7
3968  FF        rst     7
3969  FF        rst     7
396A  FF        rst     7
396B  FF        rst     7
396C  FF        rst     7
396D  FF        rst     7
396E  FF        rst     7
396F  FF        rst     7
3970  FF        rst     7
3971  FF        rst     7
3972  FF        rst     7
3973  FF        rst     7
3974  FF        rst     7
3975  FF        rst     7
3976  FF        rst     7
3977  FF        rst     7
3978  FF        rst     7
3979  FF        rst     7
397A  FF        rst     7
397B  FF        rst     7
397C  FF        rst     7
397D  FF        rst     7
397E  FF        rst     7
397F  FF        rst     7
3980  FF        rst     7
3981  FF        rst     7
3982  FF        rst     7
3983  FF        rst     7
3984  FF        rst     7
3985  FF        rst     7
3986  FF        rst     7
3987  FF        rst     7
3988  FF        rst     7
3989  FF        rst     7
398A  FF        rst     7
398B  FF        rst     7
398C  FF        rst     7
398D  FF        rst     7
398E  FF        rst     7
398F  FF        rst     7
3990  FF        rst     7
3991  FF        rst     7
3992  FF        rst     7
3993  FF        rst     7
3994  FF        rst     7
3995  FF        rst     7
3996  FF        rst     7
3997  FF        rst     7
3998  FF        rst     7
3999  FF        rst     7
399A  FF        rst     7
399B  FF        rst     7
399C  FF        rst     7
399D  FF        rst     7
399E  FF        rst     7
399F  FF        rst     7
39A0  FF        rst     7
39A1  FF        rst     7
39A2  FF        rst     7
39A3  FF        rst     7
39A4  FF        rst     7
39A5  FF        rst     7
39A6  FF        rst     7
39A7  FF        rst     7
39A8  FF        rst     7
39A9  FF        rst     7
39AA  FF        rst     7
39AB  FF        rst     7
39AC  FF        rst     7
39AD  FF        rst     7
39AE  FF        rst     7
39AF  FF        rst     7
39B0  FF        rst     7
39B1  FF        rst     7
39B2  FF        rst     7
39B3  FF        rst     7
39B4  FF        rst     7
39B5  FF        rst     7
39B6  FF        rst     7
39B7  FF        rst     7
39B8  FF        rst     7
39B9  FF        rst     7
39BA  FF        rst     7
39BB  FF        rst     7
39BC  FF        rst     7
39BD  FF        rst     7
39BE  FF        rst     7
39BF  FF        rst     7
39C0  FF        rst     7
39C1  FF        rst     7
39C2  FF        rst     7
39C3  FF        rst     7
39C4  FF        rst     7
39C5  FF        rst     7
39C6  FF        rst     7
39C7  FF        rst     7
39C8  FF        rst     7
39C9  FF        rst     7
39CA  FF        rst     7
39CB  FF        rst     7
39CC  FF        rst     7
39CD  FF        rst     7
39CE  FF        rst     7
39CF  FF        rst     7
39D0  FF        rst     7
39D1  FF        rst     7
39D2  FF        rst     7
39D3  FF        rst     7
39D4  FF        rst     7
39D5  FF        rst     7
39D6  FF        rst     7
39D7  FF        rst     7
39D8  FF        rst     7
39D9  FF        rst     7
39DA  FF        rst     7
39DB  FF        rst     7
39DC  FF        rst     7
39DD  FF        rst     7
39DE  FF        rst     7
39DF  FF        rst     7
39E0  FF        rst     7
39E1  FF        rst     7
39E2  FF        rst     7
39E3  FF        rst     7
39E4  FF        rst     7
39E5  FF        rst     7
39E6  FF        rst     7
39E7  FF        rst     7
39E8  FF        rst     7
39E9  FF        rst     7
39EA  FF        rst     7
39EB  FF        rst     7
39EC  FF        rst     7
39ED  FF        rst     7
39EE  FF        rst     7
39EF  FF        rst     7
39F0  FF        rst     7
39F1  FF        rst     7
39F2  FF        rst     7
39F3  FF        rst     7
39F4  FF        rst     7
39F5  FF        rst     7
39F6  FF        rst     7
39F7  FF        rst     7
39F8  FF        rst     7
39F9  FF        rst     7
39FA  FF        rst     7
39FB  FF        rst     7
39FC  FF        rst     7
39FD  FF        rst     7
39FE  FF        rst     7
39FF  FF        rst     7
3A00  FF        rst     7
3A01  FF        rst     7
3A02  FF        rst     7
3A03  FF        rst     7
3A04  FF        rst     7
3A05  FF        rst     7
3A06  FF        rst     7
3A07  FF        rst     7
3A08  FF        rst     7
3A09  FF        rst     7
3A0A  FF        rst     7
3A0B  FF        rst     7
3A0C  FF        rst     7
3A0D  FF        rst     7
3A0E  FF        rst     7
3A0F  FF        rst     7
3A10  FF        rst     7
3A11  FF        rst     7
3A12  FF        rst     7
3A13  FF        rst     7
3A14  FF        rst     7
3A15  FF        rst     7
3A16  FF        rst     7
3A17  FF        rst     7
3A18  FF        rst     7
3A19  FF        rst     7
3A1A  FF        rst     7
3A1B  FF        rst     7
3A1C  FF        rst     7
3A1D  FF        rst     7
3A1E  FF        rst     7
3A1F  FF        rst     7
3A20  FF        rst     7
3A21  FF        rst     7
3A22  FF        rst     7
3A23  FF        rst     7
3A24  FF        rst     7
3A25  FF        rst     7
3A26  FF        rst     7
3A27  FF        rst     7
3A28  FF        rst     7
3A29  FF        rst     7
3A2A  FF        rst     7
3A2B  FF        rst     7
3A2C  FF        rst     7
3A2D  FF        rst     7
3A2E  FF        rst     7
3A2F  FF        rst     7
3A30  FF        rst     7
3A31  FF        rst     7
3A32  FF        rst     7
3A33  FF        rst     7
3A34  FF        rst     7
3A35  FF        rst     7
3A36  FF        rst     7
3A37  FF        rst     7
3A38  FF        rst     7
3A39  FF        rst     7
3A3A  FF        rst     7
3A3B  FF        rst     7
3A3C  FF        rst     7
3A3D  FF        rst     7
3A3E  FF        rst     7
3A3F  FF        rst     7
3A40  FF        rst     7
3A41  FF        rst     7
3A42  FF        rst     7
3A43  FF        rst     7
3A44  FF        rst     7
3A45  FF        rst     7
3A46  FF        rst     7
3A47  FF        rst     7
3A48  FF        rst     7
3A49  FF        rst     7
3A4A  FF        rst     7
3A4B  FF        rst     7
3A4C  FF        rst     7
3A4D  FF        rst     7
3A4E  FF        rst     7
3A4F  FF        rst     7
3A50  FF        rst     7
3A51  FF        rst     7
3A52  FF        rst     7
3A53  FF        rst     7
3A54  FF        rst     7
3A55  FF        rst     7
3A56  FF        rst     7
3A57  FF        rst     7
3A58  FF        rst     7
3A59  FF        rst     7
3A5A  FF        rst     7
3A5B  FF        rst     7
3A5C  FF        rst     7
3A5D  FF        rst     7
3A5E  FF        rst     7
3A5F  FF        rst     7
3A60  FF        rst     7
3A61  FF        rst     7
3A62  FF        rst     7
3A63  FF        rst     7
3A64  FF        rst     7
3A65  FF        rst     7
3A66  FF        rst     7
3A67  FF        rst     7
3A68  FF        rst     7
3A69  FF        rst     7
3A6A  FF        rst     7
3A6B  FF        rst     7
3A6C  FF        rst     7
3A6D  FF        rst     7
3A6E  FF        rst     7
3A6F  FF        rst     7
3A70  FF        rst     7
3A71  FF        rst     7
3A72  FF        rst     7
3A73  FF        rst     7
3A74  FF        rst     7
3A75  FF        rst     7
3A76  FF        rst     7
3A77  FF        rst     7
3A78  FF        rst     7
3A79  FF        rst     7
3A7A  FF        rst     7
3A7B  FF        rst     7
3A7C  FF        rst     7
3A7D  FF        rst     7
3A7E  FF        rst     7
3A7F  FF        rst     7
3A80  FF        rst     7
3A81  FF        rst     7
3A82  FF        rst     7
3A83  FF        rst     7
3A84  FF        rst     7
3A85  FF        rst     7
3A86  FF        rst     7
3A87  FF        rst     7
3A88  FF        rst     7
3A89  FF        rst     7
3A8A  FF        rst     7
3A8B  FF        rst     7
3A8C  FF        rst     7
3A8D  FF        rst     7
3A8E  FF        rst     7
3A8F  FF        rst     7
3A90  FF        rst     7
3A91  FF        rst     7
3A92  FF        rst     7
3A93  FF        rst     7
3A94  FF        rst     7
3A95  FF        rst     7
3A96  FF        rst     7
3A97  FF        rst     7
3A98  FF        rst     7
3A99  FF        rst     7
3A9A  FF        rst     7
3A9B  FF        rst     7
3A9C  FF        rst     7
3A9D  FF        rst     7
3A9E  FF        rst     7
3A9F  FF        rst     7
3AA0  FF        rst     7
3AA1  FF        rst     7
3AA2  FF        rst     7
3AA3  FF        rst     7
3AA4  FF        rst     7
3AA5  FF        rst     7
3AA6  FF        rst     7
3AA7  FF        rst     7
3AA8  FF        rst     7
3AA9  FF        rst     7
3AAA  FF        rst     7
3AAB  FF        rst     7
3AAC  FF        rst     7
3AAD  FF        rst     7
3AAE  FF        rst     7
3AAF  FF        rst     7
3AB0  FF        rst     7
3AB1  FF        rst     7
3AB2  FF        rst     7
3AB3  FF        rst     7
3AB4  FF        rst     7
3AB5  FF        rst     7
3AB6  FF        rst     7
3AB7  FF        rst     7
3AB8  FF        rst     7
3AB9  FF        rst     7
3ABA  FF        rst     7
3ABB  FF        rst     7
3ABC  FF        rst     7
3ABD  FF        rst     7
3ABE  FF        rst     7
3ABF  FF        rst     7
3AC0  FF        rst     7
3AC1  FF        rst     7
3AC2  FF        rst     7
3AC3  FF        rst     7
3AC4  FF        rst     7
3AC5  FF        rst     7
3AC6  FF        rst     7
3AC7  FF        rst     7
3AC8  FF        rst     7
3AC9  FF        rst     7
3ACA  FF        rst     7
3ACB  FF        rst     7
3ACC  FF        rst     7
3ACD  FF        rst     7
3ACE  FF        rst     7
3ACF  FF        rst     7
3AD0  FF        rst     7
3AD1  FF        rst     7
3AD2  FF        rst     7
3AD3  FF        rst     7
3AD4  FF        rst     7
3AD5  FF        rst     7
3AD6  FF        rst     7
3AD7  FF        rst     7
3AD8  FF        rst     7
3AD9  FF        rst     7
3ADA  FF        rst     7
3ADB  FF        rst     7
3ADC  FF        rst     7
3ADD  FF        rst     7
3ADE  FF        rst     7
3ADF  FF        rst     7
3AE0  FF        rst     7
3AE1  FF        rst     7
3AE2  FF        rst     7
3AE3  FF        rst     7
3AE4  FF        rst     7
3AE5  FF        rst     7
3AE6  FF        rst     7
3AE7  FF        rst     7
3AE8  FF        rst     7
3AE9  FF        rst     7
3AEA  FF        rst     7
3AEB  FF        rst     7
3AEC  FF        rst     7
3AED  FF        rst     7
3AEE  FF        rst     7
3AEF  FF        rst     7
3AF0  FF        rst     7
3AF1  FF        rst     7
3AF2  FF        rst     7
3AF3  FF        rst     7
3AF4  FF        rst     7
3AF5  FF        rst     7
3AF6  FF        rst     7
3AF7  FF        rst     7
3AF8  FF        rst     7
3AF9  FF        rst     7
3AFA  FF        rst     7
3AFB  FF        rst     7
3AFC  FF        rst     7
3AFD  FF        rst     7
3AFE  FF        rst     7
3AFF  FF        rst     7
3B00  FF        rst     7
3B01  FF        rst     7
3B02  FF        rst     7
3B03  FF        rst     7
3B04  FF        rst     7
3B05  FF        rst     7
3B06  FF        rst     7
3B07  FF        rst     7
3B08  FF        rst     7
3B09  FF        rst     7
3B0A  FF        rst     7
3B0B  FF        rst     7
3B0C  FF        rst     7
3B0D  FF        rst     7
3B0E  FF        rst     7
3B0F  FF        rst     7
3B10  FF        rst     7
3B11  FF        rst     7
3B12  FF        rst     7
3B13  FF        rst     7
3B14  FF        rst     7
3B15  FF        rst     7
3B16  FF        rst     7
3B17  FF        rst     7
3B18  FF        rst     7
3B19  FF        rst     7
3B1A  FF        rst     7
3B1B  FF        rst     7
3B1C  FF        rst     7
3B1D  FF        rst     7
3B1E  FF        rst     7
3B1F  FF        rst     7
3B20  FF        rst     7
3B21  FF        rst     7
3B22  FF        rst     7
3B23  FF        rst     7
3B24  FF        rst     7
3B25  FF        rst     7
3B26  FF        rst     7
3B27  FF        rst     7
3B28  FF        rst     7
3B29  FF        rst     7
3B2A  FF        rst     7
3B2B  FF        rst     7
3B2C  FF        rst     7
3B2D  FF        rst     7
3B2E  FF        rst     7
3B2F  FF        rst     7
3B30  FF        rst     7
3B31  FF        rst     7
3B32  FF        rst     7
3B33  FF        rst     7
3B34  FF        rst     7
3B35  FF        rst     7
3B36  FF        rst     7
3B37  FF        rst     7
3B38  FF        rst     7
3B39  FF        rst     7
3B3A  FF        rst     7
3B3B  FF        rst     7
3B3C  FF        rst     7
3B3D  FF        rst     7
3B3E  FF        rst     7
3B3F  FF        rst     7
3B40  FF        rst     7
3B41  FF        rst     7
3B42  FF        rst     7
3B43  FF        rst     7
3B44  FF        rst     7
3B45  FF        rst     7
3B46  FF        rst     7
3B47  FF        rst     7
3B48  FF        rst     7
3B49  FF        rst     7
3B4A  FF        rst     7
3B4B  FF        rst     7
3B4C  FF        rst     7
3B4D  FF        rst     7
3B4E  FF        rst     7
3B4F  FF        rst     7
3B50  FF        rst     7
3B51  FF        rst     7
3B52  FF        rst     7
3B53  FF        rst     7
3B54  FF        rst     7
3B55  FF        rst     7
3B56  FF        rst     7
3B57  FF        rst     7
3B58  FF        rst     7
3B59  FF        rst     7
3B5A  FF        rst     7
3B5B  FF        rst     7
3B5C  FF        rst     7
3B5D  FF        rst     7
3B5E  FF        rst     7
3B5F  FF        rst     7
3B60  FF        rst     7
3B61  FF        rst     7
3B62  FF        rst     7
3B63  FF        rst     7
3B64  FF        rst     7
3B65  FF        rst     7
3B66  FF        rst     7
3B67  FF        rst     7
3B68  FF        rst     7
3B69  FF        rst     7
3B6A  FF        rst     7
3B6B  FF        rst     7
3B6C  FF        rst     7
3B6D  FF        rst     7
3B6E  FF        rst     7
3B6F  FF        rst     7
3B70  FF        rst     7
3B71  FF        rst     7
3B72  FF        rst     7
3B73  FF        rst     7
3B74  FF        rst     7
3B75  FF        rst     7
3B76  FF        rst     7
3B77  FF        rst     7
3B78  FF        rst     7
3B79  FF        rst     7
3B7A  FF        rst     7
3B7B  FF        rst     7
3B7C  FF        rst     7
3B7D  FF        rst     7
3B7E  FF        rst     7
3B7F  FF        rst     7
3B80  FF        rst     7
3B81  FF        rst     7
3B82  FF        rst     7
3B83  FF        rst     7
3B84  FF        rst     7
3B85  FF        rst     7
3B86  FF        rst     7
3B87  FF        rst     7
3B88  FF        rst     7
3B89  FF        rst     7
3B8A  FF        rst     7
3B8B  FF        rst     7
3B8C  FF        rst     7
3B8D  FF        rst     7
3B8E  FF        rst     7
3B8F  FF        rst     7
3B90  FF        rst     7
3B91  FF        rst     7
3B92  FF        rst     7
3B93  FF        rst     7
3B94  FF        rst     7
3B95  FF        rst     7
3B96  FF        rst     7
3B97  FF        rst     7
3B98  FF        rst     7
3B99  FF        rst     7
3B9A  FF        rst     7
3B9B  FF        rst     7
3B9C  FF        rst     7
3B9D  FF        rst     7
3B9E  FF        rst     7
3B9F  FF        rst     7
3BA0  FF        rst     7
3BA1  FF        rst     7
3BA2  FF        rst     7
3BA3  FF        rst     7
3BA4  FF        rst     7
3BA5  FF        rst     7
3BA6  FF        rst     7
3BA7  FF        rst     7
3BA8  FF        rst     7
3BA9  FF        rst     7
3BAA  FF        rst     7
3BAB  FF        rst     7
3BAC  FF        rst     7
3BAD  FF        rst     7
3BAE  FF        rst     7
3BAF  FF        rst     7
3BB0  FF        rst     7
3BB1  FF        rst     7
3BB2  FF        rst     7
3BB3  FF        rst     7
3BB4  FF        rst     7
3BB5  FF        rst     7
3BB6  FF        rst     7
3BB7  FF        rst     7
3BB8  FF        rst     7
3BB9  FF        rst     7
3BBA  FF        rst     7
3BBB  FF        rst     7
3BBC  FF        rst     7
3BBD  FF        rst     7
3BBE  FF        rst     7
3BBF  FF        rst     7
3BC0  FF        rst     7
3BC1  FF        rst     7
3BC2  FF        rst     7
3BC3  FF        rst     7
3BC4  FF        rst     7
3BC5  FF        rst     7
3BC6  FF        rst     7
3BC7  FF        rst     7
3BC8  FF        rst     7
3BC9  FF        rst     7
3BCA  FF        rst     7
3BCB  FF        rst     7
3BCC  FF        rst     7
3BCD  FF        rst     7
3BCE  FF        rst     7
3BCF  FF        rst     7
3BD0  FF        rst     7
3BD1  FF        rst     7
3BD2  FF        rst     7
3BD3  FF        rst     7
3BD4  FF        rst     7
3BD5  FF        rst     7
3BD6  FF        rst     7
3BD7  FF        rst     7
3BD8  FF        rst     7
3BD9  FF        rst     7
3BDA  FF        rst     7
3BDB  FF        rst     7
3BDC  FF        rst     7
3BDD  FF        rst     7
3BDE  FF        rst     7
3BDF  FF        rst     7
3BE0  FF        rst     7
3BE1  FF        rst     7
3BE2  FF        rst     7
3BE3  FF        rst     7
3BE4  FF        rst     7
3BE5  FF        rst     7
3BE6  FF        rst     7
3BE7  FF        rst     7
3BE8  FF        rst     7
3BE9  FF        rst     7
3BEA  FF        rst     7
3BEB  FF        rst     7
3BEC  FF        rst     7
3BED  FF        rst     7
3BEE  FF        rst     7
3BEF  FF        rst     7
3BF0  FF        rst     7
3BF1  FF        rst     7
3BF2  FF        rst     7
3BF3  FF        rst     7
3BF4  FF        rst     7
3BF5  FF        rst     7
3BF6  FF        rst     7
3BF7  FF        rst     7
3BF8  FF        rst     7
3BF9  FF        rst     7
3BFA  FF        rst     7
3BFB  FF        rst     7
3BFC  FF        rst     7
3BFD  FF        rst     7
3BFE  FF        rst     7
3BFF  FF        rst     7
3C00  FF        rst     7
3C01  FF        rst     7
3C02  FF        rst     7
3C03  FF        rst     7
3C04  FF        rst     7
3C05  FF        rst     7
3C06  FF        rst     7
3C07  FF        rst     7
3C08  FF        rst     7
3C09  FF        rst     7
3C0A  FF        rst     7
3C0B  FF        rst     7
3C0C  FF        rst     7
3C0D  FF        rst     7
3C0E  FF        rst     7
3C0F  FF        rst     7
3C10  FF        rst     7
3C11  FF        rst     7
3C12  FF        rst     7
3C13  FF        rst     7
3C14  FF        rst     7
3C15  FF        rst     7
3C16  FF        rst     7
3C17  FF        rst     7
3C18  FF        rst     7
3C19  FF        rst     7
3C1A  FF        rst     7
3C1B  FF        rst     7
3C1C  FF        rst     7
3C1D  FF        rst     7
3C1E  FF        rst     7
3C1F  FF        rst     7
3C20  FF        rst     7
3C21  FF        rst     7
3C22  FF        rst     7
3C23  FF        rst     7
3C24  FF        rst     7
3C25  FF        rst     7
3C26  FF        rst     7
3C27  FF        rst     7
3C28  FF        rst     7
3C29  FF        rst     7
3C2A  FF        rst     7
3C2B  FF        rst     7
3C2C  FF        rst     7
3C2D  FF        rst     7
3C2E  FF        rst     7
3C2F  FF        rst     7
3C30  FF        rst     7
3C31  FF        rst     7
3C32  FF        rst     7
3C33  FF        rst     7
3C34  FF        rst     7
3C35  FF        rst     7
3C36  FF        rst     7
3C37  FF        rst     7
3C38  FF        rst     7
3C39  FF        rst     7
3C3A  FF        rst     7
3C3B  FF        rst     7
3C3C  FF        rst     7
3C3D  FF        rst     7
3C3E  FF        rst     7
3C3F  FF        rst     7
3C40  FF        rst     7
3C41  FF        rst     7
3C42  FF        rst     7
3C43  FF        rst     7
3C44  FF        rst     7
3C45  FF        rst     7
3C46  FF        rst     7
3C47  FF        rst     7
3C48  FF        rst     7
3C49  FF        rst     7
3C4A  FF        rst     7
3C4B  FF        rst     7
3C4C  FF        rst     7
3C4D  FF        rst     7
3C4E  FF        rst     7
3C4F  FF        rst     7
3C50  FF        rst     7
3C51  FF        rst     7
3C52  FF        rst     7
3C53  FF        rst     7
3C54  FF        rst     7
3C55  FF        rst     7
3C56  FF        rst     7
3C57  FF        rst     7
3C58  FF        rst     7
3C59  FF        rst     7
3C5A  FF        rst     7
3C5B  FF        rst     7
3C5C  FF        rst     7
3C5D  FF        rst     7
3C5E  FF        rst     7
3C5F  FF        rst     7
3C60  FF        rst     7
3C61  FF        rst     7
3C62  FF        rst     7
3C63  FF        rst     7
3C64  FF        rst     7
3C65  FF        rst     7
3C66  FF        rst     7
3C67  FF        rst     7
3C68  FF        rst     7
3C69  FF        rst     7
3C6A  FF        rst     7
3C6B  FF        rst     7
3C6C  FF        rst     7
3C6D  FF        rst     7
3C6E  FF        rst     7
3C6F  FF        rst     7
3C70  FF        rst     7
3C71  FF        rst     7
3C72  FF        rst     7
3C73  FF        rst     7
3C74  FF        rst     7
3C75  FF        rst     7
3C76  FF        rst     7
3C77  FF        rst     7
3C78  FF        rst     7
3C79  FF        rst     7
3C7A  FF        rst     7
3C7B  FF        rst     7
3C7C  FF        rst     7
3C7D  FF        rst     7
3C7E  FF        rst     7
3C7F  FF        rst     7
3C80  FF        rst     7
3C81  FF        rst     7
3C82  FF        rst     7
3C83  FF        rst     7
3C84  FF        rst     7
3C85  FF        rst     7
3C86  FF        rst     7
3C87  FF        rst     7
3C88  FF        rst     7
3C89  FF        rst     7
3C8A  FF        rst     7
3C8B  FF        rst     7
3C8C  FF        rst     7
3C8D  FF        rst     7
3C8E  FF        rst     7
3C8F  FF        rst     7
3C90  FF        rst     7
3C91  FF        rst     7
3C92  FF        rst     7
3C93  FF        rst     7
3C94  FF        rst     7
3C95  FF        rst     7
3C96  FF        rst     7
3C97  FF        rst     7
3C98  FF        rst     7
3C99  FF        rst     7
3C9A  FF        rst     7
3C9B  FF        rst     7
3C9C  FF        rst     7
3C9D  FF        rst     7
3C9E  FF        rst     7
3C9F  FF        rst     7
3CA0  FF        rst     7
3CA1  FF        rst     7
3CA2  FF        rst     7
3CA3  FF        rst     7
3CA4  FF        rst     7
3CA5  FF        rst     7
3CA6  FF        rst     7
3CA7  FF        rst     7
3CA8  FF        rst     7
3CA9  FF        rst     7
3CAA  FF        rst     7
3CAB  FF        rst     7
3CAC  FF        rst     7
3CAD  FF        rst     7
3CAE  FF        rst     7
3CAF  FF        rst     7
3CB0  FF        rst     7
3CB1  FF        rst     7
3CB2  FF        rst     7
3CB3  FF        rst     7
3CB4  FF        rst     7
3CB5  FF        rst     7
3CB6  FF        rst     7
3CB7  FF        rst     7
3CB8  FF        rst     7
3CB9  FF        rst     7
3CBA  FF        rst     7
3CBB  FF        rst     7
3CBC  FF        rst     7
3CBD  FF        rst     7
3CBE  FF        rst     7
3CBF  FF        rst     7
3CC0  FF        rst     7
3CC1  FF        rst     7
3CC2  FF        rst     7
3CC3  FF        rst     7
3CC4  FF        rst     7
3CC5  FF        rst     7
3CC6  FF        rst     7
3CC7  FF        rst     7
3CC8  FF        rst     7
3CC9  FF        rst     7
3CCA  FF        rst     7
3CCB  FF        rst     7
3CCC  FF        rst     7
3CCD  FF        rst     7
3CCE  FF        rst     7
3CCF  FF        rst     7
3CD0  FF        rst     7
3CD1  FF        rst     7
3CD2  FF        rst     7
3CD3  FF        rst     7
3CD4  FF        rst     7
3CD5  FF        rst     7
3CD6  FF        rst     7
3CD7  FF        rst     7
3CD8  FF        rst     7
3CD9  FF        rst     7
3CDA  FF        rst     7
3CDB  FF        rst     7
3CDC  FF        rst     7
3CDD  FF        rst     7
3CDE  FF        rst     7
3CDF  FF        rst     7
3CE0  FF        rst     7
3CE1  FF        rst     7
3CE2  FF        rst     7
3CE3  FF        rst     7
3CE4  FF        rst     7
3CE5  FF        rst     7
3CE6  FF        rst     7
3CE7  FF        rst     7
3CE8  FF        rst     7
3CE9  FF        rst     7
3CEA  FF        rst     7
3CEB  FF        rst     7
3CEC  FF        rst     7
3CED  FF        rst     7
3CEE  FF        rst     7
3CEF  FF        rst     7
3CF0  FF        rst     7
3CF1  FF        rst     7
3CF2  FF        rst     7
3CF3  FF        rst     7
3CF4  FF        rst     7
3CF5  FF        rst     7
3CF6  FF        rst     7
3CF7  FF        rst     7
3CF8  FF        rst     7
3CF9  FF        rst     7
3CFA  FF        rst     7
3CFB  FF        rst     7
3CFC  FF        rst     7
3CFD  FF        rst     7
3CFE  FF        rst     7
3CFF  FF        rst     7
3D00  FF        rst     7
3D01  FF        rst     7
3D02  FF        rst     7
3D03  FF        rst     7
3D04  FF        rst     7
3D05  FF        rst     7
3D06  FF        rst     7
3D07  FF        rst     7
3D08  FF        rst     7
3D09  FF        rst     7
3D0A  FF        rst     7
3D0B  FF        rst     7
3D0C  FF        rst     7
3D0D  FF        rst     7
3D0E  FF        rst     7
3D0F  FF        rst     7
3D10  FF        rst     7
3D11  FF        rst     7
3D12  FF        rst     7
3D13  FF        rst     7
3D14  FF        rst     7
3D15  FF        rst     7
3D16  FF        rst     7
3D17  FF        rst     7
3D18  FF        rst     7
3D19  FF        rst     7
3D1A  FF        rst     7
3D1B  FF        rst     7
3D1C  FF        rst     7
3D1D  FF        rst     7
3D1E  FF        rst     7
3D1F  FF        rst     7
3D20  FF        rst     7
3D21  FF        rst     7
3D22  FF        rst     7
3D23  FF        rst     7
3D24  FF        rst     7
3D25  FF        rst     7
3D26  FF        rst     7
3D27  FF        rst     7
3D28  FF        rst     7
3D29  FF        rst     7
3D2A  FF        rst     7
3D2B  FF        rst     7
3D2C  FF        rst     7
3D2D  FF        rst     7
3D2E  FF        rst     7
3D2F  FF        rst     7
3D30  FF        rst     7
3D31  FF        rst     7
3D32  FF        rst     7
3D33  FF        rst     7
3D34  FF        rst     7
3D35  FF        rst     7
3D36  FF        rst     7
3D37  FF        rst     7
3D38  FF        rst     7
3D39  FF        rst     7
3D3A  FF        rst     7
3D3B  FF        rst     7
3D3C  FF        rst     7
3D3D  FF        rst     7
3D3E  FF        rst     7
3D3F  FF        rst     7
3D40  FF        rst     7
3D41  FF        rst     7
3D42  FF        rst     7
3D43  FF        rst     7
3D44  FF        rst     7
3D45  FF        rst     7
3D46  FF        rst     7
3D47  FF        rst     7
3D48  FF        rst     7
3D49  FF        rst     7
3D4A  FF        rst     7
3D4B  FF        rst     7
3D4C  FF        rst     7
3D4D  FF        rst     7
3D4E  FF        rst     7
3D4F  FF        rst     7
3D50  FF        rst     7
3D51  FF        rst     7
3D52  FF        rst     7
3D53  FF        rst     7
3D54  FF        rst     7
3D55  FF        rst     7
3D56  FF        rst     7
3D57  FF        rst     7
3D58  FF        rst     7
3D59  FF        rst     7
3D5A  FF        rst     7
3D5B  FF        rst     7
3D5C  FF        rst     7
3D5D  FF        rst     7
3D5E  FF        rst     7
3D5F  FF        rst     7
3D60  FF        rst     7
3D61  FF        rst     7
3D62  FF        rst     7
3D63  FF        rst     7
3D64  FF        rst     7
3D65  FF        rst     7
3D66  FF        rst     7
3D67  FF        rst     7
3D68  FF        rst     7
3D69  FF        rst     7
3D6A  FF        rst     7
3D6B  FF        rst     7
3D6C  FF        rst     7
3D6D  FF        rst     7
3D6E  FF        rst     7
3D6F  FF        rst     7
3D70  FF        rst     7
3D71  FF        rst     7
3D72  FF        rst     7
3D73  FF        rst     7
3D74  FF        rst     7
3D75  FF        rst     7
3D76  FF        rst     7
3D77  FF        rst     7
3D78  FF        rst     7
3D79  FF        rst     7
3D7A  FF        rst     7
3D7B  FF        rst     7
3D7C  FF        rst     7
3D7D  FF        rst     7
3D7E  FF        rst     7
3D7F  FF        rst     7
3D80  FF        rst     7
3D81  FF        rst     7
3D82  FF        rst     7
3D83  FF        rst     7
3D84  FF        rst     7
3D85  FF        rst     7
3D86  FF        rst     7
3D87  FF        rst     7
3D88  FF        rst     7
3D89  FF        rst     7
3D8A  FF        rst     7
3D8B  FF        rst     7
3D8C  FF        rst     7
3D8D  FF        rst     7
3D8E  FF        rst     7
3D8F  FF        rst     7
3D90  FF        rst     7
3D91  FF        rst     7
3D92  FF        rst     7
3D93  FF        rst     7
3D94  FF        rst     7
3D95  FF        rst     7
3D96  FF        rst     7
3D97  FF        rst     7
3D98  FF        rst     7
3D99  FF        rst     7
3D9A  FF        rst     7
3D9B  FF        rst     7
3D9C  FF        rst     7
3D9D  FF        rst     7
3D9E  FF        rst     7
3D9F  FF        rst     7
3DA0  FF        rst     7
3DA1  FF        rst     7
3DA2  FF        rst     7
3DA3  FF        rst     7
3DA4  FF        rst     7
3DA5  FF        rst     7
3DA6  FF        rst     7
3DA7  FF        rst     7
3DA8  FF        rst     7
3DA9  FF        rst     7
3DAA  FF        rst     7
3DAB  FF        rst     7
3DAC  FF        rst     7
3DAD  FF        rst     7
3DAE  FF        rst     7
3DAF  FF        rst     7
3DB0  FF        rst     7
3DB1  FF        rst     7
3DB2  FF        rst     7
3DB3  FF        rst     7
3DB4  FF        rst     7
3DB5  FF        rst     7
3DB6  FF        rst     7
3DB7  FF        rst     7
3DB8  FF        rst     7
3DB9  FF        rst     7
3DBA  FF        rst     7
3DBB  FF        rst     7
3DBC  FF        rst     7
3DBD  FF        rst     7
3DBE  FF        rst     7
3DBF  FF        rst     7
3DC0  FF        rst     7
3DC1  FF        rst     7
3DC2  FF        rst     7
3DC3  FF        rst     7
3DC4  FF        rst     7
3DC5  FF        rst     7
3DC6  FF        rst     7
3DC7  FF        rst     7
3DC8  FF        rst     7
3DC9  FF        rst     7
3DCA  FF        rst     7
3DCB  FF        rst     7
3DCC  FF        rst     7
3DCD  FF        rst     7
3DCE  FF        rst     7
3DCF  FF        rst     7
3DD0  FF        rst     7
3DD1  FF        rst     7
3DD2  FF        rst     7
3DD3  FF        rst     7
3DD4  FF        rst     7
3DD5  FF        rst     7
3DD6  FF        rst     7
3DD7  FF        rst     7
3DD8  FF        rst     7
3DD9  FF        rst     7
3DDA  FF        rst     7
3DDB  FF        rst     7
3DDC  FF        rst     7
3DDD  FF        rst     7
3DDE  FF        rst     7
3DDF  FF        rst     7
3DE0  FF        rst     7
3DE1  FF        rst     7
3DE2  FF        rst     7
3DE3  FF        rst     7
3DE4  FF        rst     7
3DE5  FF        rst     7
3DE6  FF        rst     7
3DE7  FF        rst     7
3DE8  FF        rst     7
3DE9  FF        rst     7
3DEA  FF        rst     7
3DEB  FF        rst     7
3DEC  FF        rst     7
3DED  FF        rst     7
3DEE  FF        rst     7
3DEF  FF        rst     7
3DF0  FF        rst     7
3DF1  FF        rst     7
3DF2  FF        rst     7
3DF3  FF        rst     7
3DF4  FF        rst     7
3DF5  FF        rst     7
3DF6  FF        rst     7
3DF7  FF        rst     7
3DF8  FF        rst     7
3DF9  FF        rst     7
3DFA  FF        rst     7
3DFB  FF        rst     7
3DFC  FF        rst     7
3DFD  FF        rst     7
3DFE  FF        rst     7
3DFF  FF        rst     7
3E00  FF        rst     7
3E01  FF        rst     7
3E02  FF        rst     7
3E03  FF        rst     7
3E04  FF        rst     7
3E05  FF        rst     7
3E06  FF        rst     7
3E07  FF        rst     7
3E08  FF        rst     7
3E09  FF        rst     7
3E0A  FF        rst     7
3E0B  FF        rst     7
3E0C  FF        rst     7
3E0D  FF        rst     7
3E0E  FF        rst     7
3E0F  FF        rst     7
3E10  FF        rst     7
3E11  FF        rst     7
3E12  FF        rst     7
3E13  FF        rst     7
3E14  FF        rst     7
3E15  FF        rst     7
3E16  FF        rst     7
3E17  FF        rst     7
3E18  FF        rst     7
3E19  FF        rst     7
3E1A  FF        rst     7
3E1B  FF        rst     7
3E1C  FF        rst     7
3E1D  FF        rst     7
3E1E  FF        rst     7
3E1F  FF        rst     7
3E20  FF        rst     7
3E21  FF        rst     7
3E22  FF        rst     7
3E23  FF        rst     7
3E24  FF        rst     7
3E25  FF        rst     7
3E26  FF        rst     7
3E27  FF        rst     7
3E28  FF        rst     7
3E29  FF        rst     7
3E2A  FF        rst     7
3E2B  FF        rst     7
3E2C  FF        rst     7
3E2D  FF        rst     7
3E2E  FF        rst     7
3E2F  FF        rst     7
3E30  FF        rst     7
3E31  FF        rst     7
3E32  FF        rst     7
3E33  FF        rst     7
3E34  FF        rst     7
3E35  FF        rst     7
3E36  FF        rst     7
3E37  FF        rst     7
3E38  FF        rst     7
3E39  FF        rst     7
3E3A  FF        rst     7
3E3B  FF        rst     7
3E3C  FF        rst     7
3E3D  FF        rst     7
3E3E  FF        rst     7
3E3F  FF        rst     7
3E40  FF        rst     7
3E41  FF        rst     7
3E42  FF        rst     7
3E43  FF        rst     7
3E44  FF        rst     7
3E45  FF        rst     7
3E46  FF        rst     7
3E47  FF        rst     7
3E48  FF        rst     7
3E49  FF        rst     7
3E4A  FF        rst     7
3E4B  FF        rst     7
3E4C  FF        rst     7
3E4D  FF        rst     7
3E4E  FF        rst     7
3E4F  FF        rst     7
3E50  FF        rst     7
3E51  FF        rst     7
3E52  FF        rst     7
3E53  FF        rst     7
3E54  FF        rst     7
3E55  FF        rst     7
3E56  FF        rst     7
3E57  FF        rst     7
3E58  FF        rst     7
3E59  FF        rst     7
3E5A  FF        rst     7
3E5B  FF        rst     7
3E5C  FF        rst     7
3E5D  FF        rst     7
3E5E  FF        rst     7
3E5F  FF        rst     7
3E60  FF        rst     7
3E61  FF        rst     7
3E62  FF        rst     7
3E63  FF        rst     7
3E64  FF        rst     7
3E65  FF        rst     7
3E66  FF        rst     7
3E67  FF        rst     7
3E68  FF        rst     7
3E69  FF        rst     7
3E6A  FF        rst     7
3E6B  FF        rst     7
3E6C  FF        rst     7
3E6D  FF        rst     7
3E6E  FF        rst     7
3E6F  FF        rst     7
3E70  FF        rst     7
3E71  FF        rst     7
3E72  FF        rst     7
3E73  FF        rst     7
3E74  FF        rst     7
3E75  FF        rst     7
3E76  FF        rst     7
3E77  FF        rst     7
3E78  FF        rst     7
3E79  FF        rst     7
3E7A  FF        rst     7
3E7B  FF        rst     7
3E7C  FF        rst     7
3E7D  FF        rst     7
3E7E  FF        rst     7
3E7F  FF        rst     7
3E80  FF        rst     7
3E81  FF        rst     7
3E82  FF        rst     7
3E83  FF        rst     7
3E84  FF        rst     7
3E85  FF        rst     7
3E86  FF        rst     7
3E87  FF        rst     7
3E88  FF        rst     7
3E89  FF        rst     7
3E8A  FF        rst     7
3E8B  FF        rst     7
3E8C  FF        rst     7
3E8D  FF        rst     7
3E8E  FF        rst     7
3E8F  FF        rst     7
3E90  FF        rst     7
3E91  FF        rst     7
3E92  FF        rst     7
3E93  FF        rst     7
3E94  FF        rst     7
3E95  FF        rst     7
3E96  FF        rst     7
3E97  FF        rst     7
3E98  FF        rst     7
3E99  FF        rst     7
3E9A  FF        rst     7
3E9B  FF        rst     7
3E9C  FF        rst     7
3E9D  FF        rst     7
3E9E  FF        rst     7
3E9F  FF        rst     7
3EA0  FF        rst     7
3EA1  FF        rst     7
3EA2  FF        rst     7
3EA3  FF        rst     7
3EA4  FF        rst     7
3EA5  FF        rst     7
3EA6  FF        rst     7
3EA7  FF        rst     7
3EA8  FF        rst     7
3EA9  FF        rst     7
3EAA  FF        rst     7
3EAB  FF        rst     7
3EAC  FF        rst     7
3EAD  FF        rst     7
3EAE  FF        rst     7
3EAF  FF        rst     7
3EB0  FF        rst     7
3EB1  FF        rst     7
3EB2  FF        rst     7
3EB3  FF        rst     7
3EB4  FF        rst     7
3EB5  FF        rst     7
3EB6  FF        rst     7
3EB7  FF        rst     7
3EB8  FF        rst     7
3EB9  FF        rst     7
3EBA  FF        rst     7
3EBB  FF        rst     7
3EBC  FF        rst     7
3EBD  FF        rst     7
3EBE  FF        rst     7
3EBF  FF        rst     7
3EC0  FF        rst     7
3EC1  FF        rst     7
3EC2  FF        rst     7
3EC3  FF        rst     7
3EC4  FF        rst     7
3EC5  FF        rst     7
3EC6  FF        rst     7
3EC7  FF        rst     7
3EC8  FF        rst     7
3EC9  FF        rst     7
3ECA  FF        rst     7
3ECB  FF        rst     7
3ECC  FF        rst     7
3ECD  FF        rst     7
3ECE  FF        rst     7
3ECF  FF        rst     7
3ED0  FF        rst     7
3ED1  FF        rst     7
3ED2  FF        rst     7
3ED3  FF        rst     7
3ED4  FF        rst     7
3ED5  FF        rst     7
3ED6  FF        rst     7
3ED7  FF        rst     7
3ED8  FF        rst     7
3ED9  FF        rst     7
3EDA  FF        rst     7
3EDB  FF        rst     7
3EDC  FF        rst     7
3EDD  FF        rst     7
3EDE  FF        rst     7
3EDF  FF        rst     7
3EE0  FF        rst     7
3EE1  FF        rst     7
3EE2  FF        rst     7
3EE3  FF        rst     7
3EE4  FF        rst     7
3EE5  FF        rst     7
3EE6  FF        rst     7
3EE7  FF        rst     7
3EE8  FF        rst     7
3EE9  FF        rst     7
3EEA  FF        rst     7
3EEB  FF        rst     7
3EEC  FF        rst     7
3EED  FF        rst     7
3EEE  FF        rst     7
3EEF  FF        rst     7
3EF0  FF        rst     7
3EF1  FF        rst     7
3EF2  FF        rst     7
3EF3  FF        rst     7
3EF4  FF        rst     7
3EF5  FF        rst     7
3EF6  FF        rst     7
3EF7  FF        rst     7
3EF8  FF        rst     7
3EF9  FF        rst     7
3EFA  FF        rst     7
3EFB  FF        rst     7
3EFC  FF        rst     7
3EFD  FF        rst     7
3EFE  FF        rst     7
3EFF  FF        rst     7
3F00  FF        rst     7
3F01  FF        rst     7
3F02  FF        rst     7
3F03  FF        rst     7
3F04  FF        rst     7
3F05  FF        rst     7
3F06  FF        rst     7
3F07  FF        rst     7
3F08  FF        rst     7
3F09  FF        rst     7
3F0A  FF        rst     7
3F0B  FF        rst     7
3F0C  FF        rst     7
3F0D  FF        rst     7
3F0E  FF        rst     7
3F0F  FF        rst     7
3F10  FF        rst     7
3F11  FF        rst     7
3F12  FF        rst     7
3F13  FF        rst     7
3F14  FF        rst     7
3F15  FF        rst     7
3F16  FF        rst     7
3F17  FF        rst     7
3F18  FF        rst     7
3F19  FF        rst     7
3F1A  FF        rst     7
3F1B  FF        rst     7
3F1C  FF        rst     7
3F1D  FF        rst     7
3F1E  FF        rst     7
3F1F  FF        rst     7
3F20  FF        rst     7
3F21  FF        rst     7
3F22  FF        rst     7
3F23  FF        rst     7
3F24  FF        rst     7
3F25  FF        rst     7
3F26  FF        rst     7
3F27  FF        rst     7
3F28  FF        rst     7
3F29  FF        rst     7
3F2A  FF        rst     7
3F2B  FF        rst     7
3F2C  FF        rst     7
3F2D  FF        rst     7
3F2E  FF        rst     7
3F2F  FF        rst     7
3F30  FF        rst     7
3F31  FF        rst     7
3F32  FF        rst     7
3F33  FF        rst     7
3F34  FF        rst     7
3F35  FF        rst     7
3F36  FF        rst     7
3F37  FF        rst     7
3F38  FF        rst     7
3F39  FF        rst     7
3F3A  FF        rst     7
3F3B  FF        rst     7
3F3C  FF        rst     7
3F3D  FF        rst     7
3F3E  FF        rst     7
3F3F  FF        rst     7
3F40  FF        rst     7
3F41  FF        rst     7
3F42  FF        rst     7
3F43  FF        rst     7
3F44  FF        rst     7
3F45  FF        rst     7
3F46  FF        rst     7
3F47  FF        rst     7
3F48  FF        rst     7
3F49  FF        rst     7
3F4A  FF        rst     7
3F4B  FF        rst     7
3F4C  FF        rst     7
3F4D  FF        rst     7
3F4E  FF        rst     7
3F4F  FF        rst     7
3F50  FF        rst     7
3F51  FF        rst     7
3F52  FF        rst     7
3F53  FF        rst     7
3F54  FF        rst     7
3F55  FF        rst     7
3F56  FF        rst     7
3F57  FF        rst     7
3F58  FF        rst     7
3F59  FF        rst     7
3F5A  FF        rst     7
3F5B  FF        rst     7
3F5C  FF        rst     7
3F5D  FF        rst     7
3F5E  FF        rst     7
3F5F  FF        rst     7
3F60  FF        rst     7
3F61  FF        rst     7
3F62  FF        rst     7
3F63  FF        rst     7
3F64  FF        rst     7
3F65  FF        rst     7
3F66  FF        rst     7
3F67  FF        rst     7
3F68  FF        rst     7
3F69  FF        rst     7
3F6A  FF        rst     7
3F6B  FF        rst     7
3F6C  FF        rst     7
3F6D  FF        rst     7
3F6E  FF        rst     7
3F6F  FF        rst     7
3F70  FF        rst     7
3F71  FF        rst     7
3F72  FF        rst     7
3F73  FF        rst     7
3F74  FF        rst     7
3F75  FF        rst     7
3F76  FF        rst     7
3F77  FF        rst     7
3F78  FF        rst     7
3F79  FF        rst     7
3F7A  FF        rst     7
3F7B  FF        rst     7
3F7C  FF        rst     7
3F7D  FF        rst     7
3F7E  FF        rst     7
3F7F  FF        rst     7
3F80  FF        rst     7
3F81  FF        rst     7
3F82  FF        rst     7
3F83  FF        rst     7
3F84  FF        rst     7
3F85  FF        rst     7
3F86  FF        rst     7
3F87  FF        rst     7
3F88  FF        rst     7
3F89  FF        rst     7
3F8A  FF        rst     7
3F8B  FF        rst     7
3F8C  FF        rst     7
3F8D  FF        rst     7
3F8E  FF        rst     7
3F8F  FF        rst     7
3F90  FF        rst     7
3F91  FF        rst     7
3F92  FF        rst     7
3F93  FF        rst     7
3F94  FF        rst     7
3F95  FF        rst     7
3F96  FF        rst     7
3F97  FF        rst     7
3F98  FF        rst     7
3F99  FF        rst     7
3F9A  FF        rst     7
3F9B  FF        rst     7
3F9C  FF        rst     7
3F9D  FF        rst     7
3F9E  FF        rst     7
3F9F  FF        rst     7
3FA0  FF        rst     7
3FA1  FF        rst     7
3FA2  FF        rst     7
3FA3  FF        rst     7
3FA4  FF        rst     7
3FA5  FF        rst     7
3FA6  FF        rst     7
3FA7  FF        rst     7
3FA8  FF        rst     7
3FA9  FF        rst     7
3FAA  FF        rst     7
3FAB  FF        rst     7
3FAC  FF        rst     7
3FAD  FF        rst     7
3FAE  FF        rst     7
3FAF  FF        rst     7
3FB0  FF        rst     7
3FB1  FF        rst     7
3FB2  FF        rst     7
3FB3  FF        rst     7
3FB4  FF        rst     7
3FB5  FF        rst     7
3FB6  FF        rst     7
3FB7  FF        rst     7
3FB8  FF        rst     7
3FB9  FF        rst     7
3FBA  FF        rst     7
3FBB  FF        rst     7
3FBC  FF        rst     7
3FBD  FF        rst     7
3FBE  FF        rst     7
3FBF  FF        rst     7
3FC0  FF        rst     7
3FC1  FF        rst     7
3FC2  FF        rst     7
3FC3  FF        rst     7
3FC4  FF        rst     7
3FC5  FF        rst     7
3FC6  FF        rst     7
3FC7  FF        rst     7
3FC8  FF        rst     7
3FC9  FF        rst     7
3FCA  FF        rst     7
3FCB  FF        rst     7
3FCC  FF        rst     7
3FCD  FF        rst     7
3FCE  FF        rst     7
3FCF  FF        rst     7
3FD0  FF        rst     7
3FD1  FF        rst     7
3FD2  FF        rst     7
3FD3  FF        rst     7
3FD4  FF        rst     7
3FD5  FF        rst     7
3FD6  FF        rst     7
3FD7  FF        rst     7
3FD8  FF        rst     7
3FD9  FF        rst     7
3FDA  FF        rst     7
3FDB  FF        rst     7
3FDC  FF        rst     7
3FDD  FF        rst     7
3FDE  FF        rst     7
3FDF  FF        rst     7
3FE0  FF        rst     7
3FE1  FF        rst     7
3FE2  FF        rst     7
3FE3  FF        rst     7
3FE4  FF        rst     7
3FE5  FF        rst     7
3FE6  FF        rst     7
3FE7  FF        rst     7
3FE8  FF        rst     7
3FE9  FF        rst     7
3FEA  FF        rst     7
3FEB  FF        rst     7
3FEC  FF        rst     7
3FED  FF        rst     7
3FEE  FF        rst     7
3FEF  FF        rst     7
3FF0  FF        rst     7
3FF1  FF        rst     7
3FF2  FF        rst     7
3FF3  FF        rst     7
3FF4  FF        rst     7
3FF5  FF        rst     7
3FF6  FF        rst     7
3FF7  FF        rst     7
3FF8  FF        rst     7
3FF9  FF        rst     7
3FFA  FF        rst     7
3FFB  FF        rst     7
3FFC  FF        rst     7
3FFD  FF        rst     7
3FFE  FF        rst     7
3FFF  FF        rst     7
4000            end
