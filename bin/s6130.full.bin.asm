0000 314040    ld      sp,4040h
0003 ff        rst     38h
0004 c3ef19    jp      19efh
0007 02        ld      (bc),a
0008 216f40    ld      hl,406fh
000b c9        ret     

000c 3c        inc     a
000d 24        inc     h
000e e7        rst     20h
000f 24        inc     h
0010 c3ee13    jp      13eeh
0013 40        ld      b,b
0014 9a        sbc     a,d
0015 1e01      ld      e,01h
0017 00        nop     
0018 c3c210    jp      10c2h
001b ac        xor     h
001c bd        cp      l
001d 69        ld      l,c
001e 9f        sbc     a,a
001f 0b        dec     bc
0020 c36c11    jp      116ch
0023 6f        ld      l,a
0024 bf        cp      a
0025 a8        xor     b
0026 40        ld      b,b
0027 88        adc     a,b
0028 c39410    jp      1094h
002b ce00      adc     a,00h
002d 6b        ld      l,e
002e 82        add     a,d
002f 68        ld      l,b
0030 c3730f    jp      0f73h
0033 79        ld      a,c
0034 12        ld      (de),a
0035 110a11    ld      de,110ah
0038 7f        ld      a,a
0039 f5        push    af
003a 3a0038    ld      a,(3800h)
003d fe52      cp      52h
003f 2807      jr      z,0048h
0041 ed57      ld      a,i
0043 2801      jr      z,0046h
0045 76        halt    
0046 f1        pop     af
0047 c9        ret     

0048 f1        pop     af
0049 c30338    jp      3803h
004c c7        rst     00h
004d 12        ld      (de),a
004e 57        ld      d,a
004f 02        ld      (bc),a
0050 fb        ei      
0051 01a909    ld      bc,09a9h
0054 1609      ld      d,09h
0056 b2        or      d
0057 07        rlca    
0058 8b        adc     a,e
0059 08        ex      af,af'
005a 2a0a8c    ld      hl,(8c0ah)
005d 0a        ld      a,(bc)
005e bb        cp      e
005f 0a        ld      a,(bc)
0060 73        ld      (hl),e
0061 0f        rrca    
0062 f60f      or      0fh
0064 94        sub     h
0065 10c3      djnz    002ah
0067 fd5f      ld      e,a
0069 90        sub     b
006a 44        ld      b,h
006b b2        or      d
006c 0b        dec     bc
006d 19        add     hl,de
006e 0b        dec     bc
006f 5d        ld      e,l
0070 0b        dec     bc
0071 cb0a      rrc     d
0073 07        rlca    
0074 00        nop     
0075 af        xor     a
0076 7b        ld      a,e
0077 08        ex      af,af'
0078 f0        ret     p

0079 d310      out     (10h),a
007b e2c818    jp      po,18c8h
007e 3084      jr      nc,0004h
0080 2065      jr      nz,00e7h
0082 3a286c    ld      a,(6c28h)
0085 5d        ld      e,l
0086 3004      jr      nc,008ch
0088 be        cp      (hl)
0089 89        adc     a,c
008a 93        sub     e
008b 163c      ld      d,3ch
008d 29        add     hl,hl
008e 63        ld      h,e
008f 46        ld      b,(hl)
0090 cc66cc    call    z,0cc66h
0093 99        sbc     a,c
0094 33        inc     sp
0095 66        ld      h,(hl)
0096 cc9933    call    z,3399h
0099 c0        ret     nz

009a 063c      ld      b,3ch
009c 00        nop     
009d 66        ld      h,(hl)
009e 00        nop     
009f 70        ld      (hl),b
00a0 00        nop     
00a1 70        ld      (hl),b
00a2 03        inc     bc
00a3 e8        ret     pe

00a4 00        nop     
00a5 ac        xor     h
00a6 00        nop     
00a7 3e01      ld      a,01h
00a9 46        ld      b,(hl)
00aa 02        ld      (bc),a
00ab 34        inc     (hl)
00ac 0600      ld      b,00h
00ae 80        add     a,b
00af 03        inc     bc
00b0 320415    ld      (1504h),a
00b3 00        nop     
00b4 dc055c    call    c,5c05h
00b7 0671      ld      b,71h
00b9 060c      ld      b,0ch
00bb 03        inc     bc
00bc 8c        adc     a,h
00bd 03        inc     bc
00be ac        xor     h
00bf 03        inc     bc
00c0 94        sub     h
00c1 03        inc     bc
00c2 94        sub     h
00c3 02        ld      (bc),a
00c4 04        inc     b
00c5 03        inc     bc
00c6 1803      jr      00cbh
00c8 14        inc     d
00c9 04        inc     b
00ca 2c        inc     l
00cb 1d        dec     e
00cc 67        ld      h,a
00cd b0        or      b
00ce 04        inc     b
00cf 3005      jr      nc,00d6h
00d1 50        ld      d,b
00d2 05        dec     b
00d3 3805      jr      c,00dah
00d5 3804      jr      c,00dbh
00d7 a8        xor     b
00d8 04        inc     b
00d9 bc        cp      h
00da 04        inc     b
00db b8        cp      b
00dc 05        dec     b
00dd 2c        inc     l
00de 1d        dec     e
00df 67        ld      h,a
00e0 88        adc     a,b
00e1 4a        ld      c,d
00e2 1889      jr      006dh
00e4 6f        ld      l,a
00e5 1890      jr      0077h
00e7 8d        adc     a,l
00e8 188b      jr      0075h
00ea f1        pop     af
00eb 1800      jr      00edh
00ed e618      and     18h
00ef 00        nop     
00f0 c8        ret     z

00f1 1800      jr      00f3h
00f3 a4        and     h
00f4 18bc      jr      00b2h
00f6 03        inc     bc
00f7 b8        cp      b
00f8 88        adc     a,b
00f9 0f        rrca    
00fa 0f        rrca    
00fb 0f        rrca    
00fc 44        ld      b,h
00fd 48        ld      c,b
00fe 4c        ld      c,h
00ff 50        ld      d,b
0100 54        ld      d,h
0101 58        ld      e,b
0102 5c        ld      e,h
0103 60        ld      h,b
0104 64        ld      h,h
0105 68        ld      l,b
0106 ff        rst     38h
0107 ff        rst     38h
0108 ff        rst     38h
0109 ff        rst     38h
010a ff        rst     38h
010b ff        rst     38h
010c ff        rst     38h
010d ff        rst     38h
010e ff        rst     38h
010f ff        rst     38h
0110 61        ld      h,c
0111 00        nop     
0112 c38831    jp      3188h
0115 4b        ld      c,e
0116 c23110    jp      nz,1031h
0119 111213    ld      de,1312h
011c 14        inc     d
011d 80        add     a,b
011e 1d        dec     e
011f 17        rla     
0120 1d        dec     e
0121 19        add     hl,de
0122 1a        ld      a,(de)
0123 1b        dec     de
0124 df        rst     18h
0125 1d        dec     e
0126 cd5620    call    2056h
0129 212249    ld      hl,4922h
012c 3e25      ld      a,25h
012e 8b        adc     a,e
012f 8c        adc     a,h
0130 2829      jr      z,015bh
0132 3b        dec     sp
0133 2b        dec     hl
0134 2c        inc     l
0135 2d        dec     l
0136 2e2f      ld      l,2fh
0138 3031      jr      nc,016bh
013a 323334    ld      (3433h),a
013d 35        dec     (hl)
013e 3637      ld      (hl),37h
0140 3839      jr      c,017bh
0142 3a0324    ld      a,(2403h)
0145 3d        dec     a
0146 e8        ret     pe

0147 3f        ccf     
0148 c0        ret     nz

0149 41        ld      b,c
014a c2c3c4    jp      nz,0c4c3h
014d 45        ld      b,l
014e c6c7      add     a,0c7h
0150 58        ld      e,b
0151 c9        ret     

0152 ca4bcc    jp      z,0cc4bh
0155 4d        ld      c,l
0156 48        ld      c,b
0157 4f        ld      c,a
0158 d0        ret     nc

0159 d1        pop     de
015a 50        ld      d,b
015b 43        ld      b,e
015c 54        ld      d,h
015d d5        push    de
015e d642      sub     42h
0160 d8        ret     c

0161 d9        exx     
0162 dadbdc    jp      c,0dcdbh
0165 ddde5f    sbc     a,5fh
0168 e0        ret     po

0169 61        ld      h,c
016a e2e3e4    jp      po,0e4e3h
016d 65        ld      h,l
016e e6e7      and     0e7h
0170 78        ld      a,b
0171 e9        jp      (hl)
0172 eaebec    jp      pe,0ecebh
0175 edee      db      0edh, 0eeh       ; Undocumented 8 T-State NOP
0177 6f        ld      l,a
0178 6e        ld      l,(hl)
0179 f1        pop     af
017a 70        ld      (hl),b
017b 63        ld      h,e
017c f4c5f6    call    p,0f6c5h
017f cbf8      set     7,b
0181 f9        ld      sp,hl
0182 fad2fc    jp      m,0fcd2h
0185 d3e5      out     (0e5h),a
0187 40        ld      b,b
0188 4b        ld      c,e
0189 42        ld      b,d
018a 327f7f    ld      (7f7fh),a
018d 7f        ld      a,a
018e 7f        ld      a,a
018f 7f        ld      a,a
0190 7f        ld      a,a
0191 7f        ld      a,a
0192 7f        ld      a,a
0193 7f        ld      a,a
0194 7f        ld      a,a
0195 7f        ld      a,a
0196 7f        ld      a,a
0197 7f        ld      a,a
0198 7f        ld      a,a
0199 7f        ld      a,a
019a 7f        ld      a,a
019b 7f        ld      a,a
019c 7f        ld      a,a
019d 7f        ld      a,a
019e 7f        ld      a,a
019f 7f        ld      a,a
01a0 7f        ld      a,a
01a1 7f        ld      a,a
01a2 7f        ld      a,a
01a3 7f        ld      a,a
01a4 7f        ld      a,a
01a5 7f        ld      a,a
01a6 7f        ld      a,a
01a7 7f        ld      a,a
01a8 7f        ld      a,a
01a9 7f        ld      a,a
01aa 7f        ld      a,a
01ab 7f        ld      a,a
01ac 7f        ld      a,a
01ad 7f        ld      a,a
01ae 7f        ld      a,a
01af 7f        ld      a,a
01b0 7f        ld      a,a
01b1 7f        ld      a,a
01b2 7f        ld      a,a
01b3 7f        ld      a,a
01b4 7f        ld      a,a
01b5 7f        ld      a,a
01b6 7f        ld      a,a
01b7 7f        ld      a,a
01b8 7f        ld      a,a
01b9 7f        ld      a,a
01ba 7f        ld      a,a
01bb 7f        ld      a,a
01bc 7f        ld      a,a
01bd 7f        ld      a,a
01be 7f        ld      a,a
01bf 7f        ld      a,a
01c0 7f        ld      a,a
01c1 7f        ld      a,a
01c2 7f        ld      a,a
01c3 7f        ld      a,a
01c4 7f        ld      a,a
01c5 7f        ld      a,a
01c6 7f        ld      a,a
01c7 7f        ld      a,a
01c8 7f        ld      a,a
01c9 7f        ld      a,a
01ca 7f        ld      a,a
01cb 7f        ld      a,a
01cc 7f        ld      a,a
01cd 7f        ld      a,a
01ce 7f        ld      a,a
01cf 7f        ld      a,a
01d0 7f        ld      a,a
01d1 7f        ld      a,a
01d2 7f        ld      a,a
01d3 7f        ld      a,a
01d4 7f        ld      a,a
01d5 7f        ld      a,a
01d6 7f        ld      a,a
01d7 7f        ld      a,a
01d8 7f        ld      a,a
01d9 7f        ld      a,a
01da 7f        ld      a,a
01db 7f        ld      a,a
01dc 7f        ld      a,a
01dd 7f        ld      a,a
01de 7f        ld      a,a
01df 7f        ld      a,a
01e0 7f        ld      a,a
01e1 7f        ld      a,a
01e2 7f        ld      a,a
01e3 7f        ld      a,a
01e4 7f        ld      a,a
01e5 7f        ld      a,a
01e6 7f        ld      a,a
01e7 7f        ld      a,a
01e8 7f        ld      a,a
01e9 7f        ld      a,a
01ea 7f        ld      a,a
01eb 7f        ld      a,a
01ec 7f        ld      a,a
01ed 7f        ld      a,a
01ee 7f        ld      a,a
01ef 7f        ld      a,a
01f0 7f        ld      a,a
01f1 7f        ld      a,a
01f2 7f        ld      a,a
01f3 7f        ld      a,a
01f4 7f        ld      a,a
01f5 7f        ld      a,a
01f6 7f        ld      a,a
01f7 7f        ld      a,a
01f8 7f        ld      a,a
01f9 7f        ld      a,a
01fa 7f        ld      a,a
01fb f5        push    af
01fc c5        push    bc
01fd d5        push    de
01fe e5        push    hl
01ff fb        ei      
0200 cd2c0f    call    0f2ch
0203 cd100d    call    0d10h
0206 cdb80c    call    0cb8h
0209 218740    ld      hl,4087h
020c 7e        ld      a,(hl)
020d 34        inc     (hl)
020e ae        xor     (hl)
020f cb57      bit     2,a
0211 5f        ld      e,a
0212 c48210    call    nz,1082h
0215 cb6b      bit     5,e
0217 c41211    call    nz,1112h
021a e1        pop     hl
021b d1        pop     de
021c c1        pop     bc
021d f1        pop     af
021e fb        ei      
021f ed4d      reti    

0221 03        inc     bc
0222 03        inc     bc
0223 a5        and     l
0224 03        inc     bc
0225 0a        ld      a,(bc)
0226 00        nop     
0227 48        ld      c,b
0228 14        inc     d
0229 060f      ld      b,0fh
022b 07        rlca    
022c ff        rst     38h
022d 05        dec     b
022e 1007      djnz    0237h
0230 00        nop     
0231 0a        ld      a,(bc)
0232 ff        rst     38h
0233 08        ex      af,af'
0234 89        adc     a,c
0235 0a        ld      a,(bc)
0236 00        nop     
0237 0b        dec     bc
0238 ff        rst     38h
0239 09        add     hl,bc
023a 66        ld      h,(hl)
023b 0b        dec     bc
023c 00        nop     
023d 0eff      ld      c,0ffh
023f 0eff      ld      c,0ffh
0241 0f        rrca    
0242 ff        rst     38h
0243 0f        rrca    
0244 ff        rst     38h
0245 12        ld      (de),a
0246 ff        rst     38h
0247 10ff      djnz    0248h
0249 12        ld      (de),a
024a 00        nop     
024b 13        inc     de
024c ff        rst     38h
024d 11ff13    ld      de,13ffh
0250 78        ld      a,b
0251 212102    ld      hl,0221h
0254 cd8a02    call    028ah
0257 212802    ld      hl,0228h
025a cd8a02    call    028ah
025d 3e40      ld      a,40h
025f ed47      ld      i,a
0261 ed5e      im      2
0263 3e00      ld      a,00h
0265 323c41    ld      (413ch),a
0268 324f41    ld      (414fh),a
026b 324641    ld      (4146h),a
026e 323341    ld      (4133h),a
0271 213507    ld      hl,0735h
0274 223841    ld      (4138h),hl
0277 215e08    ld      hl,085eh
027a 224b41    ld      (414bh),hl
027d 210609    ld      hl,0906h
0280 224341    ld      (4143h),hl
0283 217509    ld      hl,0975h
0286 223041    ld      (4130h),hl
0289 c9        ret     

028a 46        ld      b,(hl)
028b 23        inc     hl
028c 4e        ld      c,(hl)
028d 23        inc     hl
028e 7e        ld      a,(hl)
028f ed79      out     (c),a
0291 10f8      djnz    028bh
0293 c9        ret     

0294 7f        ld      a,a
0295 6a        ld      l,d
0296 66        ld      h,(hl)
0297 71        ld      (hl),c
0298 1e63      ld      e,63h
029a 79        ld      a,c
029b 7e        ld      a,(hl)
029c 2d        dec     l
029d 75        ld      (hl),l
029e 77        ld      (hl),a
029f 73        ld      (hl),e
02a0 2f        cpl     
02a1 6b        ld      l,e
02a2 61        ld      h,c
02a3 6d        ld      l,l
02a4 226570    ld      (7065h),hl
02a7 69        ld      l,c
02a8 3a6e72    ld      a,(726eh)
02ab 74        ld      (hl),h
02ac 2c        inc     l
02ad 67        ld      h,a
02ae 6f        ld      l,a
02af 78        ld      a,b
02b0 2e7b      ld      l,7bh
02b2 6c        ld      l,h
02b3 62        ld      h,d
02b4 5f        ld      e,a
02b5 7d        ld      a,l
02b6 64        ld      h,h
02b7 60        ld      h,b
02b8 3f        ccf     
02b9 7a        ld      a,d
02ba 76        halt    
02bb 3e25      ld      a,25h
02bd 68        ld      l,b
02be 7c        ld      a,h
02bf 212729    ld      hl,2927h
02c2 31200e    ld      sp,0e20h
02c5 08        ex      af,af'
02c6 01020f    ld      bc,0f02h
02c9 8b        adc     a,e
02ca 84        add     a,h
02cb 85        add     a,l
02cc 2b        dec     hl
02cd 4a        ld      c,d
02ce 46        ld      b,(hl)
02cf 51        ld      d,c
02d0 23        inc     hl
02d1 43        ld      b,e
02d2 59        ld      e,c
02d3 5e        ld      e,(hl)
02d4 325557    ld      (5755h),a
02d7 53        ld      d,e
02d8 33        inc     sp
02d9 4b        ld      c,e
02da 41        ld      b,c
02db 4d        ld      c,l
02dc 34        inc     (hl)
02dd 45        ld      b,l
02de 50        ld      d,b
02df 49        ld      c,c
02e0 35        dec     (hl)
02e1 4e        ld      c,(hl)
02e2 52        ld      d,d
02e3 54        ld      d,h
02e4 3647      ld      (hl),47h
02e6 4f        ld      c,a
02e7 58        ld      e,b
02e8 37        scf     
02e9 5b        ld      e,e
02ea 4c        ld      c,h
02eb 42        ld      b,d
02ec 385d      jr      c,034bh
02ee 44        ld      b,h
02ef 40        ld      b,b
02f0 39        add     hl,sp
02f1 5a        ld      e,d
02f2 56        ld      d,(hl)
02f3 1c        inc     e
02f4 3048      jr      nc,033eh
02f6 5c        ld      e,h
02f7 3d        dec     a
02f8 2628      ld      h,28h
02fa 3b        dec     sp
02fb 3c        inc     a
02fc 0e08      ld      c,08h
02fe 01020f    ld      bc,0f02h
0301 8b        adc     a,e
0302 84        add     a,h
0303 85        add     a,l
0304 0a        ld      a,(bc)
0305 40        ld      b,b
0306 44        ld      b,h
0307 48        ld      c,b
0308 4c        ld      c,h
0309 00        nop     
030a 00        nop     
030b 00        nop     
030c 00        nop     
030d 60        ld      h,b
030e 00        nop     
030f 2a1f24    ld      hl,(241fh)
0312 1d        dec     e
0313 00        nop     
0314 00        nop     
0315 00        nop     
0316 00        nop     
0317 1819      jr      0332h
0319 ff        rst     38h
031a 05        dec     b
031b 05        dec     b
031c 40        ld      b,b
031d 40        ld      b,b
031e 40        ld      b,b
031f 40        ld      b,b
0320 40        ld      b,b
0321 5b        ld      e,e
0322 40        ld      b,b
0323 40        ld      b,b
0324 80        add     a,b
0325 00        nop     
0326 00        nop     
0327 00        nop     
0328 bd        cp      l
0329 5a        ld      e,d
032a ff        rst     38h
032b b5        or      l
032c 13        inc     de
032d 12        ld      (de),a
032e 14        inc     d
032f 64        ld      h,h
0330 13        inc     de
0331 be        cp      (hl)
0332 be        cp      (hl)
0333 65        ld      h,l
0334 23        inc     hl
0335 23        inc     hl
0336 12        ld      (de),a
0337 9c        sbc     a,h
0338 0a        ld      a,(bc)
0339 8c        adc     a,h
033a 02        ld      (bc),a
033b 5c        ld      e,h
033c 74        ld      (hl),h
033d 5c        ld      e,h
033e 6c        ld      l,h
033f ac        xor     h
0340 6c        ld      l,h
0341 6c        ld      l,h
0342 6c        ld      l,h
0343 6c        ld      l,h
0344 74        ld      (hl),h
0345 6c        ld      l,h
0346 0a        ld      a,(bc)
0347 64        ld      h,h
0348 53        ld      d,e
0349 54        ld      d,h
034a 74        ld      (hl),h
034b 64        ld      h,h
034c bf        cp      a
034d b6        or      (hl)
034e bd        cp      l
034f b6        or      (hl)
0350 be        cp      (hl)
0351 b5        or      l
0352 be        cp      (hl)
0353 ad        xor     l
0354 ae        xor     (hl)
0355 b6        or      (hl)
0356 be        cp      (hl)
0357 be        cp      (hl)
0358 b5        or      l
0359 bf        cp      a
035a be        cp      (hl)
035b 76        halt    
035c 76        halt    
035d be        cp      (hl)
035e b5        or      l
035f 6e        ld      l,(hl)
0360 6d        ld      l,l
0361 6e        ld      l,(hl)
0362 bf        cp      a
0363 bd        cp      l
0364 75        ld      (hl),l
0365 bf        cp      a
0366 bd        cp      l
0367 bf        cp      a
0368 76        halt    
0369 bf        cp      a
036a 75        ld      (hl),l
036b d4beb5    call    nc,0b5beh
036e 75        ld      (hl),l
036f 65        ld      h,l
0370 b5        or      l
0371 6c        ld      l,h
0372 bd        cp      l
0373 65        ld      h,l
0374 65        ld      h,l
0375 6d        ld      l,l
0376 75        ld      (hl),l
0377 6d        ld      l,l
0378 6c        ld      l,h
0379 b6        or      (hl)
037a 6d        ld      l,l
037b 64        ld      h,h
037c 65        ld      h,l
037d ad        xor     l
037e 75        ld      (hl),l
037f 64        ld      h,h
0380 64        ld      h,h
0381 65        ld      h,l
0382 be        cp      (hl)
0383 6c        ld      l,h
0384 64        ld      h,h
0385 76        halt    
0386 6c        ld      l,h
0387 b6        or      (hl)
0388 6c        ld      l,h
0389 b6        or      (hl)
038a 64        ld      h,h
038b 7c        ld      a,h
038c 0c        inc     c
038d 0d        dec     c
038e 0e0f      ld      c,0fh
0390 1012      djnz    03a4h
0392 14        inc     d
0393 15        dec     d
0394 0c        inc     c
0395 0d        dec     c
0396 111213    ld      de,1312h
0399 14        inc     d
039a 1619      ld      d,19h
039c 0d        dec     c
039d 0e12      ld      c,12h
039f 14        inc     d
03a0 15        dec     d
03a1 1618      ld      d,18h
03a3 1d        dec     e
03a4 0b        dec     bc
03a5 0b        dec     bc
03a6 0b        dec     bc
03a7 0b        dec     bc
03a8 0b        dec     bc
03a9 0b        dec     bc
03aa 0b        dec     bc
03ab 0c        inc     c
03ac 05        dec     b
03ad 0607      ld      b,07h
03af 09        add     hl,bc
03b0 2e4d      ld      l,4dh
03b2 4c        ld      c,h
03b3 34        inc     (hl)
03b4 211b25    ld      hl,251bh
03b7 2d        dec     l
03b8 1f        rra     
03b9 58        ld      e,b
03ba 2805      jr      z,03c1h
03bc 23        inc     hl
03bd 27        daa     
03be 1d        dec     e
03bf 3f        ccf     
03c0 4b        ld      c,e
03c1 63        ld      h,e
03c2 64        ld      h,h
03c3 49        ld      c,c
03c4 54        ld      d,h
03c5 47        ld      b,a
03c6 56        ld      d,(hl)
03c7 57        ld      d,a
03c8 55        ld      d,l
03c9 53        ld      d,e
03ca 52        ld      d,d
03cb 51        ld      d,c
03cc 50        ld      d,b
03cd 4f        ld      c,a
03ce 19        add     hl,de
03cf 314143    ld      sp,4341h
03d2 0d        dec     c
03d3 45        ld      b,l
03d4 1e33      ld      e,33h
03d6 3c        inc     a
03d7 46        ld      b,(hl)
03d8 2c        inc     l
03d9 37        scf     
03da 24        inc     h
03db 3644      ld      (hl),44h
03dd 304a      jr      nc,0429h
03df 48        ld      c,b
03e0 35        dec     (hl)
03e1 1c        inc     e
03e2 42        ld      b,d
03e3 4e        ld      c,(hl)
03e4 40        ld      b,b
03e5 2a2939    ld      hl,(3929h)
03e8 2b        dec     hl
03e9 321a3a    ld      (3a1ah),a
03ec 3b        dec     sp
03ed 223e26    ld      (263eh),hl
03f0 3d        dec     a
03f1 2038      jr      nz,042bh
03f3 011204    ld      bc,0412h
03f6 0f        rrca    
03f7 0a        ld      a,(bc)
03f8 09        add     hl,bc
03f9 0b        dec     bc
03fa 03        inc     bc
03fb 59        ld      e,c
03fc 5b        ld      e,e
03fd 0c        inc     c
03fe 5a        ld      e,d
03ff 5c        ld      e,h
0400 60        ld      h,b
0401 1061      djnz    0464h
0403 15        dec     d
0404 5d        ld      e,l
0405 5e        ld      e,(hl)
0406 08        ex      af,af'
0407 17        rla     
0408 07        rlca    
0409 62        ld      h,d
040a 14        inc     d
040b 5f        ld      e,a
040c 060e      ld      b,0eh
040e 13        inc     de
040f 1611      ld      d,11h
0411 1802      jr      0415h
0413 2f        cpl     
0414 00        nop     
0415 00        nop     
0416 ff        rst     38h
0417 00        nop     
0418 00        nop     
0419 ff        rst     38h
041a 00        nop     
041b 00        nop     
041c ff        rst     38h
041d ff        rst     38h
041e ff        rst     38h
041f 2d        dec     l
0420 00        nop     
0421 ff        rst     38h
0422 1d        dec     e
0423 ff        rst     38h
0424 5f        ld      e,a
0425 ff        rst     38h
0426 1601      ld      d,01h
0428 ff        rst     38h
0429 02        ld      (bc),a
042a ff        rst     38h
042b ff        rst     38h
042c ff        rst     38h
042d ff        rst     38h
042e ff        rst     38h
042f ff        rst     38h
0430 ff        rst     38h
0431 ff        rst     38h
0432 ff        rst     38h
0433 c0        ret     nz

0434 06c3      ld      b,0c3h
0436 95        sub     l
0437 317f6a    ld      sp,6a7fh
043a 66        ld      h,(hl)
043b 71        ld      (hl),c
043c 1e63      ld      e,63h
043e 79        ld      a,c
043f 7e        ld      a,(hl)
0440 2d        dec     l
0441 75        ld      (hl),l
0442 77        ld      (hl),a
0443 73        ld      (hl),e
0444 2f        cpl     
0445 6b        ld      l,e
0446 61        ld      h,c
0447 6d        ld      l,l
0448 226570    ld      (7065h),hl
044b 69        ld      l,c
044c 3a6e72    ld      a,(726eh)
044f 74        ld      (hl),h
0450 2c        inc     l
0451 67        ld      h,a
0452 6f        ld      l,a
0453 78        ld      a,b
0454 2e7b      ld      l,7bh
0456 6c        ld      l,h
0457 62        ld      h,d
0458 5f        ld      e,a
0459 7d        ld      a,l
045a 64        ld      h,h
045b 60        ld      h,b
045c 3f        ccf     
045d 7a        ld      a,d
045e 76        halt    
045f 1d        dec     e
0460 25        dec     h
0461 68        ld      l,b
0462 7c        ld      a,h
0463 212729    ld      hl,2927h
0466 31200e    ld      sp,0e20h
0469 08        ex      af,af'
046a 01020f    ld      bc,0f02h
046d 8b        adc     a,e
046e 84        add     a,h
046f 85        add     a,l
0470 2b        dec     hl
0471 4a        ld      c,d
0472 46        ld      b,(hl)
0473 51        ld      d,c
0474 23        inc     hl
0475 43        ld      b,e
0476 59        ld      e,c
0477 5e        ld      e,(hl)
0478 325557    ld      (5755h),a
047b 53        ld      d,e
047c 33        inc     sp
047d 4b        ld      c,e
047e 41        ld      b,c
047f 4d        ld      c,l
0480 34        inc     (hl)
0481 45        ld      b,l
0482 50        ld      d,b
0483 49        ld      c,c
0484 35        dec     (hl)
0485 4e        ld      c,(hl)
0486 52        ld      d,d
0487 54        ld      d,h
0488 3647      ld      (hl),47h
048a 4f        ld      c,a
048b 58        ld      e,b
048c 37        scf     
048d 5b        ld      e,e
048e 4c        ld      c,h
048f 42        ld      b,d
0490 385d      jr      c,04efh
0492 44        ld      b,h
0493 40        ld      b,b
0494 39        add     hl,sp
0495 5a        ld      e,d
0496 56        ld      d,(hl)
0497 1c        inc     e
0498 3048      jr      nc,04e2h
049a 5c        ld      e,h
049b 3d        dec     a
049c 2628      ld      h,28h
049e 3b        dec     sp
049f 24        inc     h
04a0 0e08      ld      c,08h
04a2 01020f    ld      bc,0f02h
04a5 8b        adc     a,e
04a6 84        add     a,h
04a7 85        add     a,l
04a8 0a        ld      a,(bc)
04a9 40        ld      b,b
04aa 44        ld      b,h
04ab 48        ld      c,b
04ac 4c        ld      c,h
04ad 50        ld      d,b
04ae 54        ld      d,h
04af 58        ld      e,b
04b0 5c        ld      e,h
04b1 60        ld      h,b
04b2 64        ld      h,h
04b3 2a3c3e    ld      hl,(3e3ch)
04b6 1f        rra     
04b7 00        nop     
04b8 00        nop     
04b9 00        nop     
04ba 00        nop     
04bb 1800      jr      04bdh
04bd 05        dec     b
04be 05        dec     b
04bf 05        dec     b
04c0 40        ld      b,b
04c1 40        ld      b,b
04c2 40        ld      b,b
04c3 40        ld      b,b
04c4 40        ld      b,b
04c5 40        ld      b,b
04c6 40        ld      b,b
04c7 40        ld      b,b
04c8 80        add     a,b
04c9 00        nop     
04ca 00        nop     
04cb 00        nop     
04cc bd        cp      l
04cd 75        ld      (hl),l
04ce fdb5      or      iyl
04d0 0d        dec     c
04d1 15        dec     d
04d2 15        dec     d
04d3 65        ld      h,l
04d4 15        dec     d
04d5 bd        cp      l
04d6 bd        cp      l
04d7 65        ld      h,l
04d8 25        dec     h
04d9 25        dec     h
04da 15        dec     d
04db 9d        sbc     a,l
04dc 0d        dec     c
04dd 8d        adc     a,l
04de 05        dec     b
04df 5d        ld      e,l
04e0 75        ld      (hl),l
04e1 5d        ld      e,l
04e2 6d        ld      l,l
04e3 ad        xor     l
04e4 6d        ld      l,l
04e5 6d        ld      l,l
04e6 6d        ld      l,l
04e7 6d        ld      l,l
04e8 75        ld      (hl),l
04e9 75        ld      (hl),l
04ea 0d        dec     c
04eb 65        ld      h,l
04ec 5d        ld      e,l
04ed 55        ld      d,l
04ee 5d        ld      e,l
04ef 65        ld      h,l
04f0 bd        cp      l
04f1 b5        or      l
04f2 bd        cp      l
04f3 b5        or      l
04f4 bd        cp      l
04f5 b5        or      l
04f6 bd        cp      l
04f7 ad        xor     l
04f8 75        ld      (hl),l
04f9 b5        or      l
04fa bd        cp      l
04fb bd        cp      l
04fc b5        or      l
04fd bd        cp      l
04fe bd        cp      l
04ff 75        ld      (hl),l
0500 75        ld      (hl),l
0501 bd        cp      l
0502 b5        or      l
0503 6d        ld      l,l
0504 6d        ld      l,l
0505 ad        xor     l
0506 bd        cp      l
0507 bd        cp      l
0508 75        ld      (hl),l
0509 bd        cp      l
050a bd        cp      l
050b bd        cp      l
050c 75        ld      (hl),l
050d bd        cp      l
050e 75        ld      (hl),l
050f d5        push    de
0510 bd        cp      l
0511 b5        or      l
0512 75        ld      (hl),l
0513 65        ld      h,l
0514 b5        or      l
0515 6d        ld      l,l
0516 bd        cp      l
0517 65        ld      h,l
0518 65        ld      h,l
0519 6d        ld      l,l
051a 75        ld      (hl),l
051b 6d        ld      l,l
051c 6d        ld      l,l
051d b5        or      l
051e 6d        ld      l,l
051f 65        ld      h,l
0520 65        ld      h,l
0521 ad        xor     l
0522 75        ld      (hl),l
0523 65        ld      h,l
0524 65        ld      h,l
0525 75        ld      (hl),l
0526 bd        cp      l
0527 6d        ld      l,l
0528 65        ld      h,l
0529 75        ld      (hl),l
052a 6d        ld      l,l
052b b5        or      l
052c 6d        ld      l,l
052d b5        or      l
052e 65        ld      h,l
052f 7d        ld      a,l
0530 0c        inc     c
0531 0d        dec     c
0532 0e0f      ld      c,0fh
0534 1012      djnz    0548h
0536 14        inc     d
0537 15        dec     d
0538 0c        inc     c
0539 0d        dec     c
053a 111213    ld      de,1312h
053d 14        inc     d
053e 1619      ld      d,19h
0540 0d        dec     c
0541 0e12      ld      c,12h
0543 14        inc     d
0544 15        dec     d
0545 1618      ld      d,18h
0547 1d        dec     e
0548 0b        dec     bc
0549 0b        dec     bc
054a 0b        dec     bc
054b 0b        dec     bc
054c 0b        dec     bc
054d 0b        dec     bc
054e 0b        dec     bc
054f 0c        inc     c
0550 05        dec     b
0551 0607      ld      b,07h
0553 09        add     hl,bc
0554 5d        ld      e,l
0555 5c        ld      e,h
0556 1a        ld      a,(de)
0557 13        inc     de
0558 5f        ld      e,a
0559 1619      ld      d,19h
055b 115e18    ld      de,185eh
055e 17        rla     
055f 15        dec     d
0560 0f        rrca    
0561 12        ld      (de),a
0562 14        inc     d
0563 0c        inc     c
0564 64        ld      h,h
0565 62        ld      h,d
0566 63        ld      h,e
0567 1003      djnz    056ch
0569 0d        dec     c
056a 05        dec     b
056b 04        inc     b
056c 07        rlca    
056d 0609      ld      b,09h
056f 08        ex      af,af'
0570 0b        dec     bc
0571 0a        ld      a,(bc)
0572 02        ld      (bc),a
0573 1b        dec     de
0574 61        ld      h,c
0575 0e60      ld      c,60h
0577 1c        inc     e
0578 1f        rra     
0579 2a233a    ld      hl,(3a23h)
057c 31323b    ld      sp,3b32h
057f 223730    ld      (3037h),hl
0582 21262f    ld      hl,2f26h
0585 34        inc     (hl)
0586 2d        dec     l
0587 2c        inc     l
0588 27        daa     
0589 3629      ld      (hl),29h
058b 2e2b      ld      l,2bh
058d 24        inc     h
058e 39        add     hl,sp
058f 2835      jr      z,05c6h
0591 3825      jr      c,05b8h
0593 3c        inc     a
0594 1d        dec     e
0595 2033      jr      nz,05cah
0597 015950    ld      bc,5059h
059a 55        ld      d,l
059b 40        ld      b,b
059c 45        ld      b,l
059d 49        ld      c,c
059e 3d        dec     a
059f 57        ld      d,a
05a0 41        ld      b,c
05a1 4b        ld      c,e
05a2 58        ld      e,b
05a3 52        ld      d,d
05a4 47        ld      b,a
05a5 48        ld      c,b
05a6 4a        ld      c,d
05a7 4e        ld      c,(hl)
05a8 53        ld      d,e
05a9 46        ld      b,(hl)
05aa 4f        ld      c,a
05ab 4d        ld      c,l
05ac 4c        ld      c,h
05ad 56        ld      d,(hl)
05ae 3f        ccf     
05af 42        ld      b,d
05b0 51        ld      d,c
05b1 44        ld      b,h
05b2 54        ld      d,h
05b3 3e5b      ld      a,5bh
05b5 5a        ld      e,d
05b6 43        ld      b,e
05b7 1eff      ld      e,0ffh
05b9 ff        rst     38h
05ba ff        rst     38h
05bb ff        rst     38h
05bc ff        rst     38h
05bd 2d        dec     l
05be 00        nop     
05bf ff        rst     38h
05c0 3aff5f    ld      a,(5fffh)
05c3 ff        rst     38h
05c4 1601      ld      d,01h
05c6 ff        rst     38h
05c7 ff        rst     38h
05c8 ff        rst     38h
05c9 ff        rst     38h
05ca 7f        ld      a,a
05cb 7f        ld      a,a
05cc 7f        ld      a,a
05cd 7f        ld      a,a
05ce 7f        ld      a,a
05cf 7f        ld      a,a
05d0 7f        ld      a,a
05d1 7f        ld      a,a
05d2 7f        ld      a,a
05d3 7f        ld      a,a
05d4 7f        ld      a,a
05d5 7f        ld      a,a
05d6 7f        ld      a,a
05d7 7f        ld      a,a
05d8 7f        ld      a,a
05d9 7f        ld      a,a
05da 7f        ld      a,a
05db 7f        ld      a,a
05dc 00        nop     
05dd 00        nop     
05de 00        nop     
05df 0c        inc     c
05e0 0b        dec     bc
05e1 00        nop     
05e2 00        nop     
05e3 00        nop     
05e4 0a        ld      a,(bc)
05e5 0d        dec     c
05e6 00        nop     
05e7 09        add     hl,bc
05e8 00        nop     
05e9 0a        ld      a,(bc)
05ea 08        ex      af,af'
05eb 207b      jr      nz,0668h
05ed 7c        ld      a,h
05ee 7d        ld      a,l
05ef 00        nop     
05f0 00        nop     
05f1 2d        dec     l
05f2 00        nop     
05f3 00        nop     
05f4 00        nop     
05f5 00        nop     
05f6 00        nop     
05f7 00        nop     
05f8 ae        xor     (hl)
05f9 b3        or      e
05fa 9c        sbc     a,h
05fb 5e        ld      e,(hl)
05fc fd212223  ld      iy,2322h
0600 b0        or      b
0601 25        dec     h
0602 2627      ld      h,27h
0604 2829      jr      z,062fh
0606 2a2b2c    ld      hl,(2c2bh)
0609 2d        dec     l
060a 2e2f      ld      l,2fh
060c 3031      jr      nc,063fh
060e 323334    ld      (3433h),a
0611 35        dec     (hl)
0612 3637      ld      (hl),37h
0614 3839      jr      c,064fh
0616 3a3be6    ld      a,(0e63bh)
0619 3d        dec     a
061a f8        ret     m

