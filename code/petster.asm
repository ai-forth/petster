
petster.bin:     file format binary
petster.bin


Disassembly of section .data:

00000000 <.data>:
       0:	04          	lsrd
       1:	09          	dex
       2:	ff 64 d1    	stx	0x64d1
       5:	ff ff c4    	stx	0xffc4
       8:	00          	bgnd
       9:	99 7f       	adca	*0x7f
       b:	9a 0e       	oraa	*0xe
       d:	b8 23 b0    	eora	0x23b0
      10:	00          	bgnd
      11:	80 92       	suba	#0x92
      13:	16          	tab
      14:	44          	lsra
      15:	00          	bgnd
      16:	9a 0e       	oraa	*0xe
      18:	54          	lsrb
      19:	c7          	.byte	0xc7
      1a:	74 00 f6    	lsr	0xf6
      1d:	21 03       	brn	0x22
      1f:	25 b3       	bcs	0xffffffd4
      21:	54          	lsrb
      22:	cc 04 1a    	ldd	#0x41a
      25:	39          	rts
      26:	4e          	.byte	0x4e
      27:	52          	.byte	0x52
      28:	31          	ins
      29:	33          	pulb
      2a:	35          	txs
      2b:	37          	pshb
      2c:	a4 21       	anda	0x21,x
      2e:	39          	rts
      2f:	81 c3       	cmpa	#0xc3
      31:	24 ac       	bcc	0xffffffdf
      33:	24 00       	bcc	0x35
      35:	24 61       	bcc	0x98
      37:	24 cc       	bcc	0x5
      39:	d4 a7       	andb	*0xa7
      3b:	bd 2e b4    	jsr	0x2eb4
      3e:	51          	.byte	0x51
      3f:	54          	lsrb
      40:	c7          	.byte	0xc7
      41:	bd 05 23    	jsr	0x523
      44:	ff 74 66    	stx	0x7466
      47:	f6 21 96    	ldab	0x2196
      4a:	16          	tab
      4b:	3f          	swi
      4c:	04          	lsrd
      4d:	4c          	inca
      4e:	b9 00 04    	adca	0x4
      51:	54          	lsrb
      52:	b9 0c b8    	adca	0xcb8
      55:	5c          	incb
      56:	f0 d9 af    	subb	0xd9af
      59:	bd 06 52    	jsr	0x652
      5c:	5f          	clrb
      5d:	bd 09 53    	jsr	0x953
      60:	03          	fdiv
      61:	03          	fdiv
      62:	7b          	.byte	0x7b
      63:	a3 c6       	subd	0xc6,x
      65:	69 2d       	rol	0x2d,x
      67:	b4 53 bd    	anda	0x53bd
      6a:	27 ff       	beq	0x6b
      6c:	72          	.byte	0x72
      6d:	77 d4 a7    	asr	0xd4a7
      70:	ff 53 03    	stx	0x5303
      73:	03          	fdiv
      74:	7e a3 ad    	jmp	0xa3ad
      77:	b4 00 04    	anda	0x4
      7a:	16          	tab
      7b:	00          	bgnd
      7c:	02          	idiv
      7d:	05          	asld
      7e:	27 1a       	beq	0x9a
      80:	0d          	sec
      81:	23 0b       	bls	0x8e
      83:	f4 89 03    	andb	0x8903
      86:	0a          	clv
      87:	af 23       	sts	0x23,x
      89:	0a          	clv
      8a:	f4 89 03    	andb	0x8903
      8d:	01          	nop
      8e:	ad b4       	jsr	0xb4,x
      90:	51          	.byte	0x51
      91:	b9 03 d4    	adca	0x3d4
      94:	87          	.byte	0x87
      95:	23 4f       	bls	0xe6
      97:	f4 89 03    	andb	0x8903
      9a:	1a ad       	.byte	0x1a, 0xad
      9c:	b4 00 f6    	anda	0xf6
      9f:	a2 ef       	sbca	0xef,x
      a1:	88 04       	eora	#0x4
      a3:	16          	tab
      a4:	8a 61       	oraa	#0x61
      a6:	bf 0f bb    	sts	0xfbb
      a9:	64 ba       	lsr	0xba,x
      ab:	64 b9       	lsr	0xb9,x
      ad:	05          	asld
      ae:	f4 71 46    	andb	0x7146
      b1:	b8 ea ac    	eora	0xeaac
      b4:	eb aa       	addb	0xaa,x
      b6:	04          	lsrd
      b7:	16          	tab
      b8:	94 00       	anda	*0x0
      ba:	ef a8       	stx	0xa8,x
      bc:	1f f4 55 96 	brclr	0xf4,x, #0x55, 0x56
      c0:	a8 04       	eora	0x4,x
      c2:	16          	tab
      c3:	8a 51       	oraa	#0x51
      c5:	bf e5 bd    	sts	0xe5bd
      c8:	32          	pula
      c9:	74 64 f6    	lsr	0x64f6
      cc:	cf          	stop
      cd:	c6 e3       	ldab	#0xe3
      cf:	ff a3 ad    	stx	0xa3ad
      d2:	1f ff a3 b4 	brclr	0xff,x, #0xa3, 0x8a
      d6:	53          	comb
      d7:	f6 e1 1f    	ldab	0xe11f
      da:	ff 03 13    	stx	0x313
      dd:	e6 c7       	ldab	0xc7,x
      df:	04          	lsrd
      e0:	c3 d4 ab    	addd	#0xd4ab
      e3:	04          	lsrd
      e4:	16          	tab
      e5:	02          	idiv
      e6:	09          	dex
      e7:	05          	asld
      e8:	06          	tap
      e9:	13 0a 13 05 	brclr	*0xa, #0x13, 0xf2
      ed:	ff ff ff    	stx	0xffff
      f0:	ff ff ff    	stx	0xffff
      f3:	ff ff ff    	stx	0xffff
      f6:	ff ff ff    	stx	0xffff
      f9:	ff ff ff    	stx	0xffff
      fc:	ff ff ff    	stx	0xffff
      ff:	ff 23 0b    	stx	0x230b
     102:	f4 89 03    	andb	0x8903
     105:	0a          	clv
     106:	af 23       	sts	0x23,x
     108:	02          	idiv
     109:	54          	lsrb
     10a:	54          	lsrb
     10b:	8a 20       	oraa	#0x20
     10d:	54          	lsrb
     10e:	c7          	.byte	0xc7
     10f:	23 05       	bls	0x116
     111:	f4 89 03    	andb	0x8903
     114:	fc e6 1b    	ldd	0xe61b
     117:	94 76       	anda	*0x76
     119:	24 2f       	bcc	0x14a
     11b:	03          	fdiv
     11c:	5d          	tstb
     11d:	a3 ad       	subd	0xad,x
     11f:	b4 51 b9    	anda	0x51b9
     122:	02          	idiv
     123:	d4 87       	andb	*0x87
     125:	23 04       	bls	0x12b
     127:	f4 89 03    	andb	0x8903
     12a:	5d          	tstb
     12b:	a3 ad       	subd	0xad,x
     12d:	b4 00 e6    	anda	0xe6
     130:	35          	txs
     131:	f4 55 c6    	andb	0x55c6
     134:	57          	asrb
     135:	54          	lsrb
     136:	61          	.byte	0x61
     137:	ad 74       	jsr	0x74,x
     139:	02          	idiv
     13a:	f6 4a c6    	ldab	0x4ac6
     13d:	50          	negb
     13e:	54          	lsrb
     13f:	54          	lsrb
     140:	c6 4a       	ldab	#0x4a
     142:	12 35 32 50 	brset	*0x35, #0x32, 0x196
     146:	f4 55 c6    	andb	0x55c6
     149:	57          	asrb
     14a:	54          	lsrb
     14b:	cc 96 35    	ldd	#0x9635
     14e:	24 57       	bcc	0x1a7
     150:	ef 0b       	stx	0xb,x
     152:	1f f4 55 96 	brclr	0xf4,x, #0x55, 0xec
     156:	0b          	sev
     157:	04          	lsrd
     158:	16          	tab
     159:	01          	nop
     15a:	03          	fdiv
     15b:	05          	asld
     15c:	0b          	sev
     15d:	0d          	sec
     15e:	1a 27       	.byte	0x1a, 0x27
     160:	34          	des
     161:	bf 23 8a    	sts	0x238a
     164:	11          	cba
     165:	54          	lsrb
     166:	c7          	.byte	0xc7
     167:	74 00 f6    	lsr	0xf6
     16a:	71          	.byte	0x71
     16b:	c6 98       	ldab	#0x98
     16d:	54          	lsrb
     16e:	80 e6       	suba	#0xe6
     170:	77 54 cc    	asr	0x54cc
     173:	96 67       	ldaa	*0x67
     175:	24 aa       	bcc	0x121
     177:	c6 98       	ldab	#0x98
     179:	53          	comb
     17a:	fe 97 f7    	ldx	0x97f7
     17d:	ae 23       	lds	0x23,x
     17f:	14 e6 86    	bset	*0xe6, #0x86
     182:	d4 a3       	andb	*0xa3
     184:	23 05       	bls	0x18b
     186:	f4 65 fe    	andb	0x65fe
     189:	96 7b       	ldaa	*0x7b
     18b:	ff a8 fd    	stx	0xa8fd
     18e:	a0 18       	suba	0x18,x
     190:	b0 00 1f    	suba	0x1f
     193:	ff 03 c9    	stx	0x3c9
     196:	e6 63       	ldab	0x63,x
     198:	bf 23 ff    	sts	0x23ff
     19b:	a8 f0       	eora	0xf0,x
     19d:	c6 a6       	ldab	#0xa6
     19f:	bd 32 54    	jsr	0x3254
     1a2:	8f          	xgdx
     1a3:	1f 24 9a f4 	brclr	0x24,x, #0x9a, 0x19b
     1a7:	55          	.byte	0x55
     1a8:	96 61       	ldaa	*0x61
     1aa:	04          	lsrd
     1ab:	16          	tab
     1ac:	8a 41       	oraa	#0x41
     1ae:	54          	lsrb
     1af:	c7          	.byte	0xc7
     1b0:	74 00 f6    	lsr	0xf6
     1b3:	c6 c6       	ldab	#0xc6
     1b5:	ca 54       	orab	#0x54
     1b7:	80 f6       	suba	#0xf6
     1b9:	c6 c6       	ldab	#0xc6
     1bb:	c2 27       	sbcb	#0x27
     1bd:	2d 54       	blt	0x213
     1bf:	8f          	xgdx
     1c0:	24 ac       	bcc	0x16e
     1c2:	f4 55 c6    	andb	0x55c6
     1c5:	ca 54       	orab	#0x54
     1c7:	cc 96 b0    	ldd	#0x96b0
     1ca:	04          	lsrd
     1cb:	16          	tab
     1cc:	8a 31       	oraa	#0x31
     1ce:	54          	lsrb
     1cf:	c7          	.byte	0xc7
     1d0:	74 00 f6    	lsr	0xf6
     1d3:	ee c6       	ldx	0xc6,x
     1d5:	f2 03 fb    	sbcb	0x3fb
     1d8:	f6 e6 fd    	ldab	0xe6fd
     1db:	07          	tpa
     1dc:	94 7a       	anda	*0x7a
     1de:	e6 cc       	ldab	0xcc,x
     1e0:	f4 55 96    	andb	0x5596
     1e3:	cc 24 f2    	ldd	#0x24f2
     1e6:	03          	fdiv
     1e7:	fd 96 ee    	std	0x96ee
     1ea:	f4 55 c6    	andb	0x55c6
     1ed:	f2 54 cc    	sbcb	0x54cc
     1f0:	96 d0       	ldaa	*0xd0
     1f2:	04          	lsrd
     1f3:	16          	tab
     1f4:	ff ff ff    	stx	0xffff
     1f7:	ff ff ff    	stx	0xffff
     1fa:	ff ff ff    	stx	0xffff
     1fd:	ff ff ff    	stx	0xffff
     200:	8a 70       	oraa	#0x70
     202:	23 10       	bls	0x214
     204:	d4 5b       	andb	*0x5b
     206:	d4 62       	andb	*0x62
     208:	e6 42       	ldab	0x42,x
     20a:	af 03       	sts	0x3,x
     20c:	34          	des
     20d:	a3 c6       	subd	0xc6,x
     20f:	06          	tap
     210:	f2 27 d2    	sbcb	0x27d2
     213:	1c d4 8e    	bset	0xd4,x, #0x8e
     216:	23 14       	bls	0x22c
     218:	f4 65 44    	andb	0x6544
     21b:	00          	bgnd
     21c:	d4 62       	andb	*0x62
     21e:	df 96       	stx	*0x96
     220:	06          	tap
     221:	56          	rorb
     222:	1c 94 00    	bset	0x94,x, #0x00
     225:	44          	lsra
     226:	1c b4 67    	bset	0xb4,x, #0x67
     229:	b4 97 f6    	anda	0x97f6
     22c:	35          	txs
     22d:	12 29 d4 66 	brset	*0x29, #0xd4, 0x297
     231:	df c6       	stx	*0xc6
     233:	29 97       	bvs	0x1cc
     235:	b4 85 e6    	anda	0x85e6
     238:	06          	tap
     239:	d4 ab       	andb	*0xab
     23b:	d4 62       	andb	*0x62
     23d:	df c6       	stx	*0xc6
     23f:	3b          	rti
     240:	44          	lsra
     241:	06          	tap
     242:	04          	lsrd
     243:	16          	tab
     244:	00          	bgnd
     245:	85 89       	bita	#0x89
     247:	28 86       	bvc	0x1cf
     249:	21 20       	brn	0x26b
     24b:	00          	bgnd
     24c:	8a 40       	oraa	#0x40
     24e:	24 00       	bcc	0x250
     250:	22 00       	bhi	0x252
     252:	00          	bgnd
     253:	00          	bgnd
     254:	03          	fdiv
     255:	6e a3       	jmp	0xa3,x
     257:	f2 5e b8    	sbcb	0x5eb8
     25a:	22 a0       	bhi	0x1fc
     25c:	23 81       	bls	0x1df
     25e:	53          	comb
     25f:	7f 83 b8    	clr	0x83b8
     262:	22 f0       	bhi	0x254
     264:	03          	fdiv
     265:	7a ab 17    	dec	0xab17
     268:	a3 f4       	subd	0xf4,x
     26a:	89 2b       	adca	#0x2b
     26c:	a3 6b       	subd	0x6b,x
     26e:	83 82 00    	subd	#0x8200
     271:	02          	idiv
     272:	04          	lsrd
     273:	80 80       	suba	#0x80
     275:	80 84       	suba	#0x84
     277:	80 80       	suba	#0x80
     279:	80 1e       	suba	#0x1e
     27b:	15 32 33    	bclr	*0x32, #0x33
     27e:	46          	rora
     27f:	b5 03 f8    	bita	0x3f8
     282:	f6 8b 03    	ldab	0x8b03
     285:	07          	tpa
     286:	e7 03       	stab	0x3,x
     288:	b5 ad a3    	bita	0xada3
     28b:	96 8e       	ldaa	*0x8e
     28d:	a7 83       	staa	0x83,x
     28f:	a8 a3       	eora	0xa3,x
     291:	67 f8       	asr	0xf8,x
     293:	17          	tba
     294:	a3 f6       	subd	0xf6,x
     296:	a6 96       	ldaa	0x96,x
     298:	9d d4       	jsr	*0xd4
     29a:	a7 44       	staa	0x44,x
     29c:	a3 d4       	subd	0xd4,x
     29e:	a3 f4       	subd	0xf4,x
     2a0:	63 d4       	com	0xd4,x
     2a2:	a3 fd       	subd	0xfd,x
     2a4:	e4 65       	andb	0x65,x
     2a6:	ad 47       	jsr	0x47,x
     2a8:	53          	comb
     2a9:	0f          	sei
     2aa:	03          	fdiv
     2ab:	c3 a3 2d    	addd	#0xa32d
     2ae:	b4 53 e6    	anda	0x53e6
     2b1:	b4 d4 ab    	anda	0xd4ab
     2b4:	83 81 0a    	subd	#0x810a
     2b7:	c1 19       	cmpb	#0x19
     2b9:	e1 26       	cmpb	0x26,x
     2bb:	f1 35 00    	cmpb	0x3500
     2be:	00          	bgnd
     2bf:	b0 00 d0    	suba	0xd0
     2c2:	01          	nop
     2c3:	27 02       	beq	0x2c7
     2c5:	02          	idiv
     2c6:	1a b8       	.byte	0x1a, 0xb8
     2c8:	21 b0       	brn	0x27a
     2ca:	fd 83 bd    	std	0x83bd
     2cd:	01          	nop
     2ce:	23 09       	bls	0x2d9
     2d0:	b4 53 bd    	anda	0x53bd
     2d3:	02          	idiv
     2d4:	23 06       	bls	0x2dc
     2d6:	b4 53 b8    	anda	0x53b8
     2d9:	21 10       	brn	0x2eb
     2db:	f0 96 e4    	subb	0x96e4
     2de:	b0 ff d4    	suba	0xffd4
     2e1:	ab f4       	adda	0xf4,x
     2e3:	55          	.byte	0x55
     2e4:	83 ff ff    	subd	#0xffff
     2e7:	ff ff ff    	stx	0xffff
     2ea:	ff ff ff    	stx	0xffff
     2ed:	ff ff ff    	stx	0xffff
     2f0:	ff ff ff    	stx	0xffff
     2f3:	ff ff ff    	stx	0xffff
     2f6:	ff ff ff    	stx	0xffff
     2f9:	ff ff ff    	stx	0xffff
     2fc:	ff ff ff    	stx	0xffff
     2ff:	ff bd 64    	stx	0xbd64
     302:	74 64 bd    	lsr	0x64bd
     305:	00          	bgnd
     306:	96 09       	ldaa	*0x9
     308:	83 1d bc    	subd	#0x1dbc
     30b:	ba bb 14    	oraa	0xbb14
     30e:	ba 03 b9    	oraa	0x3b9
     311:	63 f4       	com	0xf4,x
     313:	71          	.byte	0x71
     314:	1c cb fb    	bset	0xcb,x, #0xfb
     317:	c6 38       	ldab	#0x38
     319:	f4 5a 96    	andb	0x5a96
     31c:	0e          	cli
     31d:	ea 10       	orab	0x10,x
     31f:	b9 63 f4    	adca	0x63f4
     322:	71          	.byte	0x71
     323:	1c fc c6    	bset	0xfc,x, #0xc6
     326:	3b          	rti
     327:	f4 5a c6    	andb	0x5ac6
     32a:	1f 23 46 6c 	brclr	0x23,x, #0x46, 0x39a
     32e:	b8 5a 20    	eora	0x5a20
     331:	18 a0 fd    	suba	0xfd,y
     334:	03          	fdiv
     335:	fb e6 09    	addb	0xe609
     338:	97 a7       	staa	*0xa7
     33a:	83 fd 03    	subd	#0xfd03
     33d:	5e          	.byte	0x5e
     33e:	a3 c6       	subd	0xc6,x
     340:	5c          	incb
     341:	aa b8       	oraa	0xb8,x
     343:	5b          	.byte	0x5b
     344:	f0 37 17    	subb	0x3717
     347:	c8 60       	eorb	#0x60
     349:	a9 e6       	adca	0xe6,x
     34b:	53          	comb
     34c:	c6 5c       	ldab	#0x5c
     34e:	37          	pshb
     34f:	17          	tba
     350:	a9 18       	adca	0x18,x
     352:	1a 97       	.byte	0x1a, 0x97
     354:	f0 67 69    	subb	0x6769
     357:	f6 5c fd    	ldab	0x5cfd
     35a:	6a ad       	dec	0xad,x
     35c:	fd 97 83    	std	0x9783
     35f:	00          	bgnd
     360:	00          	bgnd
     361:	03          	fdiv
     362:	04          	lsrd
     363:	05          	asld
     364:	23 1c       	bls	0x382
     366:	89 40       	adca	#0x40
     368:	b8 5a a0    	eora	0x5aa0
     36b:	bc 14 27    	cpx	0x1427
     36e:	d4 5b       	andb	*0x5b
     370:	ba 96 bb    	oraa	0x96bb
     373:	32          	pula
     374:	b9 5f f4    	adca	0x5ff4
     377:	71          	.byte	0x71
     378:	f4 97 ea    	andb	0x97ea
     37b:	80 27       	suba	#0x27
     37d:	97 a7       	staa	*0xa7
     37f:	83 f4 5a    	subd	#0xf45a
     382:	96 72       	ldaa	*0x72
     384:	eb 74       	addb	0x74,x
     386:	b8 5c a0    	eora	0x5ca0
     389:	05          	asld
     38a:	fb 96 90    	addb	0x9690
     38d:	b8 5a f0    	eora	0x5af0
     390:	ba 0a 97    	oraa	0xa97
     393:	67 ab       	asr	0xab,x
     395:	f6 9b 99    	ldab	0x9b99
     398:	bf 64 9d    	sts	0x649d
     39b:	89 40       	adca	#0x40
     39d:	fc 96 ac    	ldd	0x96ac
     3a0:	09          	dex
     3a1:	92 ac       	sbca	*0xac
     3a3:	15 89 40    	bclr	*0x89, #0x40
     3a6:	d4 96       	andb	*0x96
     3a8:	bc 01 64    	cpx	0x164
     3ab:	6d b8       	tst	0xb8,x
     3ad:	5c          	incb
     3ae:	f0 96 cc    	subb	0x96cc
     3b1:	d4 62       	andb	*0x62
     3b3:	e6 ba       	ldab	0xba,x
     3b5:	15 89 40    	bclr	*0x89, #0x40
     3b8:	44          	lsra
     3b9:	00          	bgnd
     3ba:	ea 9d       	orab	0x9d,x
     3bc:	fc c6 c0    	ldd	0xc6c0
     3bf:	cc ed 8a    	ldd	#0xed8a
     3c2:	1d 0a 53    	bclr	0xa,x, #0x53
     3c5:	01          	nop
     3c6:	c6 cc       	ldab	#0xcc
     3c8:	f4 55 96    	andb	0x5596
     3cb:	8a 15       	oraa	#0x15
     3cd:	89 40       	adca	#0x40
     3cf:	97 83       	staa	*0x83
     3d1:	d5 af       	bitb	*0xaf
     3d3:	09          	dex
     3d4:	72          	.byte	0x72
     3d5:	dc b8       	ldd	*0xb8
     3d7:	84 b9       	anda	#0xb9
     3d9:	04          	lsrd
     3da:	64 e2       	lsr	0xe2,x
     3dc:	b8 80 b9    	eora	0x80b9
     3df:	08          	inx
     3e0:	64 e2       	lsr	0xe2,x
     3e2:	ba 28 ea    	oraa	0x28ea
     3e5:	e4 09       	andb	0x9,x
     3e7:	59          	rolb
     3e8:	c6 f4       	ldab	#0xf4
     3ea:	18 ba       	.byte	0x18, 0xba
     3ec:	60 ea       	neg	0xea,x
     3ee:	ed 09       	std	0x9,x
     3f0:	59          	rolb
     3f1:	c6 f4       	ldab	#0xf4
     3f3:	18 b9       	.byte	0x18, 0xb9
     3f5:	5c          	incb
     3f6:	f8 a1 ff    	eorb	0xa1ff
     3f9:	15 93 ff    	bclr	*0x93, #0xff
     3fc:	ff ff ff    	stx	0xffff
     3ff:	ff bd 01    	stx	0xbd01
     402:	bc 00 bb    	cpx	0xbb
     405:	38          	pulx
     406:	ba 08 b9    	oraa	0x8b9
     409:	63 f4       	com	0xf4,x
     40b:	71          	.byte	0x71
     40c:	97 1c       	staa	*0x1c
     40e:	56          	rorb
     40f:	13 a7 fc ad 	brclr	*0xa7, #0xfc, 0x3c0
     413:	fb a8 f0    	addb	0xa8f0
     416:	67 a0       	asr	0xa0,x
     418:	ea 08       	orab	0x8,x
     41a:	1b          	aba
     41b:	fd 37 17    	std	0x3717
     41e:	6c 03       	inc	0x3,x
     420:	ce f6 28    	ldx	#0xf628
     423:	fc 03 38    	ldd	0x338
     426:	e6 06       	ldab	0x6,x
     428:	23 1a       	bls	0x444
     42a:	f4 89 03    	andb	0x8903
     42d:	3e          	wai
     42e:	ac bb       	cpx	0xbb,x
     430:	00          	bgnd
     431:	b8 51 b9    	eora	0x51b9
     434:	19          	daa
     435:	c8 f0       	eorb	#0xf0
     437:	67 a0       	asr	0xa0,x
     439:	e9 35       	adcb	0x35,x
     43b:	f6 49 fb    	ldab	0x49fb
     43e:	cb 96       	addb	#0x96
     440:	4b          	.byte	0x4b
     441:	b9 64 f4    	adca	0x64f4
     444:	71          	.byte	0x71
     445:	ed 28       	std	0x28,x
     447:	84 72       	anda	#0x72
     449:	bb 07 23    	adda	0x723
     44c:	07          	tpa
     44d:	f4 89 03    	andb	0x8903
     450:	fd 6c ac    	std	0x6cac
     453:	03          	fdiv
     454:	c2 f6       	sbcb	#0xf6
     456:	5b          	.byte	0x5b
     457:	bc 3e 84    	cpx	0x3e84
     45a:	61          	.byte	0x61
     45b:	03          	fdiv
     45c:	a8 e6       	eora	0xe6,x
     45e:	61          	.byte	0x61
     45f:	bc 57 b9    	cpx	0x57b9
     462:	08          	inx
     463:	fc a8 89    	ldd	0xa889
     466:	80 e8       	suba	#0xe8
     468:	67 99       	asr	0x99,x
     46a:	7f a8 e8    	clr	0xa8e8
     46d:	6c e9       	inc	0xe9,x
     46f:	64 ed       	lsr	0xed,x
     471:	31          	ins
     472:	23 0a       	bls	0x47e
     474:	e4 65       	andb	0x65,x
     476:	23 04       	bls	0x47c
     478:	f4 89 03    	andb	0x8903
     47b:	a4 a3       	anda	0xa3,x
     47d:	ae fe       	lds	0xfe,x
     47f:	a3 d2       	subd	0xd2,x
     481:	86 d4       	ldaa	#0xd4
     483:	8e 84 9d    	lds	#0x849d
     486:	ad 53       	jsr	0x53,x
     488:	0f          	sei
     489:	03          	fdiv
     48a:	e2 a3       	sbcb	0xa3,x
     48c:	2d 47       	blt	0x4d5
     48e:	53          	comb
     48f:	03          	fdiv
     490:	c6 99       	ldab	#0x99
     492:	03          	fdiv
     493:	f1 a3 b4    	cmpb	0xa3b4
     496:	53          	comb
     497:	84 9d       	anda	#0x9d
     499:	b4 00 f6    	anda	0xf6
     49c:	a3 fe       	subd	0xfe,x
     49e:	1e a3 f2 7e 	brset	0xa3,x, #0xf2, 0x520
     4a2:	97 83       	staa	*0x83
     4a4:	a8 b8       	eora	0xb8,x
     4a6:	c5 d7       	bitb	#0xd7
     4a8:	82 fb       	sbca	#0xfb
     4aa:	c1 82       	cmpb	#0x82
     4ac:	fc c0 82    	ldd	0xc082
     4af:	fc c0 82    	ldd	0xc082
     4b2:	fc c0 82    	ldd	0xc082
     4b5:	fc c0 02    	ldd	0xc002
     4b8:	e8 c1       	eorb	0xc1,x
     4ba:	88 d1       	eora	#0xd1
     4bc:	f8 c1 84    	eorb	0xc184
     4bf:	d1 f8       	cmpb	*0xf8
     4c1:	c1 88       	cmpb	#0x88
     4c3:	d1 68       	cmpb	*0x68
     4c5:	e9 c0       	adcb	0xc0,x
     4c7:	fa c0 ea    	orab	0xc0ea
     4ca:	c0 fa       	subb	#0xfa
     4cc:	c0 ed       	subb	#0xed
     4ce:	c0 fa       	subb	#0xfa
     4d0:	c0 ea       	subb	#0xea
     4d2:	c0 fa       	subb	#0xfa
     4d4:	c0 f9       	subb	#0xf9
     4d6:	01          	nop
     4d7:	c2 81       	sbcb	#0x81
     4d9:	fb c2 81    	addb	0xc281
     4dc:	fb c2 81    	addb	0xc281
     4df:	fb c2 01    	addb	0xc201
     4e2:	0d          	sec
     4e3:	13 1a 20 0d 	brclr	*0x1a, #0x20, 0x4f4
     4e7:	0d          	sec
     4e8:	0d          	sec
     4e9:	0d          	sec
     4ea:	01          	nop
     4eb:	02          	idiv
     4ec:	05          	asld
     4ed:	0b          	sev
     4ee:	0e          	cli
     4ef:	11          	cba
     4f0:	17          	tba
     4f1:	17          	tba
     4f2:	05          	asld
     4f3:	09          	dex
     4f4:	06          	tap
     4f5:	ff ff ff    	stx	0xffff
     4f8:	ff ff ff    	stx	0xffff
     4fb:	ff ff ff    	stx	0xffff
     4fe:	ff ff 23    	stx	0xff23
     501:	0a          	clv
     502:	b4 5f b4    	anda	0x5fb4
     505:	97 f6       	staa	*0xf6
     507:	16          	tab
     508:	b2 10 52    	sbca	0x1052
     50b:	04          	lsrd
     50c:	ed 04       	std	0x4,x
     50e:	a4 85       	anda	0x85,x
     510:	b4 85 b4    	anda	0x85b4
     513:	2b a4       	bmi	0x4b9
     515:	1c bd 13    	bset	0xbd,x, #0x13
     518:	23 05       	bls	0x51f
     51a:	b4 53 e6    	anda	0x53e6
     51d:	2a bd       	bpl	0x4dc
     51f:	03          	fdiv
     520:	23 0a       	bls	0x52c
     522:	f4 65 d4    	andb	0x65d4
     525:	ab ed       	adda	0xed,x
     527:	20 97       	bra	0x4c0
     529:	a7 83       	staa	0x83,x
     52b:	bd 1a bc    	jsr	0x1abc
     52e:	03          	fdiv
     52f:	f4 80 b4    	andb	0x80b4
     532:	5f          	clrb
     533:	b4 97 f6    	anda	0x97f6
     536:	5d          	tstb
     537:	92 3b       	sbca	*0x3b
     539:	bc 03 52    	cpx	0x352
     53c:	33          	pulb
     53d:	cc fc c6    	ldd	#0xfcc6
     540:	46          	rora
     541:	ed 33       	std	0x33,x
     543:	a7 a4       	staa	0xa4,x
     545:	85 b4       	bita	#0xb4
     547:	85 bd       	bita	#0xbd
     549:	01          	nop
     54a:	b8 5e f0    	eora	0x5ef0
     54d:	d3 0f       	addd	*0xf
     54f:	a4 53       	anda	0x53,x
     551:	f4 80 b4    	andb	0x80b4
     554:	5f          	clrb
     555:	b4 97 f6    	anda	0x97f6
     558:	5d          	tstb
     559:	52          	.byte	0x52
     55a:	55          	.byte	0x55
     55b:	ed 55       	std	0x55,x
     55d:	a4 85       	anda	0x85,x
     55f:	2d 03       	blt	0x564
     561:	ff f6 65    	stx	0xf665
     564:	27 17       	beq	0x57d
     566:	2d b8       	blt	0x520
     568:	5e          	.byte	0x5e
     569:	b9 0a a0    	adca	0xaa0
     56c:	18 27       	.byte	0x18, 0x27
     56e:	e9 6b       	adcb	0x6b,x
     570:	b8 5f b0    	eora	0x5fb0
     573:	1a b8       	.byte	0x1a, 0xb8
     575:	60 b0       	neg	0xb0,x
     577:	ce b8 64    	ldx	#0xb864
     57a:	b0 03 d5    	suba	0x3d5
     57d:	bf 20 55    	sts	0x2055
     580:	23 ff       	bls	0x581
     582:	62          	.byte	0x62
     583:	25 93       	bcs	0x518
     585:	e7 67       	stab	0x67,x
     587:	ab b8       	adda	0xb8,x
     589:	5f          	clrb
     58a:	b0 00 b4    	suba	0xb4
     58d:	97 d2       	staa	*0xd2
     58f:	8c 35 27    	cpx	#0x3527
     592:	90 fb       	suba	*0xfb
     594:	f7 fb 83    	stab	0xfb83
     597:	f4 97 ba    	andb	0x97ba
     59a:	55          	.byte	0x55
     59b:	b8 64 f0    	eora	0x64f0
     59e:	96 c0       	ldaa	*0xc0
     5a0:	10          	sba
     5a1:	18 f0       	.byte	0x18, 0xf0
     5a3:	03          	fdiv
     5a4:	d8 e6       	eorb	*0xe6
     5a6:	b3 ba 15    	subd	0xba15
     5a9:	03          	fdiv
     5aa:	ec e6       	ldd	0xe6,x
     5ac:	b3 ba 95    	subd	0xba95
     5af:	03          	fdiv
     5b0:	3d          	mul
     5b1:	f6 c0 b9    	ldab	0xc0b9
     5b4:	61          	.byte	0x61
     5b5:	11          	cba
     5b6:	f1 d3 06    	cmpb	0xd306
     5b9:	96 c0       	ldaa	*0xc0
     5bb:	a1 fa       	cmpa	0xfa,x
     5bd:	d3 0c       	addd	*0xc
     5bf:	aa b8       	oraa	0xb8,x
     5c1:	62          	.byte	0x62
     5c2:	b9 60 f0    	adca	0x60f0
     5c5:	c6 d9       	ldab	#0xd9
     5c7:	b0 00 18    	suba	0x18
     5ca:	f0 03 f8    	subb	0x3f8
     5cd:	fa e6 d2    	orab	0xe6d2
     5d0:	d3 30       	addd	*0x30
     5d2:	d3 03       	addd	*0x3
     5d4:	aa f1       	oraa	0xf1,x
     5d6:	c6 d9       	ldab	#0xd9
     5d8:	11          	cba
     5d9:	f1 c6 e0    	cmpb	0xc6e0
     5dc:	fa 53 3f    	orab	0x533f
     5df:	aa fa       	oraa	0xfa,x
     5e1:	f7 fa 83    	stab	0xfa83
     5e4:	ff ff ff    	stx	0xffff
     5e7:	ff ff ff    	stx	0xffff
     5ea:	ff ff ff    	stx	0xffff
     5ed:	ff ff ff    	stx	0xffff
     5f0:	ff ff ff    	stx	0xffff
     5f3:	ff ff ff    	stx	0xffff
     5f6:	ff ff ff    	stx	0xffff
     5f9:	ff ff ff    	stx	0xffff
     5fc:	ff ff ff    	stx	0xffff
     5ff:	ff d5 a9    	stx	0xd5a9
     602:	23 fd       	bls	0x601
     604:	62          	.byte	0x62
     605:	09          	dex
     606:	37          	pshb
     607:	b8 67 67    	eora	0x6767
     60a:	f0 f7 a0    	subb	0xf7a0
     60d:	c8 07       	eorb	#0x7
     60f:	c6 15       	ldab	#0x15
     611:	f0 17 96    	subb	0x1796
     614:	1c 20 c8    	bset	0x20,x, #0xc8
     617:	a0 c8       	suba	0xc8,x
     619:	97 f0       	staa	*0xf0
     61b:	67 a0       	asr	0xa0,x
     61d:	f9 2f b3    	adcb	0x2fb3
     620:	21 8a       	brn	0x5ac
     622:	80 26       	suba	#0x26
     624:	37          	pshb
     625:	b8 01 e8    	eora	0x1e8
     628:	27 b8       	beq	0x5e2
     62a:	62          	.byte	0x62
     62b:	10          	sba
     62c:	18 f0       	.byte	0x18, 0xf0
     62e:	26 33       	bne	0x663
     630:	27 c4       	beq	0x5f6
     632:	36          	psha
     633:	17          	tba
     634:	c6 37       	ldab	#0x37
     636:	a0 9a       	suba	0x9a,x
     638:	7f 23 3d    	clr	0x233d
     63b:	2f 93       	ble	0x5d0
     63d:	3e          	wai
     63e:	be 18 b8    	lds	0x18b8
     641:	5f          	clrb
     642:	f0 ad c6    	subb	0xadc6
     645:	48          	asla
     646:	c8 f0       	eorb	#0xf0
     648:	ac 90       	cpx	0x90,x
     64a:	23 4e       	bls	0x69a
     64c:	2f 93       	ble	0x5e1
     64e:	4f          	clra
     64f:	fc ed 53    	ldd	0xed53
     652:	27 ee       	beq	0x642
     654:	48          	asla
     655:	27 90       	beq	0x5e7
     657:	23 20       	bls	0x679
     659:	2f 93       	ble	0x5ee
     65b:	b8 57 a0    	eora	0x57a0
     65e:	18 b0       	.byte	0x18, 0xb0
     660:	0a          	clv
     661:	83 b9 62    	subd	#0xb962
     664:	f4 71 b8    	andb	0x71b8
     667:	59          	rolb
     668:	80 37       	suba	#0x37
     66a:	53          	comb
     66b:	1f a9 20 d0 	brclr	0xa9,x, #0x20, 0x63f
     66f:	c8 c6       	eorb	#0xc6
     671:	76 b0 0a    	ror	0xb00a
     674:	c4 80       	andb	#0x80
     676:	f0 c6 7d    	subb	0xc67d
     679:	07          	tpa
     67a:	a0 96       	suba	0x96,x
     67c:	80 c8       	suba	#0xc8
     67e:	f9 a0 b8    	adcb	0xa0b8
     681:	57          	asrb
     682:	f0 47 67    	subb	0x4767
     685:	f0 83 f4    	subb	0x83f4
     688:	97 e6       	staa	*0xe6
     68a:	a2 59       	sbca	0x59,x
     68c:	c6 a2       	ldab	#0xa2
     68e:	72          	.byte	0x72
     68f:	af 52       	sts	0x52,x
     691:	ab 32       	adda	0x32,x
     693:	a7 12       	staa	0x12,x
     695:	a3 ba       	subd	0xba,x
     697:	14 89 80    	bset	*0x89, #0x80
     69a:	f4 6f 99    	andb	0x6f99
     69d:	7f f4 6f    	clr	0xf46f
     6a0:	ea 98       	orab	0x98,x
     6a2:	83 bc 39    	subd	#0xbc39
     6a5:	e4 00       	andb	0x0,x
     6a7:	bc 41 e4    	cpx	0x41e4
     6aa:	00          	bgnd
     6ab:	bc 4d e4    	cpx	0x4de4
     6ae:	00          	bgnd
     6af:	bc 14 bb    	cpx	0x14bb
     6b2:	02          	idiv
     6b3:	89 80       	adca	#0x80
     6b5:	b9 0a f4    	adca	0xaf4
     6b8:	71          	.byte	0x71
     6b9:	99 7f       	adca	*0x7f
     6bb:	b9 0a f4    	adca	0xaf4
     6be:	71          	.byte	0x71
     6bf:	eb b3       	addb	0xb3,x
     6c1:	f4 6f ec    	andb	0x6fec
     6c4:	b1 83 ff    	cmpa	0x83ff
     6c7:	ff ff ff    	stx	0xffff
     6ca:	ff ff ff    	stx	0xffff
     6cd:	ff ff ff    	stx	0xffff
     6d0:	ff ff ff    	stx	0xffff
     6d3:	ff ff ff    	stx	0xffff
     6d6:	ff ff ff    	stx	0xffff
     6d9:	ff ff ff    	stx	0xffff
     6dc:	ff ff ff    	stx	0xffff
     6df:	ff ff ff    	stx	0xffff
     6e2:	ff ff ff    	stx	0xffff
     6e5:	ff ff ff    	stx	0xffff
     6e8:	ff ff ff    	stx	0xffff
     6eb:	ff ff ff    	stx	0xffff
     6ee:	ff ff ff    	stx	0xffff
     6f1:	ff ff ff    	stx	0xffff
     6f4:	ff ff ff    	stx	0xffff
     6f7:	ff ff ff    	stx	0xffff
     6fa:	ff ff ff    	stx	0xffff
     6fd:	ff ff ff    	stx	0xffff
     700:	fc a3 ab    	ldd	0xa3ab
     703:	1c fc a3    	bset	0xfc,x, #0xa3
     706:	c6 38       	ldab	#0x38
     708:	85 f2       	bita	#0xf2
     70a:	0c          	clc
     70b:	95 53       	bita	*0x53
     70d:	7f aa 1c    	clr	0xaa1c
     710:	b8 e9 fc    	eora	0xe9fc
     713:	a3 a9       	subd	0xa9,x
     715:	00          	bgnd
     716:	f8 6b a8    	eorb	0x6ba8
     719:	e8 19       	eorb	0x19,x
     71b:	00          	bgnd
     71c:	23 ff       	bls	0x71d
     71e:	6b          	.byte	0x6b
     71f:	a8 89       	eora	0x89,x
     721:	80 e8       	suba	#0xe8
     723:	22 99       	bhi	0x6be
     725:	7f b8 f9    	clr	0xb8f9
     728:	e9 16       	adcb	0x16,x
     72a:	b6 2f cb    	ldaa	0x2fcb
     72d:	e4 32       	andb	0x32,x
     72f:	1b          	aba
     730:	e4 32       	andb	0x32,x
     732:	b8 f2 ea    	eora	0xf2ea
     735:	12 e4 03 83 	brset	*0xe4, #0x03, 0x6bc
     739:	42          	.byte	0x42
     73a:	84 0e       	anda	#0xe
     73c:	07          	tpa
     73d:	0c          	clc
     73e:	07          	tpa
     73f:	07          	tpa
     740:	00          	bgnd
     741:	42          	.byte	0x42
     742:	84 13       	anda	#0x13
     744:	06          	tap
     745:	17          	tba
     746:	06          	tap
     747:	12 08 0c 07 	brset	*0x8, #0x0c, 0x752
     74b:	09          	dex
     74c:	00          	bgnd
     74d:	59          	rolb
     74e:	87          	.byte	0x87
     74f:	0a          	clv
     750:	a0 06       	suba	0x6,x
     752:	12 0f 00 09 	brset	*0xf, #0x00, 0x75f
     756:	37          	pshb
     757:	53          	comb
     758:	20 83       	bra	0x6dd
     75a:	b8 5d f0    	eora	0x5df0
     75d:	b0 ff 37    	suba	0xff37
     760:	53          	comb
     761:	0c          	clc
     762:	83 23 32    	subd	#0x2332
     765:	c6 6e       	ldab	#0x6e
     767:	aa b9       	oraa	0xb9,x
     769:	64 f4       	lsr	0xf4,x
     76b:	71          	.byte	0x71
     76c:	ea 68       	orab	0x68,x
     76e:	83 b9 fa    	subd	#0xb9fa
     771:	23 03       	bls	0x776
     773:	07          	tpa
     774:	96 73       	ldaa	*0x73
     776:	b8 5d 09    	eora	0x5d09
     779:	50          	negb
     77a:	a0 23       	suba	0x23,x
     77c:	05          	asld
     77d:	e9 73       	adcb	0x73,x
     77f:	83 f4 97    	subd	#0xf497
     782:	23 06       	bls	0x78a
     784:	f6 88 23    	ldab	0x8823
     787:	09          	dex
     788:	83 aa f4    	subd	#0xaaf4
     78b:	97 a8       	staa	*0xa8
     78d:	27 a9       	beq	0x738
     78f:	68 e6       	asl	0xe6,x
     791:	93 19       	subd	*0x19
     793:	ea 8f       	orab	0x8f,x
     795:	f9 83 b8    	adcb	0x83b8
     798:	20 70       	bra	0x80a
     79a:	e8 99       	eorb	0x99,x
     79c:	b8 20 a0    	eora	0x20a0
     79f:	83 ff ff    	subd	#0xffff
     7a2:	ff ff ff    	stx	0xffff
     7a5:	ff ff ff    	stx	0xffff
     7a8:	ff ff ff    	stx	0xffff
     7ab:	ff ff ff    	stx	0xffff
     7ae:	ff ff ff    	stx	0xffff
     7b1:	ff ff ff    	stx	0xffff
     7b4:	ff ff ff    	stx	0xffff
     7b7:	ff ff ff    	stx	0xffff
     7ba:	ff ff ff    	stx	0xffff
     7bd:	ff ff ff    	stx	0xffff
     7c0:	ff ff ff    	stx	0xffff
     7c3:	ff ff ff    	stx	0xffff
     7c6:	ff ff ff    	stx	0xffff
     7c9:	ff ff ff    	stx	0xffff
     7cc:	ff ff ff    	stx	0xffff
     7cf:	ff ff ff    	stx	0xffff
     7d2:	ff ff ff    	stx	0xffff
     7d5:	ff ff ff    	stx	0xffff
     7d8:	ff ff ff    	stx	0xffff
     7db:	ff ff ff    	stx	0xffff
     7de:	ff ff ff    	stx	0xffff
     7e1:	ff ff ff    	stx	0xffff
     7e4:	ff ff ff    	stx	0xffff
     7e7:	ff ff ff    	stx	0xffff
     7ea:	ff ff ff    	stx	0xffff
     7ed:	ff ff ff    	stx	0xffff
     7f0:	ff ff ff    	stx	0xffff
     7f3:	ff ff ff    	stx	0xffff
     7f6:	ff ff ff    	stx	0xffff
     7f9:	ff ff ff    	stx	0xffff
     7fc:	ff ff ff    	stx	0xffff
     7ff:	ff ff ff    	stx	0xffff
     802:	ff ff ff    	stx	0xffff
     805:	ff ff ff    	stx	0xffff
     808:	ff ff ff    	stx	0xffff
     80b:	ff ff ff    	stx	0xffff
     80e:	ff ff ff    	stx	0xffff
     811:	ff ff ff    	stx	0xffff
     814:	ff ff ff    	stx	0xffff
     817:	ff ff ff    	stx	0xffff
     81a:	ff ff ff    	stx	0xffff
     81d:	ff ff ff    	stx	0xffff
     820:	ff ff ff    	stx	0xffff
     823:	ff ff ff    	stx	0xffff
     826:	ff ff ff    	stx	0xffff
     829:	ff ff ff    	stx	0xffff
     82c:	ff ff ff    	stx	0xffff
     82f:	ff ff ff    	stx	0xffff
     832:	ff ff ff    	stx	0xffff
     835:	ff ff ff    	stx	0xffff
     838:	ff ff ff    	stx	0xffff
     83b:	ff ff ff    	stx	0xffff
     83e:	ff ff ff    	stx	0xffff
     841:	ff ff ff    	stx	0xffff
     844:	ff ff ff    	stx	0xffff
     847:	ff ff ff    	stx	0xffff
     84a:	ff ff ff    	stx	0xffff
     84d:	ff ff ff    	stx	0xffff
     850:	ff ff ff    	stx	0xffff
     853:	ff ff ff    	stx	0xffff
     856:	ff ff ff    	stx	0xffff
     859:	ff ff ff    	stx	0xffff
     85c:	ff ff ff    	stx	0xffff
     85f:	ff ff ff    	stx	0xffff
     862:	ff ff ff    	stx	0xffff
     865:	ff ff ff    	stx	0xffff
     868:	ff ff ff    	stx	0xffff
     86b:	ff ff ff    	stx	0xffff
     86e:	ff ff ff    	stx	0xffff
     871:	ff ff ff    	stx	0xffff
     874:	ff ff ff    	stx	0xffff
     877:	ff ff ff    	stx	0xffff
     87a:	ff ff ff    	stx	0xffff
     87d:	ff ff ff    	stx	0xffff
     880:	ff ff ff    	stx	0xffff
     883:	ff ff ff    	stx	0xffff
     886:	ff ff ff    	stx	0xffff
     889:	ff ff ff    	stx	0xffff
     88c:	ff ff ff    	stx	0xffff
     88f:	ff ff ff    	stx	0xffff
     892:	ff ff ff    	stx	0xffff
     895:	ff ff ff    	stx	0xffff
     898:	ff ff ff    	stx	0xffff
     89b:	ff ff ff    	stx	0xffff
     89e:	ff ff ff    	stx	0xffff
     8a1:	ff ff ff    	stx	0xffff
     8a4:	ff ff ff    	stx	0xffff
     8a7:	ff ff ff    	stx	0xffff
     8aa:	ff ff ff    	stx	0xffff
     8ad:	ff ff ff    	stx	0xffff
     8b0:	ff ff ff    	stx	0xffff
     8b3:	ff ff ff    	stx	0xffff
     8b6:	ff ff ff    	stx	0xffff
     8b9:	ff ff ff    	stx	0xffff
     8bc:	ff ff ff    	stx	0xffff
     8bf:	ff ff ff    	stx	0xffff
     8c2:	ff ff ff    	stx	0xffff
     8c5:	ff ff ff    	stx	0xffff
     8c8:	ff ff ff    	stx	0xffff
     8cb:	ff ff ff    	stx	0xffff
     8ce:	ff ff ff    	stx	0xffff
     8d1:	ff ff ff    	stx	0xffff
     8d4:	ff ff ff    	stx	0xffff
     8d7:	ff ff ff    	stx	0xffff
     8da:	ff ff ff    	stx	0xffff
     8dd:	ff ff ff    	stx	0xffff
     8e0:	ff ff ff    	stx	0xffff
     8e3:	ff ff ff    	stx	0xffff
     8e6:	ff ff ff    	stx	0xffff
     8e9:	ff ff ff    	stx	0xffff
     8ec:	ff ff ff    	stx	0xffff
     8ef:	ff ff ff    	stx	0xffff
     8f2:	ff ff ff    	stx	0xffff
     8f5:	ff ff ff    	stx	0xffff
     8f8:	ff ff ff    	stx	0xffff
     8fb:	ff ff ff    	stx	0xffff
     8fe:	ff ff ff    	stx	0xffff
     901:	ff ff ff    	stx	0xffff
     904:	ff ff ff    	stx	0xffff
     907:	ff ff ff    	stx	0xffff
     90a:	ff ff ff    	stx	0xffff
     90d:	ff ff ff    	stx	0xffff
     910:	ff ff ff    	stx	0xffff
     913:	ff ff ff    	stx	0xffff
     916:	ff ff ff    	stx	0xffff
     919:	ff ff ff    	stx	0xffff
     91c:	ff ff ff    	stx	0xffff
     91f:	ff ff ff    	stx	0xffff
     922:	ff ff ff    	stx	0xffff
     925:	ff ff ff    	stx	0xffff
     928:	ff ff ff    	stx	0xffff
     92b:	ff ff ff    	stx	0xffff
     92e:	ff ff ff    	stx	0xffff
     931:	ff ff ff    	stx	0xffff
     934:	ff ff ff    	stx	0xffff
     937:	ff ff ff    	stx	0xffff
     93a:	ff ff ff    	stx	0xffff
     93d:	ff ff ff    	stx	0xffff
     940:	ff ff ff    	stx	0xffff
     943:	ff ff ff    	stx	0xffff
     946:	ff ff ff    	stx	0xffff
     949:	ff ff ff    	stx	0xffff
     94c:	ff ff ff    	stx	0xffff
     94f:	ff ff ff    	stx	0xffff
     952:	ff ff ff    	stx	0xffff
     955:	ff ff ff    	stx	0xffff
     958:	ff ff ff    	stx	0xffff
     95b:	ff ff ff    	stx	0xffff
     95e:	ff ff ff    	stx	0xffff
     961:	ff ff ff    	stx	0xffff
     964:	ff ff ff    	stx	0xffff
     967:	ff ff ff    	stx	0xffff
     96a:	ff ff ff    	stx	0xffff
     96d:	ff ff ff    	stx	0xffff
     970:	ff ff ff    	stx	0xffff
     973:	ff ff ff    	stx	0xffff
     976:	ff ff ff    	stx	0xffff
     979:	ff ff ff    	stx	0xffff
     97c:	ff ff ff    	stx	0xffff
     97f:	ff ff ff    	stx	0xffff
     982:	ff ff ff    	stx	0xffff
     985:	ff ff ff    	stx	0xffff
     988:	ff ff ff    	stx	0xffff
     98b:	ff ff ff    	stx	0xffff
     98e:	ff ff ff    	stx	0xffff
     991:	ff ff ff    	stx	0xffff
     994:	ff ff ff    	stx	0xffff
     997:	ff ff ff    	stx	0xffff
     99a:	ff ff ff    	stx	0xffff
     99d:	ff ff ff    	stx	0xffff
     9a0:	ff ff ff    	stx	0xffff
     9a3:	ff ff ff    	stx	0xffff
     9a6:	ff ff ff    	stx	0xffff
     9a9:	ff ff ff    	stx	0xffff
     9ac:	ff ff ff    	stx	0xffff
     9af:	ff ff ff    	stx	0xffff
     9b2:	ff ff ff    	stx	0xffff
     9b5:	ff ff ff    	stx	0xffff
     9b8:	ff ff ff    	stx	0xffff
     9bb:	ff ff ff    	stx	0xffff
     9be:	ff ff ff    	stx	0xffff
     9c1:	ff ff ff    	stx	0xffff
     9c4:	ff ff ff    	stx	0xffff
     9c7:	ff ff ff    	stx	0xffff
     9ca:	ff ff ff    	stx	0xffff
     9cd:	ff ff ff    	stx	0xffff
     9d0:	ff ff ff    	stx	0xffff
     9d3:	ff ff ff    	stx	0xffff
     9d6:	ff ff ff    	stx	0xffff
     9d9:	ff ff ff    	stx	0xffff
     9dc:	ff ff ff    	stx	0xffff
     9df:	ff ff ff    	stx	0xffff
     9e2:	ff ff ff    	stx	0xffff
     9e5:	ff ff ff    	stx	0xffff
     9e8:	ff ff ff    	stx	0xffff
     9eb:	ff ff ff    	stx	0xffff
     9ee:	ff ff ff    	stx	0xffff
     9f1:	ff ff ff    	stx	0xffff
     9f4:	ff ff ff    	stx	0xffff
     9f7:	ff ff ff    	stx	0xffff
     9fa:	ff ff ff    	stx	0xffff
     9fd:	ff ff ff    	stx	0xffff
     a00:	ff ff ff    	stx	0xffff
     a03:	ff ff ff    	stx	0xffff
     a06:	ff ff ff    	stx	0xffff
     a09:	ff ff ff    	stx	0xffff
     a0c:	ff ff ff    	stx	0xffff
     a0f:	ff ff ff    	stx	0xffff
     a12:	ff ff ff    	stx	0xffff
     a15:	ff ff ff    	stx	0xffff
     a18:	ff ff ff    	stx	0xffff
     a1b:	ff ff ff    	stx	0xffff
     a1e:	ff ff ff    	stx	0xffff
     a21:	ff ff ff    	stx	0xffff
     a24:	ff ff ff    	stx	0xffff
     a27:	ff ff ff    	stx	0xffff
     a2a:	ff ff ff    	stx	0xffff
     a2d:	ff ff ff    	stx	0xffff
     a30:	ff ff ff    	stx	0xffff
     a33:	ff ff ff    	stx	0xffff
     a36:	ff ff ff    	stx	0xffff
     a39:	ff ff ff    	stx	0xffff
     a3c:	ff ff ff    	stx	0xffff
     a3f:	ff ff ff    	stx	0xffff
     a42:	ff ff ff    	stx	0xffff
     a45:	ff ff ff    	stx	0xffff
     a48:	ff ff ff    	stx	0xffff
     a4b:	ff ff ff    	stx	0xffff
     a4e:	ff ff ff    	stx	0xffff
     a51:	ff ff ff    	stx	0xffff
     a54:	ff ff ff    	stx	0xffff
     a57:	ff ff ff    	stx	0xffff
     a5a:	ff ff ff    	stx	0xffff
     a5d:	ff ff ff    	stx	0xffff
     a60:	ff ff ff    	stx	0xffff
     a63:	ff ff ff    	stx	0xffff
     a66:	ff ff ff    	stx	0xffff
     a69:	ff ff ff    	stx	0xffff
     a6c:	ff ff ff    	stx	0xffff
     a6f:	ff ff ff    	stx	0xffff
     a72:	ff ff ff    	stx	0xffff
     a75:	ff ff ff    	stx	0xffff
     a78:	ff ff ff    	stx	0xffff
     a7b:	ff ff ff    	stx	0xffff
     a7e:	ff ff ff    	stx	0xffff
     a81:	ff ff ff    	stx	0xffff
     a84:	ff ff ff    	stx	0xffff
     a87:	ff ff ff    	stx	0xffff
     a8a:	ff ff ff    	stx	0xffff
     a8d:	ff ff ff    	stx	0xffff
     a90:	ff ff ff    	stx	0xffff
     a93:	ff ff ff    	stx	0xffff
     a96:	ff ff ff    	stx	0xffff
     a99:	ff ff ff    	stx	0xffff
     a9c:	ff ff ff    	stx	0xffff
     a9f:	ff ff ff    	stx	0xffff
     aa2:	ff ff ff    	stx	0xffff
     aa5:	ff ff ff    	stx	0xffff
     aa8:	ff ff ff    	stx	0xffff
     aab:	ff ff ff    	stx	0xffff
     aae:	ff ff ff    	stx	0xffff
     ab1:	ff ff ff    	stx	0xffff
     ab4:	ff ff ff    	stx	0xffff
     ab7:	ff ff ff    	stx	0xffff
     aba:	ff ff ff    	stx	0xffff
     abd:	ff ff ff    	stx	0xffff
     ac0:	ff ff ff    	stx	0xffff
     ac3:	ff ff ff    	stx	0xffff
     ac6:	ff ff ff    	stx	0xffff
     ac9:	ff ff ff    	stx	0xffff
     acc:	ff ff ff    	stx	0xffff
     acf:	ff ff ff    	stx	0xffff
     ad2:	ff ff ff    	stx	0xffff
     ad5:	ff ff ff    	stx	0xffff
     ad8:	ff ff ff    	stx	0xffff
     adb:	ff ff ff    	stx	0xffff
     ade:	ff ff ff    	stx	0xffff
     ae1:	ff ff ff    	stx	0xffff
     ae4:	ff ff ff    	stx	0xffff
     ae7:	ff ff ff    	stx	0xffff
     aea:	ff ff ff    	stx	0xffff
     aed:	ff ff ff    	stx	0xffff
     af0:	ff ff ff    	stx	0xffff
     af3:	ff ff ff    	stx	0xffff
     af6:	ff ff ff    	stx	0xffff
     af9:	ff ff ff    	stx	0xffff
     afc:	ff ff ff    	stx	0xffff
     aff:	ff ff ff    	stx	0xffff
     b02:	ff ff ff    	stx	0xffff
     b05:	ff ff ff    	stx	0xffff
     b08:	ff ff ff    	stx	0xffff
     b0b:	ff ff ff    	stx	0xffff
     b0e:	ff ff ff    	stx	0xffff
     b11:	ff ff ff    	stx	0xffff
     b14:	ff ff ff    	stx	0xffff
     b17:	ff ff ff    	stx	0xffff
     b1a:	ff ff ff    	stx	0xffff
     b1d:	ff ff ff    	stx	0xffff
     b20:	ff ff ff    	stx	0xffff
     b23:	ff ff ff    	stx	0xffff
     b26:	ff ff ff    	stx	0xffff
     b29:	ff ff ff    	stx	0xffff
     b2c:	ff ff ff    	stx	0xffff
     b2f:	ff ff ff    	stx	0xffff
     b32:	ff ff ff    	stx	0xffff
     b35:	ff ff ff    	stx	0xffff
     b38:	ff ff ff    	stx	0xffff
     b3b:	ff ff ff    	stx	0xffff
     b3e:	ff ff ff    	stx	0xffff
     b41:	ff ff ff    	stx	0xffff
     b44:	ff ff ff    	stx	0xffff
     b47:	ff ff ff    	stx	0xffff
     b4a:	ff ff ff    	stx	0xffff
     b4d:	ff ff ff    	stx	0xffff
     b50:	ff ff ff    	stx	0xffff
     b53:	ff ff ff    	stx	0xffff
     b56:	ff ff ff    	stx	0xffff
     b59:	ff ff ff    	stx	0xffff
     b5c:	ff ff ff    	stx	0xffff
     b5f:	ff ff ff    	stx	0xffff
     b62:	ff ff ff    	stx	0xffff
     b65:	ff ff ff    	stx	0xffff
     b68:	ff ff ff    	stx	0xffff
     b6b:	ff ff ff    	stx	0xffff
     b6e:	ff ff ff    	stx	0xffff
     b71:	ff ff ff    	stx	0xffff
     b74:	ff ff ff    	stx	0xffff
     b77:	ff ff ff    	stx	0xffff
     b7a:	ff ff ff    	stx	0xffff
     b7d:	ff ff ff    	stx	0xffff
     b80:	ff ff ff    	stx	0xffff
     b83:	ff ff ff    	stx	0xffff
     b86:	ff ff ff    	stx	0xffff
     b89:	ff ff ff    	stx	0xffff
     b8c:	ff ff ff    	stx	0xffff
     b8f:	ff ff ff    	stx	0xffff
     b92:	ff ff ff    	stx	0xffff
     b95:	ff ff ff    	stx	0xffff
     b98:	ff ff ff    	stx	0xffff
     b9b:	ff ff ff    	stx	0xffff
     b9e:	ff ff ff    	stx	0xffff
     ba1:	ff ff ff    	stx	0xffff
     ba4:	ff ff ff    	stx	0xffff
     ba7:	ff ff ff    	stx	0xffff
     baa:	ff ff ff    	stx	0xffff
     bad:	ff ff ff    	stx	0xffff
     bb0:	ff ff ff    	stx	0xffff
     bb3:	ff ff ff    	stx	0xffff
     bb6:	ff ff ff    	stx	0xffff
     bb9:	ff ff ff    	stx	0xffff
     bbc:	ff ff ff    	stx	0xffff
     bbf:	ff ff ff    	stx	0xffff
     bc2:	ff ff ff    	stx	0xffff
     bc5:	ff ff ff    	stx	0xffff
     bc8:	ff ff ff    	stx	0xffff
     bcb:	ff ff ff    	stx	0xffff
     bce:	ff ff ff    	stx	0xffff
     bd1:	ff ff ff    	stx	0xffff
     bd4:	ff ff ff    	stx	0xffff
     bd7:	ff ff ff    	stx	0xffff
     bda:	ff ff ff    	stx	0xffff
     bdd:	ff ff ff    	stx	0xffff
     be0:	ff ff ff    	stx	0xffff
     be3:	ff ff ff    	stx	0xffff
     be6:	ff ff ff    	stx	0xffff
     be9:	ff ff ff    	stx	0xffff
     bec:	ff ff ff    	stx	0xffff
     bef:	ff ff ff    	stx	0xffff
     bf2:	ff ff ff    	stx	0xffff
     bf5:	ff ff ff    	stx	0xffff
     bf8:	ff ff ff    	stx	0xffff
     bfb:	ff ff ff    	stx	0xffff
     bfe:	ff ff ff    	stx	0xffff
     c01:	ff ff ff    	stx	0xffff
     c04:	ff ff ff    	stx	0xffff
     c07:	ff ff ff    	stx	0xffff
     c0a:	ff ff ff    	stx	0xffff
     c0d:	ff ff ff    	stx	0xffff
     c10:	ff ff ff    	stx	0xffff
     c13:	ff ff ff    	stx	0xffff
     c16:	ff ff ff    	stx	0xffff
     c19:	ff ff ff    	stx	0xffff
     c1c:	ff ff ff    	stx	0xffff
     c1f:	ff ff ff    	stx	0xffff
     c22:	ff ff ff    	stx	0xffff
     c25:	ff ff ff    	stx	0xffff
     c28:	ff ff ff    	stx	0xffff
     c2b:	ff ff ff    	stx	0xffff
     c2e:	ff ff ff    	stx	0xffff
     c31:	ff ff ff    	stx	0xffff
     c34:	ff ff ff    	stx	0xffff
     c37:	ff ff ff    	stx	0xffff
     c3a:	ff ff ff    	stx	0xffff
     c3d:	ff ff ff    	stx	0xffff
     c40:	ff ff ff    	stx	0xffff
     c43:	ff ff ff    	stx	0xffff
     c46:	ff ff ff    	stx	0xffff
     c49:	ff ff ff    	stx	0xffff
     c4c:	ff ff ff    	stx	0xffff
     c4f:	ff ff ff    	stx	0xffff
     c52:	ff ff ff    	stx	0xffff
     c55:	ff ff ff    	stx	0xffff
     c58:	ff ff ff    	stx	0xffff
     c5b:	ff ff ff    	stx	0xffff
     c5e:	ff ff ff    	stx	0xffff
     c61:	ff ff ff    	stx	0xffff
     c64:	ff ff ff    	stx	0xffff
     c67:	ff ff ff    	stx	0xffff
     c6a:	ff ff ff    	stx	0xffff
     c6d:	ff ff ff    	stx	0xffff
     c70:	ff ff ff    	stx	0xffff
     c73:	ff ff ff    	stx	0xffff
     c76:	ff ff ff    	stx	0xffff
     c79:	ff ff ff    	stx	0xffff
     c7c:	ff ff ff    	stx	0xffff
     c7f:	ff ff ff    	stx	0xffff
     c82:	ff ff ff    	stx	0xffff
     c85:	ff ff ff    	stx	0xffff
     c88:	ff ff ff    	stx	0xffff
     c8b:	ff ff ff    	stx	0xffff
     c8e:	ff ff ff    	stx	0xffff
     c91:	ff ff ff    	stx	0xffff
     c94:	ff ff ff    	stx	0xffff
     c97:	ff ff ff    	stx	0xffff
     c9a:	ff ff ff    	stx	0xffff
     c9d:	ff ff ff    	stx	0xffff
     ca0:	ff ff ff    	stx	0xffff
     ca3:	ff ff ff    	stx	0xffff
     ca6:	ff ff ff    	stx	0xffff
     ca9:	ff ff ff    	stx	0xffff
     cac:	ff ff ff    	stx	0xffff
     caf:	ff ff ff    	stx	0xffff
     cb2:	ff ff ff    	stx	0xffff
     cb5:	ff ff ff    	stx	0xffff
     cb8:	ff ff ff    	stx	0xffff
     cbb:	ff ff ff    	stx	0xffff
     cbe:	ff ff ff    	stx	0xffff
     cc1:	ff ff ff    	stx	0xffff
     cc4:	ff ff ff    	stx	0xffff
     cc7:	ff ff ff    	stx	0xffff
     cca:	ff ff ff    	stx	0xffff
     ccd:	ff ff ff    	stx	0xffff
     cd0:	ff ff ff    	stx	0xffff
     cd3:	ff ff ff    	stx	0xffff
     cd6:	ff ff ff    	stx	0xffff
     cd9:	ff ff ff    	stx	0xffff
     cdc:	ff ff ff    	stx	0xffff
     cdf:	ff ff ff    	stx	0xffff
     ce2:	ff ff ff    	stx	0xffff
     ce5:	ff ff ff    	stx	0xffff
     ce8:	ff ff ff    	stx	0xffff
     ceb:	ff ff ff    	stx	0xffff
     cee:	ff ff ff    	stx	0xffff
     cf1:	ff ff ff    	stx	0xffff
     cf4:	ff ff ff    	stx	0xffff
     cf7:	ff ff ff    	stx	0xffff
     cfa:	ff ff ff    	stx	0xffff
     cfd:	ff ff ff    	stx	0xffff
     d00:	ff ff ff    	stx	0xffff
     d03:	ff ff ff    	stx	0xffff
     d06:	ff ff ff    	stx	0xffff
     d09:	ff ff ff    	stx	0xffff
     d0c:	ff ff ff    	stx	0xffff
     d0f:	ff ff ff    	stx	0xffff
     d12:	ff ff ff    	stx	0xffff
     d15:	ff ff ff    	stx	0xffff
     d18:	ff ff ff    	stx	0xffff
     d1b:	ff ff ff    	stx	0xffff
     d1e:	ff ff ff    	stx	0xffff
     d21:	ff ff ff    	stx	0xffff
     d24:	ff ff ff    	stx	0xffff
     d27:	ff ff ff    	stx	0xffff
     d2a:	ff ff ff    	stx	0xffff
     d2d:	ff ff ff    	stx	0xffff
     d30:	ff ff ff    	stx	0xffff
     d33:	ff ff ff    	stx	0xffff
     d36:	ff ff ff    	stx	0xffff
     d39:	ff ff ff    	stx	0xffff
     d3c:	ff ff ff    	stx	0xffff
     d3f:	ff ff ff    	stx	0xffff
     d42:	ff ff ff    	stx	0xffff
     d45:	ff ff ff    	stx	0xffff
     d48:	ff ff ff    	stx	0xffff
     d4b:	ff ff ff    	stx	0xffff
     d4e:	ff ff ff    	stx	0xffff
     d51:	ff ff ff    	stx	0xffff
     d54:	ff ff ff    	stx	0xffff
     d57:	ff ff ff    	stx	0xffff
     d5a:	ff ff ff    	stx	0xffff
     d5d:	ff ff ff    	stx	0xffff
     d60:	ff ff ff    	stx	0xffff
     d63:	ff ff ff    	stx	0xffff
     d66:	ff ff ff    	stx	0xffff
     d69:	ff ff ff    	stx	0xffff
     d6c:	ff ff ff    	stx	0xffff
     d6f:	ff ff ff    	stx	0xffff
     d72:	ff ff ff    	stx	0xffff
     d75:	ff ff ff    	stx	0xffff
     d78:	ff ff ff    	stx	0xffff
     d7b:	ff ff ff    	stx	0xffff
     d7e:	ff ff ff    	stx	0xffff
     d81:	ff ff ff    	stx	0xffff
     d84:	ff ff ff    	stx	0xffff
     d87:	ff ff ff    	stx	0xffff
     d8a:	ff ff ff    	stx	0xffff
     d8d:	ff ff ff    	stx	0xffff
     d90:	ff ff ff    	stx	0xffff
     d93:	ff ff ff    	stx	0xffff
     d96:	ff ff ff    	stx	0xffff
     d99:	ff ff ff    	stx	0xffff
     d9c:	ff ff ff    	stx	0xffff
     d9f:	ff ff ff    	stx	0xffff
     da2:	ff ff ff    	stx	0xffff
     da5:	ff ff ff    	stx	0xffff
     da8:	ff ff ff    	stx	0xffff
     dab:	ff ff ff    	stx	0xffff
     dae:	ff ff ff    	stx	0xffff
     db1:	ff ff ff    	stx	0xffff
     db4:	ff ff ff    	stx	0xffff
     db7:	ff ff ff    	stx	0xffff
     dba:	ff ff ff    	stx	0xffff
     dbd:	ff ff ff    	stx	0xffff
     dc0:	ff ff ff    	stx	0xffff
     dc3:	ff ff ff    	stx	0xffff
     dc6:	ff ff ff    	stx	0xffff
     dc9:	ff ff ff    	stx	0xffff
     dcc:	ff ff ff    	stx	0xffff
     dcf:	ff ff ff    	stx	0xffff
     dd2:	ff ff ff    	stx	0xffff
     dd5:	ff ff ff    	stx	0xffff
     dd8:	ff ff ff    	stx	0xffff
     ddb:	ff ff ff    	stx	0xffff
     dde:	ff ff ff    	stx	0xffff
     de1:	ff ff ff    	stx	0xffff
     de4:	ff ff ff    	stx	0xffff
     de7:	ff ff ff    	stx	0xffff
     dea:	ff ff ff    	stx	0xffff
     ded:	ff ff ff    	stx	0xffff
     df0:	ff ff ff    	stx	0xffff
     df3:	ff ff ff    	stx	0xffff
     df6:	ff ff ff    	stx	0xffff
     df9:	ff ff ff    	stx	0xffff
     dfc:	ff ff ff    	stx	0xffff
     dff:	ff ff ff    	stx	0xffff
     e02:	ff ff ff    	stx	0xffff
     e05:	ff ff ff    	stx	0xffff
     e08:	ff ff ff    	stx	0xffff
     e0b:	ff ff ff    	stx	0xffff
     e0e:	ff ff ff    	stx	0xffff
     e11:	ff ff ff    	stx	0xffff
     e14:	ff ff ff    	stx	0xffff
     e17:	ff ff ff    	stx	0xffff
     e1a:	ff ff ff    	stx	0xffff
     e1d:	ff ff ff    	stx	0xffff
     e20:	ff ff ff    	stx	0xffff
     e23:	ff ff ff    	stx	0xffff
     e26:	ff ff ff    	stx	0xffff
     e29:	ff ff ff    	stx	0xffff
     e2c:	ff ff ff    	stx	0xffff
     e2f:	ff ff ff    	stx	0xffff
     e32:	ff ff ff    	stx	0xffff
     e35:	ff ff ff    	stx	0xffff
     e38:	ff ff ff    	stx	0xffff
     e3b:	ff ff ff    	stx	0xffff
     e3e:	ff ff ff    	stx	0xffff
     e41:	ff ff ff    	stx	0xffff
     e44:	ff ff ff    	stx	0xffff
     e47:	ff ff ff    	stx	0xffff
     e4a:	ff ff ff    	stx	0xffff
     e4d:	ff ff ff    	stx	0xffff
     e50:	ff ff ff    	stx	0xffff
     e53:	ff ff ff    	stx	0xffff
     e56:	ff ff ff    	stx	0xffff
     e59:	ff ff ff    	stx	0xffff
     e5c:	ff ff ff    	stx	0xffff
     e5f:	ff ff ff    	stx	0xffff
     e62:	ff ff ff    	stx	0xffff
     e65:	ff ff ff    	stx	0xffff
     e68:	ff ff ff    	stx	0xffff
     e6b:	ff ff ff    	stx	0xffff
     e6e:	ff ff ff    	stx	0xffff
     e71:	ff ff ff    	stx	0xffff
     e74:	ff ff ff    	stx	0xffff
     e77:	ff ff ff    	stx	0xffff
     e7a:	ff ff ff    	stx	0xffff
     e7d:	ff ff ff    	stx	0xffff
     e80:	ff ff ff    	stx	0xffff
     e83:	ff ff ff    	stx	0xffff
     e86:	ff ff ff    	stx	0xffff
     e89:	ff ff ff    	stx	0xffff
     e8c:	ff ff ff    	stx	0xffff
     e8f:	ff ff ff    	stx	0xffff
     e92:	ff ff ff    	stx	0xffff
     e95:	ff ff ff    	stx	0xffff
     e98:	ff ff ff    	stx	0xffff
     e9b:	ff ff ff    	stx	0xffff
     e9e:	ff ff ff    	stx	0xffff
     ea1:	ff ff ff    	stx	0xffff
     ea4:	ff ff ff    	stx	0xffff
     ea7:	ff ff ff    	stx	0xffff
     eaa:	ff ff ff    	stx	0xffff
     ead:	ff ff ff    	stx	0xffff
     eb0:	ff ff ff    	stx	0xffff
     eb3:	ff ff ff    	stx	0xffff
     eb6:	ff ff ff    	stx	0xffff
     eb9:	ff ff ff    	stx	0xffff
     ebc:	ff ff ff    	stx	0xffff
     ebf:	ff ff ff    	stx	0xffff
     ec2:	ff ff ff    	stx	0xffff
     ec5:	ff ff ff    	stx	0xffff
     ec8:	ff ff ff    	stx	0xffff
     ecb:	ff ff ff    	stx	0xffff
     ece:	ff ff ff    	stx	0xffff
     ed1:	ff ff ff    	stx	0xffff
     ed4:	ff ff ff    	stx	0xffff
     ed7:	ff ff ff    	stx	0xffff
     eda:	ff ff ff    	stx	0xffff
     edd:	ff ff ff    	stx	0xffff
     ee0:	ff ff ff    	stx	0xffff
     ee3:	ff ff ff    	stx	0xffff
     ee6:	ff ff ff    	stx	0xffff
     ee9:	ff ff ff    	stx	0xffff
     eec:	ff ff ff    	stx	0xffff
     eef:	ff ff ff    	stx	0xffff
     ef2:	ff ff ff    	stx	0xffff
     ef5:	ff ff ff    	stx	0xffff
     ef8:	ff ff ff    	stx	0xffff
     efb:	ff ff ff    	stx	0xffff
     efe:	ff ff ff    	stx	0xffff
     f01:	ff ff ff    	stx	0xffff
     f04:	ff ff ff    	stx	0xffff
     f07:	ff ff ff    	stx	0xffff
     f0a:	ff ff ff    	stx	0xffff
     f0d:	ff ff ff    	stx	0xffff
     f10:	ff ff ff    	stx	0xffff
     f13:	ff ff ff    	stx	0xffff
     f16:	ff ff ff    	stx	0xffff
     f19:	ff ff ff    	stx	0xffff
     f1c:	ff ff ff    	stx	0xffff
     f1f:	ff ff ff    	stx	0xffff
     f22:	ff ff ff    	stx	0xffff
     f25:	ff ff ff    	stx	0xffff
     f28:	ff ff ff    	stx	0xffff
     f2b:	ff ff ff    	stx	0xffff
     f2e:	ff ff ff    	stx	0xffff
     f31:	ff ff ff    	stx	0xffff
     f34:	ff ff ff    	stx	0xffff
     f37:	ff ff ff    	stx	0xffff
     f3a:	ff ff ff    	stx	0xffff
     f3d:	ff ff ff    	stx	0xffff
     f40:	ff ff ff    	stx	0xffff
     f43:	ff ff ff    	stx	0xffff
     f46:	ff ff ff    	stx	0xffff
     f49:	ff ff ff    	stx	0xffff
     f4c:	ff ff ff    	stx	0xffff
     f4f:	ff ff ff    	stx	0xffff
     f52:	ff ff ff    	stx	0xffff
     f55:	ff ff ff    	stx	0xffff
     f58:	ff ff ff    	stx	0xffff
     f5b:	ff ff ff    	stx	0xffff
     f5e:	ff ff ff    	stx	0xffff
     f61:	ff ff ff    	stx	0xffff
     f64:	ff ff ff    	stx	0xffff
     f67:	ff ff ff    	stx	0xffff
     f6a:	ff ff ff    	stx	0xffff
     f6d:	ff ff ff    	stx	0xffff
     f70:	ff ff ff    	stx	0xffff
     f73:	ff ff ff    	stx	0xffff
     f76:	ff ff ff    	stx	0xffff
     f79:	ff ff ff    	stx	0xffff
     f7c:	ff ff ff    	stx	0xffff
     f7f:	ff ff ff    	stx	0xffff
     f82:	ff ff ff    	stx	0xffff
     f85:	ff ff ff    	stx	0xffff
     f88:	ff ff ff    	stx	0xffff
     f8b:	ff ff ff    	stx	0xffff
     f8e:	ff ff ff    	stx	0xffff
     f91:	ff ff ff    	stx	0xffff
     f94:	ff ff ff    	stx	0xffff
     f97:	ff ff ff    	stx	0xffff
     f9a:	ff ff ff    	stx	0xffff
     f9d:	ff ff ff    	stx	0xffff
     fa0:	ff ff ff    	stx	0xffff
     fa3:	ff ff ff    	stx	0xffff
     fa6:	ff ff ff    	stx	0xffff
     fa9:	ff ff ff    	stx	0xffff
     fac:	ff ff ff    	stx	0xffff
     faf:	ff ff ff    	stx	0xffff
     fb2:	ff ff ff    	stx	0xffff
     fb5:	ff ff ff    	stx	0xffff
     fb8:	ff ff ff    	stx	0xffff
     fbb:	ff ff ff    	stx	0xffff
     fbe:	ff ff ff    	stx	0xffff
     fc1:	ff ff ff    	stx	0xffff
     fc4:	ff ff ff    	stx	0xffff
     fc7:	ff ff ff    	stx	0xffff
     fca:	ff ff ff    	stx	0xffff
     fcd:	ff ff ff    	stx	0xffff
     fd0:	ff ff ff    	stx	0xffff
     fd3:	ff ff ff    	stx	0xffff
     fd6:	ff ff ff    	stx	0xffff
     fd9:	ff ff ff    	stx	0xffff
     fdc:	ff ff ff    	stx	0xffff
     fdf:	ff ff ff    	stx	0xffff
     fe2:	ff ff ff    	stx	0xffff
     fe5:	ff ff ff    	stx	0xffff
     fe8:	ff ff ff    	stx	0xffff
     feb:	ff ff ff    	stx	0xffff
     fee:	ff ff ff    	stx	0xffff
     ff1:	ff ff ff    	stx	0xffff
     ff4:	ff ff ff    	stx	0xffff
     ff7:	ff ff ff    	stx	0xffff
     ffa:	ff ff ff    	stx	0xffff
     ffd:	ff ff ff    	stx	0xffff
