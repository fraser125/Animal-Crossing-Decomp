lbl_8052D1A0:
/* 8052D1A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052D1A4  7C 08 02 A6 */	mflr r0
/* 8052D1A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052D1AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D1B0  4B B6 DD 11 */	bl func_8009AEC0
/* 8052D1B4  7C 7E 1B 78 */	mr r30, r3
/* 8052D1B8  7C 9D 23 78 */	mr r29, r4
/* 8052D1BC  7C B8 2B 78 */	mr r24, r5
/* 8052D1C0  7C D9 33 78 */	mr r25, r6
/* 8052D1C4  7C FF 3B 78 */	mr r31, r7
/* 8052D1C8  4B B2 FB 2D */	bl fqrand
/* 8052D1CC  3C 60 80 6A */	lis r3, rnd_base@ha /* 0x806A1E80@ha */
/* 8052D1D0  57 BB 06 3E */	clrlwi r27, r29, 0x18
/* 8052D1D4  57 00 10 3A */	slwi r0, r24, 2
/* 8052D1D8  7F 06 C3 78 */	mr r6, r24
/* 8052D1DC  38 83 1E 80 */	addi r4, r3, rnd_base@l /* 0x806A1E80@l */
/* 8052D1E0  7F 63 DB 78 */	mr r3, r27
/* 8052D1E4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8052D1E8  38 A0 00 00 */	li r5, 0
/* 8052D1EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052D1F0  FC 00 00 1E */	fctiwz f0, f0
/* 8052D1F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D1F8  83 41 00 0C */	lwz r26, 0xc(r1)
/* 8052D1FC  57 5C 06 3E */	clrlwi r28, r26, 0x18
/* 8052D200  7F 84 E3 78 */	mr r4, r28
/* 8052D204  4B FF FF 51 */	bl aNPC_getP_anmData
/* 8052D208  9B BE 00 00 */	stb r29, 0(r30)
/* 8052D20C  7C 7D 1B 78 */	mr r29, r3
/* 8052D210  7F 63 DB 78 */	mr r3, r27
/* 8052D214  7F 84 E3 78 */	mr r4, r28
/* 8052D218  9B 5E 00 02 */	stb r26, 2(r30)
/* 8052D21C  7F 05 C3 78 */	mr r5, r24
/* 8052D220  4B FF FF 61 */	bl aNPC_get_seq_cnt
/* 8052D224  98 7E 00 03 */	stb r3, 3(r30)
/* 8052D228  2C 19 FF FF */	cmpwi r25, -1
/* 8052D22C  88 1D 00 00 */	lbz r0, 0(r29)
/* 8052D230  98 1E 00 04 */	stb r0, 4(r30)
/* 8052D234  40 82 00 2C */	bne lbl_8052D260
/* 8052D238  88 9D 00 01 */	lbz r4, 1(r29)
/* 8052D23C  3C 00 43 30 */	lis r0, 0x4330
/* 8052D240  3C 60 80 65 */	lis r3, lit_923@ha /* 0x8064928C@ha */
/* 8052D244  90 01 00 08 */	stw r0, 8(r1)
/* 8052D248  C8 23 92 8C */	lfd f1, lit_923@l(r3)  /* 0x8064928C@l */
/* 8052D24C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8052D250  C8 01 00 08 */	lfd f0, 8(r1)
/* 8052D254  EC 00 08 28 */	fsubs f0, f0, f1
/* 8052D258  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8052D25C  48 00 00 28 */	b lbl_8052D284
lbl_8052D260:
/* 8052D260  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 8052D264  3C 00 43 30 */	lis r0, 0x4330
/* 8052D268  90 61 00 0C */	stw r3, 0xc(r1)
/* 8052D26C  3C 80 80 65 */	lis r4, lit_818@ha /* 0x80649284@ha */
/* 8052D270  C8 24 92 84 */	lfd f1, lit_818@l(r4)  /* 0x80649284@l */
/* 8052D274  90 01 00 08 */	stw r0, 8(r1)
/* 8052D278  C8 01 00 08 */	lfd f0, 8(r1)
/* 8052D27C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8052D280  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8052D284:
/* 8052D284  9B FE 00 0D */	stb r31, 0xd(r30)
/* 8052D288  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D28C  4B B6 DC 81 */	bl func_8009AF0C
/* 8052D290  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052D294  7C 08 03 A6 */	mtlr r0
/* 8052D298  38 21 00 30 */	addi r1, r1, 0x30
/* 8052D29C  4E 80 00 20 */	blr 