061b 3f        ccf     
061c 40        ld      b,b
061d 41        ld      b,c
061e 42        ld      b,d
061f 43        ld      b,e
0620 44        ld      b,h
0621 45        ld      b,l
0622 46        ld      b,(hl)
0623 47        ld      b,a
0624 48        ld      c,b
0625 49        ld      c,c
0626 4a        ld      c,d
0627 4b        ld      c,e
0628 4c        ld      c,h
0629 4d        ld      c,l
062a 4e        ld      c,(hl)
062b 4f        ld      c,a
062c 50        ld      d,b
062d 51        ld      d,c
062e 52        ld      d,d
062f 53        ld      d,e
0630 54        ld      d,h
0631 55        ld      d,l
0632 56        ld      d,(hl)
0633 57        ld      d,a
0634 58        ld      e,b
0635 59        ld      e,c
0636 5a        ld      e,d
0637 5b        ld      e,e
0638 5c        ld      e,h
0639 5d        ld      e,l
063a 24        inc     h
063b 5f        ld      e,a
063c 60        ld      h,b
063d 61        ld      h,c
063e 62        ld      h,d
063f 63        ld      h,e
0640 64        ld      h,h
0641 65        ld      h,l
0642 66        ld      h,(hl)
0643 67        ld      h,a
0644 68        ld      l,b
0645 69        ld      l,c
0646 6a        ld      l,d
0647 6b        ld      l,e
0648 6c        ld      l,h
0649 6d        ld      l,l
064a 6e        ld      l,(hl)
064b 6f        ld      l,a
064c 70        ld      (hl),b
064d 71        ld      (hl),c
064e 72        ld      (hl),d
064f 73        ld      (hl),e
0650 74        ld      (hl),h
0651 75        ld      (hl),l
0652 76        halt    
0653 77        ld      (hl),a
0654 78        ld      a,b
0655 79        ld      a,c
0656 7a        ld      a,d
0657 82        add     a,d
0658 87        add     a,a
0659 8a        adc     a,d
065a 7e        ld      a,(hl)
065b af        xor     a
065c 45        ld      b,l
065d 52        ld      d,d
065e 57        ld      d,a
065f 2649      ld      h,49h
0661 4a        ld      c,d
0662 4f        ld      c,a
0663 48        ld      c,b
0664 4d        ld      c,l
0665 4e        ld      c,(hl)
0666 51        ld      d,c
0667 50        ld      d,b
0668 33        inc     sp
0669 34        inc     (hl)
066a 35        dec     (hl)
066b 3631      ld      (hl),31h
066d 3832      jr      c,06a1h
066f 55        ld      d,l
0670 44        ld      b,h
0671 83        add     a,e
0672 93        sub     e
0673 82        add     a,d
0674 92        sub     d
0675 81        add     a,c
0676 91        sub     c
0677 85        add     a,l
0678 95        sub     l
0679 a8        xor     b
067a a9        xor     c
067b aa        xor     d
067c ab        xor     e
067d a5        and     l
067e a6        and     (hl)
067f a7        and     a
0680 ac        xor     h
0681 a0        and     b
0682 a1        and     c
0683 9c        sbc     a,h
0684 010277    ld      bc,7702h
0687 23        inc     hl
0688 73        ld      (hl),e
0689 23        inc     hl
068a 72        ld      (hl),d
068b 23        inc     hl
068c 70        ld      (hl),b
068d 060a      ld      b,0ah
068f db11      in      a,(11h)
0691 e604      and     04h
0693 cc1a07    call    z,071ah
0696 1a        ld      a,(de)
0697 1ea5      ld      e,0a5h
0699 f3        di      
069a ed59      out     (c),e
069c ed41      out     (c),b
069e ed59      out     (c),e
06a0 ed79      out     (c),a
06a2 fb        ei      
06a3 c9        ret     

06a4 cb7a      bit     7,d
06a6 c8        ret     z

06a7 210000    ld      hl,0000h
06aa d7        rst     10h
06ab eb        ex      de,hl
06ac c9        ret     

06ad 5f        ld      e,a
06ae 1600      ld      d,00h
06b0 7e        ld      a,(hl)
06b1 e60f      and     0fh
06b3 47        ld      b,a
06b4 7e        ld      a,(hl)
06b5 e6f0      and     0f0h
06b7 0f        rrca    
06b8 0f        rrca    
06b9 0f        rrca    
06ba 0f        rrca    
06bb 80        add     a,b
06bc 3c        inc     a
06bd 4f        ld      c,a
06be 78        ld      a,b
06bf 0600      ld      b,00h
06c1 eb        ex      de,hl
06c2 ed42      sbc     hl,bc
06c4 3812      jr      c,06d8h
06c6 2003      jr      nz,06cbh
06c8 a7        and     a
06c9 200d      jr      nz,06d8h
06cb f5        push    af
06cc 47        ld      b,a
06cd 79        ld      a,c
06ce c602      add     a,02h
06d0 85        add     a,l
06d1 4f        ld      c,a
06d2 95        sub     l
06d3 90        sub     b
06d4 47        ld      b,a
06d5 13        inc     de
06d6 f1        pop     af
06d7 c9        ret     

06d8 09        add     hl,bc
06d9 eb        ex      de,hl
06da 23        inc     hl
06db 09        add     hl,bc
06dc a7        and     a
06dd 28d1      jr      z,06b0h
06df 23        inc     hl
06e0 18ce      jr      06b0h
06e2 cb7e      bit     7,(hl)
06e4 23        inc     hl
06e5 7e        ld      a,(hl)
06e6 2002      jr      nz,06eah
06e8 c602      add     a,02h
06ea 3d        dec     a
06eb 77        ld      (hl),a
06ec e607      and     07h
06ee 83        add     a,e
06ef 5f        ld      e,a
06f0 7a        ld      a,d
06f1 ce00      adc     a,00h
06f3 57        ld      d,a
06f4 1a        ld      a,(de)
06f5 a0        and     b
06f6 57        ld      d,a
06f7 78        ld      a,b
06f8 2f        cpl     
06f9 47        ld      b,a
06fa ed78      in      a,(c)
06fc a0        and     b
06fd b2        or      d
06fe ed79      out     (c),a
0700 d9        exx     
0701 08        ex      af,af'
0702 fb        ei      
0703 ed4d      reti    

0705 217040    ld      hl,4070h
0708 7e        ld      a,(hl)
0709 a0        and     b
070a 77        ld      (hl),a
070b 3e03      ld      a,03h
070d ed79      out     (c),a
070f 18ef      jr      0700h
0711 23        inc     hl
0712 3ea5      ld      a,0a5h
0714 ed79      out     (c),a
0716 7e        ld      a,(hl)
0717 ed79      out     (c),a
0719 c9        ret     

071a f3        di      
071b db11      in      a,(11h)
071d f604      or      04h
071f d311      out     (11h),a
0721 fb        ei      
0722 0632      ld      b,32h
0724 c9        ret     

0725 db11      in      a,(11h)
0727 e604      and     04h
0729 c8        ret     z

072a f3        di      
072b db11      in      a,(11h)
072d f604      or      04h
072f ee04      xor     04h
0731 d311      out     (11h),a
0733 fb        ei      
0734 c9        ret     

0735 40        ld      b,b
0736 0f        rrca    
0737 322822    ld      (2228h),a
073a 1c        inc     e
073b 17        rla     
073c 15        dec     d
073d 13        inc     de
073e 12        ld      (de),a
073f 111110    ld      de,1011h
0742 0e0d      ld      c,0dh
0744 0d        dec     c
0745 0d        dec     c
0746 0c        inc     c
0747 0c        inc     c
0748 0c        inc     c
0749 0b        dec     bc
074a 0b        dec     bc
074b 0b        dec     bc
074c 0b        dec     bc
074d 0a        ld      a,(bc)
074e 0a        ld      a,(bc)
074f 0a        ld      a,(bc)
0750 0a        ld      a,(bc)
0751 0a        ld      a,(bc)
0752 0a        ld      a,(bc)
0753 09        add     hl,bc
0754 09        add     hl,bc
0755 09        add     hl,bc
0756 09        add     hl,bc
0757 09        add     hl,bc
0758 09        add     hl,bc
0759 09        add     hl,bc
075a 09        add     hl,bc
075b 09        add     hl,bc
075c 09        add     hl,bc
075d 08        ex      af,af'
075e 09        add     hl,bc
075f 08        ex      af,af'
0760 09        add     hl,bc
0761 08        ex      af,af'
0762 09        add     hl,bc
0763 08        ex      af,af'
0764 08        ex      af,af'
0765 08        ex      af,af'
0766 08        ex      af,af'
0767 08        ex      af,af'
0768 08        ex      af,af'
0769 08        ex      af,af'
076a 08        ex      af,af'
076b 08        ex      af,af'
076c 08        ex      af,af'
076d 08        ex      af,af'
076e 08        ex      af,af'
076f 07        rlca    
0770 08        ex      af,af'
0771 07        rlca    
0772 08        ex      af,af'
0773 07        rlca    
0774 08        ex      af,af'
0775 07        rlca    
0776 08        ex      af,af'
0777 07        rlca    
0778 09        add     hl,bc
0779 0a        ld      a,(bc)
077a 0b        dec     bc
077b 0b        dec     bc
077c 0b        dec     bc
077d 0b        dec     bc
077e 09        add     hl,bc
077f 0a        ld      a,(bc)
0780 0b        dec     bc
0781 0e11      ld      c,11h
0783 13        inc     de
0784 1823      jr      07a9h
0786 3000      jr      nc,0788h
0788 45        ld      b,l
0789 24        inc     h
078a 201c      jr      nz,07a8h
078c 1a        ld      a,(de)
078d 1818      jr      07a7h
078f 1c        inc     e
0790 2024      jr      nz,07b6h
0792 2c        inc     l
0793 64        ld      h,h
0794 33        inc     sp
0795 2c        inc     l
0796 24        inc     h
0797 201e      jr      nz,07b7h
0799 24        inc     h
079a 2e32      ld      l,32h
079c 64        ld      h,h
079d 222824    ld      (2428h),hl
07a0 24        inc     h
07a1 323c64    ld      (643ch),a
07a4 114032    ld      de,3240h
07a7 5a        ld      e,d
07a8 64        ld      h,h
07a9 2040      jr      nz,07ebh
07ab 40        ld      b,b
07ac 8c        adc     a,h
07ad 10a0      djnz    074fh
07af 8c        adc     a,h
07b0 00        nop     
07b1 8c        adc     a,h
07b2 7d        ld      a,l
07b3 b4        or      h
07b4 c8        ret     z

07b5 223a41    ld      (413ah),hl
07b8 eb        ex      de,hl
07b9 217040    ld      hl,4070h
07bc cbce      set     1,(hl)
07be cda406    call    06a4h
07c1 2809      jr      z,07cch
07c3 3a7140    ld      a,(4071h)
07c6 cb57      bit     2,a
07c8 2002      jr      nz,07cch
07ca 13        inc     de
07cb 13        inc     de
07cc 2a3841    ld      hl,(4138h)
07cf 46        ld      b,(hl)
07d0 23        inc     hl
07d1 7e        ld      a,(hl)
07d2 cdbb06    call    06bbh
07d5 223d41    ld      (413dh),hl
07d8 21eb07    ld      hl,07ebh
07db 2003      jr      nz,07e0h
07dd 212308    ld      hl,0823h
07e0 224a40    ld      (404ah),hl
07e3 213f41    ld      hl,413fh
07e6 0e01      ld      c,01h
07e8 c38606    jp      0686h
07eb 08        ex      af,af'
07ec d9        exx     
07ed 213f41    ld      hl,413fh
07f0 35        dec     (hl)
07f1 2006      jr      nz,07f9h
07f3 211108    ld      hl,0811h
07f6 224a40    ld      (404ah),hl
07f9 2a4041    ld      hl,(4140h)
07fc 0e01      ld      c,01h
07fe cd1107    call    0711h
0801 224041    ld      (4140h),hl
0804 0e09      ld      c,09h
0806 119100    ld      de,0091h
0809 213b41    ld      hl,413bh
080c 06f0      ld      b,0f0h
080e c3e206    jp      06e2h
0811 08        ex      af,af'
0812 d9        exx     
0813 2a3d41    ld      hl,(413dh)
0816 2b        dec     hl
0817 223d41    ld      (413dh),hl
081a 7d        ld      a,l
081b b4        or      h
081c 20e6      jr      nz,0804h
081e 212308    ld      hl,0823h
0821 18d3      jr      07f6h
0823 08        ex      af,af'
0824 d9        exx     
0825 214241    ld      hl,4142h
0828 35        dec     (hl)
0829 7e        ld      a,(hl)
082a 2809      jr      z,0835h
082c 3d        dec     a
082d ca0007    jp      z,0700h
0830 3d        dec     a
0831 28d1      jr      z,0804h
0833 18c4      jr      07f9h
0835 0101fd    ld      bc,0fd01h
0838 213b41    ld      hl,413bh
083b cb7e      bit     7,(hl)
083d ca0507    jp      z,0705h
0840 3a7140    ld      a,(4071h)
0843 cb57      bit     2,a
0845 c20507    jp      nz,0705h
0848 214f08    ld      hl,084fh
084b e5        push    hl
084c c30b07    jp      070bh
084f f5        push    af
0850 c5        push    bc
0851 d5        push    de
0852 e5        push    hl
0853 210200    ld      hl,0002h
0856 cdb207    call    07b2h
0859 e1        pop     hl
085a d1        pop     de
085b c1        pop     bc
085c f1        pop     af
085d c9        ret     

085e 6e        ld      l,(hl)
085f 281e      jr      z,087fh
0861 1814      jr      0877h
0863 12        ld      (de),a
0864 11100e    ld      de,0e10h
0867 0d        dec     c
0868 0d        dec     c
0869 0c        inc     c
086a 0c        inc     c
086b 0c        inc     c
086c 0d        dec     c
086d 0b        dec     bc
086e 0c        inc     c
086f 0d        dec     c
0870 0f        rrca    
0871 12        ld      (de),a
0872 14        inc     d
0873 1c        inc     e
0874 f0        ret     p

0875 23        inc     hl
0876 2c        inc     l
0877 201c      jr      nz,0895h
0879 181c      jr      0897h
087b 24        inc     h
087c f0        ret     p

087d 113224    ld      de,2432h
0880 30f0      jr      nc,0872h
0882 2032      jr      nz,08b6h
0884 32f010    ld      (10f0h),a
0887 40        ld      b,b
0888 f0        ret     p

0889 00        nop     
088a 00        nop     
088b 7d        ld      a,l
088c b4        or      h
088d c8        ret     z

088e 224d41    ld      (414dh),hl
0891 eb        ex      de,hl
0892 217040    ld      hl,4070h
0895 cbee      set     5,(hl)
0897 cda406    call    06a4h
089a 2a4b41    ld      hl,(414bh)
089d cdb006    call    06b0h
08a0 225041    ld      (4150h),hl
08a3 21b608    ld      hl,08b6h
08a6 2003      jr      nz,08abh
08a8 21ee08    ld      hl,08eeh
08ab 224c40    ld      (404ch),hl
08ae 215241    ld      hl,4152h
08b1 0e02      ld      c,02h
08b3 c38606    jp      0686h
08b6 08        ex      af,af'
08b7 d9        exx     
08b8 215241    ld      hl,4152h
08bb 35        dec     (hl)
08bc 2006      jr      nz,08c4h
08be 21dc08    ld      hl,08dch
08c1 224c40    ld      (404ch),hl
08c4 2a5341    ld      hl,(4153h)
08c7 0e02      ld      c,02h
08c9 cd1107    call    0711h
08cc 225341    ld      (4153h),hl
08cf 119100    ld      de,0091h
08d2 0e09      ld      c,09h
08d4 214e41    ld      hl,414eh
08d7 060f      ld      b,0fh
08d9 c3e206    jp      06e2h
08dc 08        ex      af,af'
08dd d9        exx     
08de 2a5041    ld      hl,(4150h)
08e1 2b        dec     hl
08e2 225041    ld      (4150h),hl
08e5 7d        ld      a,l
08e6 b4        or      h
08e7 20e6      jr      nz,08cfh
08e9 21ee08    ld      hl,08eeh
08ec 18d3      jr      08c1h
08ee 08        ex      af,af'
08ef d9        exx     
08f0 215541    ld      hl,4155h
08f3 35        dec     (hl)
08f4 7e        ld      a,(hl)
08f5 2809      jr      z,0900h
08f7 3d        dec     a
08f8 ca0007    jp      z,0700h
08fb 3d        dec     a
08fc 28d1      jr      z,08cfh
08fe 18c4      jr      08c4h
0900 0102df    ld      bc,0df02h
0903 c30507    jp      0705h
0906 12        ld      (de),a
0907 46        ld      b,(hl)
0908 3c        inc     a
0909 213020    ld      hl,2030h
090c 3046      jr      nc,0954h
090e 3c        inc     a
090f 46        ld      b,(hl)
0910 2010      jr      nz,0922h
0912 46        ld      b,(hl)
0913 64        ld      h,h
0914 00        nop     
0915 00        nop     
0916 a7        and     a
0917 c8        ret     z

0918 217040    ld      hl,4070h
091b cbd6      set     2,(hl)
091d 324541    ld      (4145h),a
0920 cb7f      bit     7,a
0922 2802      jr      z,0926h
0924 ed44      neg     
0926 2a4341    ld      hl,(4143h)
0929 cdad06    call    06adh
092c 7d        ld      a,l
092d 41        ld      b,c
092e 213c09    ld      hl,093ch
0931 224c40    ld      (404ch),hl
0934 214741    ld      hl,4147h
0937 0e02      ld      c,02h
0939 c38606    jp      0686h
093c 08        ex      af,af'
093d d9        exx     
093e 214a41    ld      hl,414ah
0941 35        dec     (hl)
0942 4e        ld      c,(hl)
0943 2b        dec     hl
0944 2b        dec     hl
0945 2828      jr      z,096fh
0947 7e        ld      a,(hl)
0948 fe09      cp      09h
094a 2004      jr      nz,0950h
094c 2b        dec     hl
094d 35        dec     (hl)
094e 2012      jr      nz,0962h
0950 0d        dec     c
0951 ca0007    jp      z,0700h
0954 0d        dec     c
0955 280b      jr      z,0962h
0957 2a4841    ld      hl,(4148h)
095a 0e02      ld      c,02h
095c cd1107    call    0711h
095f 224841    ld      (4148h),hl
0962 118900    ld      de,0089h
0965 0e08      ld      c,08h
0967 214541    ld      hl,4145h
096a 060f      ld      b,0fh
096c c3e206    jp      06e2h
096f 0102fb    ld      bc,0fb02h
0972 c30507    jp      0705h
0975 55        ld      d,l
0976 0e1a      ld      c,1ah
0978 1612      ld      d,12h
097a 0d        dec     c
097b 0c        inc     c
097c 0d        dec     c
097d 12        ld      (de),a
097e 181e      jr      099eh
0980 08        ex      af,af'
0981 64        ld      h,h
0982 33        inc     sp
0983 15        dec     d
0984 2018      jr      nz,099eh
0986 112020    ld      de,2020h
0989 08        ex      af,af'
098a 64        ld      h,h
098b 60        ld      h,b
098c 181b      jr      09a9h
098e 181e      jr      09aeh
0990 2008      jr      nz,099ah
0992 64        ld      h,h
0993 50        ld      d,b
0994 1820      jr      09b6h
0996 24        inc     h
0997 2008      jr      nz,09a1h
0999 64        ld      h,h
099a 40        ld      b,b
099b 24        inc     h
099c 2a2c08    ld      hl,(082ch)
099f 64        ld      h,h
09a0 3030      jr      nc,09d2h
09a2 40        ld      b,b
09a3 0a        ld      a,(bc)
09a4 64        ld      h,h
09a5 2040      jr      nz,09e7h
09a7 0a        ld      a,(bc)
09a8 96        sub     (hl)
09a9 a7        and     a
09aa c8        ret     z

09ab 217040    ld      hl,4070h
09ae cbc6      set     0,(hl)
09b0 213241    ld      hl,4132h
09b3 77        ld      (hl),a
09b4 23        inc     hl
09b5 cbfe      set     7,(hl)
09b7 cb7f      bit     7,a
09b9 2802      jr      z,09bdh
09bb ed44      neg     
09bd 3c        inc     a
09be 3c        inc     a
09bf 2a3041    ld      hl,(4130h)
09c2 cdad06    call    06adh
09c5 7d        ld      a,l
09c6 41        ld      b,c
09c7 21d509    ld      hl,09d5h
09ca 224840    ld      (4048h),hl
09cd 213441    ld      hl,4134h
09d0 0e00      ld      c,00h
09d2 c38606    jp      0686h
09d5 08        ex      af,af'
09d6 d9        exx     
09d7 213741    ld      hl,4137h
09da 35        dec     (hl)
09db 4e        ld      c,(hl)
09dc 2b        dec     hl
09dd 2b        dec     hl
09de 283f      jr      z,0a1fh
09e0 7e        ld      a,(hl)
09e1 fe7b      cp      7bh
09e3 2804      jr      z,09e9h
09e5 fe86      cp      86h
09e7 2004      jr      nz,09edh
09e9 2b        dec     hl
09ea 35        dec     (hl)
09eb 2012      jr      nz,09ffh
09ed 0d        dec     c
09ee ca0007    jp      z,0700h
09f1 0d        dec     c
09f2 280b      jr      z,09ffh
09f4 2a3541    ld      hl,(4135h)
09f7 0e00      ld      c,00h
09f9 cd1107    call    0711h
09fc 223541    ld      (4135h),hl
09ff 213241    ld      hl,4132h
0a02 7e        ld      a,(hl)
0a03 07        rlca    
0a04 23        inc     hl
0a05 7e        ld      a,(hl)
0a06 281d      jr      z,0a25h
0a08 cb7f      bit     7,a
0a0a 201a      jr      nz,0a26h
0a0c 3803      jr      c,0a11h
0a0e 3c        inc     a
0a0f c603      add     a,03h
0a11 3d        dec     a
0a12 3d        dec     a
0a13 e607      and     07h
0a15 118900    ld      de,0089h
0a18 0e08      ld      c,08h
0a1a 06f0      ld      b,0f0h
0a1c c3eb06    jp      06ebh
0a1f 0100fe    ld      bc,0fe00h
0a22 c30507    jp      0705h
0a25 3f        ccf     
0a26 38ea      jr      c,0a12h
0a28 18e5      jr      0a0fh
0a2a a7        and     a
0a2b c8        ret     z

0a2c 217040    ld      hl,4070h
0a2f cbde      set     3,(hl)
0a31 cbe6      set     4,(hl)
0a33 57        ld      d,a
0a34 0601      ld      b,01h
0a36 3a6840    ld      a,(4068h)
0a39 10fe      djnz    0a39h
0a3b d601      sub     01h
0a3d 30fa      jr      nc,0a39h
0a3f 21600a    ld      hl,0a60h
0a42 224840    ld      (4048h),hl
0a45 3e32      ld      a,32h
0a47 92        sub     d
0a48 42        ld      b,d
0a49 0e00      ld      c,00h
0a4b 1ea5      ld      e,0a5h
0a4d f3        di      
0a4e ed59      out     (c),e
0a50 ed41      out     (c),b
0a52 ed59      out     (c),e
0a54 ed79      out     (c),a
0a56 db11      in      a,(11h)
0a58 f601      or      01h
0a5a ee01      xor     01h
0a5c d311      out     (11h),a
0a5e fb        ei      
0a5f c9        ret     

0a60 08        ex      af,af'
0a61 d9        exx     
0a62 db11      in      a,(11h)
0a64 f601      or      01h
0a66 d311      out     (11h),a
0a68 3ea5      ld      a,0a5h
0a6a d300      out     (00h),a
0a6c 3e4b      ld      a,4bh
0a6e d300      out     (00h),a
0a70 21790a    ld      hl,0a79h
0a73 224840    ld      (4048h),hl
0a76 c30007    jp      0700h
0a79 08        ex      af,af'
0a7a d9        exx     
0a7b cf        rst     08h
0a7c 23        inc     hl
0a7d cb9e      res     3,(hl)
0a7f 21840a    ld      hl,0a84h
0a82 18ef      jr      0a73h
0a84 08        ex      af,af'
0a85 d9        exx     
0a86 0100ef    ld      bc,0ef00h
0a89 c30507    jp      0705h
0a8c 06d8      ld      b,0d8h
0a8e f3        di      
0a8f db11      in      a,(11h)
0a91 f602      or      02h
0a93 ee02      xor     02h
0a95 d311      out     (11h),a
0a97 fb        ei      
0a98 217040    ld      hl,4070h
0a9b cbf6      set     6,(hl)
0a9d 21a90a    ld      hl,0aa9h
0aa0 224a40    ld      (404ah),hl
0aa3 0e01      ld      c,01h
0aa5 78        ld      a,b
0aa6 c39706    jp      0697h
0aa9 08        ex      af,af'
0aaa d9        exx     
0aab 21b30a    ld      hl,0ab3h
0aae 224a40    ld      (404ah),hl
0ab1 18c3      jr      0a76h
0ab3 08        ex      af,af'
0ab4 d9        exx     
0ab5 0101bf    ld      bc,0bf01h
0ab8 c3890a    jp      0a89h
0abb 0600      ld      b,00h
0abd cdc20a    call    0ac2h
0ac0 18d6      jr      0a98h
0ac2 f3        di      
0ac3 db11      in      a,(11h)
0ac5 f602      or      02h
0ac7 d311      out     (11h),a
0ac9 fb        ei      
0aca c9        ret     

0acb cda90b    call    0ba9h
0ace 327b40    ld      (407bh),a
0ad1 cd810c    call    0c81h
0ad4 f5        push    af
0ad5 fe10      cp      10h
0ad7 3811      jr      c,0aeah
0ad9 fe80      cp      80h
0adb 300d      jr      nc,0aeah
0add cd340c    call    0c34h
0ae0 f1        pop     af
0ae1 f5        push    af
0ae2 cdf90b    call    0bf9h
0ae5 f1        pop     af
0ae6 f5        push    af
0ae7 cd0a0c    call    0c0ah
0aea 3a7c40    ld      a,(407ch)
0aed 2a7d40    ld      hl,(407dh)
0af0 b4        or      h
0af1 b5        or      l
0af2 cf        rst     08h
0af3 2802      jr      z,0af7h
0af5 cbe6      set     4,(hl)
0af7 3a8140    ld      a,(4081h)
0afa a7        and     a
0afb 2802      jr      z,0affh
0afd cbee      set     5,(hl)
0aff f1        pop     af
0b00 c9        ret     

0b01 21bf40    ld      hl,40bfh
0b04 cb76      bit     6,(hl)
0b06 c8        ret     z

0b07 217c40    ld      hl,407ch
0b0a 365f      ld      (hl),5fh
0b0c c9        ret     

0b0d 218140    ld      hl,4081h
0b10 3601      ld      (hl),01h
0b12 c9        ret     

0b13 218140    ld      hl,4081h
0b16 3602      ld      (hl),02h
0b18 c9        ret     

0b19 cda90b    call    0ba9h
0b1c cd810b    call    0b81h
0b1f d8        ret     c

0b20 ed43a840  ld      (40a8h),bc
0b24 217240    ld      hl,4072h
0b27 cb5e      bit     3,(hl)
0b29 2009      jr      nz,0b34h
0b2b ed538940  ld      (4089h),de
0b2f cf        rst     08h
0b30 cbf6      set     6,(hl)
0b32 eb        ex      de,hl
0b33 c9        ret     

0b34 2a8940    ld      hl,(4089h)
0b37 19        add     hl,de
0b38 228940    ld      (4089h),hl
0b3b eb        ex      de,hl
0b3c c9        ret     

0b3d cd9f0b    call    0b9fh
0b40 210000    ld      hl,0000h
0b43 228940    ld      (4089h),hl
0b46 228b40    ld      (408bh),hl
0b49 217240    ld      hl,4072h
0b4c cbde      set     3,(hl)
0b4e c9        ret     

0b4f 217240    ld      hl,4072h
0b52 cb5e      bit     3,(hl)
0b54 c8        ret     z

0b55 cb9e      res     3,(hl)
0b57 cf        rst     08h
0b58 cbf6      set     6,(hl)
0b5a cbfe      set     7,(hl)
0b5c c9        ret     

0b5d cda90b    call    0ba9h
0b60 eb        ex      de,hl
0b61 2aaa40    ld      hl,(40aah)
0b64 19        add     hl,de
0b65 22aa40    ld      (40aah),hl
0b68 217240    ld      hl,4072h
0b6b cb5e      bit     3,(hl)
0b6d 2009      jr      nz,0b78h
0b6f ed538b40  ld      (408bh),de
0b73 cf        rst     08h
0b74 cbfe      set     7,(hl)
0b76 eb        ex      de,hl
0b77 c9        ret     

0b78 2a8b40    ld      hl,(408bh)
0b7b 19        add     hl,de
0b7c 228b40    ld      (408bh),hl
0b7f eb        ex      de,hl
0b80 c9        ret     

0b81 eb        ex      de,hl
0b82 2aa840    ld      hl,(40a8h)
0b85 a7        and     a
0b86 ed5a      adc     hl,de
0b88 fa980b    jp      m,0b98h
0b8b 44        ld      b,h
0b8c 4d        ld      c,l
0b8d 2aab00    ld      hl,(00abh)
0b90 a7        and     a
0b91 ed42      sbc     hl,bc
0b93 d0        ret     nc

0b94 3e16      ld      a,16h
0b96 1802      jr      0b9ah
0b98 3e15      ld      a,15h
0b9a cd6826    call    2668h
0b9d 37        scf     
0b9e c9        ret     

0b9f cda90b    call    0ba9h
0ba2 3a7040    ld      a,(4070h)
0ba5 a7        and     a
0ba6 20f7      jr      nz,0b9fh
0ba8 c9        ret     

0ba9 f5        push    af
0baa 3a6f40    ld      a,(406fh)
0bad a7        and     a
0bae 20fa      jr      nz,0baah
0bb0 f1        pop     af
0bb1 c9        ret     

0bb2 cdbb0b    call    0bbbh
0bb5 217140    ld      hl,4071h
0bb8 cbe6      set     4,(hl)
0bba c9        ret     

