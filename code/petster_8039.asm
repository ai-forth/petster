0:  04 09                   add    al,0x9
2:  ff 64 d1 ff             jmp    DWORD PTR [ecx+edx*8-0x1]
6:  ff c4                   inc    esp
8:  00 99 7f 9a 0e b8       add    BYTE PTR [ecx-0x47f16581],bl
e:  23 b0 00 80 92 16       and    esi,DWORD PTR [eax+0x16928000]
14: 44                      inc    esp
15: 00 9a 0e 54 c7 74       add    BYTE PTR [edx+0x74c7540e],bl
1b: 00 f6                   add    dh,dh
1d: 21 03                   and    DWORD PTR [ebx],eax
1f: 25 b3 54 cc 04          and    eax,0x4cc54b3
24: 1a 39                   sbb    bh,BYTE PTR [ecx]
26: 4e                      dec    esi
27: 52                      push   edx
28: 31 33                   xor    DWORD PTR [ebx],esi
2a: 35 37 a4 21 39          xor    eax,0x3921a437
2f: 81 c3 24 ac 24 00       add    ebx,0x24ac24
35: 24 61                   and    al,0x61
37: 24 cc                   and    al,0xcc
39: d4 a7                   aam    0xa7
3b: bd 2e b4 51 54          mov    ebp,0x5451b42e
40: c7                      (bad)
41: bd 05 23 ff 74          mov    ebp,0x74ff2305
46: 66 f6 21                data16 mul BYTE PTR [ecx]
49: 96                      xchg   esi,eax
4a: 16                      push   ss
4b: 3f                      aas
4c: 04 4c                   add    al,0x4c
4e: b9 00 04 54 b9          mov    ecx,0xb9540400
53: 0c b8                   or     al,0xb8
55: 5c                      pop    esp
56: f0 d9 af bd 06 52 5f    lock fldcw WORD PTR [edi+0x5f5206bd]
5d: bd 09 53 03 03          mov    ebp,0x3035309
62: 7b a3                   jnp    0x7
64: c6                      (bad)
65: 69 2d b4 53 bd 27 ff    imul   ebp,DWORD PTR ds:0x27bd53b4,0xd47772ff
6c: 72 77 d4
6f: a7                      cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
70: ff 53 03                call   DWORD PTR [ebx+0x3]
73: 03 7e a3                add    edi,DWORD PTR [esi-0x5d]
76: ad                      lods   eax,DWORD PTR ds:[esi]
77: b4 00                   mov    ah,0x0
79: 04 16                   add    al,0x16
7b: 00 02                   add    BYTE PTR [edx],al
7d: 05 27 1a 0d 23          add    eax,0x230d1a27
82: 0b f4                   or     esi,esp
84: 89 03                   mov    DWORD PTR [ebx],eax
86: 0a af 23 0a f4 89       or     ch,BYTE PTR [edi-0x760bf5dd]
8c: 03 01                   add    eax,DWORD PTR [ecx]
8e: ad                      lods   eax,DWORD PTR ds:[esi]
8f: b4 51                   mov    ah,0x51
91: b9 03 d4 87 23          mov    ecx,0x2387d403
96: 4f                      dec    edi
97: f4                      hlt
98: 89 03                   mov    DWORD PTR [ebx],eax
9a: 1a ad b4 00 f6 a2       sbb    ch,BYTE PTR [ebp-0x5d09ff4c]
a0: ef                      out    dx,eax
a1: 88 04 16                mov    BYTE PTR [esi+edx*1],al
a4: 8a 61 bf                mov    ah,BYTE PTR [ecx-0x41]
a7: 0f bb 64 ba 64          btc    DWORD PTR [edx+edi*4+0x64],esp
ac: b9 05 f4 71 46          mov    ecx,0x4671f405
b1: b8 ea ac eb aa          mov    eax,0xaaebacea
b6: 04 16                   add    al,0x16
b8: 94                      xchg   esp,eax
b9: 00 ef                   add    bh,ch
bb: a8 1f                   test   al,0x1f
bd: f4                      hlt
be: 55                      push   ebp
bf: 96                      xchg   esi,eax
c0: a8 04                   test   al,0x4
c2: 16                      push   ss
c3: 8a 51 bf                mov    dl,BYTE PTR [ecx-0x41]
c6: e5 bd                   in     eax,0xbd
c8: 32 74 64 f6             xor    dh,BYTE PTR [esp+eiz*2-0xa]
cc: cf                      iret
cd: c6                      (bad)
ce: e3 ff                   jecxz  0xcf
d0: a3 ad 1f ff a3          mov    ds:0xa3ff1fad,eax
d5: b4 53                   mov    ah,0x53
d7: f6 e1                   mul    cl
d9: 1f                      pop    ds
da: ff 03                   inc    DWORD PTR [ebx]
dc: 13 e6                   adc    esp,esi
de: c7 04 c3 d4 ab 04 16    mov    DWORD PTR [ebx+eax*8],0x1604abd4
e5: 02 09                   add    cl,BYTE PTR [ecx]
e7: 05 06 13 0a 13          add    eax,0x130a1306
ec: 05 ff ff ff ff          add    eax,0xffffffff
f1: ff                      (bad)
f2: ff                      (bad)
f3: ff                      (bad)
f4: ff                      (bad)
f5: ff                      (bad)
f6: ff                      (bad)
f7: ff                      (bad)
f8: ff                      (bad)
f9: ff                      (bad)
fa: ff                      (bad)
fb: ff                      (bad)
fc: ff                      (bad)
fd: ff                      (bad)
fe: ff                      (bad)
ff: ff 23                   jmp    DWORD PTR [ebx]
101:    0b f4                   or     esi,esp
103:    89 03                   mov    DWORD PTR [ebx],eax
105:    0a af 23 02 54 54       or     ch,BYTE PTR [edi+0x54540223]
10b:    8a 20                   mov    ah,BYTE PTR [eax]
10d:    54                      push   esp
10e:    c7                      (bad)
10f:    23 05 f4 89 03 fc       and    eax,DWORD PTR ds:0xfc0389f4
115:    e6 1b                   out    0x1b,al
117:    94                      xchg   esp,eax
118:    76 24                   jbe    0x13e
11a:    2f                      das
11b:    03 5d a3                add    ebx,DWORD PTR [ebp-0x5d]
11e:    ad                      lods   eax,DWORD PTR ds:[esi]
11f:    b4 51                   mov    ah,0x51
121:    b9 02 d4 87 23          mov    ecx,0x2387d402
126:    04 f4                   add    al,0xf4
128:    89 03                   mov    DWORD PTR [ebx],eax
12a:    5d                      pop    ebp
12b:    a3 ad b4 00 e6          mov    ds:0xe600b4ad,eax
130:    35 f4 55 c6 57          xor    eax,0x57c655f4
135:    54                      push   esp
136:    61                      popa
137:    ad                      lods   eax,DWORD PTR ds:[esi]
138:    74 02                   je     0x13c
13a:    f6 4a c6 50             test   BYTE PTR [edx-0x3a],0x50
13e:    54                      push   esp
13f:    54                      push   esp
140:    c6                      (bad)
141:    4a                      dec    edx
142:    12 35 32 50 f4 55       adc    dh,BYTE PTR ds:0x55f45032
148:    c6                      (bad)
149:    57                      push   edi
14a:    54                      push   esp
14b:    cc                      int3
14c:    96                      xchg   esi,eax
14d:    35 24 57 ef 0b          xor    eax,0xbef5724
152:    1f                      pop    ds
153:    f4                      hlt
154:    55                      push   ebp
155:    96                      xchg   esi,eax
156:    0b 04 16                or     eax,DWORD PTR [esi+edx*1]
159:    01 03                   add    DWORD PTR [ebx],eax
15b:    05 0b 0d 1a 27          add    eax,0x271a0d0b
160:    34 bf                   xor    al,0xbf
162:    23 8a 11 54 c7 74       and    ecx,DWORD PTR [edx+0x74c75411]
168:    00 f6                   add    dh,dh
16a:    71 c6                   jno    0x132
16c:    98                      cwde
16d:    54                      push   esp
16e:    80 e6 77                and    dh,0x77
171:    54                      push   esp
172:    cc                      int3
173:    96                      xchg   esi,eax
174:    67 24 aa                addr16 and al,0xaa
177:    c6                      (bad)
178:    98                      cwde
179:    53                      push   ebx
17a:    fe                      (bad)
17b:    97                      xchg   edi,eax
17c:    f7 ae 23 14 e6 86       imul   DWORD PTR [esi-0x7919ebdd]
182:    d4 a3                   aam    0xa3
184:    23 05 f4 65 fe 96       and    eax,DWORD PTR ds:0x96fe65f4
18a:    7b ff                   jnp    0x18b
18c:    a8 fd                   test   al,0xfd
18e:    a0 18 b0 00 1f          mov    al,ds:0x1f00b018
193:    ff 03                   inc    DWORD PTR [ebx]
195:    c9                      leave
196:    e6 63                   out    0x63,al
198:    bf 23 ff a8 f0          mov    edi,0xf0a8ff23
19d:    c6                      (bad)
19e:    a6                      cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
19f:    bd 32 54 8f 1f          mov    ebp,0x1f8f5432
1a4:    24 9a                   and    al,0x9a
1a6:    f4                      hlt
1a7:    55                      push   ebp
1a8:    96                      xchg   esi,eax
1a9:    61                      popa
1aa:    04 16                   add    al,0x16
1ac:    8a 41 54                mov    al,BYTE PTR [ecx+0x54]
1af:    c7                      (bad)
1b0:    74 00                   je     0x1b2
1b2:    f6 c6 c6                test   dh,0xc6
1b5:    ca 54 80                retf   0x8054
1b8:    f6 c6 c6                test   dh,0xc6
1bb:    c2 27 2d                ret    0x2d27
1be:    54                      push   esp
1bf:    8f                      (bad)
1c0:    24 ac                   and    al,0xac
1c2:    f4                      hlt
1c3:    55                      push   ebp
1c4:    c6                      (bad)
1c5:    ca 54 cc                retf   0xcc54
1c8:    96                      xchg   esi,eax
1c9:    b0 04                   mov    al,0x4
1cb:    16                      push   ss
1cc:    8a 31                   mov    dh,BYTE PTR [ecx]
1ce:    54                      push   esp
1cf:    c7                      (bad)
1d0:    74 00                   je     0x1d2
1d2:    f6 ee                   imul   dh
1d4:    c6                      (bad)
1d5:    f2 03 fb                repnz add edi,ebx
1d8:    f6 e6                   mul    dh
1da:    fd                      std
1db:    07                      pop    es
1dc:    94                      xchg   esp,eax
1dd:    7a e6                   jp     0x1c5
1df:    cc                      int3
1e0:    f4                      hlt
1e1:    55                      push   ebp
1e2:    96                      xchg   esi,eax
1e3:    cc                      int3
1e4:    24 f2                   and    al,0xf2
1e6:    03 fd                   add    edi,ebp
1e8:    96                      xchg   esi,eax
1e9:    ee                      out    dx,al
1ea:    f4                      hlt
1eb:    55                      push   ebp
1ec:    c6                      (bad)
1ed:    f2 54                   repnz push esp
1ef:    cc                      int3
1f0:    96                      xchg   esi,eax
1f1:    d0 04 16                rol    BYTE PTR [esi+edx*1],1
1f4:    ff                      (bad)
1f5:    ff                      (bad)
1f6:    ff                      (bad)
1f7:    ff                      (bad)
1f8:    ff                      (bad)
1f9:    ff                      (bad)
1fa:    ff                      (bad)
1fb:    ff                      (bad)
1fc:    ff                      (bad)
1fd:    ff                      (bad)
1fe:    ff                      (bad)
1ff:    ff 8a 70 23 10 d4       dec    DWORD PTR [edx-0x2befdc90]
205:    5b                      pop    ebx
206:    d4 62                   aam    0x62
208:    e6 42                   out    0x42,al
20a:    af                      scas   eax,DWORD PTR es:[edi]
20b:    03 34 a3                add    esi,DWORD PTR [ebx+eiz*4]
20e:    c6 06 f2                mov    BYTE PTR [esi],0xf2
211:    27                      daa
212:    d2 1c d4                rcr    BYTE PTR [esp+edx*8],cl
215:    8e 23                   mov    fs,WORD PTR [ebx]
217:    14 f4                   adc    al,0xf4
219:    65 44                   gs inc esp
21b:    00 d4                   add    ah,dl
21d:    62                      (bad)
21e:    df 96 06 56 1c 94       fist   WORD PTR [esi-0x6be3a9fa]
224:    00 44 1c b4             add    BYTE PTR [esp+ebx*1-0x4c],al
228:    67 b4 97                addr16 mov ah,0x97
22b:    f6 35 12 29 d4 66       div    BYTE PTR ds:0x66d42912
231:    df c6                   ffreep st(6)
233:    29 97 b4 85 e6 06       sub    DWORD PTR [edi+0x6e685b4],edx
239:    d4 ab                   aam    0xab
23b:    d4 62                   aam    0x62
23d:    df c6                   ffreep st(6)
23f:    3b 44 06 04             cmp    eax,DWORD PTR [esi+eax*1+0x4]
243:    16                      push   ss
244:    00 85 89 28 86 21       add    BYTE PTR [ebp+0x21862889],al
24a:    20 00                   and    BYTE PTR [eax],al
24c:    8a 40 24                mov    al,BYTE PTR [eax+0x24]
24f:    00 22                   add    BYTE PTR [edx],ah
251:    00 00                   add    BYTE PTR [eax],al
253:    00 03                   add    BYTE PTR [ebx],al
255:    6e                      outs   dx,BYTE PTR ds:[esi]
256:    a3 f2 5e b8 22          mov    ds:0x22b85ef2,eax
25b:    a0 23 81 53 7f          mov    al,ds:0x7f538123
260:    83 b8 22 f0 03 7a ab    cmp    DWORD PTR [eax+0x7a03f022],0xffffffab
267:    17                      pop    ss
268:    a3 f4 89 2b a3          mov    ds:0xa32b89f4,eax
26d:    6b 83 82 00 02 04 80    imul   eax,DWORD PTR [ebx+0x4020082],0xffffff80
274:    80 80 84 80 80 80 1e    add    BYTE PTR [eax-0x7f7f7f7c],0x1e
27b:    15 32 33 46 b5          adc    eax,0xb5463332
280:    03 f8                   add    edi,eax
282:    f6 8b 03 07 e7 03 b5    test   BYTE PTR [ebx+0x3e70703],0xb5
289:    ad                      lods   eax,DWORD PTR ds:[esi]
28a:    a3 96 8e a7 83          mov    ds:0x83a78e96,eax
28f:    a8 a3                   test   al,0xa3
291:    67 f8                   addr16 clc
293:    17                      pop    ss
294:    a3 f6 a6 96 9d          mov    ds:0x9d96a6f6,eax
299:    d4 a7                   aam    0xa7
29b:    44                      inc    esp
29c:    a3 d4 a3 f4 63          mov    ds:0x63f4a3d4,eax
2a1:    d4 a3                   aam    0xa3
2a3:    fd                      std
2a4:    e4 65                   in     al,0x65
2a6:    ad                      lods   eax,DWORD PTR ds:[esi]
2a7:    47                      inc    edi
2a8:    53                      push   ebx
2a9:    0f 03 c3                lsl    eax,bx
2ac:    a3 2d b4 53 e6          mov    ds:0xe653b42d,eax
2b1:    b4 d4                   mov    ah,0xd4
2b3:    ab                      stos   DWORD PTR es:[edi],eax
2b4:    83 81 0a c1 19 e1 26    add    DWORD PTR [ecx-0x1ee63ef6],0x26
2bb:    f1                      icebp
2bc:    35 00 00 b0 00          xor    eax,0xb00000
2c1:    d0 01                   rol    BYTE PTR [ecx],1
2c3:    27                      daa
2c4:    02 02                   add    al,BYTE PTR [edx]
2c6:    1a b8 21 b0 fd 83       sbb    bh,BYTE PTR [eax-0x7c024fdf]
2cc:    bd 01 23 09 b4          mov    ebp,0xb4092301
2d1:    53                      push   ebx
2d2:    bd 02 23 06 b4          mov    ebp,0xb4062302
2d7:    53                      push   ebx
2d8:    b8 21 10 f0 96          mov    eax,0x96f01021
2dd:    e4 b0                   in     al,0xb0
2df:    ff d4                   call   esp
2e1:    ab                      stos   DWORD PTR es:[edi],eax
2e2:    f4                      hlt
2e3:    55                      push   ebp
2e4:    83 ff ff                cmp    edi,0xffffffff
2e7:    ff                      (bad)
2e8:    ff                      (bad)
2e9:    ff                      (bad)
2ea:    ff                      (bad)
2eb:    ff                      (bad)
2ec:    ff                      (bad)
2ed:    ff                      (bad)
2ee:    ff                      (bad)
2ef:    ff                      (bad)
2f0:    ff                      (bad)
2f1:    ff                      (bad)
2f2:    ff                      (bad)
2f3:    ff                      (bad)
2f4:    ff                      (bad)
2f5:    ff                      (bad)
2f6:    ff                      (bad)
2f7:    ff                      (bad)
2f8:    ff                      (bad)
2f9:    ff                      (bad)
2fa:    ff                      (bad)
2fb:    ff                      (bad)
2fc:    ff                      (bad)
2fd:    ff                      (bad)
2fe:    ff                      (bad)
2ff:    ff                      (bad)
300:    bd 64 74 64 bd          mov    ebp,0xbd647464
305:    00 96 09 83 1d bc       add    BYTE PTR [esi-0x43e27cf7],dl
30b:    ba bb 14 ba 03          mov    edx,0x3ba14bb
310:    b9 63 f4 71 1c          mov    ecx,0x1c71f463
315:    cb                      retf
316:    fb                      sti
317:    c6                      (bad)
318:    38 f4                   cmp    ah,dh
31a:    5a                      pop    edx
31b:    96                      xchg   esi,eax
31c:    0e                      push   cs
31d:    ea 10 b9 63 f4 71 1c    jmp    0x1c71:0xf463b910
324:    fc                      cld
325:    c6                      (bad)
326:    3b f4                   cmp    esi,esp
328:    5a                      pop    edx
329:    c6                      (bad)
32a:    1f                      pop    ds
32b:    23 46 6c                and    eax,DWORD PTR [esi+0x6c]
32e:    b8 5a 20 18 a0          mov    eax,0xa018205a
333:    fd                      std
334:    03 fb                   add    edi,ebx
336:    e6 09                   out    0x9,al
338:    97                      xchg   edi,eax
339:    a7                      cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
33a:    83 fd 03                cmp    ebp,0x3
33d:    5e                      pop    esi
33e:    a3 c6 5c aa b8          mov    ds:0xb8aa5cc6,eax
343:    5b                      pop    ebx
344:    f0 37                   lock aaa
346:    17                      pop    ss
347:    c8 60 a9 e6             enter  0xa960,0xe6
34b:    53                      push   ebx
34c:    c6                      (bad)
34d:    5c                      pop    esp
34e:    37                      aaa
34f:    17                      pop    ss
350:    a9 18 1a 97 f0          test   eax,0xf0971a18
355:    67 69 f6 5c fd 6a ad    addr16 imul esi,esi,0xad6afd5c
35c:    fd                      std
35d:    97                      xchg   edi,eax
35e:    83 00 00                add    DWORD PTR [eax],0x0
361:    03 04 05 23 1c 89 40    add    eax,DWORD PTR [eax*1+0x40891c23]
368:    b8 5a a0 bc 14          mov    eax,0x14bca05a
36d:    27                      daa
36e:    d4 5b                   aam    0x5b
370:    ba 96 bb 32 b9          mov    edx,0xb932bb96
375:    5f                      pop    edi
376:    f4                      hlt
377:    71 f4                   jno    0x36d
379:    97                      xchg   edi,eax
37a:    ea 80 27 97 a7 83 f4    jmp    0xf483:0xa7972780
381:    5a                      pop    edx
382:    96                      xchg   esi,eax
383:    72 eb                   jb     0x370
385:    74 b8                   je     0x33f
387:    5c                      pop    esp
388:    a0 05 fb 96 90          mov    al,ds:0x9096fb05
38d:    b8 5a f0 ba 0a          mov    eax,0xabaf05a
392:    97                      xchg   edi,eax
393:    67 ab                   stos   DWORD PTR es:[di],eax
395:    f6 9b 99 bf 64 9d       neg    BYTE PTR [ebx-0x629b4067]
39b:    89 40 fc                mov    DWORD PTR [eax-0x4],eax
39e:    96                      xchg   esi,eax
39f:    ac                      lods   al,BYTE PTR ds:[esi]
3a0:    09 92 ac 15 89 40       or     DWORD PTR [edx+0x408915ac],edx
3a6:    d4 96                   aam    0x96
3a8:    bc 01 64 6d b8          mov    esp,0xb86d6401
3ad:    5c                      pop    esp
3ae:    f0 96                   lock xchg esi,eax
3b0:    cc                      int3
3b1:    d4 62                   aam    0x62
3b3:    e6 ba                   out    0xba,al
3b5:    15 89 40 44 00          adc    eax,0x444089
3ba:    ea 9d fc c6 c0 cc ed    jmp    0xedcc:0xc0c6fc9d
3c1:    8a 1d 0a 53 01 c6       mov    bl,BYTE PTR ds:0xc601530a
3c7:    cc                      int3
3c8:    f4                      hlt
3c9:    55                      push   ebp
3ca:    96                      xchg   esi,eax
3cb:    8a 15 89 40 97 83       mov    dl,BYTE PTR ds:0x83974089
3d1:    d5 af                   aad    0xaf
3d3:    09 72 dc                or     DWORD PTR [edx-0x24],esi
3d6:    b8 84 b9 04 64          mov    eax,0x6404b984
3db:    e2 b8                   loop   0x395
3dd:    80 b9 08 64 e2 ba 28    cmp    BYTE PTR [ecx-0x451d9bf8],0x28
3e4:    ea e4 09 59 c6 f4 18    jmp    0x18f4:0xc65909e4
3eb:    ba 60 ea ed 09          mov    edx,0x9edea60
3f0:    59                      pop    ecx
3f1:    c6                      (bad)
3f2:    f4                      hlt
3f3:    18 b9 5c f8 a1 ff       sbb    BYTE PTR [ecx-0x5e07a4],bh
3f9:    15 93 ff ff ff          adc    eax,0xffffff93
3fe:    ff                      (bad)
3ff:    ff                      (bad)
400:    bd 01 bc 00 bb          mov    ebp,0xbb00bc01
405:    38 ba 08 b9 63 f4       cmp    BYTE PTR [edx-0xb9c46f8],bh
40b:    71 97                   jno    0x3a4
40d:    1c 56                   sbb    al,0x56
40f:    13 a7 fc ad fb a8       adc    esp,DWORD PTR [edi-0x57045204]
415:    f0 67 a0 ea 08          lock addr16 mov al,ds:0x8ea
41a:    1b fd                   sbb    edi,ebp
41c:    37                      aaa
41d:    17                      pop    ss
41e:    6c                      ins    BYTE PTR es:[edi],dx
41f:    03 ce                   add    ecx,esi
421:    f6 28                   imul   BYTE PTR [eax]
423:    fc                      cld
424:    03 38                   add    edi,DWORD PTR [eax]
426:    e6 06                   out    0x6,al
428:    23 1a                   and    ebx,DWORD PTR [edx]
42a:    f4                      hlt
42b:    89 03                   mov    DWORD PTR [ebx],eax
42d:    3e ac                   lods   al,BYTE PTR ds:[esi]
42f:    bb 00 b8 51 b9          mov    ebx,0xb951b800
434:    19 c8                   sbb    eax,ecx
436:    f0 67 a0 e9 35          lock addr16 mov al,ds:0x35e9
43b:    f6 49 fb cb             test   BYTE PTR [ecx-0x5],0xcb
43f:    96                      xchg   esi,eax
440:    4b                      dec    ebx
441:    b9 64 f4 71 ed          mov    ecx,0xed71f464
446:    28 84 72 bb 07 23 07    sub    BYTE PTR [edx+esi*2+0x72307bb],al
44d:    f4                      hlt
44e:    89 03                   mov    DWORD PTR [ebx],eax
450:    fd                      std
451:    6c                      ins    BYTE PTR es:[edi],dx
452:    ac                      lods   al,BYTE PTR ds:[esi]
453:    03 c2                   add    eax,edx
455:    f6 5b bc                neg    BYTE PTR [ebx-0x44]
458:    3e 84 61 03             test   BYTE PTR ds:[ecx+0x3],ah
45c:    a8 e6                   test   al,0xe6
45e:    61                      popa
45f:    bc 57 b9 08 fc          mov    esp,0xfc08b957
464:    a8 89                   test   al,0x89
466:    80 e8 67                sub    al,0x67
469:    99                      cdq
46a:    7f a8                   jg     0x414
46c:    e8 6c e9 64 ed          call   0xed64eddd
471:    31 23                   xor    DWORD PTR [ebx],esp
473:    0a e4                   or     ah,ah
475:    65 23 04 f4             and    eax,DWORD PTR gs:[esp+esi*8]
479:    89 03                   mov    DWORD PTR [ebx],eax
47b:    a4                      movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
47c:    a3 ae fe a3 d2          mov    ds:0xd2a3feae,eax
481:    86 d4                   xchg   ah,dl
483:    8e 84 9d ad 53 0f 03    mov    es,WORD PTR [ebp+ebx*4+0x30f53ad]
48a:    e2 a3                   loop   0x42f
48c:    2d 47 53 03 c6          sub    eax,0xc6035347
491:    99                      cdq
492:    03 f1                   add    esi,ecx
494:    a3 b4 53 84 9d          mov    ds:0x9d8453b4,eax
499:    b4 00                   mov    ah,0x0
49b:    f6 a3 fe 1e a3 f2       mul    BYTE PTR [ebx-0xd5ce102]
4a1:    7e 97                   jle    0x43a
4a3:    83 a8 b8 c5 d7 82 fb    sub    DWORD PTR [eax-0x7d283a48],0xfffffffb
4aa:    c1 82 fc c0 82 fc c0    rol    DWORD PTR [edx-0x37d3f04],0xc0
4b1:    82 fc c0                cmp    ah,0xc0
4b4:    82 fc c0                cmp    ah,0xc0
4b7:    02 e8                   add    ch,al
4b9:    c1 88 d1 f8 c1 84 d1    ror    DWORD PTR [eax-0x7b3e072f],0xd1
4c0:    f8                      clc
4c1:    c1 88 d1 68 e9 c0 fa    ror    DWORD PTR [eax-0x3f16972f],0xfa
4c8:    c0 ea c0                shr    dl,0xc0
4cb:    fa                      cli
4cc:    c0 ed c0                shr    ch,0xc0
4cf:    fa                      cli
4d0:    c0 ea c0                shr    dl,0xc0
4d3:    fa                      cli
4d4:    c0 f9 01                sar    cl,0x1
4d7:    c2 81 fb                ret    0xfb81
4da:    c2 81 fb                ret    0xfb81
4dd:    c2 81 fb                ret    0xfb81
4e0:    c2 01 0d                ret    0xd01
4e3:    13 1a                   adc    ebx,DWORD PTR [edx]
4e5:    20 0d 0d 0d 0d 01       and    BYTE PTR ds:0x10d0d0d,cl
4eb:    02 05 0b 0e 11 17       add    al,BYTE PTR ds:0x17110e0b
4f1:    17                      pop    ss
4f2:    05 09 06 ff ff          add    eax,0xffff0609
4f7:    ff                      (bad)
4f8:    ff                      (bad)
4f9:    ff                      (bad)
4fa:    ff                      (bad)
4fb:    ff                      (bad)
4fc:    ff                      (bad)
4fd:    ff                      (bad)
4fe:    ff                      (bad)
4ff:    ff 23                   jmp    DWORD PTR [ebx]
501:    0a b4 5f b4 97 f6 16    or     dh,BYTE PTR [edi+ebx*2+0x16f697b4]
508:    b2 10                   mov    dl,0x10
50a:    52                      push   edx
50b:    04 ed                   add    al,0xed
50d:    04 a4                   add    al,0xa4
50f:    85 b4 85 b4 2b a4 1c    test   DWORD PTR [ebp+eax*4+0x1ca42bb4],esi
516:    bd 13 23 05 b4          mov    ebp,0xb4052313
51b:    53                      push   ebx
51c:    e6 2a                   out    0x2a,al
51e:    bd 03 23 0a f4          mov    ebp,0xf40a2303
523:    65 d4 ab                gs aam 0xab
526:    ed                      in     eax,dx
527:    20 97 a7 83 bd 1a       and    BYTE PTR [edi+0x1abd83a7],dl
52d:    bc 03 f4 80 b4          mov    esp,0xb480f403
532:    5f                      pop    edi
533:    b4 97                   mov    ah,0x97
535:    f6 5d 92                neg    BYTE PTR [ebp-0x6e]
538:    3b bc 03 52 33 cc fc    cmp    edi,DWORD PTR [ebx+eax*1-0x333ccae]
53f:    c6 46 ed 33             mov    BYTE PTR [esi-0x13],0x33
543:    a7                      cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
544:    a4                      movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
545:    85 b4 85 bd 01 b8 5e    test   DWORD PTR [ebp+eax*4+0x5eb801bd],esi
54c:    f0 d3 0f                lock ror DWORD PTR [edi],cl
54f:    a4                      movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
550:    53                      push   ebx
551:    f4                      hlt
552:    80 b4 5f b4 97 f6 5d    xor    BYTE PTR [edi+ebx*2+0x5df697b4],0x52
559:    52
55a:    55                      push   ebp
55b:    ed                      in     eax,dx
55c:    55                      push   ebp
55d:    a4                      movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
55e:    85 2d 03 ff f6 65       test   DWORD PTR ds:0x65f6ff03,ebp
564:    27                      daa
565:    17                      pop    ss
566:    2d b8 5e b9 0a          sub    eax,0xab95eb8
56b:    a0 18 27 e9 6b          mov    al,ds:0x6be92718
570:    b8 5f b0 1a b8          mov    eax,0xb81ab05f
575:    60                      pusha
576:    b0 ce                   mov    al,0xce
578:    b8 64 b0 03 d5          mov    eax,0xd503b064
57d:    bf 20 55 23 ff          mov    edi,0xff235520
582:    62 25 93 e7 67 ab       bound  esp,QWORD PTR ds:0xab67e793
588:    b8 5f b0 00 b4          mov    eax,0xb400b05f
58d:    97                      xchg   edi,eax
58e:    d2 8c 35 27 90 fb f7    ror    BYTE PTR [ebp+esi*1-0x8046fd9],cl
595:    fb                      sti
596:    83 f4 97                xor    esp,0xffffff97
599:    ba 55 b8 64 f0          mov    edx,0xf064b855
59e:    96                      xchg   esi,eax
59f:    c0 10 18                rcl    BYTE PTR [eax],0x18
5a2:    f0 03 d8                lock add ebx,eax
5a5:    e6 b3                   out    0xb3,al
5a7:    ba 15 03 ec e6          mov    edx,0xe6ec0315
5ac:    b3 ba                   mov    bl,0xba
5ae:    95                      xchg   ebp,eax
5af:    03 3d f6 c0 b9 61       add    edi,DWORD PTR ds:0x61b9c0f6
5b5:    11 f1                   adc    ecx,esi
5b7:    d3 06                   rol    DWORD PTR [esi],cl
5b9:    96                      xchg   esi,eax
5ba:    c0 a1 fa d3 0c aa b8    shl    BYTE PTR [ecx-0x55f32c06],0xb8
5c1:    62 b9 60 f0 c6 d9       bound  edi,QWORD PTR [ecx-0x26390fa0]
5c7:    b0 00                   mov    al,0x0
5c9:    18 f0                   sbb    al,dh
5cb:    03 f8                   add    edi,eax
5cd:    fa                      cli
5ce:    e6 d2                   out    0xd2,al
5d0:    d3 30                   shl    DWORD PTR [eax],cl
5d2:    d3 03                   rol    DWORD PTR [ebx],cl
5d4:    aa                      stos   BYTE PTR es:[edi],al
5d5:    f1                      icebp
5d6:    c6                      (bad)
5d7:    d9 11                   fst    DWORD PTR [ecx]
5d9:    f1                      icebp
5da:    c6                      (bad)
5db:    e0 fa                   loopne 0x5d7
5dd:    53                      push   ebx
5de:    3f                      aas
5df:    aa                      stos   BYTE PTR es:[edi],al
5e0:    fa                      cli
5e1:    f7 fa                   idiv   edx
5e3:    83 ff ff                cmp    edi,0xffffffff
5e6:    ff                      (bad)
5e7:    ff                      (bad)
5e8:    ff                      (bad)
5e9:    ff                      (bad)
5ea:    ff                      (bad)
5eb:    ff                      (bad)
5ec:    ff                      (bad)
5ed:    ff                      (bad)
5ee:    ff                      (bad)
5ef:    ff                      (bad)
5f0:    ff                      (bad)
5f1:    ff                      (bad)
5f2:    ff                      (bad)
5f3:    ff                      (bad)
5f4:    ff                      (bad)
5f5:    ff                      (bad)
5f6:    ff                      (bad)
5f7:    ff                      (bad)
5f8:    ff                      (bad)
5f9:    ff                      (bad)
5fa:    ff                      (bad)
5fb:    ff                      (bad)
5fc:    ff                      (bad)
5fd:    ff                      (bad)
5fe:    ff                      (bad)
5ff:    ff d5                   call   ebp
601:    a9 23 fd 62 09          test   eax,0x962fd23
606:    37                      aaa
607:    b8 67 67 f0 f7          mov    eax,0xf7f06767
60c:    a0 c8 07 c6 15          mov    al,ds:0x15c607c8
611:    f0 17                   lock pop ss
613:    96                      xchg   esi,eax
614:    1c 20                   sbb    al,0x20
616:    c8 a0 c8 97             enter  0xc8a0,0x97
61a:    f0 67 a0 f9 2f          lock addr16 mov al,ds:0x2ff9
61f:    b3 21                   mov    bl,0x21
621:    8a 80 26 37 b8 01       mov    al,BYTE PTR [eax+0x1b83726]
627:    e8 27 b8 62 10          call   0x1062be53
62c:    18 f0                   sbb    al,dh
62e:    26 33 27                xor    esp,DWORD PTR es:[edi]
631:    c4 36                   les    esi,FWORD PTR [esi]
633:    17                      pop    ss
634:    c6                      (bad)
635:    37                      aaa
636:    a0 9a 7f 23 3d          mov    al,ds:0x3d237f9a
63b:    2f                      das
63c:    93                      xchg   ebx,eax
63d:    3e be 18 b8 5f f0       ds mov esi,0xf05fb818
643:    ad                      lods   eax,DWORD PTR ds:[esi]
644:    c6                      (bad)
645:    48                      dec    eax
646:    c8 f0 ac 90             enter  0xacf0,0x90
64a:    23 4e 2f                and    ecx,DWORD PTR [esi+0x2f]
64d:    93                      xchg   ebx,eax
64e:    4f                      dec    edi
64f:    fc                      cld
650:    ed                      in     eax,dx
651:    53                      push   ebx
652:    27                      daa
653:    ee                      out    dx,al
654:    48                      dec    eax
655:    27                      daa
656:    90                      nop
657:    23 20                   and    esp,DWORD PTR [eax]
659:    2f                      das
65a:    93                      xchg   ebx,eax
65b:    b8 57 a0 18 b0          mov    eax,0xb018a057
660:    0a 83 b9 62 f4 71       or     al,BYTE PTR [ebx+0x71f462b9]
666:    b8 59 80 37 53          mov    eax,0x53378059
66b:    1f                      pop    ds
66c:    a9 20 d0 c8 c6          test   eax,0xc6c8d020
671:    76 b0                   jbe    0x623
673:    0a c4                   or     al,ah
675:    80 f0 c6                xor    al,0xc6
678:    7d 07                   jge    0x681
67a:    a0 96 80 c8 f9          mov    al,ds:0xf9c88096
67f:    a0 b8 57 f0 47          mov    al,ds:0x47f057b8
684:    67 f0 83 f4 97          addr16 lock xor esp,0xffffff97
689:    e6 a2                   out    0xa2,al
68b:    59                      pop    ecx
68c:    c6                      (bad)
68d:    a2 72 af 52 ab          mov    ds:0xab52af72,al
692:    32 a7 12 a3 ba 14       xor    ah,BYTE PTR [edi+0x14baa312]
698:    89 80 f4 6f 99 7f       mov    DWORD PTR [eax+0x7f996ff4],eax
69e:    f4                      hlt
69f:    6f                      outs   dx,DWORD PTR ds:[esi]
6a0:    ea 98 83 bc 39 e4 00    jmp    0xe4:0x39bc8398
6a7:    bc 41 e4 00 bc          mov    esp,0xbc00e441
6ac:    4d                      dec    ebp
6ad:    e4 00                   in     al,0x0
6af:    bc 14 bb 02 89          mov    esp,0x8902bb14
6b4:    80 b9 0a f4 71 99 7f    cmp    BYTE PTR [ecx-0x668e0bf6],0x7f
6bb:    b9 0a f4 71 eb          mov    ecx,0xeb71f40a
6c0:    b3 f4                   mov    bl,0xf4
6c2:    6f                      outs   dx,DWORD PTR ds:[esi]
6c3:    ec                      in     al,dx
6c4:    b1 83                   mov    cl,0x83
6c6:    ff                      (bad)
6c7:    ff                      (bad)
6c8:    ff                      (bad)
6c9:    ff                      (bad)
6ca:    ff                      (bad)
6cb:    ff                      (bad)
6cc:    ff                      (bad)
6cd:    ff                      (bad)
6ce:    ff                      (bad)
6cf:    ff                      (bad)
6d0:    ff                      (bad)
6d1:    ff                      (bad)
6d2:    ff                      (bad)
6d3:    ff                      (bad)
6d4:    ff                      (bad)
6d5:    ff                      (bad)
6d6:    ff                      (bad)
6d7:    ff                      (bad)
6d8:    ff                      (bad)
6d9:    ff                      (bad)
6da:    ff                      (bad)
6db:    ff                      (bad)
6dc:    ff                      (bad)
6dd:    ff                      (bad)
6de:    ff                      (bad)
6df:    ff                      (bad)
6e0:    ff                      (bad)
6e1:    ff                      (bad)
6e2:    ff                      (bad)
6e3:    ff                      (bad)
6e4:    ff                      (bad)
6e5:    ff                      (bad)
6e6:    ff                      (bad)
6e7:    ff                      (bad)
6e8:    ff                      (bad)
6e9:    ff                      (bad)
6ea:    ff                      (bad)
6eb:    ff                      (bad)
6ec:    ff                      (bad)
6ed:    ff                      (bad)
6ee:    ff                      (bad)
6ef:    ff                      (bad)
6f0:    ff                      (bad)
6f1:    ff                      (bad)
6f2:    ff                      (bad)
6f3:    ff                      (bad)
6f4:    ff                      (bad)
6f5:    ff                      (bad)
6f6:    ff                      (bad)
6f7:    ff                      (bad)
6f8:    ff                      (bad)
6f9:    ff                      (bad)
6fa:    ff                      (bad)
6fb:    ff                      (bad)
6fc:    ff                      (bad)
6fd:    ff                      (bad)
6fe:    ff                      (bad)
6ff:    ff                      (bad)
700:    fc                      cld
701:    a3 ab 1c fc a3          mov    ds:0xa3fc1cab,eax
706:    c6                      (bad)
707:    38 85 f2 0c 95 53       cmp    BYTE PTR [ebp+0x53950cf2],al
70d:    7f aa                   jg     0x6b9
70f:    1c b8                   sbb    al,0xb8
711:    e9 fc a3 a9 00          jmp    0xa9ab12
716:    f8                      clc
717:    6b a8 e8 19 00 23 ff    imul   ebp,DWORD PTR [eax+0x230019e8],0xffffffff
71e:    6b a8 89 80 e8 22 99    imul   ebp,DWORD PTR [eax+0x22e88089],0xffffff99
725:    7f b8                   jg     0x6df
727:    f9                      stc
728:    e9 16 b6 2f cb          jmp    0xcb2fbd43
72d:    e4 32                   in     al,0x32
72f:    1b e4                   sbb    esp,esp
731:    32 b8 f2 ea 12 e4       xor    bh,BYTE PTR [eax-0x1bed150e]
737:    03 83 42 84 0e 07       add    eax,DWORD PTR [ebx+0x70e8442]
73d:    0c 07                   or     al,0x7
73f:    07                      pop    es
740:    00 42 84                add    BYTE PTR [edx-0x7c],al
743:    13 06                   adc    eax,DWORD PTR [esi]
745:    17                      pop    ss
746:    06                      push   es
747:    12 08                   adc    cl,BYTE PTR [eax]
749:    0c 07                   or     al,0x7
74b:    09 00                   or     DWORD PTR [eax],eax
74d:    59                      pop    ecx
74e:    87 0a                   xchg   DWORD PTR [edx],ecx
750:    a0 06 12 0f 00          mov    al,ds:0xf1206
755:    09 37                   or     DWORD PTR [edi],esi
757:    53                      push   ebx
758:    20 83 b8 5d f0 b0       and    BYTE PTR [ebx-0x4f0fa248],al
75e:    ff 37                   push   DWORD PTR [edi]
760:    53                      push   ebx
761:    0c 83                   or     al,0x83
763:    23 32                   and    esi,DWORD PTR [edx]
765:    c6                      (bad)
766:    6e                      outs   dx,BYTE PTR ds:[esi]
767:    aa                      stos   BYTE PTR es:[edi],al
768:    b9 64 f4 71 ea          mov    ecx,0xea71f464
76d:    68 83 b9 fa 23          push   0x23fab983
772:    03 07                   add    eax,DWORD PTR [edi]
774:    96                      xchg   esi,eax
775:    73 b8                   jae    0x72f
777:    5d                      pop    ebp
778:    09 50 a0                or     DWORD PTR [eax-0x60],edx
77b:    23 05 e9 73 83 f4       and    eax,DWORD PTR ds:0xf48373e9
781:    97                      xchg   edi,eax
782:    23 06                   and    eax,DWORD PTR [esi]
784:    f6 88 23 09 83 aa f4    test   BYTE PTR [eax-0x557cf6dd],0xf4
78b:    97                      xchg   edi,eax
78c:    a8 27                   test   al,0x27
78e:    a9 68 e6 93 19          test   eax,0x1993e668
793:    ea 8f f9 83 b8 20 70    jmp    0x7020:0xb883f98f
79a:    e8 99 b8 20 a0          call   0xa020c038
79f:    83 ff ff                cmp    edi,0xffffffff