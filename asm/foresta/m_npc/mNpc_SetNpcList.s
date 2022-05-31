lbl_803CFAB8:
/* 803CFAB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803CFABC  7C 08 02 A6 */	mflr r0
/* 803CFAC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 803CFAC4  39 61 00 50 */	addi r11, r1, 0x50
/* 803CFAC8  4B CC B3 FD */	bl func_8009AEC4
/* 803CFACC  3C C0 80 97 */	lis r6, npc_house_list@ha /* 0x80977440@ha */
/* 803CFAD0  7C 79 1B 78 */	mr r25, r3
/* 803CFAD4  7C 9A 23 78 */	mr r26, r4
/* 803CFAD8  7C BB 2B 78 */	mr r27, r5
/* 803CFADC  3B E6 74 40 */	addi r31, r6, npc_house_list@l /* 0x80977440@l */
/* 803CFAE0  3B C1 00 10 */	addi r30, r1, 0x10
/* 803CFAE4  3B 80 00 00 */	li r28, 0
/* 803CFAE8  48 00 01 20 */	b lbl_803CFC08
lbl_803CFAEC:
/* 803CFAEC  A3 BA 00 00 */	lhz r29, 0(r26)
/* 803CFAF0  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803CFAF4  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CFAF8  40 82 01 04 */	bne lbl_803CFBFC
/* 803CFAFC  88 1A 08 99 */	lbz r0, 0x899(r26)
/* 803CFB00  28 00 00 FF */	cmplwi r0, 0xff
/* 803CFB04  41 82 00 F8 */	beq lbl_803CFBFC
/* 803CFB08  B3 B9 00 00 */	sth r29, 0(r25)
/* 803CFB0C  3C 00 43 30 */	lis r0, 0x4330
/* 803CFB10  3C 60 80 64 */	lis r3, lit_2127@ha /* 0x806428F4@ha */
/* 803CFB14  3C 80 80 64 */	lis r4, lit_2125@ha /* 0x806428EC@ha */
/* 803CFB18  88 BA 08 99 */	lbz r5, 0x899(r26)
/* 803CFB1C  38 C4 28 EC */	addi r6, r4, lit_2125@l /* 0x806428EC@l */
/* 803CFB20  C8 23 28 F4 */	lfd f1, lit_2127@l(r3)  /* 0x806428F4@l */
/* 803CFB24  7F C4 F3 78 */	mr r4, r30
/* 803CFB28  90 01 00 18 */	stw r0, 0x18(r1)
/* 803CFB2C  38 61 00 08 */	addi r3, r1, 8
/* 803CFB30  C0 46 00 00 */	lfs f2, 0(r6)
/* 803CFB34  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803CFB38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803CFB3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 803CFB40  EC 00 08 28 */	fsubs f0, f0, f1
/* 803CFB44  EC 02 00 32 */	fmuls f0, f2, f0
/* 803CFB48  D0 19 00 04 */	stfs f0, 4(r25)
/* 803CFB4C  88 1A 08 9A */	lbz r0, 0x89a(r26)
/* 803CFB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CFB54  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803CFB58  EC 00 08 28 */	fsubs f0, f0, f1
/* 803CFB5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803CFB60  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 803CFB64  88 BA 08 9B */	lbz r5, 0x89b(r26)
/* 803CFB68  88 DA 08 9C */	lbz r6, 0x89c(r26)
/* 803CFB6C  4B FD 60 A9 */	bl mFI_UtNum2PosXZInBk
/* 803CFB70  C0 59 00 04 */	lfs f2, 4(r25)
/* 803CFB74  3C 60 80 64 */	lis r3, lit_1926@ha /* 0x806428E8@ha */
/* 803CFB78  C0 21 00 08 */	lfs f1, 8(r1)
/* 803CFB7C  57 A0 1C 78 */	rlwinm r0, r29, 3, 0x11, 0x1c
/* 803CFB80  C0 03 28 E8 */	lfs f0, lit_1926@l(r3)  /* 0x806428E8@l */
/* 803CFB84  38 80 00 01 */	li r4, 1
/* 803CFB88  EC 22 08 2A */	fadds f1, f2, f1
/* 803CFB8C  38 60 00 00 */	li r3, 0
/* 803CFB90  7C BF 02 14 */	add r5, r31, r0
/* 803CFB94  D0 39 00 04 */	stfs f1, 4(r25)
/* 803CFB98  C0 59 00 0C */	lfs f2, 0xc(r25)
/* 803CFB9C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803CFBA0  EC 22 08 2A */	fadds f1, f2, f1
/* 803CFBA4  D0 39 00 0C */	stfs f1, 0xc(r25)
/* 803CFBA8  D0 19 00 08 */	stfs f0, 8(r25)
/* 803CFBAC  C0 19 00 04 */	lfs f0, 4(r25)
/* 803CFBB0  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 803CFBB4  C0 19 00 08 */	lfs f0, 8(r25)
/* 803CFBB8  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 803CFBBC  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 803CFBC0  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 803CFBC4  98 99 00 1C */	stb r4, 0x1c(r25)
/* 803CFBC8  B0 79 00 34 */	sth r3, 0x34(r25)
/* 803CFBCC  88 05 00 00 */	lbz r0, 0(r5)
/* 803CFBD0  98 19 00 2C */	stb r0, 0x2c(r25)
/* 803CFBD4  88 05 00 01 */	lbz r0, 1(r5)
/* 803CFBD8  98 19 00 2D */	stb r0, 0x2d(r25)
/* 803CFBDC  88 05 00 02 */	lbz r0, 2(r5)
/* 803CFBE0  98 19 00 2E */	stb r0, 0x2e(r25)
/* 803CFBE4  88 05 00 03 */	lbz r0, 3(r5)
/* 803CFBE8  98 19 00 2F */	stb r0, 0x2f(r25)
/* 803CFBEC  A0 05 00 04 */	lhz r0, 4(r5)
/* 803CFBF0  B0 19 00 30 */	sth r0, 0x30(r25)
/* 803CFBF4  A0 05 00 06 */	lhz r0, 6(r5)
/* 803CFBF8  B0 19 00 32 */	sth r0, 0x32(r25)
lbl_803CFBFC:
/* 803CFBFC  3B 39 00 38 */	addi r25, r25, 0x38
/* 803CFC00  3B 5A 09 88 */	addi r26, r26, 0x988
/* 803CFC04  3B 9C 00 01 */	addi r28, r28, 1
lbl_803CFC08:
/* 803CFC08  7C 1C D8 00 */	cmpw r28, r27
/* 803CFC0C  41 80 FE E0 */	blt lbl_803CFAEC
/* 803CFC10  39 61 00 50 */	addi r11, r1, 0x50
/* 803CFC14  4B CC B2 FD */	bl func_8009AF10
/* 803CFC18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803CFC1C  7C 08 03 A6 */	mtlr r0
/* 803CFC20  38 21 00 50 */	addi r1, r1, 0x50
/* 803CFC24  4E 80 00 20 */	blr 