0bbb 21fb01    ld      hl,01fbh
0bbe 224e40    ld      (404eh),hl
0bc1 210000    ld      hl,0000h
0bc4 226f40    ld      (406fh),hl
0bc7 228540    ld      (4085h),hl
0bca cd5102    call    0251h
0bcd 210000    ld      hl,0000h
0bd0 2d        dec     l
0bd1 20fd      jr      nz,0bd0h
0bd3 25        dec     h
0bd4 20fa      jr      nz,0bd0h
0bd6 af        xor     a
0bd7 327240    ld      (4072h),a
0bda fb        ei      
0bdb 210040    ld      hl,4000h
0bde 46        ld      b,(hl)
0bdf 77        ld      (hl),a
0be0 05        dec     b
0be1 2005      jr      nz,0be8h
0be3 3e5a      ld      a,5ah
0be5 cd1609    call    0916h
0be8 c3dc0e    jp      0edch
0beb 227940    ld      (4079h),hl
0bee cd810b    call    0b81h
0bf1 ed43a840  ld      (40a8h),bc
0bf5 cf        rst     08h
0bf6 cbc6      set     0,(hl)
0bf8 c9        ret     

0bf9 1e06      ld      e,06h
0bfb cdaa0c    call    0caah
0bfe f3        di      
0bff cd6e0c    call    0c6eh
0c02 328d40    ld      (408dh),a
0c05 cf        rst     08h
0c06 cbd6      set     2,(hl)
0c08 fb        ei      
0c09 c9        ret     

0c0a cda80c    call    0ca8h
0c0d 3a8240    ld      a,(4082h)
0c10 e60f      and     0fh
0c12 2819      jr      z,0c2dh
0c14 fe05      cp      05h
0c16 3804      jr      c,0c1ch
0c18 3e01      ld      a,01h
0c1a 1811      jr      0c2dh
0c1c 3d        dec     a
0c1d 07        rlca    
0c1e 07        rlca    
0c1f 07        rlca    
0c20 47        ld      b,a
0c21 7e        ld      a,(hl)
0c22 e638      and     38h
0c24 0f        rrca    
0c25 0f        rrca    
0c26 0f        rrca    
0c27 80        add     a,b
0c28 1e02      ld      e,02h
0c2a cdaa0c    call    0caah
0c2d 328340    ld      (4083h),a
0c30 cf        rst     08h
0c31 cbde      set     3,(hl)
0c33 c9        ret     

0c34 57        ld      d,a
0c35 217140    ld      hl,4071h
0c38 4e        ld      c,(hl)
0c39 3ed8      ld      a,0d8h
0c3b cb49      bit     1,c
0c3d 2028      jr      nz,0c67h
0c3f 3a8240    ld      a,(4082h)
0c42 e60f      and     0fh
0c44 2821      jr      z,0c67h
0c46 0602      ld      b,02h
0c48 cb41      bit     0,c
0c4a 200e      jr      nz,0c5ah
0c4c 7a        ld      a,d
0c4d cda80c    call    0ca8h
0c50 e6c0      and     0c0h
0c52 07        rlca    
0c53 07        rlca    
0c54 1e04      ld      e,04h
0c56 cdaa0c    call    0caah
0c59 46        ld      b,(hl)
0c5a 218f40    ld      hl,408fh
0c5d 7e        ld      a,(hl)
0c5e 70        ld      (hl),b
0c5f e60f      and     0fh
0c61 2002      jr      nz,0c65h
0c63 3e09      ld      a,09h
0c65 80        add     a,b
0c66 1f        rra     
0c67 328e40    ld      (408eh),a
0c6a cf        rst     08h
0c6b cbce      set     1,(hl)
0c6d c9        ret     

0c6e 218440    ld      hl,4084h
0c71 46        ld      b,(hl)
0c72 77        ld      (hl),a
0c73 90        sub     b
0c74 3805      jr      c,0c7bh
0c76 fe32      cp      32h
0c78 d8        ret     c

0c79 d664      sub     64h
0c7b fece      cp      0ceh
0c7d d0        ret     nc

0c7e c664      add     a,64h
0c80 c9        ret     

0c81 fe10      cp      10h
0c83 d8        ret     c

0c84 fe1c      cp      1ch
0c86 d0        ret     nc

0c87 f5        push    af
0c88 2aa040    ld      hl,(40a0h)
0c8b d610      sub     10h
0c8d 280b      jr      z,0c9ah
0c8f f5        push    af
0c90 7e        ld      a,(hl)
0c91 feff      cp      0ffh
0c93 23        inc     hl
0c94 20fa      jr      nz,0c90h
0c96 f1        pop     af
0c97 3d        dec     a
0c98 20f5      jr      nz,0c8fh
0c9a f1        pop     af
0c9b fe18      cp      18h
0c9d d0        ret     nc

0c9e 7e        ld      a,(hl)
0c9f cb7f      bit     7,a
0ca1 2001      jr      nz,0ca4h
0ca3 23        inc     hl
0ca4 227d40    ld      (407dh),hl
0ca7 c9        ret     

0ca8 1e00      ld      e,00h
0caa 219240    ld      hl,4092h
0cad 1600      ld      d,00h
0caf 19        add     hl,de
0cb0 5e        ld      e,(hl)
0cb1 23        inc     hl
0cb2 66        ld      h,(hl)
0cb3 6b        ld      l,e
0cb4 5f        ld      e,a
0cb5 19        add     hl,de
0cb6 7e        ld      a,(hl)
0cb7 c9        ret     

0cb8 cf        rst     08h
0cb9 7e        ld      a,(hl)
0cba e63f      and     3fh
0cbc c0        ret     nz

0cbd cb76      bit     6,(hl)
0cbf 2817      jr      z,0cd8h
0cc1 ed4b8940  ld      bc,(4089h)
0cc5 ed5b3a41  ld      de,(413ah)
0cc9 f3        di      
0cca 2a3d41    ld      hl,(413dh)
0ccd cdf60c    call    0cf6h
0cd0 3806      jr      c,0cd8h
0cd2 223d41    ld      (413dh),hl
0cd5 cf        rst     08h
0cd6 cbb6      res     6,(hl)
0cd8 fb        ei      
0cd9 cf        rst     08h
0cda cb7e      bit     7,(hl)
0cdc c8        ret     z

0cdd ed4b8b40  ld      bc,(408bh)
0ce1 ed5b4d41  ld      de,(414dh)
0ce5 f3        di      
0ce6 2a5041    ld      hl,(4150h)
0ce9 cdf60c    call    0cf6h
0cec 3806      jr      c,0cf4h
0cee 225041    ld      (4150h),hl
0cf1 cf        rst     08h
0cf2 cbbe      res     7,(hl)
0cf4 fb        ei      
0cf5 c9        ret     

0cf6 2b        dec     hl
0cf7 d5        push    de
0cf8 eb        ex      de,hl
0cf9 210200    ld      hl,0002h
0cfc d7        rst     10h
0cfd eb        ex      de,hl
0cfe d1        pop     de
0cff d8        ret     c

0d00 7a        ld      a,d
0d01 a8        xor     b
0d02 07        rlca    
0d03 d8        ret     c

0d04 cb78      bit     7,b
0d06 2805      jr      z,0d0dh
0d08 ed42      sbc     hl,bc
0d0a 23        inc     hl
0d0b af        xor     a
0d0c c9        ret     

0d0d 09        add     hl,bc
0d0e 18fa      jr      0d0ah
0d10 ed4b6f40  ld      bc,(406fh)
0d14 2a8540    ld      hl,(4085h)
0d17 a7        and     a
0d18 ed42      sbc     hl,bc
0d1a 218840    ld      hl,4088h
0d1d 7e        ld      a,(hl)
0d1e 2026      jr      nz,0d46h
0d20 05        dec     b
0d21 04        inc     b
0d22 c0        ret     nz

0d23 0d        dec     c
0d24 0c        inc     c
0d25 201f      jr      nz,0d46h
0d27 a7        and     a
0d28 2009      jr      nz,0d33h
0d2a 3a7140    ld      a,(4071h)
0d2d cb67      bit     4,a
0d2f c42507    call    nz,0725h
0d32 c9        ret     

0d33 3a8740    ld      a,(4087h)
0d36 e603      and     03h
0d38 c0        ret     nz

0d39 35        dec     (hl)
0d3a c0        ret     nz

0d3b cdbb0a    call    0abbh
0d3e 3e01      ld      a,01h
0d40 cd6e0c    call    0c6eh
0d43 c3a909    jp      09a9h
0d46 ed438540  ld      (4085h),bc
0d4a a7        and     a
0d4b 2803      jr      z,0d50h
0d4d 3e01      ld      a,01h
0d4f 77        ld      (hl),a
0d50 cf        rst     08h
0d51 79        ld      a,c
0d52 48        ld      c,b
0d53 0f        rrca    
0d54 303f      jr      nc,0d95h
0d56 3e4a      ld      a,4ah
0d58 a1        and     c
0d59 ed5b7940  ld      de,(4079h)
0d5d 2830      jr      z,0d8fh
0d5f f3        di      
0d60 ed4b3d41  ld      bc,(413dh)
0d64 79        ld      a,c
0d65 b0        or      b
0d66 281f      jr      z,0d87h
0d68 eb        ex      de,hl
0d69 3a3b41    ld      a,(413bh)
0d6c ac        xor     h
0d6d 07        rlca    
0d6e 3019      jr      nc,0d89h
0d70 cb7c      bit     7,h
0d72 2005      jr      nz,0d79h
0d74 eb        ex      de,hl
0d75 af        xor     a
0d76 6f        ld      l,a
0d77 67        ld      h,a
0d78 d7        rst     10h
0d79 a7        and     a
0d7a ed4a      adc     hl,bc
0d7c 2809      jr      z,0d87h
0d7e fa870d    jp      m,0d87h
0d81 223d41    ld      (413dh),hl
0d84 cf        rst     08h
0d85 cb86      res     0,(hl)
0d87 fb        ei      
0d88 c9        ret     

0d89 cb7c      bit     7,h
0d8b 28ec      jr      z,0d79h
0d8d 18e5      jr      0d74h
0d8f cb86      res     0,(hl)
0d91 eb        ex      de,hl
0d92 c3b207    jp      07b2h
0d95 0f        rrca    
0d96 303f      jr      nc,0dd7h
0d98 eb        ex      de,hl
0d99 218840    ld      hl,4088h
0d9c 7e        ld      a,(hl)
0d9d a7        and     a
0d9e 2829      jr      z,0dc9h
0da0 3e2c      ld      a,2ch
0da2 a1        and     c
0da3 c0        ret     nz

0da4 eb        ex      de,hl
0da5 cb8e      res     1,(hl)
0da7 3a8e40    ld      a,(408eh)
0daa f5        push    af
0dab 07        rlca    
0dac dcc20a    call    c,0ac2h
0daf f1        pop     af
0db0 c31609    jp      0916h
0db3 7e        ld      a,(hl)
0db4 e642      and     42h
0db6 c0        ret     nz

0db7 3e02      ld      a,02h
0db9 df        rst     18h
0dba 23        inc     hl
0dbb cb8e      res     1,(hl)
0dbd 2807      jr      z,0dc6h
0dbf cb7e      bit     7,(hl)
0dc1 cbfe      set     7,(hl)
0dc3 c8        ret     z

0dc4 cbce      set     1,(hl)
0dc6 cbbe      res     7,(hl)
0dc8 c9        ret     

0dc9 3e5a      ld      a,5ah
0dcb a1        and     c
0dcc c0        ret     nz

0dcd 36ff      ld      (hl),0ffh
0dcf 2e71      ld      l,71h
0dd1 cb4e      bit     1,(hl)
0dd3 c0        ret     nz

0dd4 c38c0a    jp      0a8ch
0dd7 0f        rrca    
0dd8 300c      jr      nc,0de6h
0dda 3e59      ld      a,59h
0ddc a1        and     c
0ddd c0        ret     nz

0dde cb96      res     2,(hl)
0de0 3a8d40    ld      a,(408dh)
0de3 c3a909    jp      09a9h
0de6 0f        rrca    
0de7 301f      jr      nc,0e08h
0de9 3e7f      ld      a,7fh
0deb a1        and     c
0dec c0        ret     nz

0ded cb9e      res     3,(hl)
0def 3a8340    ld      a,(4083h)
0df2 cd2a0a    call    0a2ah
0df5 217140    ld      hl,4071h
0df8 cb4e      bit     1,(hl)
0dfa 28b7      jr      z,0db3h
0dfc 3ed7      ld      a,0d7h
0dfe cd1609    call    0916h
0e01 0609      ld      b,09h
0e03 cd5a0c    call    0c5ah
0e06 18cc      jr      0dd4h
0e08 0f        rrca    
0e09 d2970e    jp      nc,0e97h
0e0c 217c40    ld      hl,407ch
0e0f 7e        ld      a,(hl)
0e10 3600      ld      (hl),00h
0e12 b7        or      a
0e13 2806      jr      z,0e1bh
0e15 cf        rst     08h
0e16 cba6      res     4,(hl)
0e18 c3d40a    jp      0ad4h
0e1b 2a7d40    ld      hl,(407dh)
0e1e 7e        ld      a,(hl)
0e1f feff      cp      0ffh
0e21 2856      jr      z,0e79h
0e23 cb7e      bit     7,(hl)
0e25 200b      jr      nz,0e32h
0e27 3e1b      ld      a,1bh
0e29 a1        and     c
0e2a c0        ret     nz

0e2b 7e        ld      a,(hl)
0e2c 23        inc     hl
0e2d 227d40    ld      (407dh),hl
0e30 18e6      jr      0e18h
0e32 3e02      ld      a,02h
0e34 a1        and     c
0e35 c0        ret     nz

0e36 110000    ld      de,0000h
0e39 4e        ld      c,(hl)
0e3a 2600      ld      h,00h
0e3c 3e07      ld      a,07h
0e3e cb71      bit     6,c
0e40 202c      jr      nz,0e6eh
0e42 3e0f      ld      a,0fh
0e44 a1        and     c
0e45 3c        inc     a
0e46 3c        inc     a
0e47 cd1e13    call    131eh
0e4a 19        add     hl,de
0e4b eb        ex      de,hl
0e4c cb69      bit     5,c
0e4e c4010b    call    nz,0b01h
0e51 cb61      bit     4,c
0e53 2a7d40    ld      hl,(407dh)
0e56 23        inc     hl
0e57 227d40    ld      (407dh),hl
0e5a 20dd      jr      nz,0e39h
0e5c ed537940  ld      (4079h),de
0e60 cda706    call    06a7h
0e63 2a7f40    ld      hl,(407fh)
0e66 19        add     hl,de
0e67 227f40    ld      (407fh),hl
0e6a cf        rst     08h
0e6b cbc6      set     0,(hl)
0e6d c9        ret     

0e6e a1        and     c
0e6f cb59      bit     3,c
0e71 2803      jr      z,0e76h
0e73 25        dec     h
0e74 ed44      neg     
0e76 6f        ld      l,a
0e77 18d1      jr      0e4ah
0e79 110000    ld      de,0000h
0e7c cf        rst     08h
0e7d cba6      res     4,(hl)
0e7f ed537d40  ld      (407dh),de
0e83 cb6e      bit     5,(hl)
0e85 c0        ret     nz

0e86 cbf6      set     6,(hl)
0e88 2a7f40    ld      hl,(407fh)
0e8b eb        ex      de,hl
0e8c 227f40    ld      (407fh),hl
0e8f 2a8940    ld      hl,(4089h)
0e92 19        add     hl,de
0e93 228940    ld      (4089h),hl
0e96 c9        ret     

0e97 0f        rrca    
0e98 3022      jr      nc,0ebch
0e9a 3e4a      ld      a,4ah
0e9c a1        and     c
0e9d c0        ret     nz

0e9e cbae      res     5,(hl)
0ea0 ed4b7f40  ld      bc,(407fh)
0ea4 218140    ld      hl,4081h
0ea7 5e        ld      e,(hl)
0ea8 1600      ld      d,00h
0eaa 72        ld      (hl),d
0eab cda706    call    06a7h
0eae ed537f40  ld      (407fh),de
0eb2 09        add     hl,bc
0eb3 cdb207    call    07b2h
0eb6 3a7b40    ld      a,(407bh)
0eb9 c3ce0a    jp      0aceh
0ebc 0f        rrca    
0ebd 300f      jr      nc,0eceh
0ebf 3e4a      ld      a,4ah
0ec1 a1        and     c
0ec2 c0        ret     nz

0ec3 cbb6      res     6,(hl)
0ec5 110000    ld      de,0000h
0ec8 cd880e    call    0e88h
0ecb c3b207    jp      07b2h
0ece 0f        rrca    
0ecf d0        ret     nc

0ed0 3e2c      ld      a,2ch
0ed2 a1        and     c
0ed3 c0        ret     nz

0ed4 cbbe      res     7,(hl)
0ed6 2a8b40    ld      hl,(408bh)
0ed9 c38b08    jp      088bh
0edc 2aab00    ld      hl,(00abh)
0edf 111800    ld      de,0018h
0ee2 d7        rst     10h
0ee3 44        ld      b,h
0ee4 4d        ld      c,l
0ee5 cd200b    call    0b20h
0ee8 21f4ff    ld      hl,0fff4h
0eeb cd1e0f    call    0f1eh
0eee 6c        ld      l,h
0eef 2807      jr      z,0ef8h
0ef1 cd1e0f    call    0f1eh
0ef4 3809      jr      c,0effh
0ef6 20f9      jr      nz,0ef1h
0ef8 cd1e0f    call    0f1eh
0efb 3802      jr      c,0effh
0efd 28f9      jr      z,0ef8h
0eff 010000    ld      bc,0000h
0f02 110c00    ld      de,000ch
0f05 cd200b    call    0b20h
0f08 cd0b0f    call    0f0bh
0f0b 3e04      ld      a,04h
0f0d cda909    call    09a9h
0f10 cd9f0b    call    0b9fh
0f13 3e04      ld      a,04h
0f15 df        rst     18h
0f16 20f3      jr      nz,0f0bh
0f18 3e01      ld      a,01h
0f1a 328440    ld      (4084h),a
0f1d c9        ret     

0f1e cd190b    call    0b19h
0f21 cda90b    call    0ba9h
0f24 79        ld      a,c
0f25 b0        or      b
0f26 37        scf     
0f27 c8        ret     z

0f28 3e02      ld      a,02h
0f2a df        rst     18h
0f2b c9        ret     

0f2c 3e08      ld      a,08h
0f2e df        rst     18h
0f2f 219040    ld      hl,4090h
0f32 117240    ld      de,4072h
0f35 2806      jr      z,0f3dh
0f37 36ff      ld      (hl),0ffh
0f39 eb        ex      de,hl
0f3a cb96      res     2,(hl)
0f3c c9        ret     

0f3d 3a4f41    ld      a,(414fh)
0f40 47        ld      b,a
0f41 7e        ld      a,(hl)
0f42 a7        and     a
0f43 c8        ret     z

0f44 3c        inc     a
0f45 2005      jr      nz,0f4ch
0f47 369c      ld      (hl),9ch
0f49 23        inc     hl
0f4a 70        ld      (hl),b
0f4b c9        ret     

0f4c 23        inc     hl
0f4d 7e        ld      a,(hl)
0f4e 90        sub     b
0f4f c8        ret     z

0f50 70        ld      (hl),b
0f51 2b        dec     hl
0f52 86        add     a,(hl)
0f53 77        ld      (hl),a
0f54 3019      jr      nc,0f6fh
0f56 21af00    ld      hl,00afh
0f59 46        ld      b,(hl)
0f5a 4f        ld      c,a
0f5b cdf213    call    13f2h
0f5e 7d        ld      a,l
0f5f d631      sub     31h
0f61 3802      jr      c,0f65h
0f63 2e30      ld      l,30h
0f65 79        ld      a,c
0f66 95        sub     l
0f67 10fd      djnz    0f66h
0f69 a7        and     a
0f6a c0        ret     nz

0f6b eb        ex      de,hl
0f6c cbd6      set     2,(hl)
0f6e c9        ret     

0f6f 3c        inc     a
0f70 c0        ret     nz

0f71 77        ld      (hl),a
0f72 c9        ret     

0f73 010d40    ld      bc,400dh
0f76 cd6710    call    1067h
0f79 07        rlca    
0f7a 21bd40    ld      hl,40bdh
0f7d 3002      jr      nc,0f81h
0f7f cbd6      set     2,(hl)
0f81 cb10      rl      b
0f83 30f1      jr      nc,0f76h
0f85 112341    ld      de,4123h
0f88 1a        ld      a,(de)
0f89 4f        ld      c,a
0f8a 78        ld      a,b
0f8b 12        ld      (de),a
0f8c a9        xor     c
0f8d a1        and     c
0f8e cb4f      bit     1,a
0f90 2802      jr      z,0f94h
0f92 cb96      res     2,(hl)
0f94 cdf60f    call    0ff6h
0f97 212241    ld      hl,4122h
0f9a 2817      jr      z,0fb3h
0f9c 3e9c      ld      a,9ch
0f9e 77        ld      (hl),a
0f9f 7a        ld      a,d
0fa0 2b        dec     hl
0fa1 be        cp      (hl)
0fa2 77        ld      (hl),a
0fa3 2b        dec     hl
0fa4 46        ld      b,(hl)
0fa5 3619      ld      (hl),19h
0fa7 2004      jr      nz,0fadh
0fa9 04        inc     b
0faa 05        dec     b
0fab 2012      jr      nz,0fbfh
0fad cdc10f    call    0fc1h
0fb0 cbbf      res     7,a
0fb2 c9        ret     

0fb3 7e        ld      a,(hl)
0fb4 3c        inc     a
0fb5 2008      jr      nz,0fbfh
0fb7 2b        dec     hl
0fb8 7e        ld      a,(hl)
0fb9 cdc10f    call    0fc1h
0fbc cb7f      bit     7,a
0fbe c8        ret     z

0fbf af        xor     a
0fc0 c9        ret     

0fc1 212341    ld      hl,4123h
0fc4 cb46      bit     0,(hl)
0fc6 2804      jr      z,0fcch
0fc8 cb4e      bit     1,(hl)
0fca 2012      jr      nz,0fdeh
0fcc d608      sub     08h
0fce 21bd40    ld      hl,40bdh
0fd1 cb56      bit     2,(hl)
0fd3 2002      jr      nz,0fd7h
0fd5 d638      sub     38h
0fd7 1e08      ld      e,08h
0fd9 cdaa0c    call    0caah
0fdc 1816      jr      0ff4h
0fde fe70      cp      70h
0fe0 30ea      jr      nc,0fcch
0fe2 2a9c40    ld      hl,(409ch)
0fe5 4e        ld      c,(hl)
0fe6 0600      ld      b,00h
0fe8 23        inc     hl
0fe9 edb1      cpir    
0feb 20d2      jr      nz,0fbfh
0fed 2a9e40    ld      hl,(409eh)
0ff0 a7        and     a
0ff1 ed42      sbc     hl,bc
0ff3 7e        ld      a,(hl)
0ff4 a7        and     a
0ff5 c9        ret     

0ff6 3e78      ld      a,78h
0ff8 cbb7      res     6,a
0ffa f5        push    af
0ffb 212441    ld      hl,4124h
0ffe 010d01    ld      bc,010dh
1001 cd6710    call    1067h
1004 e67f      and     7fh
1006 5f        ld      e,a
1007 56        ld      d,(hl)
1008 77        ld      (hl),a
1009 ba        cp      d
100a 2823      jr      z,102fh
100c aa        xor     d
100d a3        and     e
100e 2835      jr      z,1045h
1010 d5        push    de
1011 cd4e10    call    104eh
1014 d1        pop     de
1015 2018      jr      nz,102fh
1017 5f        ld      e,a
1018 f1        pop     af
1019 cbf7      set     6,a
101b f5        push    af
101c cb7f      bit     7,a
101e 201b      jr      nz,103bh
1020 bb        cp      e
1021 72        ld      (hl),d
1022 2004      jr      nz,1028h
1024 cbfb      set     7,e
1026 1804      jr      102ch
1028 fe78      cp      78h
102a 201f      jr      nz,104bh
102c f1        pop     af
102d 7b        ld      a,e
102e f5        push    af
102f 23        inc     hl
1030 cb00      rlc     b
1032 30cd      jr      nc,1001h
1034 f1        pop     af
1035 cb77      bit     6,a
1037 20bf      jr      nz,0ff8h
1039 1811      jr      104ch
103b cbbf      res     7,a
103d bb        cp      e
103e 20e1      jr      nz,1021h
1040 f1        pop     af
1041 7b        ld      a,e
1042 53        ld      d,e
1043 a7        and     a
1044 c9        ret     

1045 af        xor     a
1046 322241    ld      (4122h),a
1049 18e4      jr      102fh
104b f1        pop     af
104c af        xor     a
104d c9        ret     

104e 1607      ld      d,07h
1050 14        inc     d
1051 cb1f      rr      a
1053 30fb      jr      nc,1050h
1055 3e00      ld      a,00h
1057 c0        ret     nz

1058 78        ld      a,b
1059 1eff      ld      e,0ffh
105b 1c        inc     e
105c 0f        rrca    
105d 30fc      jr      nc,105bh
105f 7a        ld      a,d
1060 07        rlca    
1061 07        rlca    
1062 07        rlca    
1063 b3        or      e
1064 57        ld      d,a
1065 ba        cp      d
1066 c9        ret     

1067 1e05      ld      e,05h
1069 78        ld      a,b
106a f3        di      
106b d310      out     (10h),a
106d ed78      in      a,(c)
106f 2f        cpl     
1070 e5        push    hl
1071 21bd40    ld      hl,40bdh
1074 cb76      bit     6,(hl)
1076 e1        pop     hl
1077 2001      jr      nz,107ah
1079 fb        ei      
107a ba        cp      d
107b 57        ld      d,a
107c 20e9      jr      nz,1067h
107e 1d        dec     e
107f 20e8      jr      nz,1069h
1081 c9        ret     

1082 5f        ld      e,a
1083 212041    ld      hl,4120h
1086 7e        ld      a,(hl)
1087 a7        and     a
1088 2801      jr      z,108bh
108a 35        dec     (hl)
108b 23        inc     hl
108c 23        inc     hl
108d 7e        ld      a,(hl)
108e a7        and     a
108f c8        ret     z

1090 3c        inc     a
1091 c8        ret     z

1092 34        inc     (hl)
1093 c9        ret     

1094 2600      ld      h,00h
1096 010c01    ld      bc,010ch
1099 cd6710    call    1067h
109c 3efb      ld      a,0fbh
109e a0        and     b
109f 7a        ld      a,d
10a0 2002      jr      nz,10a4h
10a2 e617      and     17h
10a4 e61f      and     1fh
10a6 280d      jr      z,10b5h
10a8 cd4e10    call    104eh
10ab c0        ret     nz

10ac cbb2      res     6,d
10ae cbfa      set     7,d
10b0 af        xor     a
10b1 25        dec     h
10b2 24        inc     h
10b3 62        ld      h,d
10b4 c0        ret     nz

10b5 cb00      rlc     b
10b7 30e0      jr      nc,1099h
10b9 7c        ld      a,h
10ba a7        and     a
10bb c9        ret     

10bc cd9410    call    1094h
10bf 20fb      jr      nz,10bch
10c1 c9        ret     

10c2 5f        ld      e,a
10c3 fe10      cp      10h
10c5 3839      jr      c,1100h
10c7 e638      and     38h
10c9 0f        rrca    
10ca 0f        rrca    
10cb 0f        rrca    
10cc cdf710    call    10f7h
10cf 50        ld      d,b
10d0 7b        ld      a,e
10d1 e607      and     07h
10d3 cdf710    call    10f7h
10d6 0e0d      ld      c,0dh
10d8 cb7b      bit     7,e
10da 280b      jr      z,10e7h
10dc 0e0c      ld      c,0ch
10de cb73      bit     6,e
10e0 2805      jr      z,10e7h
10e2 0e11      ld      c,11h
10e4 78        ld      a,b
10e5 2f        cpl     
10e6 47        ld      b,a
10e7 d5        push    de
10e8 cd6710    call    1067h
10eb d1        pop     de
10ec cb7b      bit     7,e
10ee 2805      jr      z,10f5h
10f0 cb73      bit     6,e
10f2 2801      jr      z,10f5h
10f4 2f        cpl     
10f5 a2        and     d
10f6 c9        ret     

10f7 3c        inc     a
10f8 0680      ld      b,80h
10fa cb00      rlc     b
10fc 3d        dec     a
10fd 20fb      jr      nz,10fah
10ff c9        ret     

1100 07        rlca    
1101 07        rlca    
1102 07        rlca    
1103 07        rlca    
1104 57        ld      d,a
1105 db0c      in      a,(0ch)
1107 2f        cpl     
1108 a2        and     d
1109 c9        ret     

110a 0611      ld      b,11h
110c 21ac40    ld      hl,40ach
110f c30327    jp      2703h
1112 3abd40    ld      a,(40bdh)
1115 cb7f      bit     7,a
1117 060f      ld      b,0fh
1119 202d      jr      nz,1148h
111b cb57      bit     2,a
111d 2802      jr      z,1121h
111f cbe8      set     5,b
1121 3a6b40    ld      a,(406bh)
1124 07        rlca    
1125 2f        cpl     
1126 32ba40    ld      (40bah),a
1129 3abe40    ld      a,(40beh)
112c 0f        rrca    
112d 0f        rrca    
112e 0f        rrca    
112f 0f        rrca    
1130 e60f      and     0fh
1132 2f        cpl     
1133 32b940    ld      (40b9h),a
1136 3abf40    ld      a,(40bfh)
1139 07        rlca    
113a e60e      and     0eh
113c 2804      jr      z,1142h
113e fe0e      cp      0eh
1140 2002      jr      nz,1144h
1142 3e01      ld      a,01h
1144 2f        cpl     
1145 32b840    ld      (40b8h),a
1148 216940    ld      hl,4069h
114b 7e        ld      a,(hl)
114c a7        and     a
114d 280c      jr      z,115bh
114f 35        dec     (hl)
1150 cbf0      set     6,b
1152 23        inc     hl
1153 cb5e      bit     3,(hl)
1155 2004      jr      nz,115bh
1157 cbb0      res     6,b
1159 cbf8      set     7,b
115b 21bb40    ld      hl,40bbh
115e 78        ld      a,b
115f d305      out     (05h),a
1161 7e        ld      a,(hl)
1162 2f        cpl     
1163 d304      out     (04h),a
1165 2b        dec     hl
1166 05        dec     b
1167 cb60      bit     4,b
1169 28f3      jr      z,115eh
116b c9        ret     

116c a7        and     a
116d c8        ret     z

116e cda90b    call    0ba9h
1171 327b40    ld      (407bh),a
1174 cd0614    call    1406h
1177 227340    ld      (4073h),hl
117a cb7f      bit     7,a
117c c24b12    jp      nz,124bh
117f fe0d      cp      0dh
1181 3066      jr      nc,11e9h
1183 d60d      sub     0dh
1185 3c        inc     a
1186 c8        ret     z

1187 3c        inc     a
1188 281c      jr      z,11a6h
118a 3c        inc     a
118b 2824      jr      z,11b1h
118d 3c        inc     a
118e 282e      jr      z,11beh
1190 3c        inc     a
1191 2830      jr      z,11c3h
1193 c603      add     a,03h
1195 2838      jr      z,11cfh
1197 3c        inc     a
1198 283c      jr      z,11d6h
119a 3c        inc     a
119b 3c        inc     a
119c 2841      jr      z,11dfh
119e 3c        inc     a
119f 2843      jr      z,11e4h
11a1 3e35      ld      a,35h
11a3 c36826    jp      2668h
11a6 cd5914    call    1459h
11a9 3030      jr      nc,11dbh
11ab cd9f0b    call    0b9fh
11ae c31c0b    jp      0b1ch
11b1 2acc40    ld      hl,(40cch)
11b4 22c040    ld      (40c0h),hl
11b7 ed5b7340  ld      de,(4073h)
11bb d7        rst     10h
11bc 18ed      jr      11abh
11be cddc13    call    13dch
11c1 18e8      jr      11abh
11c3 cddc13    call    13dch
11c6 cd1c0b    call    0b1ch
11c9 cdf213    call    13f2h
11cc c3600b    jp      0b60h
11cf cd9714    call    1497h
11d2 20f8      jr      nz,11cch
11d4 1805      jr      11dbh
11d6 cd9214    call    1492h
11d9 20f1      jr      nz,11cch
11db 3e02      ld      a,02h
11dd 18c4      jr      11a3h
11df 21f4ff    ld      hl,0fff4h
11e2 18e8      jr      11cch
11e4 210c00    ld      hl,000ch
11e7 18e3      jr      11cch
11e9 217240    ld      hl,4072h
11ec cb4e      bit     1,(hl)
11ee 280d      jr      z,11fdh
11f0 cb46      bit     0,(hl)
11f2 2009      jr      nz,11fdh
11f4 cbc6      set     0,(hl)
11f6 f5        push    af
11f7 3e01      ld      a,01h
11f9 cd6826    call    2668h
11fc f1        pop     af
11fd cd2e13    call    132eh
1200 d5        push    de
1201 cd810b    call    0b81h
1204 eb        ex      de,hl
1205 d1        pop     de
1206 d8        ret     c

1207 fe18      cp      18h
1209 3813      jr      c,121eh
120b fe1c      cp      1ch
120d 300f      jr      nc,121eh
120f cd810c    call    0c81h
1212 7e        ld      a,(hl)
1213 feff      cp      0ffh
1215 c8        ret     z

1216 e5        push    hl
1217 cd6c11    call    116ch
121a e1        pop     hl
121b 23        inc     hl
121c 18f4      jr      1212h
121e e5        push    hl
121f d5        push    de
1220 cd810c    call    0c81h
1223 d1        pop     de
1224 e1        pop     hl
1225 a7        and     a
1226 c8        ret     z

1227 d7        rst     10h
1228 e5        push    hl
1229 210000    ld      hl,0000h
122c eb        ex      de,hl
122d d7        rst     10h
122e c4eb0b    call    nz,0bebh
1231 fe0e      cp      0eh
1233 2812      jr      z,1247h
1235 cd010b    call    0b01h
1238 fe10      cp      10h
123a 3808      jr      c,1244h
123c 21bf40    ld      hl,40bfh
123f cb7e      bit     7,(hl)
1241 c40d0b    call    nz,0b0dh
1244 cdd40a    call    0ad4h
1247 e1        pop     hl
1248 c31c0b    jp      0b1ch
124b 21bf40    ld      hl,40bfh
124e 47        ld      b,a
124f 7e        ld      a,(hl)
1250 e6a7      and     0a7h
1252 4f        ld      c,a
1253 78        ld      a,b
1254 d681      sub     81h
1256 caf316    jp      z,16f3h
1259 3d        dec     a
125a ca0517    jp      z,1705h
125d 3d        dec     a
125e ca1717    jp      z,1717h
1261 3d        dec     a
1262 3d        dec     a
1263 ca2917    jp      z,1729h
1266 d60c      sub     0ch
1268 cafc16    jp      z,16fch
126b 3d        dec     a
126c ca0e17    jp      z,170eh
126f 3d        dec     a
1270 ca2017    jp      z,1720h
1273 3d        dec     a
1274 3d        dec     a
1275 ca3217    jp      z,1732h
1278 d60b      sub     0bh
127a ca1114    jp      z,1411h
127d 3d        dec     a
127e ca4214    jp      z,1442h
1281 d604      sub     04h
1283 21be40    ld      hl,40beh
1286 2003      jr      nz,128bh
1288 3680      ld      (hl),80h
128a c9        ret     

