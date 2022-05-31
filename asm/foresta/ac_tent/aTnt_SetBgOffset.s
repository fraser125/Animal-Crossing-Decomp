lbl_805BE1C8:
/* 805BE1C8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805BE1CC  7C 08 02 A6 */	mflr r0
/* 805BE1D0  90 01 00 84 */	stw r0, 0x84(r1)
/* 805BE1D4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805BE1D8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805BE1DC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805BE1E0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805BE1E4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805BE1E8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805BE1EC  39 61 00 50 */	addi r11, r1, 0x50
/* 805BE1F0  4B AD CC D9 */	bl func_8009AEC8
/* 805BE1F4  3C E0 80 6C */	lis r7, height_table@ha /* 0x806C70E8@ha */
/* 805BE1F8  3C C0 80 65 */	lis r6, lit_508@ha /* 0x8064ABA0@ha */
/* 805BE1FC  3C A0 80 65 */	lis r5, lit_511@ha /* 0x8064ABA4@ha */
/* 805BE200  54 80 10 3A */	slwi r0, r4, 2
/* 805BE204  38 E7 70 E8 */	addi r7, r7, height_table@l /* 0x806C70E8@l */
/* 805BE208  3C 80 80 6C */	lis r4, lit_509@ha /* 0x806C70F0@ha */
/* 805BE20C  7F 87 00 2E */	lwzx r28, r7, r0
/* 805BE210  7C 7F 1B 78 */	mr r31, r3
/* 805BE214  C3 C6 AB A0 */	lfs f30, lit_508@l(r6)  /* 0x8064ABA0@l */
/* 805BE218  3B C4 70 F0 */	addi r30, r4, lit_509@l /* 0x806C70F0@l */
/* 805BE21C  CB E5 AB A4 */	lfd f31, lit_511@l(r5)  /* 0x8064ABA4@l */
/* 805BE220  3B 40 FF FF */	li r26, -1
/* 805BE224  3F A0 43 30 */	lis r29, 0x4330
lbl_805BE228:
/* 805BE228  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 805BE22C  93 A1 00 28 */	stw r29, 0x28(r1)
/* 805BE230  3B 60 FF FF */	li r27, -1
/* 805BE234  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BE238  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805BE23C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805BE240  EF BE 00 32 */	fmuls f29, f30, f0
lbl_805BE244:
/* 805BE244  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 805BE248  81 1F 00 28 */	lwz r8, 0x28(r31)
/* 805BE24C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BE250  7F C5 F3 78 */	mr r5, r30
/* 805BE254  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 805BE258  38 61 00 10 */	addi r3, r1, 0x10
/* 805BE25C  93 A1 00 28 */	stw r29, 0x28(r1)
/* 805BE260  38 81 00 08 */	addi r4, r1, 8
/* 805BE264  81 3F 00 2C */	lwz r9, 0x2c(r31)
/* 805BE268  38 C0 01 1E */	li r6, 0x11e
/* 805BE26C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805BE270  91 01 00 1C */	stw r8, 0x1c(r1)
/* 805BE274  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805BE278  80 1C 00 00 */	lwz r0, 0(r28)
/* 805BE27C  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805BE280  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805BE284  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805BE288  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805BE28C  90 01 00 08 */	stw r0, 8(r1)
/* 805BE290  EC 00 E8 2A */	fadds f0, f0, f29
/* 805BE294  EC 22 08 2A */	fadds f1, f2, f1
/* 805BE298  A0 1C 00 04 */	lhz r0, 4(r28)
/* 805BE29C  91 21 00 20 */	stw r9, 0x20(r1)
/* 805BE2A0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805BE2A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BE2A8  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805BE2AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805BE2B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BE2B4  89 1C 00 06 */	lbz r8, 6(r28)
/* 805BE2B8  99 01 00 0E */	stb r8, 0xe(r1)
/* 805BE2BC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805BE2C0  91 21 00 14 */	stw r9, 0x14(r1)
/* 805BE2C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BE2C8  4B DD 3A B1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805BE2CC  3B 7B 00 01 */	addi r27, r27, 1
/* 805BE2D0  3B 9C 00 07 */	addi r28, r28, 7
/* 805BE2D4  2C 1B 00 01 */	cmpwi r27, 1
/* 805BE2D8  40 81 FF 6C */	ble lbl_805BE244
/* 805BE2DC  3B 5A 00 01 */	addi r26, r26, 1
/* 805BE2E0  2C 1A 00 01 */	cmpwi r26, 1
/* 805BE2E4  40 81 FF 44 */	ble lbl_805BE228
/* 805BE2E8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805BE2EC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805BE2F0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805BE2F4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805BE2F8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805BE2FC  39 61 00 50 */	addi r11, r1, 0x50
/* 805BE300  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805BE304  4B AD CC 11 */	bl func_8009AF14
/* 805BE308  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805BE30C  7C 08 03 A6 */	mtlr r0
/* 805BE310  38 21 00 80 */	addi r1, r1, 0x80
/* 805BE314  4E 80 00 20 */	blr 
