lbl_805CC32C:
/* 805CC32C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CC330  7C 08 02 A6 */	mflr r0
/* 805CC334  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CC338  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC33C  4B AC EB 99 */	bl func_8009AED4
/* 805CC340  7C 9E 23 78 */	mr r30, r4
/* 805CC344  7C 7D 1B 78 */	mr r29, r3
/* 805CC348  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805CC34C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CC350  2C 00 00 00 */	cmpwi r0, 0
/* 805CC354  83 E6 09 C0 */	lwz r31, 0x9c0(r6)
/* 805CC358  40 82 00 3C */	bne lbl_805CC394
/* 805CC35C  3C 80 80 65 */	lis r4, data_8064AFA4@ha /* 0x8064AFA4@ha */
/* 805CC360  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805CC364  38 A4 AF A4 */	addi r5, r4, data_8064AFA4@l /* 0x8064AFA4@l */
/* 805CC368  38 80 00 09 */	li r4, 9
/* 805CC36C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CC370  38 A0 00 00 */	li r5, 0
/* 805CC374  81 86 02 E4 */	lwz r12, 0x2e4(r6)
/* 805CC378  38 C0 00 00 */	li r6, 0
/* 805CC37C  FC 40 08 90 */	fmr f2, f1
/* 805CC380  7D 89 03 A6 */	mtctr r12
/* 805CC384  4E 80 04 21 */	bctrl 
/* 805CC388  38 00 00 01 */	li r0, 1
/* 805CC38C  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805CC390  48 00 01 10 */	b lbl_805CC4A0
lbl_805CC394:
/* 805CC394  A8 BF 0B B0 */	lha r5, 0xbb0(r31)
/* 805CC398  2C 05 00 00 */	cmpwi r5, 0
/* 805CC39C  41 82 00 F8 */	beq lbl_805CC494
/* 805CC3A0  38 65 FF FF */	addi r3, r5, -1
/* 805CC3A4  3C 00 43 30 */	lis r0, 0x4330
/* 805CC3A8  B0 7F 0B B0 */	sth r3, 0xbb0(r31)
/* 805CC3AC  3C 60 80 65 */	lis r3, lit_460@ha /* 0x8064AFB4@ha */
/* 805CC3B0  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064AFAC@ha */
/* 805CC3B4  C8 23 AF B4 */	lfd f1, lit_460@l(r3)  /* 0x8064AFB4@l */
/* 805CC3B8  A8 9F 0B B0 */	lha r4, 0xbb0(r31)
/* 805CC3BC  90 01 00 08 */	stw r0, 8(r1)
/* 805CC3C0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805CC3C4  C0 45 AF AC */	lfs f2, lit_458@l(r5)  /* 0x8064AFAC@l */
/* 805CC3C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CC3CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CC3D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CC3D4  EC 22 00 32 */	fmuls f1, f2, f0
/* 805CC3D8  4B E3 C4 A5 */	bl sinf_table
/* 805CC3DC  3C 60 80 65 */	lis r3, lit_457@ha /* 0x8064AFA8@ha */
/* 805CC3E0  C0 03 AF A8 */	lfs f0, lit_457@l(r3)  /* 0x8064AFA8@l */
/* 805CC3E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CC3E8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805CC3EC  A8 1F 0B B0 */	lha r0, 0xbb0(r31)
/* 805CC3F0  2C 00 00 14 */	cmpwi r0, 0x14
/* 805CC3F4  40 82 00 58 */	bne lbl_805CC44C
/* 805CC3F8  38 00 00 08 */	li r0, 8
/* 805CC3FC  38 9F 0B A8 */	addi r4, r31, 0xba8
/* 805CC400  38 A0 00 00 */	li r5, 0
/* 805CC404  7C 09 03 A6 */	mtctr r0
lbl_805CC408:
/* 805CC408  88 64 00 00 */	lbz r3, 0(r4)
/* 805CC40C  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 805CC410  7C 03 00 40 */	cmplw r3, r0
/* 805CC414  41 82 00 10 */	beq lbl_805CC424
/* 805CC418  38 A5 00 01 */	addi r5, r5, 1
/* 805CC41C  38 84 00 01 */	addi r4, r4, 1
/* 805CC420  42 00 FF E8 */	bdnz lbl_805CC408
lbl_805CC424:
/* 805CC424  7C A9 03 A6 */	mtctr r5
/* 805CC428  2C 05 00 00 */	cmpwi r5, 0
/* 805CC42C  40 81 00 14 */	ble lbl_805CC440
lbl_805CC430:
/* 805CC430  88 04 FF FF */	lbz r0, -1(r4)
/* 805CC434  98 04 00 00 */	stb r0, 0(r4)
/* 805CC438  38 84 FF FF */	addi r4, r4, -1
/* 805CC43C  42 00 FF F4 */	bdnz lbl_805CC430
lbl_805CC440:
/* 805CC440  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 805CC444  98 1F 0B A8 */	stb r0, 0xba8(r31)
/* 805CC448  48 00 00 58 */	b lbl_805CC4A0
lbl_805CC44C:
/* 805CC44C  7C 00 07 35 */	extsh. r0, r0
/* 805CC450  40 82 00 50 */	bne lbl_805CC4A0
/* 805CC454  3C 80 80 65 */	lis r4, data_8064AFA4@ha /* 0x8064AFA4@ha */
/* 805CC458  7F A3 EB 78 */	mr r3, r29
/* 805CC45C  C0 04 AF A4 */	lfs f0, data_8064AFA4@l(r4)  /* 0x8064AFA4@l */
/* 805CC460  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805CC464  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805CC468  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805CC46C  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805CC470  7D 89 03 A6 */	mtctr r12
/* 805CC474  4E 80 04 21 */	bctrl 
/* 805CC478  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805CC47C  7F A3 EB 78 */	mr r3, r29
/* 805CC480  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805CC484  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805CC488  7D 89 03 A6 */	mtctr r12
/* 805CC48C  4E 80 04 21 */	bctrl 
/* 805CC490  48 00 00 10 */	b lbl_805CC4A0
lbl_805CC494:
/* 805CC494  81 86 09 1C */	lwz r12, 0x91c(r6)
/* 805CC498  7D 89 03 A6 */	mtctr r12
/* 805CC49C  4E 80 04 21 */	bctrl 
lbl_805CC4A0:
/* 805CC4A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC4A4  4B AC EA 7D */	bl func_8009AF20
/* 805CC4A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CC4AC  7C 08 03 A6 */	mtlr r0
/* 805CC4B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CC4B4  4E 80 00 20 */	blr 