128b 3d        dec     a
128c 2003      jr      nz,1291h
128e 3640      ld      (hl),40h
1290 c9        ret     

1291 3d        dec     a
1292 2003      jr      nz,1297h
1294 3620      ld      (hl),20h
1296 c9        ret     

1297 21bf40    ld      hl,40bfh
129a 47        ld      b,a
129b 7e        ld      a,(hl)
129c e6f8      and     0f8h
129e 4f        ld      c,a
129f 78        ld      a,b
12a0 3d        dec     a
12a1 2004      jr      nz,12a7h
12a3 cbd1      set     2,c
12a5 71        ld      (hl),c
12a6 c9        ret     

12a7 3d        dec     a
12a8 2004      jr      nz,12aeh
12aa cbc9      set     1,c
12ac 71        ld      (hl),c
12ad c9        ret     

12ae 3d        dec     a
12af 2004      jr      nz,12b5h
12b1 cbc1      set     0,c
12b3 71        ld      (hl),c
12b4 c9        ret     

12b5 3d        dec     a
12b6 2005      jr      nz,12bdh
12b8 79        ld      a,c
12b9 f607      or      07h
12bb 77        ld      (hl),a
12bc c9        ret     

12bd 3d        dec     a
12be c2a111    jp      nz,11a1h
12c1 21be40    ld      hl,40beh
12c4 3610      ld      (hl),10h
12c6 c9        ret     

12c7 f3        di      
12c8 214040    ld      hl,4040h
12cb 06d4      ld      b,0d4h
12cd 3600      ld      (hl),00h
12cf 23        inc     hl
12d0 10fb      djnz    12cdh
12d2 210801    ld      hl,0108h
12d5 226c40    ld      (406ch),hl
12d8 f5        push    af
12d9 3ab000    ld      a,(00b0h)
12dc 328240    ld      (4082h),a
12df 3aae00    ld      a,(00aeh)
12e2 32be40    ld      (40beh),a
12e5 f1        pop     af
12e6 21ba00    ld      hl,00bah
12e9 b7        or      a
12ea 2803      jr      z,12efh
12ec 21cd00    ld      hl,00cdh
12ef 011300    ld      bc,0013h
12f2 119240    ld      de,4092h
12f5 edb0      ldir    
12f7 3ab100    ld      a,(00b1h)
12fa 32bf40    ld      (40bfh),a
12fd 21ce40    ld      hl,40ceh
1300 0650      ld      b,50h
1302 cdf426    call    26f4h
1305 219b00    ld      hl,009bh
1308 11c440    ld      de,40c4h
130b 010c00    ld      bc,000ch
130e edb0      ldir    
1310 0e04      ld      c,04h
1312 110041    ld      de,4100h
1315 edb0      ldir    
1317 2a9f00    ld      hl,(009fh)
131a 22c040    ld      (40c0h),hl
131d c9        ret     

131e 6f        ld      l,a
131f cdd413    call    13d4h
1322 c8        ret     z

1323 2e08      ld      l,08h
1325 0f        rrca    
1326 d8        ret     c

1327 2e0a      ld      l,0ah
1329 0f        rrca    
132a d8        ret     c

132b 2e0c      ld      l,0ch
132d c9        ret     

132e f5        push    af
132f 110000    ld      de,0000h
1332 fe1c      cp      1ch
1334 301b      jr      nc,1351h
1336 fe18      cp      18h
1338 3817      jr      c,1351h
133a cd810c    call    0c81h
133d 7e        ld      a,(hl)
133e feff      cp      0ffh
1340 280c      jr      z,134eh
1342 e5        push    hl
1343 d5        push    de
1344 cd2e13    call    132eh
1347 d1        pop     de
1348 19        add     hl,de
1349 eb        ex      de,hl
134a e1        pop     hl
134b 23        inc     hl
134c 18ef      jr      133dh
134e eb        ex      de,hl
134f f1        pop     af
1350 c9        ret     

1351 fe0d      cp      0dh
1353 38f9      jr      c,134eh
1355 cda80c    call    0ca8h
1358 4f        ld      c,a
1359 e607      and     07h
135b 110000    ld      de,0000h
135e 6b        ld      l,e
135f 62        ld      h,d
1360 2834      jr      z,1396h
1362 3c        inc     a
1363 5f        ld      e,a
1364 87        add     a,a
1365 cd1e13    call    131eh
1368 f1        pop     af
1369 f5        push    af
136a fe18      cp      18h
136c 3017      jr      nc,1385h
136e fe10      cp      10h
1370 3813      jr      c,1385h
1372 79        ld      a,c
1373 0f        rrca    
1374 0f        rrca    
1375 0f        rrca    
1376 e607      and     07h
1378 3c        inc     a
1379 5f        ld      e,a
137a 79        ld      a,c
137b 07        rlca    
137c 07        rlca    
137d e603      and     03h
137f 47        ld      b,a
1380 af        xor     a
1381 85        add     a,l
1382 10fd      djnz    1381h
1384 6f        ld      l,a
1385 010600    ld      bc,0006h
1388 3abf40    ld      a,(40bfh)
138b cb5f      bit     3,a
138d 2801      jr      z,1390h
138f 09        add     hl,bc
1390 cb67      bit     4,a
1392 2802      jr      z,1396h
1394 2b        dec     hl
1395 2b        dec     hl
1396 cdd413    call    13d4h
1399 2805      jr      z,13a0h
139b 110000    ld      de,0000h
139e 180e      jr      13aeh
13a0 2c        inc     l
13a1 2d        dec     l
13a2 2002      jr      nz,13a6h
13a4 1e06      ld      e,06h
13a6 010300    ld      bc,0003h
13a9 eb        ex      de,hl
13aa b7        or      a
13ab ed42      sbc     hl,bc
13ad eb        ex      de,hl
13ae f1        pop     af
13af f5        push    af
13b0 fe10      cp      10h
13b2 300c      jr      nc,13c0h
13b4 fe0e      cp      0eh
13b6 2005      jr      nz,13bdh
13b8 eb        ex      de,hl
13b9 210000    ld      hl,0000h
13bc d7        rst     10h
13bd 110000    ld      de,0000h
13c0 3abf40    ld      a,(40bfh)
13c3 cb6f      bit     5,a
13c5 280b      jr      z,13d2h
13c7 44        ld      b,h
13c8 4d        ld      c,l
13c9 eb        ex      de,hl
13ca d7        rst     10h
13cb eb        ex      de,hl
13cc 210000    ld      hl,0000h
13cf a7        and     a
13d0 ed42      sbc     hl,bc
13d2 f1        pop     af
13d3 c9        ret     

13d4 3abf40    ld      a,(40bfh)
13d7 e607      and     07h
13d9 fe07      cp      07h
13db c9        ret     

13dc cd0614    call    1406h
13df eb        ex      de,hl
13e0 2ac040    ld      hl,(40c0h)
13e3 d7        rst     10h
13e4 c0        ret     nz

13e5 cd3f17    call    173fh
13e8 2ac840    ld      hl,(40c8h)
13eb 22c040    ld      (40c0h),hl
13ee a7        and     a
13ef ed52      sbc     hl,de
13f1 c9        ret     

13f2 3abe40    ld      a,(40beh)
13f5 211800    ld      hl,0018h
13f8 07        rlca    
13f9 d8        ret     c

13fa 2e24      ld      l,24h
13fc 07        rlca    
13fd d8        ret     c

13fe 2e30      ld      l,30h
1400 07        rlca    
1401 d8        ret     c

1402 2ac440    ld      hl,(40c4h)
1405 c9        ret     

1406 2aa840    ld      hl,(40a8h)
1409 ed4ba640  ld      bc,(40a6h)
140d a7        and     a
140e ed42      sbc     hl,bc
1410 c9        ret     

1411 cd4214    call    1442h
1414 cddb14    call    14dbh
1417 ed5b7540  ld      de,(4075h)
141b 7e        ld      a,(hl)
141c 23        inc     hl
141d b6        or      (hl)
141e 282a      jr      z,144ah
1420 23        inc     hl
1421 10f8      djnz    141bh
1423 c34026    jp      2640h
1426 cd4f14    call    144fh
1429 18e9      jr      1414h
142b cd5414    call    1454h
142e cdee14    call    14eeh
1431 18e4      jr      1417h
1433 cd3b17    call    173bh
1436 2a7b41    ld      hl,(417bh)
1439 22cc40    ld      (40cch),hl
143c 22c040    ld      (40c0h),hl
143f eb        ex      de,hl
1440 37        scf     
1441 c9        ret     

1442 cdd514    call    14d5h
1445 cdf414    call    14f4h
1448 c0        ret     nz

1449 2b        dec     hl
144a 72        ld      (hl),d
144b 2b        dec     hl
144c 73        ld      (hl),e
144d 37        scf     
144e c9        ret     

144f cde114    call    14e1h
1452 18f1      jr      1445h
1454 cde814    call    14e8h
1457 18ec      jr      1445h
1459 cdd514    call    14d5h
145c 11ff0f    ld      de,0fffh
145f ed537740  ld      (4077h),de
1463 c5        push    bc
1464 ed4b7540  ld      bc,(4075h)
1468 cd0115    call    1501h
146b 380e      jr      c,147bh
146d 280c      jr      z,147bh
146f e5        push    hl
1470 2a7740    ld      hl,(4077h)
1473 d7        rst     10h
1474 3804      jr      c,147ah
1476 ed537740  ld      (4077h),de
147a e1        pop     hl
147b c1        pop     bc
147c 10e5      djnz    1463h
147e 2a7740    ld      hl,(4077h)
1481 e5        push    hl
1482 01ff0f    ld      bc,0fffh
1485 b7        or      a
1486 ed42      sbc     hl,bc
1488 e1        pop     hl
1489 c9        ret     

148a cde114    call    14e1h
148d 11ffff    ld      de,0ffffh
1490 18cd      jr      145fh
1492 cde814    call    14e8h
1495 18c5      jr      145ch
1497 060f      ld      b,0fh
1499 211d41    ld      hl,411dh
149c 110000    ld      de,0000h
149f ed537740  ld      (4077h),de
14a3 c5        push    bc
14a4 ed4baa40  ld      bc,(40aah)
14a8 56        ld      d,(hl)
14a9 2b        dec     hl
14aa 5e        ld      e,(hl)
14ab 2b        dec     hl
14ac d5        push    de
14ad cd0515    call    1505h
14b0 d1        pop     de
14b1 300c      jr      nc,14bfh
14b3 e5        push    hl
14b4 2a7740    ld      hl,(4077h)
14b7 d7        rst     10h
14b8 e1        pop     hl
14b9 3004      jr      nc,14bfh
14bb ed537740  ld      (4077h),de
14bf c1        pop     bc
14c0 10e1      djnz    14a3h
14c2 ed5b7740  ld      de,(4077h)
14c6 af        xor     a
14c7 ba        cp      d
14c8 2002      jr      nz,14cch
14ca bb        cp      e
14cb c8        ret     z

14cc eb        ex      de,hl
14cd ed4baa40  ld      bc,(40aah)
14d1 b7        or      a
14d2 ed42      sbc     hl,bc
14d4 c9        ret     

14d5 2a7340    ld      hl,(4073h)
14d8 227540    ld      (4075h),hl
14db 21ce40    ld      hl,40ceh
14de 0619      ld      b,19h
14e0 c9        ret     

14e1 2a7b41    ld      hl,(417bh)
14e4 cbfc      set     7,h
14e6 18f0      jr      14d8h
14e8 2aaa40    ld      hl,(40aah)
14eb 227540    ld      (4075h),hl
14ee 210041    ld      hl,4100h
14f1 060f      ld      b,0fh
14f3 c9        ret     

14f4 c5        push    bc
14f5 ed4b7540  ld      bc,(4075h)
14f9 cd0115    call    1501h
14fc c1        pop     bc
14fd c8        ret     z

14fe 10f4      djnz    14f4h
1500 c9        ret     

1501 5e        ld      e,(hl)
1502 23        inc     hl
1503 56        ld      d,(hl)
1504 23        inc     hl
1505 eb        ex      de,hl
1506 b7        or      a
1507 ed42      sbc     hl,bc
1509 eb        ex      de,hl
150a c9        ret     

150b 1f        rra     
150c 99        sbc     a,c
150d 95        sub     l
150e 1e98      ld      e,98h
1510 46        ld      b,(hl)
1511 1e9c      ld      e,9ch
1513 ed2b      db      0edh, 2bh        ; Undocumented 8 T-State NOP
1515 9e        sbc     a,(hl)
1516 82        add     a,d
1517 27        daa     
1518 87        add     a,a
1519 2e18      ld      l,18h
151b 97        sub     a
151c f7        rst     30h
151d 25        dec     h
151e 83        add     a,e
151f d323      out     (23h),a
1521 86        add     a,(hl)
1522 94        sub     h
1523 23        inc     hl
1524 85        add     a,l
1525 f41f96    call    p,961fh
1528 db2c      in      a,(2ch)
152a 84        add     a,h
152b b4        or      h
152c 25        dec     h
152d a4        and     h
152e 64        ld      h,h
152f 2ea5      ld      l,0a5h
1531 12        ld      (de),a
1532 2ea6      ld      l,0a6h
1534 d8        ret     c

1535 2d        dec     l
1536 92        sub     d
1537 ef        rst     28h
1538 1d        dec     e
1539 93        sub     e
153a 0a        ld      a,(bc)
153b 1e94      ld      e,94h
153d 17        rla     
153e 1e95      ld      e,95h
1540 24        inc     h
1541 1e91      ld      e,91h
1543 35        dec     (hl)
1544 1e8f      ld      e,8fh
1546 f1        pop     af
1547 2888      jr      z,14d1h
1549 b5        or      l
154a 2a8928    ld      hl,(2889h)
154d 2a9048    ld      hl,(4890h)
1550 2c        inc     l
1551 8b        adc     a,e
1552 7c        ld      a,h
1553 2c        inc     l
1554 8c        adc     a,h
1555 87        add     a,a
1556 2c        inc     l
1557 9d        sbc     a,l
1558 162b      ld      d,2bh
155a 82        add     a,d
155b e41781    call    po,8117h
155e 1d        dec     e
155f 2f        cpl     
1560 8a        adc     a,d
1561 de1f      sbc     a,1fh
1563 8d        adc     a,l
1564 d61f      sub     1fh
1566 9b        sbc     a,e
1567 a3        and     e
1568 24        inc     h
1569 24        inc     h
156a 0688      ld      b,88h
156c 2107dd    ld      hl,0dd07h
156f 210a86    ld      hl,860ah
1572 200c      jr      nz,1580h
1574 d61f      sub     1fh
1576 80        add     a,b
1577 2a2681    ld      hl,(8126h)
157a fc1d82    call    m,821dh
157d fc1d83    call    m,831dh
1580 fc1d85    call    m,851dh
1583 fc1d87    call    m,871dh
1586 f1        pop     af
1587 288d      jr      z,1516h
1589 f7        rst     30h
158a 25        dec     h
158b 8e        adc     a,(hl)
158c 2f        cpl     
158d 1e8f      ld      e,8fh
158f 2f        cpl     
1590 1e91      ld      e,91h
1592 fc1d92    call    m,921dh
1595 fc1d93    call    m,931dh
1598 fc1d95    call    m,951dh
159b fc1d9c    call    m,9c1dh
159e dc229d    call    c,9d22h
15a1 e0        ret     po

15a2 229e3e    ld      (3e9eh),hl
15a5 219f28    ld      hl,289fh
15a8 21a034    ld      hl,34a0h
15ab 21a13e    ld      hl,3ea1h
15ae 21a2f8    ld      hl,0f8a2h
15b1 20a3      jr      nz,1556h
15b3 00        nop     
15b4 21a413    ld      hl,13a4h
15b7 21a52f    ld      hl,2fa5h
15ba 1ea6      ld      e,0a6h
15bc 2f        cpl     
15bd 1ea7      ld      e,0a7h
15bf 2f        cpl     
15c0 1eac      ld      e,0ach
15c2 2f        cpl     
15c3 1ea8      ld      e,0a8h
15c5 b0        or      b
15c6 1d        dec     e
15c7 a9        xor     c
15c8 ac        xor     h
15c9 1d        dec     e
15ca aa        xor     d
15cb a8        xor     b
15cc 1d        dec     e
15cd ab        xor     e
15ce b4        or      h
15cf 1d        dec     e
15d0 ad        xor     l
15d1 1c        inc     e
15d2 24        inc     h
15d3 ae        xor     (hl)
15d4 1c        inc     e
15d5 24        inc     h
15d6 0b        dec     bc
15d7 0c        inc     c
15d8 0687      ld      b,87h
15da 0a        ld      a,(bc)
15db 08        ex      af,af'
15dc 0d        dec     c
15dd 04        inc     b
15de 05        dec     b
15df 07        rlca    
15e0 a0        and     b
15e1 a1        and     c
15e2 a2        and     d
15e3 a3        and     e
15e4 a4        and     h
15e5 9f        sbc     a,a
15e6 9e        sbc     a,(hl)
15e7 ad        xor     l
15e8 ae        xor     (hl)
15e9 2001      jr      nz,15ech
15eb aa        xor     d
15ec 3002      jr      nc,15f0h
15ee aa        xor     d
15ef 3004      jr      nc,15f5h
15f1 f43005    call    p,0530h
15f4 f4300b    call    p,0b30h
15f7 e9        jp      (hl)
15f8 3008      jr      nc,1602h
15fa ae        xor     (hl)
15fb 300d      jr      nc,160ah
15fd ae        xor     (hl)
15fe 300a      jr      nc,160ah
1600 e3        ex      (sp),hl
1601 30a5      jr      nc,15a8h
1603 c0        ret     nz

1604 30a6      jr      nc,15ach
1606 c430a7    call    nz,0a730h
1609 c8        ret     z

160a 30ac      jr      nc,15b8h
160c cc30a8    call    z,0a830h
160f d230a9    jp      nc,0a930h
1612 d630      sub     30h
1614 aa        xor     d
1615 da30ab    jp      c,0ab30h
1618 de30      sbc     a,30h
161a 0eff      ld      c,0ffh
161c 300c      jr      nc,162ah
161e e9        jp      (hl)
161f 3006      jr      nc,1627h
1621 e9        jp      (hl)
1622 3007      jr      nc,162bh
1624 f4308e    call    p,8e30h
1627 94        sub     h
1628 1d        dec     e
1629 8f        adc     a,a
162a 8f        adc     a,a
162b 1d        dec     e
162c 82        add     a,d
162d 0e17      ld      c,17h
162f 92        sub     d
1630 05        dec     b
1631 17        rla     
1632 81        add     a,c
1633 fc1691    call    m,9116h
1636 f3        di      
1637 1685      ld      d,85h
1639 321795    ld      (9517h),a
163c 29        add     hl,hl
163d 17        rla     
163e 83        add     a,e
163f 2017      jr      nz,1658h
1641 93        sub     e
1642 17        rla     
1643 17        rla     
1644 a4        and     h
1645 e5        push    hl
1646 13        inc     de
1647 87        add     a,a
1648 e9        jp      (hl)
1649 3021      jr      nc,166ch
164b 56        ld      d,(hl)
164c 41        ld      b,c
164d cb4e      bit     1,(hl)
164f c9        ret     

1650 215641    ld      hl,4156h
1653 3e03      ld      a,03h
1655 a6        and     (hl)
1656 c9        ret     

1657 215641    ld      hl,4156h
165a cb86      res     0,(hl)
165c cb8e      res     1,(hl)
165e c9        ret     

165f 215641    ld      hl,4156h
1662 cb56      bit     2,(hl)
1664 c9        ret     

1665 215741    ld      hl,4157h
1668 cb46      bit     0,(hl)
166a c9        ret     

166b 215741    ld      hl,4157h
166e cbc6      set     0,(hl)
1670 c9        ret     

1671 215741    ld      hl,4157h
1674 cb86      res     0,(hl)
1676 c9        ret     

1677 215741    ld      hl,4157h
167a cb5e      bit     3,(hl)
167c c9        ret     

167d 215741    ld      hl,4157h
1680 cbde      set     3,(hl)
1682 c9        ret     

1683 215741    ld      hl,4157h
1686 cb9e      res     3,(hl)
1688 c9        ret     

1689 215641    ld      hl,4156h
168c cb66      bit     4,(hl)
168e c9        ret     

168f 215641    ld      hl,4156h
1692 cb7e      bit     7,(hl)
1694 c9        ret     

1695 215641    ld      hl,4156h
1698 cbfe      set     7,(hl)
169a 3abf40    ld      a,(40bfh)
169d 321b42    ld      (421bh),a
16a0 c9        ret     

16a1 215641    ld      hl,4156h
16a4 cbbe      res     7,(hl)
16a6 c9        ret     

16a7 215641    ld      hl,4156h
16aa cb5e      bit     3,(hl)
16ac c9        ret     

16ad 215641    ld      hl,4156h
16b0 cb9e      res     3,(hl)
16b2 c9        ret     

16b3 cdc916    call    16c9h
16b6 c8        ret     z

16b7 216b40    ld      hl,406bh
16ba cb4e      bit     1,(hl)
16bc c9        ret     

16bd 216b40    ld      hl,406bh
16c0 cbce      set     1,(hl)
16c2 c9        ret     

16c3 216b40    ld      hl,406bh
16c6 cb8e      res     1,(hl)
16c8 c9        ret     

16c9 216b40    ld      hl,406bh
16cc cb46      bit     0,(hl)
16ce c9        ret     

16cf 216b40    ld      hl,406bh
16d2 cbc6      set     0,(hl)
16d4 c9        ret     

16d5 216b40    ld      hl,406bh
16d8 cb86      res     0,(hl)
16da c9        ret     

16db 215741    ld      hl,4157h
16de cb56      bit     2,(hl)
16e0 c9        ret     

16e1 215741    ld      hl,4157h
16e4 cbd6      set     2,(hl)
16e6 0e00      ld      c,00h
16e8 1853      jr      173dh
16ea 215741    ld      hl,4157h
16ed cb96      res     2,(hl)
16ef 0e00      ld      c,00h
16f1 184e      jr      1741h
16f3 21bf40    ld      hl,40bfh
16f6 cbe6      set     4,(hl)
16f8 0e01      ld      c,01h
16fa 1841      jr      173dh
16fc 21bf40    ld      hl,40bfh
16ff cba6      res     4,(hl)
1701 0e01      ld      c,01h
1703 183c      jr      1741h
1705 21bf40    ld      hl,40bfh
1708 cbde      set     3,(hl)
170a 0e02      ld      c,02h
170c 182f      jr      173dh
170e 21bf40    ld      hl,40bfh
1711 cb9e      res     3,(hl)
1713 0e02      ld      c,02h
1715 182a      jr      1741h
1717 21bf40    ld      hl,40bfh
171a cbf6      set     6,(hl)
171c 0e03      ld      c,03h
171e 181d      jr      173dh
1720 21bf40    ld      hl,40bfh
1723 cbb6      res     6,(hl)
1725 0e03      ld      c,03h
1727 1818      jr      1741h
1729 21bf40    ld      hl,40bfh
172c cbfe      set     7,(hl)
172e 0e04      ld      c,04h
1730 180b      jr      173dh
1732 21bf40    ld      hl,40bfh
1735 cbbe      res     7,(hl)
1737 0e04      ld      c,04h
1739 1806      jr      1741h
173b 0e05      ld      c,05h
173d 1848      jr      1787h
173f 0e05      ld      c,05h
1741 1875      jr      17b8h
1743 215741    ld      hl,4157h
1746 cb76      bit     6,(hl)
1748 c9        ret     

1749 215741    ld      hl,4157h
174c cbf6      set     6,(hl)
174e cdea16    call    16eah
1751 cd9516    call    1695h
1754 0e06      ld      c,06h
1756 182f      jr      1787h
1758 215741    ld      hl,4157h
175b cb76      bit     6,(hl)
175d c8        ret     z

175e cbb6      res     6,(hl)
1760 cda116    call    16a1h
1763 0e06      ld      c,06h
1765 cdb817    call    17b8h
1768 f5        push    af
1769 3a1b42    ld      a,(421bh)
176c 32bf40    ld      (40bfh),a
176f f1        pop     af
1770 c9        ret     

1771 0e07      ld      c,07h
1773 1812      jr      1787h
1775 0e07      ld      c,07h
1777 183f      jr      17b8h
1779 215b41    ld      hl,415bh
177c cb76      bit     6,(hl)
177e c9        ret     

177f 215b41    ld      hl,415bh
1782 cbf6      set     6,(hl)
1784 c9        ret     

1785 0e09      ld      c,09h
1787 f5        push    af
1788 3e83      ld      a,83h
178a 182f      jr      17bbh
178c 215b41    ld      hl,415bh
178f cbb6      res     6,(hl)
1791 cb6e      bit     5,(hl)
1793 c0        ret     nz

1794 0e09      ld      c,09h
1796 1820      jr      17b8h
1798 215741    ld      hl,4157h
179b cb66      bit     4,(hl)
179d c9        ret     

179e 215741    ld      hl,4157h
17a1 cbe6      set     4,(hl)
17a3 0e0a      ld      c,0ah
17a5 3e9b      ld      a,9bh
17a7 f5        push    af
17a8 1811      jr      17bbh
17aa 215741    ld      hl,4157h
17ad cbbe      res     7,(hl)
17af cba6      res     4,(hl)
17b1 0e0a      ld      c,0ah
17b3 cdb817    call    17b8h
17b6 0e0b      ld      c,0bh
17b8 f5        push    af
17b9 3e0f      ld      a,0fh
17bb 0600      ld      b,00h
17bd 219141    ld      hl,4191h
17c0 09        add     hl,bc
17c1 77        ld      (hl),a
17c2 f1        pop     af
17c3 c39426    jp      2694h
17c6 90        sub     b
17c7 34        inc     (hl)
17c8 2a8b39    ld      hl,(398bh)
17cb 2a8c3e    ld      hl,(3e8ch)
17ce 2a9d0f    ld      hl,(0f9dh)
17d1 2b        dec     hl
17d2 8e        adc     a,(hl)
17d3 9a        sbc     a,d
17d4 2b        dec     hl
17d5 90        sub     b
17d6 81        add     a,c
17d7 2a8bd2    ld      hl,(0d28bh)
17da 2a8ce4    ld      hl,(0e48ch)
17dd 2a9d07    ld      hl,(079dh)
17e0 2b        dec     hl
17e1 8e        adc     a,(hl)
17e2 92        sub     d
17e3 2b        dec     hl
17e4 3eb6      ld      a,0b6h
17e6 cd4127    call    2741h
17e9 362b      ld      (hl),2bh
17eb 23        inc     hl
17ec 3a7240    ld      a,(4072h)
17ef cb67      bit     4,a
17f1 f5        push    af
17f2 2002      jr      nz,17f6h
17f4 36b4      ld      (hl),0b4h
17f6 cdb126    call    26b1h
17f9 f1        pop     af
17fa 200e      jr      nz,180ah
17fc 3e8e      ld      a,8eh
17fe df        rst     18h
17ff 2809      jr      z,180ah
1801 cdf712    call    12f7h
1804 cdbc10    call    10bch
1807 c31f20    jp      201fh
180a 3e9c      ld      a,9ch
180c df        rst     18h
180d c2591f    jp      nz,1f59h
1810 3e82      ld      a,82h
1812 df        rst     18h
1813 20cf      jr      nz,17e4h
1815 3eb6      ld      a,0b6h
1817 cd4127    call    2741h
181a 360b      ld      (hl),0bh
181c 23        inc     hl
181d 3604      ld      (hl),04h
181f 3e75      ld      a,75h
1821 21dc22    ld      hl,22dch
1824 cd5827    call    2758h
1827 3e76      ld      a,76h
1829 21e022    ld      hl,22e0h
182c 182e      jr      185ch
182e cd6127    call    2761h
1831 21e000    ld      hl,00e0h
1834 011500    ld      bc,0015h
1837 edb0      ldir    
1839 cdfe26    call    26feh
183c eb        ex      de,hl
183d 21f500    ld      hl,00f5h
1840 010700    ld      bc,0007h
1843 edb0      ldir    
1845 cd972d    call    2d97h
1848 1815      jr      185fh
184a 3ebc      ld      a,0bch
184c cd4127    call    2741h
184f 3a8240    ld      a,(4082h)
1852 d631      sub     31h
1854 c6bd      add     a,0bdh
1856 77        ld      (hl),a
1857 3e88      ld      a,88h
1859 216218    ld      hl,1862h
185c cd5827    call    2758h
185f c32227    jp      2722h
1862 218240    ld      hl,4082h
1865 34        inc     (hl)
1866 7e        ld      a,(hl)
1867 fe34      cp      34h
1869 20df      jr      nz,184ah
186b 3631      ld      (hl),31h
186d 18db      jr      184ah
186f 3e03      ld      a,03h
1871 cd4127    call    2741h
1874 06ab      ld      b,0abh
1876 3abf40    ld      a,(40bfh)
1879 e607      and     07h
187b fe07      cp      07h
187d 2806      jr      z,1885h
187f 1f        rra     
1880 05        dec     b
1881 3802      jr      c,1885h
1883 18fa      jr      187fh
1885 70        ld      (hl),b
1886 3e89      ld      a,89h
1888 21991d    ld      hl,1d99h
188b 18cf      jr      185ch
188d 3eb8      ld      a,0b8h
188f cd4127    call    2741h
1892 068a      ld      b,8ah
1894 3a7140    ld      a,(4071h)
1897 1f        rra     
1898 3802      jr      c,189ch
189a 069a      ld      b,9ah
189c 70        ld      (hl),b
189d 3e90      ld      a,90h
189f 21c01d    ld      hl,1dc0h
18a2 18b8      jr      185ch
18a4 cd9b1f    call    1f9bh
18a7 3e94      ld      a,94h
18a9 cd4127    call    2741h
18ac d5        push    de
18ad eb        ex      de,hl
18ae 211501    ld      hl,0115h
18b1 3a6b40    ld      a,(406bh)
18b4 cb57      bit     2,a
18b6 2803      jr      z,18bbh
18b8 218801    ld      hl,0188h
18bb 010300    ld      bc,0003h
18be edb0      ldir    
18c0 d1        pop     de
18c1 3e8e      ld      a,8eh
18c3 21ce1d    ld      hl,1dceh
18c6 18da      jr      18a2h
18c8 3eba      ld      a,0bah
18ca cd4127    call    2741h
18cd e5        push    hl
18ce cdb716    call    16b7h
18d1 e1        pop     hl
18d2 2002      jr      nz,18d6h
18d4 3e0f      ld      a,0fh
18d6 77        ld      (hl),a
18d7 3e9d      ld      a,9dh
18d9 21cc36    ld      hl,36cch
18dc cd5827    call    2758h
18df 3e8c      ld      a,8ch
18e1 219836    ld      hl,3698h
18e4 18bc      jr      18a2h
18e6 3ebb      ld      a,0bbh
18e8 cd4127    call    2741h
18eb e5        push    hl
18ec cdc916    call    16c9h
18ef 18e0      jr      18d1h
18f1 3e88      ld      a,88h
18f3 cd4127    call    2741h
18f6 e5        push    hl
18f7 cd4317    call    1743h
18fa e1        pop     hl
18fb 2002      jr      nz,18ffh
18fd 3e0f      ld      a,0fh
18ff 77        ld      (hl),a
1900 3e8b      ld      a,8bh
1902 210719    ld      hl,1907h
1905 189b      jr      18a2h
1907 cd4317    call    1743h
190a 2805      jr      z,1911h
190c cd5817    call    1758h
190f 18e0      jr      18f1h
1911 cd4917    call    1749h
1914 18db      jr      18f1h
1916 e5        push    hl
1917 cd4127    call    2741h
191a 3a5841    ld      a,(4158h)
191d cb4f      bit     1,a
191f 3e10      ld      a,10h
1921 2011      jr      nz,1934h
1923 3a5b41    ld      a,(415bh)
1926 cb6f      bit     5,a
1928 2802      jr      z,192ch
192a f607      or      07h
192c e6c7      and     0c7h
192e 4f        ld      c,a
192f 0f        rrca    
1930 0f        rrca    
1931 0f        rrca    
1932 b1        or      c
1933 2f        cpl     
1934 0605      ld      b,05h
1936 0eb0      ld      c,0b0h
1938 0f        rrca    
1939 300c      jr      nc,1947h
193b 71        ld      (hl),c
193c e3        ex      (sp),hl
193d e5        push    hl
193e c5        push    bc
193f 010300    ld      bc,0003h
1942 edb0      ldir    
1944 c1        pop     bc
1945 e1        pop     hl
1946 e3        ex      (sp),hl
1947 23        inc     hl
1948 e3        ex      (sp),hl
1949 23        inc     hl
194a 23        inc     hl
194b 23        inc     hl
194c e3        ex      (sp),hl
194d 0c        inc     c
194e 10e8      djnz    1938h
1950 cd972d    call    2d97h
1953 1838      jr      198dh
1955 e5        push    hl
1956 cd4127    call    2741h
1959 3a5b41    ld      a,(415bh)
195c f618      or      18h
195e 18d4      jr      1934h
1960 223042    ld      (4230h),hl
1963 3eb3      ld      a,0b3h
1965 cd4127    call    2741h
1968 e5        push    hl
1969 214442    ld      hl,4244h
196c 060a      ld      b,0ah
196e 7e        ld      a,(hl)
196f e3        ex      (sp),hl
1970 07        rlca    
1971 cb41      bit     0,c
1973 2801      jr      z,1976h
1975 3f        ccf     
1976 380e      jr      c,1986h
1978 1f        rra     
1979 cd4f27    call    274fh
197c 78        ld      a,b
197d 3d        dec     a
197e 3e3b      ld      a,3bh
1980 2002      jr      nz,1984h
1982 d60a      sub     0ah
1984 90        sub     b
1985 77        ld      (hl),a
1986 23        inc     hl
1987 e3        ex      (sp),hl
1988 cd3428    call    2834h
198b 10e1      djnz    196eh
198d 182b      jr      19bah
198f 223042    ld      (4230h),hl
1992 3eb4      ld      a,0b4h
1994 cd4127    call    2741h
1997 e5        push    hl
1998 dd2a7941  ld      ix,(4179h)
199c 3a5c41    ld      a,(415ch)
199f 0604      ld      b,04h
19a1 0f        rrca    
19a2 cb41      bit     0,c
19a4 2801      jr      z,19a7h
19a6 3f        ccf     
19a7 380c      jr      c,19b5h
19a9 f5        push    af
19aa dd7e00    ld      a,(ix+00h)
19ad cd4f27    call    274fh
19b0 3e35      ld      a,35h
19b2 90        sub     b
19b3 77        ld      (hl),a
19b4 f1        pop     af
19b5 dd23      inc     ix
19b7 23        inc     hl
19b8 10e7      djnz    19a1h
19ba e1        pop     hl
19bb c32227    jp      2722h
19be 4f        ld      c,a
19bf 214442    ld      hl,4244h
19c2 060a      ld      b,0ah
19c4 7e        ld      a,(hl)
19c5 cbbf      res     7,a
19c7 b9        cp      c
19c8 c8        ret     z

19c9 cd3428    call    2834h
19cc 10f6      djnz    19c4h
19ce dd217642  ld      ix,4276h
19d2 2a7941    ld      hl,(4179h)
19d5 0604      ld      b,04h
19d7 dde5      push    ix
19d9 116100    ld      de,0061h
19dc dd19      add     ix,de
19de be        cp      (hl)
19df 23        inc     hl
19e0 2803      jr      z,19e5h
19e2 d1        pop     de
19e3 10f2      djnz    19d7h
19e5 dde5      push    ix
19e7 e1        pop     hl
19e8 d1        pop     de
19e9 3e10      ld      a,10h
19eb 0f        rrca    
19ec 10fd      djnz    19ebh
19ee c9        ret     

19ef cde01e    call    1ee0h
19f2 2003      jr      nz,19f7h
19f4 cdb21e    call    1eb2h
19f7 cdfc19    call    19fch
19fa 18f8      jr      19f4h
19fc cdbc10    call    10bch
19ff cd9426    call    2694h
1a02 cda71e    call    1ea7h
1a05 cdca34    call    34cah
1a08 2808      jr      z,1a12h
1a0a cdb716    call    16b7h
1a0d c40736    call    nz,3607h
1a10 1845      jr      1a57h
1a12 ef        rst     28h
1a13 280d      jr      z,1a22h
1a15 cd7b1a    call    1a7bh
1a18 cd9f0b    call    0b9fh
1a1b cd5016    call    1650h
1a1e 20df      jr      nz,19ffh
1a20 18da      jr      19fch
1a22 cd7716    call    1677h
1a25 280f      jr      z,1a36h
1a27 3a1b42    ld      a,(421bh)
1a2a 3c        inc     a
1a2b cc4917    call    z,1749h
1a2e cda81a    call    1aa8h
1a31 cdff1a    call    1affh
1a34 1821      jr      1a57h
1a36 cd7116    call    1671h
1a39 cd4317    call    1743h
1a3c 2019      jr      nz,1a57h
1a3e f7        rst     30h
1a3f 2008      jr      nz,1a49h
1a41 b7        or      a
1a42 2813      jr      z,1a57h
1a44 f5        push    af
1a45 cdba1c    call    1cbah
1a48 f1        pop     af
1a49 cda71e    call    1ea7h
1a4c cd5b1b    call    1b5bh
1a4f 3e71      ld      a,71h
1a51 df        rst     18h
1a52 c2361a    jp      nz,1a36h
1a55 18ab      jr      1a02h
1a57 cdb716    call    16b7h
1a5a c49735    call    nz,3597h
1a5d cd121d    call    1d12h
1a60 cd7716    call    1677h
1a63 28f0      jr      z,1a55h
1a65 cdb716    call    16b7h
1a68 2805      jr      z,1a6fh
1a6a cdca1c    call    1ccah
1a6d 20e8      jr      nz,1a57h
1a6f cd4317    call    1743h
1a72 20e1      jr      nz,1a55h
1a74 cdcf1c    call    1ccfh
1a77 20e4      jr      nz,1a5dh
1a79 18da      jr      1a55h
1a7b fe97      cp      97h
1a7d 2804      jr      z,1a83h
1a7f cd7716    call    1677h
1a82 c0        ret     nz

1a83 210b15    ld      hl,150bh
1a86 46        ld      b,(hl)
1a87 23        inc     hl
1a88 be        cp      (hl)
1a89 cd4228    call    2842h
1a8c 2803      jr      z,1a91h
1a8e 10f7      djnz    1a87h
1a90 c9        ret     

1a91 322d42    ld      (422dh),a
1a94 fe83      cp      83h
1a96 2809      jr      z,1aa1h
1a98 fe86      cp      86h
1a9a 2805      jr      z,1aa1h
1a9c d5        push    de
1a9d cd7a23    call    237ah
1aa0 d1        pop     de
1aa1 eb        ex      de,hl
1aa2 f5        push    af
1aa3 cd9f0b    call    0b9fh
1aa6 f1        pop     af
1aa7 e9        jp      (hl)
1aa8 cd6b16    call    166bh
1aab 2a6d41    ld      hl,(416dh)
1aae 7e        ld      a,(hl)
1aaf 321e42    ld      (421eh),a
1ab2 321f42    ld      (421fh),a
1ab5 cde627    call    27e6h
1ab8 226d41    ld      (416dh),hl
1abb e5        push    hl
1abc d1        pop     de
1abd fe2d      cp      2dh
1abf 201b      jr      nz,1adch
1ac1 cddb16    call    16dbh
1ac4 2816      jr      z,1adch
1ac6 1a        ld      a,(de)
1ac7 fe08      cp      08h
1ac9 200f      jr      nz,1adah
1acb eb        ex      de,hl
1acc cde627    call    27e6h
1acf 226d41    ld      (416dh),hl
1ad2 eb        ex      de,hl
1ad3 cda716    call    16a7h
1ad6 2002      jr      nz,1adah
1ad8 af        xor     a
1ad9 c9        ret     

1ada 3e2d      ld      a,2dh
1adc f5        push    af
1add cd5016    call    1650h
1ae0 c4b126    call    nz,26b1h
1ae3 cc9426    call    z,2694h
1ae6 f1        pop     af
1ae7 2a7141    ld      hl,(4171h)
1aea d7        rst     10h
1aeb 3005      jr      nc,1af2h
1aed cdaa17    call    17aah
1af0 1805      jr      1af7h
1af2 2a6f41    ld      hl,(416fh)
1af5 d7        rst     10h
1af6 d0        ret     nc

1af7 fe08      cp      08h
1af9 c45817    call    nz,1758h
1afc c38316    jp      1683h
1aff cd9b27    call    279bh
1b02 3857      jr      c,1b5bh
1b04 216915    ld      hl,1569h
1b07 c3861a    jp      1a86h
1b0a 215841    ld      hl,4158h
1b0d cb46      bit     0,(hl)
1b0f cbc6      set     0,(hl)
1b11 2a6341    ld      hl,(4163h)
1b14 c0        ret     nz

1b15 d5        push    de
1b16 2afa43    ld      hl,(43fah)
1b19 114a01    ld      de,014ah
1b1c d7        rst     10h
1b1d ed5b6b41  ld      de,(416bh)
1b21 d7        rst     10h
1b22 215841    ld      hl,4158h
1b25 cbce      set     1,(hl)
1b27 cbde      set     3,(hl)
1b29 380c      jr      c,1b37h
1b2b cb9e      res     3,(hl)
1b2d cb8e      res     1,(hl)
1b2f 21bd40    ld      hl,40bdh
1b32 016100    ld      bc,0061h
1b35 edb0      ldir    
1b37 eb        ex      de,hl
1b38 d1        pop     de
1b39 c32128    jp      2821h
1b3c 215741    ld      hl,4157h
1b3f cb7e      bit     7,(hl)
1b41 2854      jr      z,1b97h
1b43 2a6341    ld      hl,(4163h)
1b46 e5        push    hl
1b47 cd3428    call    2834h
1b4a ed5b6d41  ld      de,(416dh)
1b4e d7        rst     10h
1b4f e1        pop     hl
1b50 3845      jr      c,1b97h
1b52 cd0e28    call    280eh
1b55 226341    ld      (4163h),hl
1b58 c35826    jp      2658h
1b5b f5        push    af
1b5c cd7a23    call    237ah
1b5f f1        pop     af
1b60 67        ld      h,a
1b61 3e7e      ld      a,7eh
1b63 df        rst     18h
1b64 7c        ld      a,h
1b65 280a      jr      z,1b71h
1b67 fe03      cp      03h
1b69 3006      jr      nc,1b71h
1b6b 068d      ld      b,8dh
1b6d 80        add     a,b
1b6e c32f1e    jp      1e2fh
1b71 cd471c    call    1c47h
1b74 322d42    ld      (422dh),a
1b77 fe0b      cp      0bh
1b79 caec1f    jp      z,1fech
1b7c fe04      cp      04h
1b7e cac91f    jp      z,1fc9h
1b81 fe05      cp      05h
1b83 cace1f    jp      z,1fceh
1b86 fe0d      cp      0dh
1b88 2804      jr      z,1b8eh
1b8a fe08      cp      08h
1b8c 200b      jr      nz,1b99h
1b8e cd5016    call    1650h
1b91 c49426    call    nz,2694h
1b94 cd671c    call    1c67h
1b97 184c      jr      1be5h
1b99 fe0f      cp      0fh
1b9b 3836      jr      c,1bd3h
1b9d cd4a16    call    164ah
1ba0 2031      jr      nz,1bd3h
1ba2 cdad1c    call    1cadh
1ba5 3020      jr      nc,1bc7h
1ba7 cd8d27    call    278dh
1baa cd6516    call    1665h
1bad c8        ret     z

1bae cd8316    call    1683h
1bb1 2a6d41    ld      hl,(416dh)
1bb4 cd0e28    call    280eh
1bb7 226d41    ld      (416dh),hl
1bba cd5817    call    1758h
1bbd c39426    jp      2694h
1bc0 f5        push    af
1bc1 cdbc10    call    10bch
1bc4 f1        pop     af
1bc5 1815      jr      1bdch
1bc7 ed4b1001  ld      bc,(0110h)
1bcb ed42      sbc     hl,bc
1bcd d4ad16    call    nc,16adh
1bd0 dcda1c    call    c,1cdah
1bd3 3a2d42    ld      a,(422dh)
1bd6 cd5d28    call    285dh
1bd9 3001      jr      nc,1bdch
1bdb c8        ret     z

1bdc cd0a1b    call    1b0ah
1bdf cd6520    call    2065h
1be2 c3a126    jp      26a1h
1be5 114a01    ld      de,014ah
1be8 cdc32d    call    2dc3h
1beb 215841    ld      hl,4158h
1bee cb4e      bit     1,(hl)
1bf0 2022      jr      nz,1c14h
1bf2 cb56      bit     2,(hl)
1bf4 cb96      res     2,(hl)
1bf6 d0        ret     nc

1bf7 cbd6      set     2,(hl)
1bf9 ca5026    jp      z,2650h
1bfc 11e300    ld      de,00e3h
1bff cdc32d    call    2dc3h
1c02 215841    ld      hl,4158h
1c05 cb5e      bit     3,(hl)
1c07 cb9e      res     3,(hl)
1c09 d0        ret     nc

1c0a cbde      set     3,(hl)
1c0c 2006      jr      nz,1c14h
1c0e cd5426    call    2654h
1c11 c3e124    jp      24e1h
1c14 110300    ld      de,0003h
1c17 cdc32d    call    2dc3h
1c1a d0        ret     nc

1c1b 2afa43    ld      hl,(43fah)
1c1e 01d800    ld      bc,00d8h
1c21 b7        or      a
1c22 ed42      sbc     hl,bc
1c24 225d41    ld      (415dh),hl
1c27 54        ld      d,h
1c28 5d        ld      e,l
1c29 1b        dec     de
1c2a 1b        dec     de
1c2b 1b        dec     de
1c2c edb0      ldir    
1c2e 0605      ld      b,05h
1c30 cdb716    call    16b7h
1c33 215f41    ld      hl,415fh
1c36 2803      jr      z,1c3bh
1c38 05        dec     b
1c39 23        inc     hl
1c3a 23        inc     hl
1c3b 5e        ld      e,(hl)
1c3c 23        inc     hl
1c3d 56        ld      d,(hl)
1c3e 1b        dec     de
1c3f 1b        dec     de
1c40 1b        dec     de
1c41 72        ld      (hl),d
1c42 2b        dec     hl
1c43 73        ld      (hl),e
1c44 10f3      djnz    1c39h
1c46 c9        ret     

1c47 cda716    call    16a7h
1c4a c8        ret     z

1c4b cddb16    call    16dbh
1c4e c8        ret     z

1c4f fe0f      cp      0fh
1c51 2003      jr      nz,1c56h
1c53 3e08      ld      a,08h
1c55 c9        ret     

1c56 fe2d      cp      2dh
1c58 c0        ret     nz

1c59 cdad1c    call    1cadh
1c5c 3004      jr      nc,1c62h
1c5e cd4a16    call    164ah
1c61 c8        ret     z

1c62 cdd61b    call    1bd6h
1c65 18ec      jr      1c53h
1c67 cd1e25    call    251eh
1c6a 3a2d42    ld      a,(422dh)
1c6d fe0d      cp      0dh
1c6f 282a      jr      z,1c9bh
1c71 cdad1c    call    1cadh
1c74 3825      jr      c,1c9bh
1c76 ed4b1001  ld      bc,(0110h)
1c7a ed42      sbc     hl,bc
1c7c 381d      jr      c,1c9bh
1c7e 3e0d      ld      a,0dh
1c80 cd6516    call    1665h
1c83 2816      jr      z,1c9bh
1c85 cddb16    call    16dbh
1c88 2811      jr      z,1c9bh
1c8a 2a6d41    ld      hl,(416dh)
1c8d cd0e28    call    280eh
1c90 2b        dec     hl
1c91 7e        ld      a,(hl)
1c92 fe0f      cp      0fh
1c94 c8        ret     z

1c95 00        nop     
1c96 3e0f      ld      a,0fh
1c98 c3d61b    jp      1bd6h
1c9b ed5b7b41  ld      de,(417bh)
1c9f cdad16    call    16adh
1ca2 cd5716    call    1657h
1ca5 cd4e20    call    204eh
1ca8 3e08      ld      a,08h
1caa c35d28    jp      285dh
1cad 2aca40    ld      hl,(40cah)
1cb0 2b        dec     hl
1cb1 ed4b7b41  ld      bc,(417bh)
1cb5 b7        or      a
1cb6 ed42      sbc     hl,bc
1cb8 23        inc     hl
1cb9 c9        ret     

1cba cd4317    call    1743h
1cbd c0        ret     nz

1cbe cda116    call    16a1h
1cc1 cdcf1c    call    1ccfh
1cc4 c8        ret     z

1cc5 cd1b1d    call    1d1bh
1cc8 18f7      jr      1cc1h
1cca 2a5f41    ld      hl,(415fh)
1ccd 1803      jr      1cd2h
1ccf 2a6141    ld      hl,(4161h)
1cd2 ed5b6341  ld      de,(4163h)
1cd6 e5        push    hl
1cd7 d7        rst     10h
1cd8 e1        pop     hl
1cd9 c9        ret     

1cda eb        ex      de,hl
1cdb cda716    call    16a7h
1cde c0        ret     nz

1cdf cbde      set     3,(hl)
1ce1 cd8d27    call    278dh
1ce4 cd7716    call    1677h
1ce7 c8        ret     z

1ce8 cda706    call    06a7h
1ceb 13        inc     de
1cec c5        push    bc
1ced ed4b6d41  ld      bc,(416dh)
1cf1 0a        ld      a,(bc)
1cf2 03        inc     bc
1cf3 fe10      cp      10h
1cf5 3813      jr      c,1d0ah
1cf7 fe2d      cp      2dh
1cf9 280f      jr      z,1d0ah
1cfb fe80      cp      80h
1cfd 300b      jr      nc,1d0ah
1cff c5        push    bc
1d00 d5        push    de
1d01 cd2e13    call    132eh
1d04 d1        pop     de
1d05 c1        pop     bc
1d06 19        add     hl,de
1d07 eb        ex      de,hl
1d08 18e7      jr      1cf1h
1d0a e1        pop     hl
1d0b d7        rst     10h
1d0c d0        ret     nc

1d0d cd8316    call    1683h
1d10 18cf      jr      1ce1h
1d12 cd8f16    call    168fh
1d15 c0        ret     nz

1d16 3a6f40    ld      a,(406fh)
1d19 b7        or      a
1d1a c0        ret     nz

1d1b cdcf1c    call    1ccfh
1d1e c8        ret     z

1d1f 7e        ld      a,(hl)
1d20 cd2d1d    call    1d2dh
1d23 2a6141    ld      hl,(4161h)
1d26 cde627    call    27e6h
1d29 226141    ld      (4161h),hl
1d2c c9        ret     

1d2d fead      cp      0adh
1d2f c8        ret     z

1d30 feae      cp      0aeh
1d32 c8        ret     z

1d33 fe8d      cp      8dh
1d35 c8        ret     z

1d36 fe06      cp      06h
1d38 283a      jr      z,1d74h
1d3a fe87      cp      87h
1d3c 2836      jr      z,1d74h
1d3e fe80      cp      80h
1d40 2002      jr      nz,1d44h
1d42 3e2d      ld      a,2dh
1d44 fe8e      cp      8eh
1d46 2847      jr      z,1d8fh
1d48 fe8f      cp      8fh
1d4a 2848      jr      z,1d94h
1d4c fe07      cp      07h
1d4e 282a      jr      z,1d7ah
1d50 fe9c      cp      9ch
1d52 282c      jr      z,1d80h
1d54 fe9d      cp      9dh
1d56 282f      jr      z,1d87h
1d58 2a6141    ld      hl,(4161h)
1d5b cd4228    call    2842h
1d5e fe9e      cp      9eh
1d60 380a      jr      c,1d6ch
1d62 fea0      cp      0a0h
1d64 d8        ret     c

1d65 fea2      cp      0a2h
1d67 3803      jr      c,1d6ch
1d69 fea5      cp      0a5h
1d6b d8        ret     c

1d6c fe0d      cp      0dh
1d6e 2002      jr      nz,1d72h
1d70 3e08      ld      a,08h
1d72 e7        rst     20h
1d73 c9        ret     

1d74 cd4c28    call    284ch
1d77 c3190b    jp      0b19h
1d7a cd4c28    call    284ch
1d7d c35d0b    jp      0b5dh
1d80 21ce40    ld      hl,40ceh
1d83 0632      ld      b,32h
1d85 1805      jr      1d8ch
1d87 210041    ld      hl,4100h
1d8a 061e      ld      b,1eh
1d8c c3f426    jp      26f4h
1d8f 210100    ld      hl,0001h
1d92 18e9      jr      1d7dh
1d94 21ffff    ld      hl,0ffffh
1d97 18e4      jr      1d7dh
1d99 3abf40    ld      a,(40bfh)
1d9c e607      and     07h
1d9e fe07      cp      07h
1da0 280e      jr      z,1db0h
1da2 1f        rra     
1da3 380f      jr      c,1db4h
1da5 1f        rra     
1da6 3004      jr      nc,1dach
1da8 3eaa      ld      a,0aah
1daa 180a      jr      1db6h
1dac 3ea9      ld      a,0a9h
1dae 1806      jr      1db6h
1db0 3ea8      ld      a,0a8h
1db2 1802      jr      1db6h
1db4 3eab      ld      a,0abh
1db6 cd2f1e    call    1e2fh
1db9 cd6516    call    1665h
1dbc c0        ret     nz

1dbd c36f18    jp      186fh
1dc0 217140    ld      hl,4071h
1dc3 cb46      bit     0,(hl)
1dc5 cbc6      set     0,(hl)
1dc7 2802      jr      z,1dcbh
1dc9 cb86      res     0,(hl)
1dcb c38d18    jp      188dh
1dce 216b40    ld      hl,406bh
1dd1 cb56      bit     2,(hl)
1dd3 cbd6      set     2,(hl)
1dd5 117b01    ld      de,017bh
1dd8 3e01      ld      a,01h
1dda 2806      jr      z,1de2h
1ddc cb96      res     2,(hl)
1dde 110801    ld      de,0108h
1de1 af        xor     a
1de2 ed536c40  ld      (406ch),de
1de6 cde612    call    12e6h
1de9 cd2226    call    2622h
1dec c3a418    jp      18a4h
1def cddb16    call    16dbh
1df2 c2ea16    jp      nz,16eah
1df5 cd4317    call    1743h
1df8 c0        ret     nz

1df9 c3e116    jp      16e1h
1dfc 5f        ld      e,a
1dfd 21bf40    ld      hl,40bfh
1e00 56        ld      d,(hl)
1e01 e5        push    hl
1e02 e7        rst     20h
1e03 e1        pop     hl
1e04 7e        ld      a,(hl)
1e05 ba        cp      d
1e06 c8        ret     z

1e07 7b        ld      a,e
1e08 1825      jr      1e2fh
1e0a 21bf40    ld      hl,40bfh
1e0d cb66      bit     4,(hl)
1e0f 3e91      ld      a,91h
1e11 201c      jr      nz,1e2fh
1e13 3e81      ld      a,81h
1e15 1818      jr      1e2fh
1e17 21bf40    ld      hl,40bfh
1e1a cb5e      bit     3,(hl)
1e1c 3e92      ld      a,92h
1e1e 200f      jr      nz,1e2fh
1e20 3e82      ld      a,82h
1e22 180b      jr      1e2fh
1e24 21bf40    ld      hl,40bfh
1e27 cb76      bit     6,(hl)
1e29 3e93      ld      a,93h
1e2b 2002      jr      nz,1e2fh
1e2d 3e83      ld      a,83h
1e2f cddc1b    call    1bdch
1e32 c3ba1c    jp      1cbah
1e35 21bf40    ld      hl,40bfh
1e38 cb7e      bit     7,(hl)
1e3a 3e95      ld      a,95h
1e3c 20f1      jr      nz,1e2fh
1e3e 3e85      ld      a,85h
1e40 18ed      jr      1e2fh
1e42 3e95      ld      a,95h
1e44 18e9      jr      1e2fh
1e46 3abe40    ld      a,(40beh)
1e49 cb6f      bit     5,a
1e4b 200d      jr      nz,1e5ah
1e4d 06a5      ld      b,0a5h
1e4f cb67      bit     4,a
1e51 2004      jr      nz,1e57h
1e53 04        inc     b
1e54 17        rla     
1e55 30fc      jr      nc,1e53h
1e57 78        ld      a,b
1e58 18d5      jr      1e2fh
1e5a 3eac      ld      a,0ach
1e5c e7        rst     20h
1e5d 2aaa40    ld      hl,(40aah)
1e60 222042    ld      (4220h),hl
1e63 3e98      ld      a,98h
1e65 df        rst     18h
1e66 2813      jr      z,1e7bh
1e68 3e72      ld      a,72h
1e6a df        rst     18h
1e6b c48f1d    call    nz,1d8fh
1e6e 3e73      ld      a,73h
1e70 df        rst     18h
1e71 c4941d    call    nz,1d94h
1e74 0e32      ld      c,32h
1e76 cdde27    call    27deh
1e79 18e8      jr      1e63h
1e7b 2aaa40    ld      hl,(40aah)
1e7e ed5b2042  ld      de,(4220h)
1e82 d7        rst     10h
1e83 280c      jr      z,1e91h
1e85 22c440    ld      (40c4h),hl
1e88 cd1122    call    2211h
1e8b 2a6341    ld      hl,(4163h)
1e8e 226141    ld      (4161h),hl
1e91 3eac      ld      a,0ach
1e93 189a      jr      1e2fh
1e95 3e99      ld      a,99h
1e97 df        rst     18h
1e98 c8        ret     z

1e99 cd8c0a    call    0a8ch
1e9c 3e99      ld      a,99h
1e9e df        rst     18h
1e9f 20fb      jr      nz,1e9ch
1ea1 cd080f    call    0f08h
1ea4 c3340c    jp      0c34h
1ea7 217240    ld      hl,4072h
1eaa cb56      bit     2,(hl)
1eac c8        ret     z

1ead cb96      res     2,(hl)
1eaf c34c26    jp      264ch
1eb2 cd9426    call    2694h
1eb5 3e9b      ld      a,9bh
1eb7 df        rst     18h
1eb8 2011      jr      nz,1ecbh
1eba cd951e    call    1e95h
1ebd 3e82      ld      a,82h
1ebf df        rst     18h
1ec0 c4e417    call    nz,17e4h
1ec3 3e8e      ld      a,8eh
1ec5 df        rst     18h
1ec6 c4a12b    call    nz,2ba1h
1ec9 18e7      jr      1eb2h
1ecb cd3c24    call    243ch
1ece 217240    ld      hl,4072h
1ed1 cbe6      set     4,(hl)
1ed3 2a5d41    ld      hl,(415dh)
1ed6 225f41    ld      (415fh),hl
1ed9 226141    ld      (4161h),hl
1edc 226341    ld      (4163h),hl
1edf c9        ret     

1ee0 cd5702    call    0257h
1ee3 3e82      ld      a,82h
1ee5 df        rst     18h
1ee6 206c      jr      nz,1f54h
1ee8 cd951e    call    1e95h
1eeb 2a2242    ld      hl,(4222h)
1eee 11aa55    ld      de,55aah
1ef1 d7        rst     10h
1ef2 2069      jr      nz,1f5dh
1ef4 cd5102    call    0251h
1ef7 210000    ld      hl,0000h
1efa 226f40    ld      (406fh),hl
1efd 228540    ld      (4085h),hl
1f00 227040    ld      (4070h),hl
1f03 2a7b41    ld      hl,(417bh)
1f06 222642    ld      (4226h),hl
1f09 2aa840    ld      hl,(40a8h)
1f0c 222442    ld      (4224h),hl
1f0f fb        ei      
1f10 cdec30    call    30ech
1f13 cd9f0b    call    0b9fh
1f16 f3        di      
1f17 cdb20b    call    0bb2h
1f1a cdd333    call    33d3h
1f1d cd0a25    call    250ah
1f20 c8        ret     z

1f21 f5        push    af
1f22 cd7924    call    2479h
1f25 2a2442    ld      hl,(4224h)
1f28 ed5ba840  ld      de,(40a8h)
1f2c cdf030    call    30f0h
1f2f 2a2642    ld      hl,(4226h)
1f32 227b41    ld      (417bh),hl
1f35 215841    ld      hl,4158h
1f38 cb66      bit     4,(hl)
1f3a 2805      jr      z,1f41h
1f3c cd0529    call    2905h
1f3f 1811      jr      1f52h
1f41 cb76      bit     6,(hl)
1f43 2805      jr      z,1f4ah
1f45 c4d925    call    nz,25d9h
1f48 1808      jr      1f52h
1f4a 215641    ld      hl,4156h
1f4d cb6e      bit     5,(hl)
1f4f c4db2e    call    nz,2edbh
1f52 f1        pop     af
1f53 c9        ret     

1f54 210040    ld      hl,4000h
1f57 3601      ld      (hl),01h
1f59 21f419    ld      hl,19f4h
1f5c e3        ex      (sp),hl
1f5d f3        di      
1f5e 215641    ld      hl,4156h
1f61 01a91e    ld      bc,1ea9h
1f64 3600      ld      (hl),00h
1f66 115741    ld      de,4157h
1f69 edb0      ldir    
1f6b af        xor     a
1f6c cdc712    call    12c7h
1f6f cd0a11    call    110ah
1f72 cdb20b    call    0bb2h
1f75 219141    ld      hl,4191h
1f78 cd0127    call    2701h
1f7b cd0a25    call    250ah
1f7e c4e724    call    nz,24e7h
1f81 21ff5f    ld      hl,5fffh
1f84 22fa43    ld      (43fah),hl
1f87 21fc43    ld      hl,43fch
1f8a 226b41    ld      (416bh),hl
1f8d cd151b    call    1b15h
1f90 213542    ld      hl,4235h
1f93 0641      ld      b,41h
1f95 cdf426    call    26f4h
1f98 cd3526    call    2635h
1f9b 216b40    ld      hl,406bh
1f9e cb56      bit     2,(hl)
1fa0 21fc00    ld      hl,00fch
1fa3 2803      jr      z,1fa8h
1fa5 210601    ld      hl,0106h
1fa8 227941    ld      (4179h),hl
1fab 214442    ld      hl,4244h
1fae ed5b7941  ld      de,(4179h)
1fb2 060a      ld      b,0ah
1fb4 1a        ld      a,(de)
1fb5 17        rla     
1fb6 cb06      rlc     (hl)
1fb8 1f        rra     
1fb9 77        ld      (hl),a
1fba 13        inc     de
1fbb cd3428    call    2834h
1fbe 10f4      djnz    1fb4h
1fc0 21aa55    ld      hl,55aah
1fc3 222242    ld      (4222h),hl
1fc6 c3d333    jp      33d3h
1fc9 210476    ld      hl,7604h
1fcc 1803      jr      1fd1h
1fce 210577    ld      hl,7705h
1fd1 11a2a3    ld      de,0a3a2h
1fd4 1824      jr      1ffah
1fd6 210c8d    ld      hl,8d0ch
1fd9 119f9e    ld      de,9e9fh
1fdc 181c      jr      1ffah
1fde cdec1f    call    1fech
1fe1 3a2d42    ld      a,(422dh)
1fe4 b7        or      a
1fe5 c8        ret     z

1fe6 3aa340    ld      a,(40a3h)
1fe9 c3601b    jp      1b60h
1fec 210b75    ld      hl,750bh
1fef 11a0a1    ld      de,0a1a0h
1ff2 1806      jr      1ffah
1ff4 210a85    ld      hl,850ah
1ff7 11a400    ld      de,00a4h
1ffa 221c42    ld      (421ch),hl
1ffd ed531e42  ld      (421eh),de
2001 2aaa40    ld      hl,(40aah)
2004 228141    ld      (4181h),hl
2007 2a7b41    ld      hl,(417bh)
200a 227f41    ld      (417fh),hl
200d 227340    ld      (4073h),hl
2010 cd3a22    call    223ah
2013 3a1d42    ld      a,(421dh)
2016 df        rst     18h
2017 c29920    jp      nz,2099h
201a cd2820    call    2028h
201d 1803      jr      2022h
201f cd8d27    call    278dh
2022 cd9426    call    2694h
2025 c3be28    jp      28beh
2028 3a1c42    ld      a,(421ch)
202b fe04      cp      04h
202d 2848      jr      z,2077h
202f fe05      cp      05h
2031 284c      jr      z,207fh
2033 fe0a      cp      0ah
2035 284f      jr      z,2086h
2037 fe0c      cp      0ch
2039 ca7229    jp      z,2972h
203c cd5914    call    1459h
203f 302c      jr      nc,206dh
2041 e5        push    hl
2042 ed5b7f41  ld      de,(417fh)
2046 19        add     hl,de
2047 227b41    ld      (417bh),hl
204a d1        pop     de
204b 3a1c42    ld      a,(421ch)
204e cd0a1b    call    1b0ah
2051 e5        push    hl
2052 cd4317    call    1743h
2055 2808      jr      z,205fh
2057 cd5817    call    1758h
205a 211b42    ld      hl,421bh
205d 36ff      ld      (hl),0ffh
205f e1        pop     hl
2060 77        ld      (hl),a
2061 cd4728    call    2847h
2064 23        inc     hl
2065 77        ld      (hl),a
2066 23        inc     hl
2067 cd2d28    call    282dh
206a c33c1b    jp      1b3ch
206d af        xor     a
206e 322d42    ld      (422dh),a
2071 cd6d21    call    216dh
2074 c33c26    jp      263ch
2077 cd9214    call    1492h
207a 30f1      jr      nc,206dh
207c e5        push    hl
207d 18cb      jr      204ah
207f cd9714    call    1497h
2082 28e9      jr      z,206dh
2084 18f6      jr      207ch
2086 cd3b17    call    173bh
2089 ed5b7b41  ld      de,(417bh)
208d 2acc40    ld      hl,(40cch)
2090 227b41    ld      (417bh),hl
2093 d7        rst     10h
2094 3e0a      ld      a,0ah
2096 eb        ex      de,hl
2097 18b5      jr      204eh
2099 3a1c42    ld      a,(421ch)
209c fe06      cp      06h
209e 382e      jr      c,20ceh
20a0 f7        rst     30h
20a1 fe0e      cp      0eh
20a3 281b      jr      z,20c0h
20a5 fe0f      cp      0fh
20a7 2817      jr      z,20c0h
20a9 3e9c      ld      a,9ch
20ab df        rst     18h
20ac 205b      jr      nz,2109h
20ae 3e9e      ld      a,9eh
20b0 df        rst     18h
20b1 c24b21    jp      nz,214bh
20b4 3e97      ld      a,97h
20b6 df        rst     18h
20b7 ca1320    jp      z,2013h
20ba cd6d21    call    216dh
20bd c32220    jp      2022h
20c0 47        ld      b,a
20c1 cd5d28    call    285dh
20c4 78        ld      a,b
20c5 2804      jr      z,20cbh
20c7 e7        rst     20h
20c8 2a7b41    ld      hl,(417bh)
20cb c30d20    jp      200dh
20ce f7        rst     30h
20cf b7        or      a
20d0 2804      jr      z,20d6h
20d2 fe03      cp      03h
20d4 38f1      jr      c,20c7h
20d6 ef        rst     28h
20d7 fe9c      cp      9ch
20d9 281a      jr      z,20f5h
20db fe9e      cp      9eh
20dd 281e      jr      z,20fdh
20df fe97      cp      97h
20e1 c21320    jp      nz,2013h
20e4 cde920    call    20e9h
20e7 18d1      jr      20bah
20e9 ed5b8141  ld      de,(4181h)
20ed 2aaa40    ld      hl,(40aah)
20f0 3e07      ld      a,07h
20f2 c37921    jp      2179h
20f5 cde920    call    20e9h
20f8 cd2b14    call    142bh
20fb 1819      jr      2116h
20fd cde920    call    20e9h
2100 cd5414    call    1454h
2103 ed5baa40  ld      de,(40aah)
2107 1854      jr      215dh
2109 cd6d21    call    216dh
210c 3a1e42    ld      a,(421eh)
210f fea4      cp      0a4h
2111 200c      jr      nz,211fh
2113 cd3314    call    1433h
2116 3a1e42    ld      a,(421eh)
2119 dc4e20    call    c,204eh
211c c31f20    jp      201fh
211f fe9f      cp      9fh
2121 2805      jr      z,2128h
2123 cd1114    call    1411h
2126 18ee      jr      2116h
2128 cd2614    call    1426h
212b cbba      res     7,d
212d 18e7      jr      2116h
212f cd4321    call    2143h
2132 18df      jr      2113h
2134 cd4321    call    2143h
2137 18ea      jr      2123h
2139 cd4321    call    2143h
213c 18ea      jr      2128h
213e cd4321    call    2143h
2141 1813      jr      2156h
2143 cd5428    call    2854h
2146 ed537340  ld      (4073h),de
214a c9        ret     

214b 3a1c42    ld      a,(421ch)
214e fe0a      cp      0ah
2150 caba20    jp      z,20bah
2153 cd6d21    call    216dh
2156 cd6221    call    2162h
2159 ed5b7b41  ld      de,(417bh)
215d 3a1f42    ld      a,(421fh)
2160 18b7      jr      2119h
2162 3a1f42    ld      a,(421fh)
2165 fe9e      cp      9eh
2167 ca4f14    jp      z,144fh
216a c34214    jp      1442h
216d ed5b7f41  ld      de,(417fh)
2171 2a7b41    ld      hl,(417bh)
2174 227340    ld      (4073h),hl
2177 3e06      ld      a,06h
2179 d7        rst     10h
217a c8        ret     z

217b eb        ex      de,hl
217c 2a6141    ld      hl,(4161h)
217f cd3528    call    2835h
2182 226141    ld      (4161h),hl
2185 c34e20    jp      204eh
2188 2a6d41    ld      hl,(416dh)
218b 7e        ld      a,(hl)
218c fe9e      cp      9eh
218e 3808      jr      c,2198h
2190 fea5      cp      0a5h
2192 3839      jr      c,21cdh
2194 fead      cp      0adh
2196 3035      jr      nc,21cdh
2198 cd5728    call    2857h
219b cd5016    call    1650h
219e 2017      jr      nz,21b7h
21a0 cb7a      bit     7,d
21a2 c2e223    jp      nz,23e2h
21a5 7a        ld      a,d
21a6 b3        or      e
21a7 c29a23    jp      nz,239ah
21aa cdfc23    call    23fch
21ad d29a23    jp      nc,239ah
21b0 cdf123    call    23f1h
21b3 c0        ret     nz

21b4 c3e723    jp      23e7h
21b7 2a7b41    ld      hl,(417bh)
21ba b7        or      a
21bb ed5a      adc     hl,de
21bd fa5c26    jp      m,265ch
21c0 e5        push    hl
21c1 ed4bab00  ld      bc,(00abh)
21c5 ed42      sbc     hl,bc
21c7 e1        pop     hl
21c8 d25c26    jp      nc,265ch
21cb 1803      jr      21d0h
21cd cd4c28    call    284ch
21d0 ed5b7b41  ld      de,(417bh)
21d4 227b41    ld      (417bh),hl
21d7 d7        rst     10h
21d8 3e06      ld      a,06h
21da eb        ex      de,hl
21db 18a8      jr      2185h
21dd 2a6d41    ld      hl,(416dh)
21e0 7e        ld      a,(hl)
21e1 fea2      cp      0a2h
21e3 281f      jr      z,2204h
21e5 fea3      cp      0a3h
21e7 281b      jr      z,2204h
21e9 feac      cp      0ach
21eb 2010      jr      nz,21fdh
21ed 23        inc     hl
21ee 226d41    ld      (416dh),hl
21f1 2b        dec     hl
21f2 cd5728    call    2857h
21f5 d5        push    de
21f6 e1        pop     hl
21f7 cd5d0b    call    0b5dh
21fa c3851e    jp      1e85h
21fd cd5728    call    2857h
2200 3e07      ld      a,07h
2202 1881      jr      2185h
2204 cd4c28    call    284ch
2207 ed5baa40  ld      de,(40aah)
220b d7        rst     10h
220c 3003      jr      nc,2211h
220e 210000    ld      hl,0000h
2211 eb        ex      de,hl
2212 18ec      jr      2200h
2214 d5        push    de
2215 3e0f      ld      a,0fh
2217 e5        push    hl
2218 cd2e13    call    132eh
221b eb        ex      de,hl
221c e1        pop     hl
221d 010000    ld      bc,0000h
2220 51        ld      d,c
2221 cb7c      bit     7,h
2223 2007      jr      nz,222ch
2225 d7        rst     10h
2226 3803      jr      c,222bh
2228 03        inc     bc
2229 20fa      jr      nz,2225h
222b 03        inc     bc
222c 69        ld      l,c
222d 60        ld      h,b
222e d1        pop     de
222f c9        ret     

2230 d5        push    de
2231 e5        push    hl
2232 cdf213    call    13f2h
2235 e5        push    hl
2236 d1        pop     de
2237 e1        pop     hl
2238 18e3      jr      221dh
223a 3a1c42    ld      a,(421ch)
223d d604      sub     04h
223f 2848      jr      z,2289h
2241 3d        dec     a
2242 2852      jr      z,2296h
2244 d605      sub     05h
2246 281b      jr      z,2263h
2248 3d        dec     a
2249 2821      jr      z,226ch
224b 3d        dec     a
224c c0        ret     nz

224d cd8a14    call    148ah
2250 3808      jr      c,225ah
2252 11ffff    ld      de,0ffffh
2255 2a7b41    ld      hl,(417bh)
2258 1807      jr      2261h
225a eb        ex      de,hl
225b 2a7b41    ld      hl,(417bh)
225e cd7122    call    2271h
2261 186f      jr      22d2h
2263 ed5bcc40  ld      de,(40cch)
2267 2a7b41    ld      hl,(417bh)
226a 18f5      jr      2261h
226c cd5914    call    1459h
226f 18df      jr      2250h
2271 e5        push    hl
2272 19        add     hl,de
2273 eb        ex      de,hl
2274 e1        pop     hl
2275 c9        ret     

2276 ed5bc840  ld      de,(40c8h)
227a 3ead      ld      a,0adh
227c 1806      jr      2284h
227e ed5bca40  ld      de,(40cah)
2282 3eae      ld      a,0aeh
2284 321c42    ld      (421ch),a
2287 18de      jr      2267h
2289 cd9214    call    1492h
228c 380d      jr      c,229bh
228e 11ffff    ld      de,0ffffh
2291 2aaa40    ld      hl,(40aah)
2294 180c      jr      22a2h
2296 cd9714    call    1497h
2299 28f3      jr      z,228eh
229b eb        ex      de,hl
229c 2aaa40    ld      hl,(40aah)
229f cd7122    call    2271h
22a2 cd3022    call    2230h
22a5 eb        ex      de,hl
22a6 cd3022    call    2230h
22a9 eb        ex      de,hl
22aa e5        push    hl
22ab cdfe26    call    26feh
22ae e1        pop     hl
22af d5        push    de
22b0 119d41    ld      de,419dh
22b3 cdc222    call    22c2h
22b6 3a1c42    ld      a,(421ch)
22b9 13        inc     de
22ba 12        ld      (de),a
22bb 13        inc     de
22bc 3e3a      ld      a,3ah
22be 12        ld      (de),a
22bf 13        inc     de
22c0 13        inc     de
22c1 e1        pop     hl
22c2 d5        push    de
22c3 cdac27    call    27ach
22c6 212a42    ld      hl,422ah
22c9 d1        pop     de
22ca 010300    ld      bc,0003h
22cd edb0      ldir    
22cf c3b126    jp      26b1h
22d2 cd1422    call    2214h
22d5 eb        ex      de,hl
22d6 cd1422    call    2214h
22d9 eb        ex      de,hl
22da 18ce      jr      22aah
22dc 3e9c      ld      a,9ch
22de 1802      jr      22e2h
22e0 3e9d      ld      a,9dh
22e2 cddc1b    call    1bdch
22e5 c31f20    jp      201fh
22e8 cd5f16    call    165fh
22eb c0        ret     nz

22ec cbd6      set     2,(hl)
22ee 2a7b41    ld      hl,(417bh)
22f1 c3d821    jp      21d8h
22f4 cde822    call    22e8h
22f7 3a2d42    ld      a,(422dh)
22fa fe83      cp      83h
22fc 0e0e      ld      c,0eh
22fe 2802      jr      z,2302h
2300 0e0f      ld      c,0fh
2302 0605      ld      b,05h
2304 c5        push    bc
2305 79        ld      a,c
2306 cd5d28    call    285dh
2309 2816      jr      z,2321h
230b cd4a16    call    164ah
230e 2805      jr      z,2315h
2310 cdf123    call    23f1h
2313 1803      jr      2318h
2315 cdfc23    call    23fch
2318 3804      jr      c,231eh
231a cdb028    call    28b0h
231d af        xor     a
231e c46c11    call    nz,116ch
2321 c1        pop     bc
2322 10e0      djnz    2304h
2324 cda126    call    26a1h
2327 cdbc10    call    10bch
232a cdcd28    call    28cdh
232d 322d42    ld      (422dh),a
2330 fe97      cp      97h
2332 2840      jr      z,2374h
2334 fe83      cp      83h
2336 28bc      jr      z,22f4h
2338 fe86      cp      86h
233a 28b8      jr      z,22f4h
233c fe9c      cp      9ch
233e ca0524    jp      z,2405h
2341 fead      cp      0adh
2343 d20524    jp      nc,2405h
2346 fe06      cp      06h
2348 2825      jr      z,236fh
234a fe07      cp      07h
234c cadd21    jp      z,21ddh
234f cb7f      bit     7,a
2351 2010      jr      nz,2363h
2353 fe0d      cp      0dh
2355 2002      jr      nz,2359h
2357 3e08      ld      a,08h
2359 cd5b1b    call    1b5bh
235c cdba1c    call    1cbah
235f cd5016    call    1650h
2362 c8        ret     z

2363 fe81      cp      81h
2365 20bd      jr      nz,2324h
2367 cd7a23    call    237ah
236a cd1d2f    call    2f1dh
236d 18b5      jr      2324h
236f cd8821    call    2188h
2372 18e8      jr      235ch
2374 cd7a23    call    237ah
2377 c3f725    jp      25f7h
237a cd5f16    call    165fh
237d c8        ret     z

237e cb96      res     2,(hl)
2380 2a6341    ld      hl,(4163h)
2383 226141    ld      (4161h),hl
2386 cd5728    call    2857h
2389 2b        dec     hl
238a 226341    ld      (4163h),hl
238d cd0614    call    1406h
2390 d7        rst     10h
2391 c3d821    jp      21d8h
2394 cd5016    call    1650h
2397 c2f422    jp      nz,22f4h
239a 215641    ld      hl,4156h
239d cbce      set     1,(hl)
239f 2aca40    ld      hl,(40cah)
23a2 cda723    call    23a7h
23a5 18c6      jr      236dh
23a7 e5        push    hl
23a8 ed4b7b41  ld      bc,(417bh)
23ac b7        or      a
23ad ed42      sbc     hl,bc
23af eb        ex      de,hl
23b0 e1        pop     hl
23b1 3812      jr      c,23c5h
23b3 cdbd23    call    23bdh
23b6 eb        ex      de,hl
23b7 cdd821    call    21d8h
23ba c3ba1c    jp      1cbah
23bd 2a7b41    ld      hl,(417bh)
23c0 19        add     hl,de
23c1 227b41    ld      (417bh),hl
23c4 c9        ret     

23c5 ed4bc040  ld      bc,(40c0h)
23c9 b7        or      a
23ca ed42      sbc     hl,bc
23cc 28e5      jr      z,23b3h
23ce 110000    ld      de,0000h
23d1 18e0      jr      23b3h
23d3 3e83      ld      a,83h
23d5 322d42    ld      (422dh),a
23d8 cd5016    call    1650h
23db 20ba      jr      nz,2397h
23dd cdf123    call    23f1h
23e0 2805      jr      z,23e7h
23e2 2ac040    ld      hl,(40c0h)
23e5 18c0      jr      23a7h
23e7 215641    ld      hl,4156h
23ea cbc6      set     0,(hl)
23ec 2ac040    ld      hl,(40c0h)
23ef 18b1      jr      23a2h
23f1 2ac040    ld      hl,(40c0h)
23f4 ed4b7b41  ld      bc,(417bh)
23f8 b7        or      a
23f9 ed42      sbc     hl,bc
23fb c9        ret     

23fc 2a7b41    ld      hl,(417bh)
23ff ed4bca40  ld      bc,(40cah)
2403 18f3      jr      23f8h
2405 3eae      ld      a,0aeh
2407 cd4a16    call    164ah
240a 2004      jr      nz,2410h
240c 3ead      ld      a,0adh
240e cb46      bit     0,(hl)
2410 cd9426    call    2694h
2413 cd5716    call    1657h
2416 c8        ret     z

2417 f5        push    af
2418 cd7a23    call    237ah
241b f1        pop     af
241c 2a7b41    ld      hl,(417bh)
241f fead      cp      0adh
2421 2014      jr      nz,2437h
2423 e5        push    hl
2424 cd3f17    call    173fh
2427 e1        pop     hl
2428 22c840    ld      (40c8h),hl
242b 22c040    ld      (40c0h),hl
242e cdda21    call    21dah
2431 cd5716    call    1657h
2434 c38d27    jp      278dh
2437 22ca40    ld      (40cah),hl
243a 18f2      jr      242eh
243c 11d002    ld      de,02d0h
243f 211e00    ld      hl,001eh
2442 d5        push    de
2443 cd5d0b    call    0b5dh
2446 3e02      ld      a,02h
2448 df        rst     18h
2449 d1        pop     de
244a 2012      jr      nz,245eh
244c 1b        dec     de
244d 7b        ld      a,e
244e b2        or      d
244f ca4826    jp      z,2648h
2452 3e9b      ld      a,9bh
2454 d5        push    de
2455 df        rst     18h
2456 d1        pop     de
2457 210300    ld      hl,0003h
245a 20e6      jr      nz,2442h
245c 18f1      jr      244fh
245e 210000    ld      hl,0000h
2461 22aa40    ld      (40aah),hl
2464 2ac640    ld      hl,(40c6h)
2467 cd5d0b    call    0b5dh
246a cdbc10    call    10bch
246d 2aa840    ld      hl,(40a8h)
2470 cdec30    call    30ech
2473 cd9f0b    call    0b9fh
2476 cd0a25    call    250ah
2479 2aa840    ld      hl,(40a8h)
247c 11ca00    ld      de,00cah
247f af        xor     a
2480 d7        rst     10h
2481 1136ff    ld      de,0ff36h
2484 f28d24    jp      p,248dh
2487 eb        ex      de,hl
2488 d7        rst     10h
2489 eb        ex      de,hl
248a 210000    ld      hl,0000h
248d 22a640    ld      (40a6h),hl
2490 2ac840    ld      hl,(40c8h)
2493 22c040    ld      (40c0h),hl
2496 227b41    ld      (417bh),hl
2499 19        add     hl,de
249a c3190b    jp      0b19h
249d e5        push    hl
249e cde724    call    24e7h
24a1 1821      jr      24c4h
24a3 cdba1c    call    1cbah
24a6 cde724    call    24e7h
24a9 cdb716    call    16b7h
24ac 2816      jr      z,24c4h
24ae cdca1c    call    1ccah
24b1 2805      jr      z,24b8h
24b3 cd9735    call    3597h
24b6 18f6      jr      24aeh
24b8 3e03      ld      a,03h
24ba cd3336    call    3633h
24bd 060c      ld      b,0ch
24bf cd9a35    call    359ah
24c2 10fb      djnz    24bfh
24c4 e1        pop     hl
24c5 217240    ld      hl,4072h
24c8 3600      ld      (hl),00h
24ca 215841    ld      hl,4158h
24cd cb86      res     0,(hl)
24cf cde513    call    13e5h
24d2 cd3217    call    1732h
24d5 cd2017    call    1720h
24d8 cdfc16    call    16fch
24db cd0e17    call    170eh
24de cdbc10    call    10bch
24e1 cded2b    call    2bedh
24e4 c3ed2b    jp      2bedh
24e7 218d01    ld      hl,018dh
24ea ed5ba840  ld      de,(40a8h)
24ee cdf030    call    30f0h
24f1 0620      ld      b,20h
24f3 215000    ld      hl,0050h
24f6 cd5d0b    call    0b5dh
24f9 3e08      ld      a,08h
24fb df        rst     18h
24fc 2803      jr      z,2501h
24fe 10f3      djnz    24f3h
2500 c9        ret     

2501 216001    ld      hl,0160h
2504 cd5d0b    call    0b5dh
2507 c39f0b    jp      0b9fh
250a 06c0      ld      b,0c0h
250c 210f00    ld      hl,000fh
250f c5        push    bc
2510 cd190b    call    0b19h
2513 3e02      ld      a,02h
2515 df        rst     18h
2516 c1        pop     bc
2517 c0        ret     nz

2518 210200    ld      hl,0002h
251b 10f2      djnz    250fh
251d c9        ret     

251e cd4317    call    1743h
2521 c8        ret     z

2522 2a6341    ld      hl,(4163h)
2525 3608      ld      (hl),08h
2527 e5        push    hl
2528 cd9817    call    1798h
252b cc5817    call    z,1758h
252e cda716    call    16a7h
2531 e1        pop     hl
2532 282c      jr      z,2560h
2534 1101ff    ld      de,0ff01h
2537 14        inc     d
2538 ed4b6141  ld      bc,(4161h)
253c cd0528    call    2805h
253f 7e        ld      a,(hl)
2540 380f      jr      c,2551h
2542 fe0f      cp      0fh
2544 43        ld      b,e
2545 1e00      ld      e,00h
2547 20ef      jr      nz,2538h
2549 58        ld      e,b
254a 10eb      djnz    2537h
254c cdb028    call    28b0h
254f 18e7      jr      2538h
2551 cdad1c    call    1cadh
2554 380a      jr      c,2560h
2556 5d        ld      e,l
2557 d5        push    de
2558 ed5b1001  ld      de,(0110h)
255c d7        rst     10h
255d d1        pop     de
255e 3805      jr      c,2565h
2560 010000    ld      bc,0000h
2563 181d      jr      2582h
2565 cd6817    call    1768h
2568 fe0f      cp      0fh
256a 2009      jr      nz,2575h
256c 15        dec     d
256d d5        push    de
256e cd1b1d    call    1d1bh
2571 d1        pop     de
2572 7e        ld      a,(hl)
2573 18f3      jr      2568h
2575 0eff      ld      c,0ffh
2577 7b        ld      a,e
2578 0c        inc     c
2579 14        inc     d
257a 15        dec     d
257b 2808      jr      z,2585h
257d 92        sub     d
257e 30f8      jr      nc,2578h
2580 82        add     a,d
2581 47        ld      b,a
2582 cd6817    call    1768h
2585 2a6141    ld      hl,(4161h)
2588 7e        ld      a,(hl)
2589 f5        push    af
258a c5        push    bc
258b cd201d    call    1d20h
258e c1        pop     bc
258f f1        pop     af
2590 fe08      cp      08h
2592 ca9a16    jp      z,169ah
2595 fe0f      cp      0fh
2597 20ec      jr      nz,2585h
2599 21bf40    ld      hl,40bfh
259c cb76      bit     6,(hl)
259e 2805      jr      z,25a5h
25a0 3e17      ld      a,17h
25a2 c5        push    bc
25a3 e7        rst     20h
25a4 c1        pop     bc
25a5 af        xor     a
25a6 67        ld      h,a
25a7 69        ld      l,c
25a8 b0        or      b
25a9 2802      jr      z,25adh
25ab 05        dec     b
25ac 2c        inc     l
25ad c5        push    bc
25ae cd190b    call    0b19h
25b1 c1        pop     bc
25b2 18d1      jr      2585h
25b4 215841    ld      hl,4158h
25b7 cbf6      set     6,(hl)
25b9 0611      ld      b,11h
25bb 217240    ld      hl,4072h
25be cb56      bit     2,(hl)
25c0 cb96      res     2,(hl)
25c2 2008      jr      nz,25cch
25c4 211100    ld      hl,0011h
25c7 cd5d0b    call    0b5dh
25ca 10ef      djnz    25bbh
25cc ed438541  ld      (4185h),bc
25d0 c44c26    call    nz,264ch
25d3 cd7117    call    1771h
25d6 cd0418    call    1804h
25d9 3e84      ld      a,84h
25db df        rst     18h
25dc 28fb      jr      z,25d9h
25de ed4b8541  ld      bc,(4185h)
25e2 3e11      ld      a,11h
25e4 90        sub     b
25e5 47        ld      b,a
25e6 21efff    ld      hl,0ffefh
25e9 cd5d0b    call    0b5dh
25ec 10fb      djnz    25e9h
25ee cd7517    call    1775h
25f1 215841    ld      hl,4158h
25f4 cbb6      res     6,(hl)
25f6 c9        ret     

25f7 cd5016    call    1650h
25fa 2805      jr      z,2601h
25fc cd5716    call    1657h
25ff 1821      jr      2622h
2601 cd7716    call    1677h
2604 c28316    jp      nz,1683h
2607 3e97      ld      a,97h
2609 df        rst     18h
260a c8        ret     z

260b 3aa440    ld      a,(40a4h)
260e df        rst     18h
260f 2019      jr      nz,262ah
2611 3e9d      ld      a,9dh
2613 df        rst     18h
2614 c22c31    jp      nz,312ch
2617 3e8c      ld      a,8ch
2619 df        rst     18h
261a c24931    jp      nz,3149h
261d 3e9c      ld      a,9ch
261f df        rst     18h
2620 28e5      jr      z,2607h
2622 3e8d      ld      a,8dh
2624 cdc01b    call    1bc0h
2627 c38d27    jp      278dh
262a 3e15      ld      a,15h
262c cd5b1b    call    1b5bh
262f cdbc10    call    10bch
2632 c3be28    jp      28beh
2635 af        xor     a
2636 1830      jr      2668h
2638 3e01      ld      a,01h
263a 182c      jr      2668h
263c 3e02      ld      a,02h
263e 1828      jr      2668h
2640 3e03      ld      a,03h
2642 1824      jr      2668h
2644 3e04      ld      a,04h
2646 1820      jr      2668h
2648 3e05      ld      a,05h
264a 181c      jr      2668h
264c 3e07      ld      a,07h
264e 1818      jr      2668h
2650 3e08      ld      a,08h
2652 1814      jr      2668h
2654 3e09      ld      a,09h
2656 1810      jr      2668h
2658 3e0a      ld      a,0ah
265a 180c      jr      2668h
265c 3e0b      ld      a,0bh
265e 1808      jr      2668h
2660 3e0c      ld      a,0ch
2662 1804      jr      2668h
2664 3e0d      ld      a,0dh
2666 1800      jr      2668h
2668 21ac40    ld      hl,40ach
266b cd0127    call    2701h
266e 010303    ld      bc,0303h
2671 cd0527    call    2705h
2674 2600      ld      h,00h
2676 6f        ld      l,a
2677 cdac27    call    27ach
267a 2a2b42    ld      hl,(422bh)
267d 22b140    ld      (40b1h),hl
2680 21b540    ld      hl,40b5h
2683 0603      ld      b,03h
2685 cd0527    call    2705h
2688 cd8316    call    1683h
268b cd8d27    call    278dh
268e 3e97      ld      a,97h
2690 df        rst     18h
2691 28fb      jr      z,268eh
2693 af        xor     a
2694 219141    ld      hl,4191h
2697 181b      jr      26b4h
2699 219d41    ld      hl,419dh
269c d5        push    de
269d c5        push    bc
269e f5        push    af
269f 182b      jr      26cch
26a1 cd4a16    call    164ah
26a4 2805      jr      z,26abh
26a6 cd7e22    call    227eh
26a9 1806      jr      26b1h
26ab cb46      bit     0,(hl)
26ad c8        ret     z

26ae cd7622    call    2276h
26b1 219d41    ld      hl,419dh
26b4 d5        push    de
26b5 c5        push    bc
26b6 f5        push    af
26b7 e5        push    hl
26b8 cd9817    call    1798h
26bb 2a6d41    ld      hl,(416dh)
26be 7e        ld      a,(hl)
26bf e1        pop     hl
26c0 280a      jr      z,26cch
26c2 e5        push    hl
26c3 010b00    ld      bc,000bh
26c6 09        add     hl,bc
26c7 77        ld      (hl),a
26c8 2b        dec     hl
26c9 369b      ld      (hl),9bh
26cb e1        pop     hl
26cc 11ac40    ld      de,40ach
26cf 060c      ld      b,0ch
26d1 7e        ld      a,(hl)
26d2 cb7f      bit     7,a
26d4 2010      jr      nz,26e6h
26d6 fe10      cp      10h
26d8 380c      jr      c,26e6h
26da e5        push    hl
26db c5        push    bc
26dc 0600      ld      b,00h
26de 4f        ld      c,a
26df 2a6c40    ld      hl,(406ch)
26e2 09        add     hl,bc
26e3 7e        ld      a,(hl)
26e4 c1        pop     bc
26e5 e1        pop     hl
26e6 12        ld      (de),a
26e7 13        inc     de
26e8 23        inc     hl
26e9 10e6      djnz    26d1h
26eb f1        pop     af
26ec c1        pop     bc
26ed d1        pop     de
26ee c9        ret     

26ef 21ce41    ld      hl,41ceh
26f2 0620      ld      b,20h
26f4 0e00      ld      c,00h
26f6 180d      jr      2705h
26f8 cd9426    call    2694h
26fb cdbc10    call    10bch
26fe 219d41    ld      hl,419dh
2701 060c      ld      b,0ch
2703 0e0f      ld      c,0fh
2705 e5        push    hl
2706 71        ld      (hl),c
2707 23        inc     hl
2708 10fc      djnz    2706h
270a e1        pop     hl
270b c9        ret     

270c 21e915    ld      hl,15e9h
270f 0606      ld      b,06h
2711 1801      jr      2714h
2713 46        ld      b,(hl)
2714 23        inc     hl
2715 be        cp      (hl)
2716 23        inc     hl
2717 2804      jr      z,271dh
2719 23        inc     hl
271a 10f8      djnz    2714h
271c c9        ret     

271d 46        ld      b,(hl)
271e 23        inc     hl
271f 66        ld      h,(hl)
2720 68        ld      l,b
2721 c9        ret     

2722 cd9926    call    2699h
2725 cdbc10    call    10bch
2728 21a941    ld      hl,41a9h
272b 46        ld      b,(hl)
272c 23        inc     hl
272d 7e        ld      a,(hl)
272e 4f        ld      c,a
272f e5        push    hl
2730 c5        push    bc
2731 df        rst     18h
2732 c1        pop     bc
2733 e1        pop     hl
2734 cd4228    call    2842h
2737 23        inc     hl
2738 2004      jr      nz,273eh
273a 10f1      djnz    272dh
273c 18ea      jr      2728h
273e 79        ld      a,c
273f eb        ex      de,hl
2740 e9        jp      (hl)
2741 c5        push    bc
2742 cd6127    call    2761h
2745 cdfe26    call    26feh
2748 c1        pop     bc
2749 77        ld      (hl),a
274a 23        inc     hl
274b 363a      ld      (hl),3ah
274d 23        inc     hl
274e c9        ret     

274f e5        push    hl
2750 2a3042    ld      hl,(4230h)
2753 cd5827    call    2758h
2756 e1        pop     hl
2757 c9        ret     

2758 12        ld      (de),a
2759 13        inc     de
275a 7d        ld      a,l
275b 12        ld      (de),a
275c 13        inc     de
275d 7c        ld      a,h
275e 12        ld      (de),a
275f 13        inc     de
2760 c9        ret     

2761 e5        push    hl
2762 21a941    ld      hl,41a9h
2765 0625      ld      b,25h
2767 cdf426    call    26f4h
276a 360c      ld      (hl),0ch
276c 23        inc     hl
276d 3699      ld      (hl),99h
276f 23        inc     hl
2770 3695      ld      (hl),95h
2772 23        inc     hl
2773 361e      ld      (hl),1eh
2775 23        inc     hl
2776 3697      ld      (hl),97h
2778 23        inc     hl
2779 36f8      ld      (hl),0f8h
277b 23        inc     hl
277c 3626      ld      (hl),26h
277e 23        inc     hl
277f eb        ex      de,hl
2780 e1        pop     hl
2781 c9        ret     

2782 216a40    ld      hl,406ah
2785 cb5e      bit     3,(hl)
2787 cbde      set     3,(hl)
2789 2802      jr      z,278dh
278b cb9e      res     3,(hl)
278d cd7716    call    1677h
2790 c0        ret     nz

2791 cdc916    call    16c9h
2794 c0        ret     nz

2795 3e04      ld      a,04h
2797 326940    ld      (4069h),a
279a c9        ret     

279b b7        or      a
279c c8        ret     z

279d fe06      cp      06h
279f c8        ret     z

27a0 fe07      cp      07h
27a2 c8        ret     z

27a3 fe0c      cp      0ch
27a5 c8        ret     z

27a6 fe0a      cp      0ah
27a8 c8        ret     z

27a9 fe80      cp      80h
27ab c9        ret     

27ac d5        push    de
27ad c5        push    bc
27ae f5        push    af
27af 112842    ld      de,4228h
27b2 011027    ld      bc,2710h
27b5 cdd127    call    27d1h
27b8 01e803    ld      bc,03e8h
27bb cdd127    call    27d1h
27be 016400    ld      bc,0064h
27c1 cdd127    call    27d1h
27c4 0e0a      ld      c,0ah
27c6 cdd127    call    27d1h
27c9 7d        ld      a,l
27ca cdd927    call    27d9h
27cd f1        pop     af
27ce c1        pop     bc
27cf d1        pop     de
27d0 c9        ret     

27d1 af        xor     a
27d2 3c        inc     a
27d3 ed42      sbc     hl,bc
27d5 30fb      jr      nc,27d2h
27d7 3d        dec     a
27d8 09        add     hl,bc
27d9 f630      or      30h
27db 12        ld      (de),a
27dc 13        inc     de
27dd c9        ret     

27de 06c0      ld      b,0c0h
27e0 10fe      djnz    27e0h
27e2 0d        dec     c
27e3 20f9      jr      nz,27deh
27e5 c9        ret     

27e6 7e        ld      a,(hl)
27e7 23        inc     hl
27e8 fe0e      cp      0eh
27ea 3803      jr      c,27efh
27ec fe87      cp      87h
27ee d8        ret     c

27ef cd1628    call    2816h
27f2 2842      jr      z,2836h
27f4 c9        ret     

27f5 ed4b7141  ld      bc,(4171h)
27f9 e5        push    hl
27fa b7        or      a
27fb ed42      sbc     hl,bc
27fd e1        pop     hl
27fe d0        ret     nc

27ff f5        push    af
2800 cde627    call    27e6h
2803 f1        pop     af
2804 c9        ret     

2805 e5        push    hl
2806 b7        or      a
2807 ed42      sbc     hl,bc
2809 e1        pop     hl
280a 2002      jr      nz,280eh
280c 37        scf     
280d c9        ret     

280e 2b        dec     hl
280f 7e        ld      a,(hl)
2810 cd1628    call    2816h
2813 2829      jr      z,283eh
2815 c9        ret     

2816 e5        push    hl
2817 21d615    ld      hl,15d6h
281a 011300    ld      bc,0013h
281d edb1      cpir    
281f e1        pop     hl
2820 c9        ret     

2821 225d41    ld      (415dh),hl
2824 223342    ld      (4233h),hl
2827 225f41    ld      (415fh),hl
282a 226141    ld      (4161h),hl
282d 226341    ld      (4163h),hl
2830 226741    ld      (4167h),hl
2833 c9        ret     

2834 23        inc     hl
2835 23        inc     hl
2836 23        inc     hl
2837 23        inc     hl
2838 23        inc     hl
2839 c9        ret     

283a 2b        dec     hl
283b 2b        dec     hl
283c 2b        dec     hl
283d 2b        dec     hl
283e 2b        dec     hl
283f 2b        dec     hl
2840 2b        dec     hl
2841 c9        ret     

2842 23        inc     hl
2843 5e        ld      e,(hl)
2844 23        inc     hl
2845 56        ld      d,(hl)
2846 c9        ret     

2847 23        inc     hl
2848 73        ld      (hl),e
2849 23        inc     hl
284a 72        ld      (hl),d
284b c9        ret     

284c 23        inc     hl
284d f5        push    af
284e 7e        ld      a,(hl)
284f 23        inc     hl
2850 66        ld      h,(hl)
2851 6f        ld      l,a
2852 f1        pop     af
2853 c9        ret     

2854 2a6d41    ld      hl,(416dh)
2857 2b        dec     hl
2858 2b        dec     hl
2859 56        ld      d,(hl)
285a 2b        dec     hl
285b 5e        ld      e,(hl)
285c c9        ret     

285d cd9b27    call    279bh
2860 d0        ret     nc

2861 e5        push    hl
2862 d5        push    de
2863 c5        push    bc
2864 fe09      cp      09h
2866 2804      jr      z,286ch
2868 fe08      cp      08h
286a 2014      jr      nz,2880h
286c ed5bc040  ld      de,(40c0h)
2870 2a7b41    ld      hl,(417bh)
2873 d7        rst     10h
2874 2004      jr      nz,287ah
2876 ed5bc840  ld      de,(40c8h)
287a ed537b41  ld      (417bh),de
287e 1808      jr      2888h
2880 fe01      cp      01h
2882 2804      jr      z,2888h
2884 fe02      cp      02h
2886 2003      jr      nz,288bh
2888 b7        or      a
2889 1820      jr      28abh
288b fe0b      cp      0bh
288d 28f9      jr      z,2888h
288f cd2e13    call    132eh
2892 ed4b7b41  ld      bc,(417bh)
2896 b7        or      a
2897 ed4a      adc     hl,bc
2899 faaa28    jp      m,28aah
289c e5        push    hl
289d ed4ba640  ld      bc,(40a6h)
28a1 09        add     hl,bc
28a2 eb        ex      de,hl
28a3 2aab00    ld      hl,(00abh)
28a6 d7        rst     10h
28a7 d1        pop     de
28a8 30d0      jr      nc,287ah
28aa af        xor     a
28ab c1        pop     bc
28ac d1        pop     de
28ad e1        pop     hl
28ae 37        scf     
28af c9        ret     

28b0 e5        push    hl
28b1 d5        push    de
28b2 c5        push    bc
28b3 cd2e13    call    132eh
28b6 eb        ex      de,hl
28b7 2a7b41    ld      hl,(417bh)
28ba d7        rst     10h
28bb eb        ex      de,hl
28bc 18bc      jr      287ah
28be 060c      ld      b,0ch
28c0 212041    ld      hl,4120h
28c3 cdf426    call    26f4h
28c6 cd730f    call    0f73h
28c9 b7        or      a
28ca 20f2      jr      nz,28beh
28cc c9        ret     

28cd cd7716    call    1677h
28d0 280c      jr      z,28deh
28d2 cda81a    call    1aa8h
28d5 fe08      cp      08h
28d7 2002      jr      nz,28dbh
28d9 3e0d      ld      a,0dh
28db c39b27    jp      279bh
28de f7        rst     30h
28df b7        or      a
28e0 20f3      jr      nz,28d5h
28e2 ef        rst     28h
28e3 28f9      jr      z,28deh
28e5 fea6      cp      0a6h
28e7 cad82d    jp      z,2dd8h
28ea fea5      cp      0a5h
28ec ca122e    jp      z,2e12h
28ef b7        or      a
28f0 c9        ret     

28f1 215841    ld      hl,4158h
28f4 cbe6      set     4,(hl)
28f6 cdad1c    call    1cadh
28f9 da8d27    jp      c,278dh
28fc cb3c      srl     h
28fe cb1d      rr      l
2900 3e87      ld      a,87h
2902 cdbf29    call    29bfh
2905 cdfc1b    call    1bfch
2908 cdcd28    call    28cdh
290b 302f      jr      nc,293ch
290d fe0d      cp      0dh
290f 2805      jr      z,2916h
2911 cdd929    call    29d9h
2914 18ef      jr      2905h
2916 2a8341    ld      hl,(4183h)
2919 ed5b8d41  ld      de,(418dh)
291d d7        rst     10h
291e eb        ex      de,hl
291f cdbd23    call    23bdh
2922 2a6541    ld      hl,(4165h)
2925 ed5b8d41  ld      de,(418dh)
2929 2b        dec     hl
292a 2b        dec     hl
292b 72        ld      (hl),d
292c 2b        dec     hl
292d 73        ld      (hl),e
292e cd6a29    call    296ah
2931 fe0c      cp      0ch
2933 c2ff1a    jp      nz,1affh
2936 cdba1c    call    1cbah
2939 c3d61f    jp      1fd6h
293c fe81      cp      81h
293e 20c8      jr      nz,2908h
2940 ed5b8d41  ld      de,(418dh)
2944 2a8341    ld      hl,(4183h)
2947 228d41    ld      (418dh),hl
294a d7        rst     10h
294b 281a      jr      z,2967h
294d c5        push    bc
294e cd190b    call    0b19h
2951 cdbc10    call    10bch
2954 cdfe29    call    29feh
2957 c1        pop     bc
2958 2a6541    ld      hl,(4165h)
295b 226341    ld      (4163h),hl
295e 215841    ld      hl,4158h
2961 cb66      bit     4,(hl)
2963 20a0      jr      nz,2905h
2965 1828      jr      298fh
2967 cdfd2f    call    2ffdh
296a 215841    ld      hl,4158h
296d cba6      res     4,(hl)
296f cbae      res     5,(hl)
2971 c9        ret     

2972 cd8a14    call    148ah
2975 3aa240    ld      a,(40a2h)
2978 3804      jr      c,297eh
297a cdad1c    call    1cadh
297d af        xor     a
297e f5        push    af
297f 3e0c      ld      a,0ch
2981 e5        push    hl
2982 cdbf29    call    29bfh
2985 e1        pop     hl
2986 cd190b    call    0b19h
2989 215841    ld      hl,4158h
298c cbee      set     5,(hl)
298e c1        pop     bc
298f c5        push    bc
2990 cdfc1b    call    1bfch
2993 cdcd28    call    28cdh
2996 c1        pop     bc
2997 3012      jr      nc,29abh
2999 fe0b      cp      0bh
299b 2885      jr      z,2922h
299d fe0d      cp      0dh
299f 28fa      jr      z,299bh
29a1 b8        cp      b
29a2 28f7      jr      z,299bh
29a4 c5        push    bc
29a5 cdd929    call    29d9h
29a8 c1        pop     bc
29a9 18e4      jr      298fh
29ab fe81      cp      81h
29ad 288d      jr      z,293ch
29af fe8a      cp      8ah
29b1 28e8      jr      z,299bh
29b3 fe0c      cp      0ch
29b5 28e4      jr      z,299bh
29b7 fe8d      cp      8dh
29b9 3e0c      ld      a,0ch
29bb 28de      jr      z,299bh
29bd 18d0      jr      298fh
29bf 228d41    ld      (418dh),hl
29c2 228341    ld      (4183h),hl
29c5 eb        ex      de,hl
29c6 cdbd23    call    23bdh
29c9 cd4e20    call    204eh
29cc cdba1c    call    1cbah
29cf cdfe29    call    29feh
29d2 2a6341    ld      hl,(4163h)
29d5 226541    ld      (4165h),hl
29d8 c9        ret     

29d9 fe0c      cp      0ch
29db d8        ret     c

29dc cd2e13    call    132eh
29df eb        ex      de,hl
29e0 215841    ld      hl,4158h
29e3 cb66      bit     4,(hl)
29e5 2802      jr      z,29e9h
29e7 cb3b      srl     e
29e9 2a8d41    ld      hl,(418dh)
29ec d7        rst     10h
29ed da8d27    jp      c,278dh
29f0 228d41    ld      (418dh),hl
29f3 eb        ex      de,hl
29f4 cdec30    call    30ech
29f7 f5        push    af
29f8 cddc1b    call    1bdch
29fb f1        pop     af
29fc 1813      jr      2a11h
29fe cdfe26    call    26feh
2a01 215741    ld      hl,4157h
2a04 cbce      set     1,(hl)
2a06 3e87      ld      a,87h
2a08 215841    ld      hl,4158h
2a0b cb66      bit     4,(hl)
2a0d 2002      jr      nz,2a11h
2a0f 3e0c      ld      a,0ch
2a11 010b00    ld      bc,000bh
2a14 cd9817    call    1798h
2a17 2802      jr      z,2a1bh
2a19 0d        dec     c
2a1a 0d        dec     c
2a1b 219e41    ld      hl,419eh
2a1e 119d41    ld      de,419dh
2a21 edb0      ldir    
2a23 2b        dec     hl
2a24 77        ld      (hl),a
2a25 c3b126    jp      26b1h
2a28 cdb316    call    16b3h
2a2b c0        ret     nz

2a2c 21c617    ld      hl,17c6h
2a2f 3eb5      ld      a,0b5h
2a31 c31619    jp      1916h
2a34 213542    ld      hl,4235h
2a37 1808      jr      2a41h
2a39 213a42    ld      hl,423ah
2a3c 1803      jr      2a41h
2a3e 213f42    ld      hl,423fh
2a41 cbfe      set     7,(hl)
2a43 ed5b6b41  ld      de,(416bh)
2a47 cd4728    call    2847h
2a4a 215b41    ld      hl,415bh
2a4d cbee      set     5,(hl)
2a4f 1809      jr      2a5ah
2a51 cdbe19    call    19beh
2a54 cdcd2d    call    2dcdh
2a57 cd7f17    call    177fh
2a5a cd8517    call    1785h
2a5d cdbe28    call    28beh
2a60 c38d27    jp      278dh
2a63 cdce19    call    19ceh
2a66 215c41    ld      hl,415ch
2a69 b6        or      (hl)
2a6a 77        ld      (hl),a
2a6b 21bd40    ld      hl,40bdh
2a6e 016100    ld      bc,0061h
2a71 edb0      ldir    
2a73 18e8      jr      2a5dh
2a75 cbbe      res     7,(hl)
2a77 cd4228    call    2842h
2a7a 23        inc     hl
2a7b 4e        ld      c,(hl)
2a7c 23        inc     hl
2a7d 46        ld      b,(hl)
2a7e c32e2d    jp      2d2eh
2a81 215b41    ld      hl,415bh
2a84 cb86      res     0,(hl)
2a86 213542    ld      hl,4235h
2a89 cd752a    call    2a75h
2a8c 281e      jr      z,2aach
2a8e 213a42    ld      hl,423ah
2a91 cb7e      bit     7,(hl)
2a93 c4642d    call    nz,2d64h
2a96 213f42    ld      hl,423fh
2a99 cb7e      bit     7,(hl)
2a9b c4642d    call    nz,2d64h
2a9e cd7917    call    1779h
2aa1 2809      jr      z,2aach
2aa3 2a3342    ld      hl,(4233h)
2aa6 b7        or      a
2aa7 ed42      sbc     hl,bc
2aa9 223342    ld      (4233h),hl
2aac cdb92d    call    2db9h
2aaf 226741    ld      (4167h),hl
2ab2 cdc82a    call    2ac8h
2ab5 cd9817    call    1798h
2ab8 c0        ret     nz

2ab9 23        inc     hl
2aba 7e        ld      a,(hl)
2abb e609      and     09h
2abd fe09      cp      09h
2abf c8        ret     z

2ac0 21d517    ld      hl,17d5h
2ac3 3eb7      ld      a,0b7h
2ac5 c35519    jp      1955h
2ac8 215841    ld      hl,4158h
2acb cb4e      bit     1,(hl)
2acd c4151b    call    nz,1b15h
2ad0 188e      jr      2a60h
2ad2 215b41    ld      hl,415bh
2ad5 cb8e      res     1,(hl)
2ad7 213a42    ld      hl,423ah
2ada cd752a    call    2a75h
2add 28cd      jr      z,2aach
2adf 213542    ld      hl,4235h
2ae2 18ad      jr      2a91h
2ae4 215b41    ld      hl,415bh
2ae7 cb96      res     2,(hl)
2ae9 213f42    ld      hl,423fh
2aec cd752a    call    2a75h
2aef 28bb      jr      z,2aach
2af1 213542    ld      hl,4235h
2af4 cb7e      bit     7,(hl)
2af6 c4642d    call    nz,2d64h
2af9 213a42    ld      hl,423ah
2afc 189b      jr      2a99h
2afe cdbe19    call    19beh
2b01 cd202b    call    2b20h
2b04 cdc82a    call    2ac8h
2b07 21fe2a    ld      hl,2afeh
2b0a 0e01      ld      c,01h
2b0c c36019    jp      1960h
2b0f 21512a    ld      hl,2a51h
2b12 0e00      ld      c,00h
2b14 18f6      jr      2b0ch
2b16 cd922c    call    2c92h
2b19 219c2c    ld      hl,2c9ch
2b1c 0e01      ld      c,01h
2b1e 18ec      jr      2b0ch
2b20 cbbe      res     7,(hl)
2b22 cd4228    call    2842h
2b25 cd4c28    call    284ch
2b28 eb        ex      de,hl
2b29 ed4bfa43  ld      bc,(43fah)
2b2d 03        inc     bc
2b2e b7        or      a
2b2f e5        push    hl
2b30 ed42      sbc     hl,bc
2b32 280d      jr      z,2b41h
2b34 3002      jr      nc,2b38h
2b36 e1        pop     hl
2b37 c9        ret     

2b38 44        ld      b,h
2b39 4d        ld      c,l
2b3a e1        pop     hl
2b3b e5        push    hl
2b3c d5        push    de
2b3d 2b        dec     hl
2b3e edb8      lddr    
2b40 d1        pop     de
2b41 e1        pop     hl
2b42 223042    ld      (4230h),hl
2b45 2b        dec     hl
2b46 eb        ex      de,hl
2b47 d7        rst     10h
2b48 eb        ex      de,hl
2b49 2afa43    ld      hl,(43fah)
2b4c 19        add     hl,de
2b4d 22fa43    ld      (43fah),hl
2b50 060a      ld      b,0ah
2b52 214442    ld      hl,4244h
2b55 c5        push    bc
2b56 cb7e      bit     7,(hl)
2b58 e5        push    hl
2b59 2824      jr      z,2b7fh
2b5b cdb52d    call    2db5h
2b5e 301f      jr      nc,2b7fh
2b60 2a3042    ld      hl,(4230h)
2b63 b7        or      a
2b64 ed42      sbc     hl,bc
2b66 3817      jr      c,2b7fh
2b68 60        ld      h,b
2b69 69        ld      l,c
2b6a 19        add     hl,de
2b6b 44        ld      b,h
2b6c 4d        ld      c,l
2b6d e1        pop     hl
2b6e e5        push    hl
2b6f 23        inc     hl
2b70 71        ld      (hl),c
2b71 23        inc     hl
2b72 70        ld      (hl),b
2b73 23        inc     hl
2b74 e5        push    hl
2b75 cd4d28    call    284dh
2b78 19        add     hl,de
2b79 44        ld      b,h
2b7a 4d        ld      c,l
2b7b e1        pop     hl
2b7c 71        ld      (hl),c
2b7d 23        inc     hl
2b7e 70        ld      (hl),b
2b7f e1        pop     hl
2b80 cd3428    call    2834h
2b83 c1        pop     bc
2b84 10cf      djnz    2b55h
2b86 c9        ret     

2b87 cdce19    call    19ceh
2b8a 215c41    ld      hl,415ch
2b8d ae        xor     (hl)
2b8e 77        ld      (hl),a
2b8f cd8d27    call    278dh
2b92 21872b    ld      hl,2b87h
2b95 0e01      ld      c,01h
2b97 c38f19    jp      198fh
2b9a 21632a    ld      hl,2a63h
2b9d 0e00      ld      c,00h
2b9f 18f6      jr      2b97h
2ba1 21d12c    ld      hl,2cd1h
2ba4 0e01      ld      c,01h
2ba6 18ef      jr      2b97h
2ba8 215b41    ld      hl,415bh
2bab cb6e      bit     5,(hl)
2bad c8        ret     z

2bae cbae      res     5,(hl)
2bb0 4e        ld      c,(hl)
2bb1 213542    ld      hl,4235h
2bb4 0603      ld      b,03h
2bb6 1601      ld      d,01h
2bb8 cb7e      bit     7,(hl)
2bba 2804      jr      z,2bc0h
2bbc 7a        ld      a,d
2bbd a1        and     c
2bbe 2807      jr      z,2bc7h
2bc0 cb22      sla     d
2bc2 cd3428    call    2834h
2bc5 10f1      djnz    2bb8h
2bc7 79        ld      a,c
2bc8 b2        or      d
2bc9 23        inc     hl
2bca 23        inc     hl
2bcb eb        ex      de,hl
2bcc ed4b6741  ld      bc,(4167h)
2bd0 2a5d41    ld      hl,(415dh)
2bd3 b7        or      a
2bd4 ed42      sbc     hl,bc
2bd6 286a      jr      z,2c42h
2bd8 325b41    ld      (415bh),a
2bdb c5        push    bc
2bdc e1        pop     hl
2bdd 226b41    ld      (416bh),hl
2be0 2b        dec     hl
2be1 eb        ex      de,hl
2be2 cd4728    call    2847h
2be5 cdca24    call    24cah
2be8 cd151b    call    1b15h
2beb 1855      jr      2c42h
2bed cd7917    call    1779h
2bf0 28b6      jr      z,2ba8h
2bf2 e5        push    hl
2bf3 3a3242    ld      a,(4232h)
2bf6 cdbe19    call    19beh
2bf9 e3        ex      (sp),hl
2bfa cb5e      bit     3,(hl)
2bfc cb9e      res     3,(hl)
2bfe e1        pop     hl
2bff e5        push    hl
2c00 c4202b    call    nz,2b20h
2c03 cdc02d    call    2dc0h
2c06 eb        ex      de,hl
2c07 e1        pop     hl
2c08 223042    ld      (4230h),hl
2c0b ed4b3342  ld      bc,(4233h)
2c0f 2a6741    ld      hl,(4167h)
2c12 b7        or      a
2c13 ed42      sbc     hl,bc
2c15 282b      jr      z,2c42h
2c17 eb        ex      de,hl
2c18 d7        rst     10h
2c19 2802      jr      z,2c1dh
2c1b 3006      jr      nc,2c23h
2c1d cd8c17    call    178ch
2c20 c35426    jp      2654h
2c23 2afa43    ld      hl,(43fah)
2c26 42        ld      b,d
2c27 4b        ld      c,e
2c28 d7        rst     10h
2c29 22fa43    ld      (43fah),hl
2c2c 23        inc     hl
2c2d e5        push    hl
2c2e eb        ex      de,hl
2c2f 2a3342    ld      hl,(4233h)
2c32 edb0      ldir    
2c34 1b        dec     de
2c35 2a3042    ld      hl,(4230h)
2c38 cbfe      set     7,(hl)
2c3a c1        pop     bc
2c3b 23        inc     hl
2c3c 71        ld      (hl),c
2c3d 23        inc     hl
2c3e 70        ld      (hl),b
2c3f cd4728    call    2847h
2c42 cd8c17    call    178ch
2c45 c38d27    jp      278dh
2c48 215b41    ld      hl,415bh
2c4b cb46      bit     0,(hl)
2c4d c8        ret     z

2c4e 213542    ld      hl,4235h
2c51 cd922c    call    2c92h
2c54 cd4228    call    2842h
2c57 e5        push    hl
2c58 215841    ld      hl,4158h
2c5b cb46      bit     0,(hl)
2c5d 2005      jr      nz,2c64h
2c5f cd122d    call    2d12h
2c62 1807      jr      2c6bh
2c64 216100    ld      hl,0061h
2c67 19        add     hl,de
2c68 226d41    ld      (416dh),hl
2c6b e1        pop     hl
2c6c cd4228    call    2842h
2c6f eb        ex      de,hl
2c70 cd0f28    call    280fh
2c73 227141    ld      (4171h),hl
2c76 226f41    ld      (416fh),hl
2c79 c39e17    jp      179eh
2c7c 215b41    ld      hl,415bh
2c7f cb4e      bit     1,(hl)
2c81 c8        ret     z

2c82 213a42    ld      hl,423ah
2c85 18ca      jr      2c51h
2c87 215b41    ld      hl,415bh
2c8a cb56      bit     2,(hl)
2c8c c8        ret     z

2c8d 213f42    ld      hl,423fh
2c90 18bf      jr      2c51h
2c92 e5        push    hl
2c93 cd9817    call    1798h
2c96 e1        pop     hl
2c97 c8        ret     z

2c98 e1        pop     hl
2c99 c36026    jp      2660h
2c9c f5        push    af
2c9d cdbe19    call    19beh
2ca0 cd4228    call    2842h
2ca3 ed536d41  ld      (416dh),de
2ca7 cd6c2c    call    2c6ch
2caa cdb426    call    26b4h
2cad e1        pop     hl
2cae 3e9e      ld      a,9eh
2cb0 df        rst     18h
2cb1 200d      jr      nz,2cc0h
2cb3 3e97      ld      a,97h
2cb5 df        rst     18h
2cb6 c2aa17    jp      nz,17aah
2cb9 7c        ld      a,h
2cba df        rst     18h
2cbb 20f1      jr      nz,2caeh
2cbd c37d16    jp      167dh
2cc0 7c        ld      a,h
2cc1 cdce2d    call    2dceh
2cc4 cdbe19    call    19beh
2cc7 cbbe      res     7,(hl)
2cc9 cd7917    call    1779h
2ccc cbde      set     3,(hl)
2cce c3572a    jp      2a57h
2cd1 cdce19    call    19ceh
2cd4 21bd40    ld      hl,40bdh
2cd7 eb        ex      de,hl
2cd8 c36e2a    jp      2a6eh
2cdb cd922c    call    2c92h
2cde 3a5841    ld      a,(4158h)
2ce1 cb5f      bit     3,a
2ce3 c25426    jp      nz,2654h
2ce6 2a6741    ld      hl,(4167h)
2ce9 ed5b5d41  ld      de,(415dh)
2ced d7        rst     10h
2cee c8        ret     z

2cef 016100    ld      bc,0061h
2cf2 09        add     hl,bc
2cf3 4d        ld      c,l
2cf4 44        ld      b,h
2cf5 2a6741    ld      hl,(4167h)
2cf8 2b        dec     hl
2cf9 eb        ex      de,hl
2cfa cd2128    call    2821h
2cfd eb        ex      de,hl
2cfe ed5bfa43  ld      de,(43fah)
2d02 d5        push    de
2d03 edb8      lddr    
2d05 13        inc     de
2d06 cd122d    call    2d12h
2d09 215741    ld      hl,4157h
2d0c cbfe      set     7,(hl)
2d0e e1        pop     hl
2d0f c3702c    jp      2c70h
2d12 eb        ex      de,hl
2d13 11bd40    ld      de,40bdh
2d16 016100    ld      bc,0061h
2d19 edb0      ldir    
2d1b 226d41    ld      (416dh),hl
2d1e cdca24    call    24cah
2d21 cd151b    call    1b15h
2d24 3e09      ld      a,09h
2d26 e7        rst     20h
2d27 2ac840    ld      hl,(40c8h)
2d2a 227b41    ld      (417bh),hl
2d2d c9        ret     

2d2e 03        inc     bc
2d2f cdb92d    call    2db9h
2d32 e5        push    hl
2d33 c5        push    bc
2d34 e1        pop     hl
2d35 c1        pop     bc
2d36 e5        push    hl
2d37 d5        push    de
2d38 c5        push    bc
2d39 2802      jr      z,2d3dh
2d3b edb0      ldir    
2d3d c1        pop     bc
2d3e d1        pop     de
2d3f e1        pop     hl
2d40 d7        rst     10h
2d41 f5        push    af
2d42 2802      jr      z,2d46h
2d44 44        ld      b,h
2d45 4d        ld      c,l
2d46 2a6341    ld      hl,(4163h)
2d49 b7        or      a
2d4a ed42      sbc     hl,bc
2d4c 226341    ld      (4163h),hl
2d4f 226141    ld      (4161h),hl
2d52 2a5d41    ld      hl,(415dh)
2d55 ed42      sbc     hl,bc
2d57 225d41    ld      (415dh),hl
2d5a 2a6b41    ld      hl,(416bh)
2d5d ed42      sbc     hl,bc
2d5f 226b41    ld      (416bh),hl
2d62 f1        pop     af
2d63 c9        ret     

2d64 c5        push    bc
2d65 223042    ld      (4230h),hl
2d68 cdb52d    call    2db5h
2d6b d5        push    de
2d6c e1        pop     hl
2d6d b7        or      a
2d6e ed42      sbc     hl,bc
2d70 60        ld      h,b
2d71 69        ld      l,c
2d72 c1        pop     bc
2d73 d0        ret     nc

2d74 b7        or      a
2d75 ed42      sbc     hl,bc
2d77 d5        push    de
2d78 eb        ex      de,hl
2d79 2a3042    ld      hl,(4230h)
2d7c cd4728    call    2847h
2d7f cd4228    call    2842h
2d82 eb        ex      de,hl
2d83 b7        or      a
2d84 ed42      sbc     hl,bc
2d86 eb        ex      de,hl
2d87 72        ld      (hl),d
2d88 2b        dec     hl
2d89 73        ld      (hl),e
2d8a d1        pop     de
2d8b c9        ret     

2d8c 0600      ld      b,00h
2d8e 2a7941    ld      hl,(4179h)
2d91 09        add     hl,bc
2d92 03        inc     bc
2d93 edb9      cpdr    
2d95 79        ld      a,c
2d96 c9        ret     

2d97 215841    ld      hl,4158h
2d9a cb4e      bit     1,(hl)
2d9c 2005      jr      nz,2da3h
2d9e cdc02d    call    2dc0h
2da1 3003      jr      nc,2da6h
2da3 210000    ld      hl,0000h
2da6 cdac27    call    27ach
2da9 212942    ld      hl,4229h
2dac 11a541    ld      de,41a5h
2daf 010400    ld      bc,0004h
2db2 edb0      ldir    
2db4 c9        ret     

2db5 23        inc     hl
2db6 4e        ld      c,(hl)
2db7 23        inc     hl
2db8 46        ld      b,(hl)
2db9 2a6741    ld      hl,(4167h)
2dbc b7        or      a
2dbd ed42      sbc     hl,bc
2dbf c9        ret     

2dc0 11e200    ld      de,00e2h
2dc3 2afa43    ld      hl,(43fah)
2dc6 d7        rst     10h
2dc7 ed5b6741  ld      de,(4167h)
2dcb d7        rst     10h
2dcc c9        ret     

2dcd 79        ld      a,c
2dce 323242    ld      (4232h),a
2dd1 2a6341    ld      hl,(4163h)
2dd4 223342    ld      (4233h),hl
2dd7 c9        ret     

2dd8 cd9817    call    1798h
2ddb c8        ret     z

2ddc af        xor     a
2ddd 322d42    ld      (422dh),a
2de0 3e97      ld      a,97h
2de2 df        rst     18h
2de3 c0        ret     nz

2de4 2a7141    ld      hl,(4171h)
2de7 3e9c      ld      a,9ch
2de9 df        rst     18h
2dea 201e      jr      nz,2e0ah
2dec f7        rst     30h
2ded 2803      jr      z,2df2h
2def 322d42    ld      (422dh),a
2df2 3ea6      ld      a,0a6h
2df4 df        rst     18h
2df5 20e9      jr      nz,2de0h
2df7 3a2d42    ld      a,(422dh)
2dfa 2a6d41    ld      hl,(416dh)
2dfd cd562e    call    2e56h
2e00 2808      jr      z,2e0ah
2e02 cdf527    call    27f5h
2e05 d24426    jp      nc,2644h
2e08 18f3      jr      2dfdh
2e0a 226f41    ld      (416fh),hl
2e0d cd7d16    call    167dh
2e10 183b      jr      2e4dh
2e12 cd9817    call    1798h
2e15 c8        ret     z

2e16 af        xor     a
2e17 322d42    ld      (422dh),a
2e1a 3e97      ld      a,97h
2e1c df        rst     18h
2e1d c0        ret     nz

2e1e 3e9c      ld      a,9ch
2e20 df        rst     18h
2e21 c2aa17    jp      nz,17aah
2e24 f7        rst     30h
2e25 2803      jr      z,2e2ah
2e27 322d42    ld      (422dh),a
2e2a 3ea5      ld      a,0a5h
2e2c df        rst     18h
2e2d 20eb      jr      nz,2e1ah
2e2f 3a2d42    ld      a,(422dh)
2e32 2a6d41    ld      hl,(416dh)
2e35 b7        or      a
2e36 280c      jr      z,2e44h
2e38 cd562e    call    2e56h
2e3b 2807      jr      z,2e44h
2e3d cdf527    call    27f5h
2e40 30c3      jr      nc,2e05h
2e42 18f4      jr      2e38h
2e44 cdf527    call    27f5h
2e47 d2aa17    jp      nc,17aah
2e4a 226d41    ld      (416dh),hl
2e4d cdbe28    call    28beh
2e50 21bd40    ld      hl,40bdh
2e53 cb96      res     2,(hl)
2e55 c9        ret     

2e56 f5        push    af
2e57 7e        ld      a,(hl)
2e58 fe0d      cp      0dh
2e5a 1608      ld      d,08h
2e5c 2801      jr      z,2e5fh
2e5e 57        ld      d,a
2e5f f1        pop     af
2e60 b7        or      a
2e61 c8        ret     z

2e62 ba        cp      d
2e63 c9        ret     

2e64 cdba1c    call    1cbah
2e67 cd4317    call    1743h
2e6a c0        ret     nz

2e6b 21a840    ld      hl,40a8h
2e6e 11a941    ld      de,41a9h
2e71 011800    ld      bc,0018h
2e74 edb0      ldir    
2e76 2a7b41    ld      hl,(417bh)
2e79 e5        push    hl
2e7a 2ac040    ld      hl,(40c0h)
2e7d e5        push    hl
2e7e cd3d0b    call    0b3dh
2e81 cd7117    call    1771h
2e84 215641    ld      hl,4156h
2e87 cbe6      set     4,(hl)
2e89 cbee      set     5,(hl)
2e8b 3ea4      ld      a,0a4h
2e8d df        rst     18h
2e8e 2803      jr      z,2e93h
2e90 f7        rst     30h
2e91 28f8      jr      z,2e8bh
2e93 f5        push    af
2e94 cdfd2f    call    2ffdh
2e97 c1        pop     bc
2e98 b7        or      a
2e99 2838      jr      z,2ed3h
2e9b 78        ld      a,b
2e9c 2a6141    ld      hl,(4161h)
2e9f cd562e    call    2e56h
2ea2 20ef      jr      nz,2e93h
2ea4 cd0f2f    call    2f0fh
2ea7 cdbc10    call    10bch
2eaa ef        rst     28h
2eab 281a      jr      z,2ec7h
2ead fea4      cp      0a4h
2eaf 28cd      jr      z,2e7eh
2eb1 fe84      cp      84h
2eb3 281e      jr      z,2ed3h
2eb5 fe9b      cp      9bh
2eb7 281a      jr      z,2ed3h
2eb9 fe81      cp      81h
2ebb 20ea      jr      nz,2ea7h
2ebd cdfd2f    call    2ffdh
2ec0 cd6630    call    3066h
2ec3 38e2      jr      c,2ea7h
2ec5 18e3      jr      2eaah
2ec7 f7        rst     30h
2ec8 28e0      jr      z,2eaah
2eca fe0e      cp      0eh
2ecc 28b0      jr      z,2e7eh
2ece cd332f    call    2f33h
2ed1 18d7      jr      2eaah
2ed3 e1        pop     hl
2ed4 22c040    ld      (40c0h),hl
2ed7 e1        pop     hl
2ed8 227b41    ld      (417bh),hl
2edb 2aaa40    ld      hl,(40aah)
2ede ed5bab41  ld      de,(41abh)
2ee2 cdfa30    call    30fah
2ee5 2aa840    ld      hl,(40a8h)
2ee8 ed5ba941  ld      de,(41a9h)
2eec cdef30    call    30efh
2eef 21ad41    ld      hl,41adh
2ef2 119141    ld      de,4191h
2ef5 011000    ld      bc,0010h
2ef8 edb0      ldir    
2efa 11bc40    ld      de,40bch
2efd 0e04      ld      c,04h
2eff edb0      ldir    
2f01 2a6741    ld      hl,(4167h)
2f04 cd2a28    call    282ah
2f07 cd7517    call    1775h
2f0a 215641    ld      hl,4156h
2f0d cbae      res     5,(hl)
2f0f 215641    ld      hl,4156h
2f12 cba6      res     4,(hl)
2f14 3e9b      ld      a,9bh
2f16 df        rst     18h
2f17 c2a324    jp      nz,24a3h
2f1a c34f0b    jp      0b4fh
2f1d cdfd2f    call    2ffdh
2f20 cd6630    call    3066h
2f23 3805      jr      c,2f2ah
2f25 3e81      ld      a,81h
2f27 df        rst     18h
2f28 20f3      jr      nz,2f1dh
2f2a 2a6141    ld      hl,(4161h)
2f2d cd2d28    call    282dh
2f30 c3e51b    jp      1be5h
2f33 cd0c27    call    270ch
2f36 c8        ret     z

2f37 cd6d30    call    306dh
2f3a d8        ret     c

2f3b 47        ld      b,a
2f3c 2a6741    ld      hl,(4167h)
2f3f ed5b6141  ld      de,(4161h)
2f43 b7        or      a
2f44 ed52      sbc     hl,de
2f46 c8        ret     z

2f47 eb        ex      de,hl
2f48 7e        ld      a,(hl)
2f49 fe0f      cp      0fh
2f4b 3809      jr      c,2f56h
2f4d fe80      cp      80h
2f4f d0        ret     nc

2f50 cd6d30    call    306dh
2f53 d8        ret     c

2f54 1847      jr      2f9dh
2f56 fe08      cp      08h
2f58 2804      jr      z,2f5eh
2f5a fe0d      cp      0dh
2f5c 200e      jr      nz,2f6ch
2f5e c5        push    bc
2f5f cdad1c    call    1cadh
2f62 c1        pop     bc
2f63 da8d27    jp      c,278dh
2f66 cd2231    call    3122h
2f69 19        add     hl,de
2f6a 180d      jr      2f79h
2f6c fe0b      cp      0bh
2f6e 3003      jr      nc,2f73h
2f70 fe06      cp      06h
2f72 c0        ret     nz

2f73 cd2231    call    3122h
2f76 d7        rst     10h
2f77 38ea      jr      c,2f63h
2f79 eb        ex      de,hl
2f7a 2a6141    ld      hl,(4161h)
2f7d cd4728    call    2847h
2f80 2a6741    ld      hl,(4167h)
2f83 ed5b6141  ld      de,(4161h)
2f87 e5        push    hl
2f88 d7        rst     10h
2f89 44        ld      b,h
2f8a 4d        ld      c,l
2f8b e1        pop     hl
2f8c 23        inc     hl
2f8d 226741    ld      (4167h),hl
2f90 2b        dec     hl
2f91 54        ld      d,h
2f92 5d        ld      e,l
2f93 2b        dec     hl
2f94 edb8      lddr    
2f96 eb        ex      de,hl
2f97 77        ld      (hl),a
2f98 cd201d    call    1d20h
2f9b 1863      jr      3000h
2f9d c5        push    bc
2f9e cd2e13    call    132eh
2fa1 c1        pop     bc
2fa2 78        ld      a,b
2fa3 e5        push    hl
2fa4 c5        push    bc
2fa5 cd2e13    call    132eh
2fa8 eb        ex      de,hl
2fa9 c1        pop     bc
2faa e1        pop     hl
2fab b9        cp      c
2fac 2006      jr      nz,2fb4h
2fae cd190b    call    0b19h
2fb1 c3231d    jp      1d23h
2fb4 2c        inc     l
2fb5 2d        dec     l
2fb6 201f      jr      nz,2fd7h
2fb8 1c        inc     e
2fb9 1d        dec     e
2fba 281f      jr      z,2fdbh
2fbc fe0f      cp      0fh
2fbe c0        ret     nz

2fbf 79        ld      a,c
2fc0 2a6741    ld      hl,(4167h)
2fc3 ed5b6141  ld      de,(4161h)
2fc7 d7        rst     10h
2fc8 44        ld      b,h
2fc9 4d        ld      c,l
2fca 62        ld      h,d
2fcb 6b        ld      l,e
2fcc 23        inc     hl
2fcd edb0      ldir    
2fcf 1b        dec     de
2fd0 ed536741  ld      (4167h),de
2fd4 c3ff30    jp      30ffh
2fd7 1c        inc     e
2fd8 1d        dec     e
2fd9 28a5      jr      z,2f80h
2fdb e5        push    hl
2fdc d7        rst     10h
2fdd eb        ex      de,hl
2fde e1        pop     hl
2fdf d5        push    de
2fe0 f5        push    af
2fe1 e5        push    hl
2fe2 2a6141    ld      hl,(4161h)
2fe5 7e        ld      a,(hl)
2fe6 70        ld      (hl),b
2fe7 217140    ld      hl,4071h
2fea cbce      set     1,(hl)
2fec cd0931    call    3109h
2fef e1        pop     hl
2ff0 cdec30    call    30ech
2ff3 f1        pop     af
2ff4 cd0931    call    3109h
2ff7 e1        pop     hl
2ff8 cdae2f    call    2faeh
2ffb 1803      jr      3000h
2ffd cd0a30    call    300ah
3000 cd0614    call    1406h
3003 227b41    ld      (417bh),hl
3006 3a2d42    ld      a,(422dh)
3009 c9        ret     

300a af        xor     a
300b 2a5d41    ld      hl,(415dh)
300e ed5b6141  ld      de,(4161h)
3012 d7        rst     10h
3013 3f        ccf     
3014 eb        ex      de,hl
3015 d40e28    call    nc,280eh
3018 322d42    ld      (422dh),a
301b da4426    jp      c,2644h
301e 226141    ld      (4161h),hl
3021 226341    ld      (4163h),hl
3024 fe18      cp      18h
3026 3853      jr      c,307bh
3028 fe1c      cp      1ch
302a 304f      jr      nc,307bh
302c cd6d30    call    306dh
302f 215641    ld      hl,4156h
3032 7e        ld      a,(hl)
3033 cb6f      bit     5,a
3035 f5        push    af
3036 3004      jr      nc,303ch
3038 2802      jr      z,303ch
303a cbe6      set     4,(hl)
303c 3a2d42    ld      a,(422dh)
303f cd810c    call    0c81h
3042 0600      ld      b,00h
3044 04        inc     b
3045 23        inc     hl
3046 7e        ld      a,(hl)
3047 feff      cp      0ffh
3049 20f9      jr      nz,3044h
304b 2b        dec     hl
304c e5        push    hl
304d c5        push    bc
304e 7e        ld      a,(hl)
304f cd7b30    call    307bh
3052 c1        pop     bc
3053 e1        pop     hl
3054 10f5      djnz    304bh
3056 f1        pop     af
3057 325641    ld      (4156h),a
305a 2804      jr      z,3060h
305c cb67      bit     4,a
305e c0        ret     nz

305f d8        ret     c

3060 2a6141    ld      hl,(4161h)
3063 360f      ld      (hl),0fh
3065 c9        ret     

3066 fe10      cp      10h
3068 d8        ret     c

3069 fe80      cp      80h
306b 3f        ccf     
306c d8        ret     c

306d 4f        ld      c,a
306e fe18      cp      18h
3070 3f        ccf     
3071 d0        ret     nc

3072 fe1c      cp      1ch
3074 d0        ret     nc

3075 cda80c    call    0ca8h
3078 07        rlca    
3079 79        ld      a,c
307a c9        ret     

307b fe0f      cp      0fh
307d 3823      jr      c,30a2h
307f fe80      cp      80h
3081 301f      jr      nc,30a2h
3083 cd2e13    call    132eh
3086 e5        push    hl
3087 cd8916    call    1689h
308a e1        pop     hl
308b 205f      jr      nz,30ech
308d eb        ex      de,hl
308e 2a6141    ld      hl,(4161h)
3091 be        cp      (hl)
3092 2008      jr      nz,309ch
3094 7a        ld      a,d
3095 b3        or      e
3096 7e        ld      a,(hl)
3097 360f      ld      (hl),0fh
3099 cac02f    jp      z,2fc0h
309c cdff30    call    30ffh
309f c30030    jp      3000h
30a2 21e915    ld      hl,15e9h
30a5 cd1327    call    2713h
30a8 c0        ret     nz

30a9 e9        jp      (hl)
30aa ee03      xor     03h
30ac 185b      jr      3109h
30ae cdf213    call    13f2h
30b1 cdf730    call    30f7h
30b4 cd1a31    call    311ah
30b7 eb        ex      de,hl
30b8 2a7b41    ld      hl,(417bh)
30bb 22c040    ld      (40c0h),hl
30be 182f      jr      30efh
30c0 3e10      ld      a,10h
30c2 180a      jr      30ceh
30c4 3e80      ld      a,80h
30c6 1806      jr      30ceh
30c8 3e40      ld      a,40h
30ca 1802      jr      30ceh
30cc 3e20      ld      a,20h
30ce 32be40    ld      (40beh),a
30d1 c9        ret     

30d2 3e04      ld      a,04h
30d4 180a      jr      30e0h
30d6 3e01      ld      a,01h
30d8 1806      jr      30e0h
30da 3e02      ld      a,02h
30dc 1802      jr      30e0h
30de 3e03      ld      a,03h
30e0 c39712    jp      1297h
30e3 cde813    call    13e8h
30e6 cd3f17    call    173fh
30e9 cd1a31    call    311ah
30ec 110000    ld      de,0000h
30ef eb        ex      de,hl
30f0 d7        rst     10h
30f1 c3190b    jp      0b19h
30f4 cd1a31    call    311ah
30f7 110000    ld      de,0000h
30fa eb        ex      de,hl
30fb d7        rst     10h
30fc c35d0b    jp      0b5dh
30ff 217140    ld      hl,4071h
3102 cbce      set     1,(hl)
3104 21bf40    ld      hl,40bfh
3107 cbee      set     5,(hl)
3109 cd6c11    call    116ch
310c cd9f0b    call    0b9fh
310f 217140    ld      hl,4071h
3112 cb8e      res     1,(hl)
3114 21bf40    ld      hl,40bfh
3117 cbae      res     5,(hl)
3119 c9        ret     

311a 2a6141    ld      hl,(4161h)
311d cd4228    call    2842h
3120 eb        ex      de,hl
3121 c9        ret     

3122 78        ld      a,b
3123 cd2e13    call    132eh
3126 e5        push    hl
3127 cd1a31    call    311ah
312a d1        pop     de
312b c9        ret     

312c 3eba      ld      a,0bah
312e cd1201    call    0112h
3131 d0        ret     nc

3132 cdef26    call    26efh
3135 eb        ex      de,hl
3136 219d41    ld      hl,419dh
3139 0e0a      ld      c,0ah
313b edb0      ldir    
313d ed5b6b41  ld      de,(416bh)
3141 2a6741    ld      hl,(4167h)
3144 cdd131    call    31d1h
3147 183c      jr      3185h
3149 3ebb      ld      a,0bbh
314b cd1201    call    0112h
314e d0        ret     nc

314f 119d41    ld      de,419dh
3152 219f41    ld      hl,419fh
3155 010500    ld      bc,0005h
3158 edb0      ldir    
315a eb        ex      de,hl
315b 36bb      ld      (hl),0bbh
315d 23        inc     hl
315e 363a      ld      (hl),3ah
3160 cdb126    call    26b1h
3163 cdca31    call    31cah
3166 ed5b6341  ld      de,(4163h)
316a d5        push    de
316b 2afa43    ld      hl,(43fah)
316e 2b        dec     hl
316f cd1332    call    3213h
3172 d1        pop     de
3173 3010      jr      nc,3185h
3175 e5        push    hl
3176 d7        rst     10h
3177 44        ld      b,h
3178 4d        ld      c,l
3179 e1        pop     hl
317a 03        inc     bc
317b cdfe2c    call    2cfeh
317e 2afa43    ld      hl,(43fah)
3181 2b        dec     hl
3182 227141    ld      (4171h),hl
3185 c38d27    jp      278dh
3188 57        ld      d,a
3189 d5        push    de
318a cdaa17    call    17aah
318d cdfe26    call    26feh
3190 72        ld      (hl),d
3191 23        inc     hl
3192 369b      ld      (hl),9bh
3194 e5        push    hl
3195 cdb126    call    26b1h
3198 cdbc10    call    10bch
319b e1        pop     hl
319c 0605      ld      b,05h
319e e5        push    hl
319f c5        push    bc
31a0 cdb126    call    26b1h
31a3 ef        rst     28h
31a4 2010      jr      nz,31b6h
31a6 f7        rst     30h
31a7 c40c27    call    nz,270ch
31aa c1        pop     bc
31ab e1        pop     hl
31ac 28f0      jr      z,319eh
31ae 23        inc     hl
31af 77        ld      (hl),a
31b0 10ec      djnz    319eh
31b2 2b        dec     hl
31b3 04        inc     b
31b4 18e8      jr      319eh
31b6 c1        pop     bc
31b7 e1        pop     hl
31b8 d1        pop     de
31b9 fe97      cp      97h
31bb c8        ret     z

31bc fe81      cp      81h
31be 28c9      jr      z,3189h
31c0 fe9c      cp      9ch
31c2 2803      jr      z,31c7h
31c4 d5        push    de
31c5 18d7      jr      319eh
31c7 cd8d27    call    278dh
31ca 0e96      ld      c,96h
31cc cdde27    call    27deh
31cf 37        scf     
31d0 c9        ret     

31d1 f3        di      
31d2 223042    ld      (4230h),hl
31d5 d5        push    de
31d6 cd9733    call    3397h
31d9 219f41    ld      hl,419fh
31dc 11aaaa    ld      de,0aaaah
31df cdbf32    call    32bfh
31e2 cdca31    call    31cah
31e5 d1        pop     de
31e6 2a3042    ld      hl,(4230h)
31e9 012000    ld      bc,0020h
31ec ed42      sbc     hl,bc
31ee d7        rst     10h
31ef 380a      jr      c,31fbh
31f1 eb        ex      de,hl
31f2 110000    ld      de,0000h
31f5 cdbf32    call    32bfh
31f8 eb        ex      de,hl
31f9 18eb      jr      31e6h
31fb 09        add     hl,bc
31fc 7d        ld      a,l
31fd cdef26    call    26efh
3200 b7        or      a
3201 2808      jr      z,320bh
3203 4f        ld      c,a
3204 77        ld      (hl),a
3205 e5        push    hl
3206 23        inc     hl
3207 eb        ex      de,hl
3208 edb0      ldir    
320a e1        pop     hl
320b 11eeee    ld      de,0eeeeh
320e cdbf32    call    32bfh
3211 fb        ei      
3212 c9        ret     

3213 f3        di      
3214 223042    ld      (4230h),hl
3217 21bd40    ld      hl,40bdh
321a cbf6      set     6,(hl)
321c d5        push    de
321d 21ce41    ld      hl,41ceh
3220 cdf532    call    32f5h
3223 d2b632    jp      nc,32b6h
3226 21aaaa    ld      hl,0aaaah
3229 d7        rst     10h
322a 2020      jr      nz,324ch
322c 21ce41    ld      hl,41ceh
322f e5        push    hl
3230 11a441    ld      de,41a4h
3233 010500    ld      bc,0005h
3236 edb0      ldir    
3238 cdb126    call    26b1h
323b cd1211    call    1112h
323e e1        pop     hl
323f 119d41    ld      de,419dh
3242 0605      ld      b,05h
3244 1a        ld      a,(de)
3245 be        cp      (hl)
3246 2004      jr      nz,324ch
3248 23        inc     hl
3249 13        inc     de
324a 10f8      djnz    3244h
324c d1        pop     de
324d 20cd      jr      nz,321ch
324f 2a3042    ld      hl,(4230h)
3252 012000    ld      bc,0020h
3255 ed42      sbc     hl,bc
3257 d7        rst     10h
3258 d5        push    de
3259 3006      jr      nc,3261h
325b 09        add     hl,bc
325c 4d        ld      c,l
325d 11ce41    ld      de,41ceh
3260 d5        push    de
3261 f5        push    af
3262 eb        ex      de,hl
3263 c5        push    bc
3264 cdf532    call    32f5h
3267 3048      jr      nc,32b1h
3269 2807      jr      z,3272h
326b e5        push    hl
326c 215841    ld      hl,4158h
326f cbfe      set     7,(hl)
3271 e1        pop     hl
3272 eb        ex      de,hl
3273 01eeee    ld      bc,0eeeeh
3276 b7        or      a
3277 ed42      sbc     hl,bc
3279 c1        pop     bc
327a 2807      jr      z,3283h
327c f1        pop     af
327d e1        pop     hl
327e 30cf      jr      nc,324fh
3280 d1        pop     de
3281 180b      jr      328eh
3283 f1        pop     af
3284 e1        pop     hl
3285 7e        ld      a,(hl)
3286 300f      jr      nc,3297h
3288 d1        pop     de
3289 b9        cp      c
328a 280d      jr      z,3299h
328c 380b      jr      c,3299h
328e cd9e32    call    329eh
3291 e5        push    hl
3292 cd5426    call    2654h
3295 e1        pop     hl
3296 c9        ret     

3297 54        ld      d,h
3298 5d        ld      e,l
3299 b7        or      a
329a 2804      jr      z,32a0h
329c 23        inc     hl
329d 4f        ld      c,a
329e edb0      ldir    
32a0 d5        push    de
32a1 cdb832    call    32b8h
32a4 215841    ld      hl,4158h
32a7 cb7e      bit     7,(hl)
32a9 cbbe      res     7,(hl)
32ab c46426    call    nz,2664h
32ae e1        pop     hl
32af 37        scf     
32b0 c9        ret     

32b1 c1        pop     bc
32b2 f1        pop     af
32b3 e1        pop     hl
32b4 1802      jr      32b8h
32b6 d1        pop     de
32b7 b7        or      a
32b8 21bd40    ld      hl,40bdh
32bb cbb6      res     6,(hl)
32bd fb        ei      
32be c9        ret     

32bf d5        push    de
32c0 d5        push    de
32c1 dde1      pop     ix
32c3 110e00    ld      de,000eh
32c6 cd9a33    call    339ah
32c9 cda333    call    33a3h
32cc cda333    call    33a3h
32cf d1        pop     de
32d0 061f      ld      b,1fh
32d2 10fe      djnz    32d2h
32d4 cd6033    call    3360h
32d7 061a      ld      b,1ah
32d9 10fe      djnz    32d9h
32db 0610      ld      b,10h
32dd c5        push    bc
32de 5e        ld      e,(hl)
32df 23        inc     hl
32e0 56        ld      d,(hl)
32e1 23        inc     hl
32e2 dd19      add     ix,de
32e4 cd6033    call    3360h
32e7 0619      ld      b,19h
32e9 10fe      djnz    32e9h
32eb c1        pop     bc
32ec 10ef      djnz    32ddh
32ee e3        ex      (sp),hl
32ef e3        ex      (sp),hl
32f0 dde5      push    ix
32f2 d1        pop     de
32f3 186b      jr      3360h
32f5 cdb233    call    33b2h
32f8 cdc433    call    33c4h
32fb d0        ret     nc

32fc cdbc33    call    33bch
32ff 1607      ld      d,07h
3301 060e      ld      b,0eh
3303 10fe      djnz    3303h
3305 cdb233    call    33b2h
3308 1e0d      ld      e,0dh
330a cdb233    call    33b2h
330d 20e6      jr      nz,32f5h
330f 1d        dec     e
3310 20f8      jr      nz,330ah
3312 1e16      ld      e,16h
3314 1d        dec     e
3315 28de      jr      z,32f5h
3317 db11      in      a,(11h)
3319 a9        xor     c
331a cb77      bit     6,a
331c 28f6      jr      z,3314h
331e 15        dec     d
331f 20e0      jr      nz,3301h
3321 cdbc33    call    33bch
3324 0672      ld      b,72h
3326 10fe      djnz    3326h
3328 cdb233    call    33b2h
332b 20f4      jr      nz,3321h
332d cdbc33    call    33bch
3330 0634      ld      b,34h
3332 10fe      djnz    3332h
3334 cd7c33    call    337ch
3337 062e      ld      b,2eh
3339 10fe      djnz    3339h
333b d5        push    de
333c d5        push    de
333d dde1      pop     ix
333f 1610      ld      d,10h
3341 d5        push    de
3342 cd7c33    call    337ch
3345 062c      ld      b,2ch
3347 10fe      djnz    3347h
3349 73        ld      (hl),e
334a 23        inc     hl
334b 72        ld      (hl),d
334c 23        inc     hl
334d dd19      add     ix,de
334f d1        pop     de
3350 15        dec     d
3351 20ee      jr      nz,3341h
3353 dde5      push    ix
3355 cd7c33    call    337ch
3358 eb        ex      de,hl
3359 c1        pop     bc
335a ed42      sbc     hl,bc
335c eb        ex      de,hl
335d d1        pop     de
335e 37        scf     
335f c9        ret     

3360 0e10      ld      c,10h
3362 cb3a      srl     d
3364 cb1b      rr      e
3366 d4ab33    call    nc,33abh
3369 0622      ld      b,22h
336b 3002      jr      nc,336fh
336d 0625      ld      b,25h
336f 10fe      djnz    336fh
3371 cdab33    call    33abh
3374 0d        dec     c
3375 c8        ret     z

3376 0620      ld      b,20h
3378 10fe      djnz    3378h
337a 18e6      jr      3362h
337c 0610      ld      b,10h
337e 1806      jr      3386h
3380 c5        push    bc
3381 0634      ld      b,34h
3383 10fe      djnz    3383h
3385 c1        pop     bc
3386 cdb233    call    33b2h
3389 37        scf     
338a 2001      jr      nz,338dh
338c af        xor     a
338d cb1a      rr      d
338f cb1b      rr      e
3391 cdbc33    call    33bch
3394 10ea      djnz    3380h
3396 c9        ret     

3397 11000c    ld      de,0c00h
339a cda733    call    33a7h
339d 1b        dec     de
339e 7b        ld      a,e
339f b2        or      d
33a0 20f8      jr      nz,339ah
33a2 c9        ret     

33a3 0649      ld      b,49h
33a5 1802      jr      33a9h
33a7 0697      ld      b,97h
33a9 10fe      djnz    33a9h
33ab db11      in      a,(11h)
33ad ee80      xor     80h
33af d311      out     (11h),a
33b1 c9        ret     

33b2 db11      in      a,(11h)
33b4 a9        xor     c
33b5 cb77      bit     6,a
33b7 f5        push    af
33b8 a9        xor     c
33b9 4f        ld      c,a
33ba f1        pop     af
33bb c9        ret     

33bc db11      in      a,(11h)
33be a9        xor     c
33bf cb77      bit     6,a
33c1 28f9      jr      z,33bch
33c3 c9        ret     

33c4 e5        push    hl
33c5 c5        push    bc
33c6 3e97      ld      a,97h
33c8 df        rst     18h
33c9 c1        pop     bc
33ca e1        pop     hl
33cb c0        ret     nz

33cc cdb233    call    33b2h
33cf 28f3      jr      z,33c4h
33d1 37        scf     
33d2 c9        ret     

33d3 210e42    ld      hl,420eh
33d6 227741    ld      (4177h),hl
33d9 cd8037    call    3780h
33dc cdd516    call    16d5h
33df cdc316    call    16c3h
33e2 218034    ld      hl,3480h
33e5 225840    ld      (4058h),hl
33e8 21e637    ld      hl,37e6h
33eb 11ce41    ld      de,41ceh
33ee 010e00    ld      bc,000eh
33f1 edb0      ldir    
33f3 3e03      ld      a,03h
33f5 d314      out     (14h),a
33f7 1e00      ld      e,00h
33f9 0e1b      ld      c,1bh
33fb 21f437    ld      hl,37f4h
33fe 060c      ld      b,0ch
3400 edb3      otir    
3402 3e10      ld      a,10h
3404 ed79      out     (c),a
3406 ed78      in      a,(c)
3408 e610      and     10h
340a 0f        rrca    
340b 0f        rrca    
340c 325941    ld      (4159h),a
340f 01e808    ld      bc,08e8h
3412 79        ld      a,c
3413 c5        push    bc
3414 d5        push    de
3415 df        rst     18h
3416 d1        pop     de
3417 c1        pop     bc
3418 37        scf     
3419 2001      jr      nz,341ch
341b b7        or      a
341c cb13      rl      e
341e 0c        inc     c
341f 10f1      djnz    3412h
3421 7b        ld      a,e
3422 325a41    ld      (415ah),a
3425 cb7f      bit     7,a
3427 21db41    ld      hl,41dbh
342a 2806      jr      z,3432h
342c cbfe      set     7,(hl)
342e 2b        dec     hl
342f 2b        dec     hl
3430 cbf6      set     6,(hl)
3432 cde037    call    37e0h
3435 2805      jr      z,343ch
3437 21d941    ld      hl,41d9h
343a cbfe      set     7,(hl)
343c 21d541    ld      hl,41d5h
343f 5f        ld      e,a
3440 e60f      and     0fh
3442 b6        or      (hl)
3443 77        ld      (hl),a
3444 7b        ld      a,e
3445 e670      and     70h
3447 cb6f      bit     5,a
3449 200f      jr      nz,345ah
344b cbf6      set     6,(hl)
344d fe20      cp      20h
344f 3011      jr      nc,3462h
3451 1657      ld      d,57h
3453 b7        or      a
3454 2814      jr      z,346ah
3456 1640      ld      d,40h
3458 1810      jr      346ah
345a cbfe      set     7,(hl)
345c cb67      bit     4,a
345e 2002      jr      nz,3462h
3460 cbf6      set     6,(hl)
3462 1608      ld      d,08h
3464 fe50      cp      50h
3466 3802      jr      c,346ah
3468 1601      ld      d,01h
346a 21d041    ld      hl,41d0h
346d 72        ld      (hl),d
346e 2b        dec     hl
346f 2b        dec     hl
3470 0e14      ld      c,14h
3472 46        ld      b,(hl)
3473 23        inc     hl
3474 edb3      otir    
3476 0e1a      ld      c,1ah
3478 46        ld      b,(hl)
3479 23        inc     hl
347a edb3      otir    
347c cd1c37    call    371ch
347f c9        ret     

3480 f3        di      
3481 f5        push    af
3482 c5        push    bc
3483 d5        push    de
3484 e5        push    hl
3485 fb        ei      
3486 3e01      ld      a,01h
3488 d31a      out     (1ah),a
348a db1a      in      a,(1ah)
348c e670      and     70h
348e 2817      jr      z,34a7h
3490 4f        ld      c,a
3491 3e3f      ld      a,3fh
3493 cd6c37    call    376ch
3496 cb69      bit     5,c
3498 2809      jr      z,34a3h
349a cd9037    call    3790h
349d cd9037    call    3790h
34a0 cd9037    call    3790h
34a3 3e30      ld      a,30h
34a5 d31a      out     (1ah),a
34a7 cd9037    call    3790h
34aa f3        di      
34ab e1        pop     hl
34ac d1        pop     de
34ad c1        pop     bc
34ae f1        pop     af
34af c31e02    jp      021eh
34b2 cd7937    call    3779h
34b5 215941    ld      hl,4159h
34b8 cb7f      bit     7,a
34ba 2803      jr      z,34bfh
34bc cb9e      res     3,(hl)
34be c9        ret     

34bf cb56      bit     2,(hl)
34c1 c0        ret     nz

34c2 cb67      bit     4,a
34c4 cb9e      res     3,(hl)
34c6 c8        ret     z

34c7 cbde      set     3,(hl)
34c9 c9        ret     

34ca cdb234    call    34b2h
34cd f3        di      
34ce ed5b7341  ld      de,(4173h)
34d2 21ce41    ld      hl,41ceh
34d5 d7        rst     10h
34d6 ca9135    jp      z,3591h
34d9 2a7541    ld      hl,(4175h)
34dc eb        ex      de,hl
34dd d7        rst     10h
34de 2852      jr      z,3532h
34e0 7c        ld      a,h
34e1 b7        or      a
34e2 2017      jr      nz,34fbh
34e4 7d        ld      a,l
34e5 fe05      cp      05h
34e7 3012      jr      nc,34fbh
34e9 44        ld      b,h
34ea 4d        ld      c,l
34eb 21ce41    ld      hl,41ceh
34ee 227541    ld      (4175h),hl
34f1 eb        ex      de,hl
34f2 edb0      ldir    
34f4 ed537341  ld      (4173h),de
34f8 cdfb36    call    36fbh
34fb fb        ei      
34fc 2a7541    ld      hl,(4175h)
34ff 7e        ld      a,(hl)
3500 23        inc     hl
3501 227541    ld      (4175h),hl
3504 215941    ld      hl,4159h
3507 cb6e      bit     5,(hl)
3509 281e      jr      z,3529h
350b cbae      res     5,(hl)
350d ed4bb200  ld      bc,(00b2h)
3511 41        ld      b,c
3512 2ab600    ld      hl,(00b6h)
3515 be        cp      (hl)
3516 2807      jr      z,351fh
3518 23        inc     hl
3519 10fa      djnz    3515h
351b 3e3f      ld      a,3fh
351d 1833      jr      3552h
351f 79        ld      a,c
3520 90        sub     b
3521 2ab800    ld      hl,(00b8h)
3524 cd8a37    call    378ah
3527 1829      jr      3552h
3529 fe1b      cp      1bh
352b 200e      jr      nz,353bh
352d cbee      set     5,(hl)
352f c3cd34    jp      34cdh
3532 cd8037    call    3780h
3535 fb        ei      
3536 cdfb36    call    36fbh
3539 1826      jr      3561h
353b fe0a      cp      0ah
353d f5        push    af
353e ccba1c    call    z,1cbah
3541 f1        pop     af
3542 2ab600    ld      hl,(00b6h)
3545 2b        dec     hl
3546 018000    ld      bc,0080h
3549 b7        or      a
354a c8        ret     z

354b edb9      cpdr    
354d 3e0f      ld      a,0fh
354f 2001      jr      nz,3552h
3551 79        ld      a,c
3552 182b      jr      357fh
3554 2821      jr      z,3577h
3556 fea1      cp      0a1h
3558 281d      jr      z,3577h
355a fe03      cp      03h
355c 281e      jr      z,357ch
355e cd5b1b    call    1b5bh
3561 cd9a35    call    359ah
3564 3e9b      ld      a,9bh
3566 df        rst     18h
3567 c2a324    jp      nz,24a3h
356a cdc916    call    16c9h
356d c8        ret     z

356e f5        push    af
356f 3e87      ld      a,87h
3571 df        rst     18h
3572 c42e18    call    nz,182eh
3575 f1        pop     af
3576 c9        ret     

3577 cd4e20    call    204eh
357a 18e5      jr      3561h
357c c3a324    jp      24a3h
357f 321e42    ld      (421eh),a
3582 321f42    ld      (421fh),a
3585 2a7b41    ld      hl,(417bh)
3588 227340    ld      (4073h),hl
358b fea0      cp      0a0h
358d 18c5      jr      3554h
358f ff        rst     38h
3590 ff        rst     38h
3591 fb        ei      
3592 cdfb36    call    36fbh
3595 18ca      jr      3561h
3597 cd2136    call    3621h
359a 2a7741    ld      hl,(4177h)
359d 110e42    ld      de,420eh
35a0 d7        rst     10h
35a1 c8        ret     z

35a2 d8        ret     c

35a3 1a        ld      a,(de)
35a4 e5        push    hl
35a5 d5        push    de
35a6 cdb935    call    35b9h
35a9 d1        pop     de
35aa c1        pop     bc
35ab d8        ret     c

35ac 0d        dec     c
35ad 2805      jr      z,35b4h
35af 210f42    ld      hl,420fh
35b2 edb0      ldir    
35b4 eb        ex      de,hl
35b5 227741    ld      (4177h),hl
35b8 c9        ret     

35b9 57        ld      d,a
35ba 21b440    ld      hl,40b4h
35bd 7e        ld      a,(hl)
35be feba      cp      0bah
35c0 2803      jr      z,35c5h
35c2 32bc40    ld      (40bch),a
35c5 36ba      ld      (hl),0bah
35c7 cdb234    call    34b2h
35ca cb5e      bit     3,(hl)
35cc 7a        ld      a,d
35cd 57        ld      d,a
35ce 2815      jr      z,35e5h
35d0 db1a      in      a,(1ah)
35d2 cb7f      bit     7,a
35d4 200f      jr      nz,35e5h
35d6 cb57      bit     2,a
35d8 280b      jr      z,35e5h
35da 7a        ld      a,d
35db d318      out     (18h),a
35dd 3abc40    ld      a,(40bch)
35e0 32b440    ld      (40b4h),a
35e3 b7        or      a
35e4 c9        ret     

35e5 7a        ld      a,d
35e6 37        scf     
35e7 c9        ret     

35e8 fe87      cp      87h
35ea ca2e18    jp      z,182eh
35ed cdd737    call    37d7h
35f0 3825      jr      c,3617h
35f2 f5        push    af
35f3 3e97      ld      a,97h
35f5 cd112a    call    2a11h
35f8 3e1b      ld      a,1bh
35fa cdd737    call    37d7h
35fd f1        pop     af
35fe cdd737    call    37d7h
3601 6f        ld      l,a
3602 df        rst     18h
3603 7d        ld      a,l
3604 20fb      jr      nz,3601h
3606 c9        ret     

3607 ef        rst     28h
3608 20de      jr      nz,35e8h
360a f7        rst     30h
360b 2002      jr      nz,360fh
360d b7        or      a
360e c8        ret     z

360f cd112a    call    2a11h
3612 cdce37    call    37ceh
3615 301c      jr      nc,3633h
3617 f5        push    af
3618 cd9a35    call    359ah
361b cdc11c    call    1cc1h
361e f1        pop     af
361f 18f1      jr      3612h
3621 cdb316    call    16b3h
3624 c0        ret     nz

3625 cdce37    call    37ceh
3628 d8        ret     c

3629 cdca1c    call    1ccah
362c c8        ret     z

362d cde627    call    27e6h
3630 225f41    ld      (415fh),hl
3633 2ab800    ld      hl,(00b8h)
3636 ed4bb200  ld      bc,(00b2h)
363a edb1      cpir    
363c 201a      jr      nz,3658h
363e 3e1b      ld      a,1bh
3640 cdd737    call    37d7h
3643 0c        inc     c
3644 3ab200    ld      a,(00b2h)
3647 91        sub     c
3648 2ab600    ld      hl,(00b6h)
364b cd8a37    call    378ah
364e cdd737    call    37d7h
3651 fe0a      cp      0ah
3653 3e0d      ld      a,0dh
3655 28f7      jr      z,364eh
3657 c9        ret     

3658 fe87      cp      87h
365a 2815      jr      z,3671h
365c fe80      cp      80h
365e d0        ret     nc

365f 2ab400    ld      hl,(00b4h)
3662 cd8a37    call    378ah
3665 b7        or      a
3666 c8        ret     z

3667 feff      cp      0ffh
3669 20e3      jr      nz,364eh
366b 00        nop     
366c 00        nop     
366d 00        nop     
366e 00        nop     
366f 00        nop     
3670 00        nop     
3671 2a5f41    ld      hl,(415fh)
3674 cd5728    call    2857h
3677 2e0f      ld      l,0fh
3679 cb7a      bit     7,d
367b 2805      jr      z,3682h
367d cda706    call    06a7h
3680 2e0e      ld      l,0eh
3682 eb        ex      de,hl
3683 cd1422    call    2214h
3686 2d        dec     l
3687 c8        ret     z

3688 45        ld      b,l
3689 4b        ld      c,e
368a 79        ld      a,c
368b c5        push    bc
368c cd1236    call    3612h
368f cd9a35    call    359ah
3692 38fb      jr      c,368fh
3694 c1        pop     bc
3695 10f3      djnz    368ah
3697 c9        ret     

3698 cdc916    call    16c9h
369b 2810      jr      z,36adh
369d cba7      res     4,a
369f cd6037    call    3760h
36a2 cd1c37    call    371ch
36a5 cb66      bit     4,(hl)
36a7 ccd516    call    z,16d5h
36aa c3e618    jp      18e6h
36ad f3        di      
36ae cd8037    call    3780h
36b1 fb        ei      
36b2 cd7937    call    3779h
36b5 cb47      bit     0,a
36b7 2804      jr      z,36bdh
36b9 db18      in      a,(18h)
36bb 18f5      jr      36b2h
36bd cde037    call    37e0h
36c0 c46037    call    nz,3760h
36c3 3e30      ld      a,30h
36c5 d31a      out     (1ah),a
36c7 cdcf16    call    16cfh
36ca 18de      jr      36aah
36cc cdb716    call    16b7h
36cf 280c      jr      z,36ddh
36d1 cdc316    call    16c3h
36d4 210e42    ld      hl,420eh
36d7 227741    ld      (4177h),hl
36da c3c818    jp      18c8h
36dd cd7937    call    3779h
36e0 cb57      bit     2,a
36e2 280d      jr      z,36f1h
36e4 215941    ld      hl,4159h
36e7 cb5e      bit     3,(hl)
36e9 200b      jr      nz,36f6h
36eb cb56      bit     2,(hl)
36ed 2802      jr      z,36f1h
36ef cb6f      bit     5,a
36f1 ca6426    jp      z,2664h
36f4 cbde      set     3,(hl)
36f6 cdbd16    call    16bdh
36f9 18d9      jr      36d4h
36fb cdc916    call    16c9h
36fe c8        ret     z

36ff 215941    ld      hl,4159h
3702 cb66      bit     4,(hl)
3704 c0        ret     nz

3705 f5        push    af
3706 cde037    call    37e0h
3709 2832      jr      z,373dh
370b 3e11      ld      a,11h
370d cd2d37    call    372dh
3710 384c      jr      c,375eh
3712 f1        pop     af
3713 cbe6      set     4,(hl)
3715 c9        ret     

3716 215941    ld      hl,4159h
3719 cb66      bit     4,(hl)
371b c8        ret     z

371c f5        push    af
371d cde037    call    37e0h
3720 2824      jr      z,3746h
3722 3e13      ld      a,13h
3724 cd2d37    call    372dh
3727 3835      jr      c,375eh
3729 f1        pop     af
372a cba6      res     4,(hl)
372c c9        ret     

372d c5        push    bc
372e 47        ld      b,a
372f cd7937    call    3779h
3732 cb67      bit     4,a
3734 78        ld      a,b
3735 c1        pop     bc
3736 37        scf     
3737 d5        push    de
3738 c4cd35    call    nz,35cdh
373b d1        pop     de
373c c9        ret     

373d cbe6      set     4,(hl)
373f 3af137    ld      a,(37f1h)
3742 cbff      set     7,a
3744 1805      jr      374bh
3746 3af137    ld      a,(37f1h)
3749 cba6      res     4,(hl)
374b e5        push    hl
374c 215a41    ld      hl,415ah
374f cb7e      bit     7,(hl)
3751 e1        pop     hl
3752 2802      jr      z,3756h
3754 cbf7      set     6,a
3756 f5        push    af
3757 3e05      ld      a,05h
3759 d31a      out     (1ah),a
375b f1        pop     af
375c d31a      out     (1ah),a
375e f1        pop     af
375f c9        ret     

3760 f5        push    af
3761 cb67      bit     4,a
3763 3af137    ld      a,(37f1h)
3766 28da      jr      z,3742h
3768 cbcf      set     1,a
376a 18d6      jr      3742h
376c cdc916    call    16c9h
376f c8        ret     z

3770 2a7341    ld      hl,(4173h)
3773 77        ld      (hl),a
3774 23        inc     hl
3775 227341    ld      (4173h),hl
3778 c9        ret     

3779 3e10      ld      a,10h
377b d31a      out     (1ah),a
377d db1a      in      a,(1ah)
377f c9        ret     

3780 21ce41    ld      hl,41ceh
3783 227341    ld      (4173h),hl
3786 227541    ld      (4175h),hl
3789 c9        ret     

378a 4f        ld      c,a
378b 0600      ld      b,00h
378d 09        add     hl,bc
378e 7e        ld      a,(hl)
378f c9        ret     

3790 db18      in      a,(18h)
3792 215a41    ld      hl,415ah
3795 cb7e      bit     7,(hl)
3797 2002      jr      nz,379bh
3799 e67f      and     7fh
379b fe15      cp      15h
379d 215941    ld      hl,4159h
37a0 280f      jr      z,37b1h
37a2 cb56      bit     2,(hl)
37a4 2812      jr      z,37b8h
37a6 fe11      cp      11h
37a8 2003      jr      nz,37adh
37aa cbde      set     3,(hl)
37ac c9        ret     

37ad fe13      cp      13h
37af 2003      jr      nz,37b4h
37b1 cb9e      res     3,(hl)
37b3 c9        ret     

37b4 fe14      cp      14h
37b6 28f9      jr      z,37b1h
37b8 ed5b7341  ld      de,(4173h)
37bc 210d42    ld      hl,420dh
37bf d7        rst     10h
37c0 c8        ret     z

37c1 010a00    ld      bc,000ah
37c4 ed42      sbc     hl,bc
37c6 3003      jr      nc,37cbh
37c8 cd1637    call    3716h
37cb c36c37    jp      376ch
37ce 211842    ld      hl,4218h
37d1 ed5b7741  ld      de,(4177h)
37d5 d7        rst     10h
37d6 c9        ret     

37d7 2a7741    ld      hl,(4177h)
37da 77        ld      (hl),a
37db 23        inc     hl
37dc 227741    ld      (4177h),hl
37df c9        ret     

37e0 215941    ld      hl,4159h
37e3 cb56      bit     2,(hl)
37e5 c9        ret     

37e6 02        ld      (bc),a
37e7 07        rlca    
37e8 010a00    ld      bc,000ah
37eb 1804      jr      37f1h
37ed 00        nop     
37ee 011805    ld      bc,0518h
37f1 2803      jr      z,37f6h
37f3 41        ld      b,c
37f4 00        nop     
37f5 1804      jr      37fbh
37f7 44        ld      b,h
37f8 010003    ld      bc,0300h
37fb 00        nop     
37fc 05        dec     b
37fd 00        nop     
37fe 02        ld      (bc),a
37ff 58        ld      e,b
