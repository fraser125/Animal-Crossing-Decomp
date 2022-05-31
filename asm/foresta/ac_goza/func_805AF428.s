lbl_805AF428:
/* 805AF428  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805AF42C  7C 08 02 A6 */	mflr r0
/* 805AF430  90 01 00 84 */	stw r0, 0x84(r1)
/* 805AF434  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805AF438  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805AF43C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805AF440  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805AF444  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805AF448  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805AF44C  39 61 00 50 */	addi r11, r1, 0x50
/* 805AF450  4B AE BA 79 */	bl func_8009AEC8
/* 805AF454  80 03 02 BC */	lwz r0, 0x2bc(r3)
/* 805AF458  3C C0 80 6C */	lis r6, rewrite_data@ha /* 0x806C520C@ha */
/* 805AF45C  3C A0 80 65 */	lis r5, data_8064A77C@ha /* 0x8064A77C@ha */
/* 805AF460  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064A784@ha */
/* 805AF464  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 805AF468  38 C6 52 0C */	addi r6, r6, rewrite_data@l /* 0x806C520C@l */
/* 805AF46C  7C 7E 1B 78 */	mr r30, r3
/* 805AF470  3C 60 80 6C */	lis r3, lit_479@ha /* 0x806C5214@ha */
/* 805AF474  7F E6 00 2E */	lwzx r31, r6, r0
/* 805AF478  3B A3 52 14 */	addi r29, r3, lit_479@l /* 0x806C5214@l */
/* 805AF47C  C3 C5 A7 7C */	lfs f30, data_8064A77C@l(r5)  /* 0x8064A77C@l */
/* 805AF480  3B 40 FF FF */	li r26, -1
/* 805AF484  CB E4 A7 84 */	lfd f31, lit_481@l(r4)  /* 0x8064A784@l */
/* 805AF488  3F 80 43 30 */	lis r28, 0x4330
lbl_805AF48C:
/* 805AF48C  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 805AF490  93 81 00 28 */	stw r28, 0x28(r1)
/* 805AF494  3B 60 FF FF */	li r27, -1
/* 805AF498  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AF49C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805AF4A0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805AF4A4  EF BE 00 32 */	fmuls f29, f30, f0
lbl_805AF4A8:
/* 805AF4A8  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 805AF4AC  81 1E 00 28 */	lwz r8, 0x28(r30)
/* 805AF4B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AF4B4  7F A5 EB 78 */	mr r5, r29
/* 805AF4B8  80 FE 00 30 */	lwz r7, 0x30(r30)
/* 805AF4BC  38 61 00 10 */	addi r3, r1, 0x10
/* 805AF4C0  93 81 00 28 */	stw r28, 0x28(r1)
/* 805AF4C4  38 81 00 08 */	addi r4, r1, 8
/* 805AF4C8  81 3E 00 2C */	lwz r9, 0x2c(r30)
/* 805AF4CC  38 C0 00 A7 */	li r6, 0xa7
/* 805AF4D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805AF4D4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 805AF4D8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805AF4DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 805AF4E0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805AF4E4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805AF4E8  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805AF4EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805AF4F0  90 01 00 08 */	stw r0, 8(r1)
/* 805AF4F4  EC 00 E8 2A */	fadds f0, f0, f29
/* 805AF4F8  EC 22 08 2A */	fadds f1, f2, f1
/* 805AF4FC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 805AF500  91 21 00 20 */	stw r9, 0x20(r1)
/* 805AF504  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805AF508  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805AF50C  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805AF510  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805AF514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF518  89 1F 00 06 */	lbz r8, 6(r31)
/* 805AF51C  99 01 00 0E */	stb r8, 0xe(r1)
/* 805AF520  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805AF524  91 21 00 14 */	stw r9, 0x14(r1)
/* 805AF528  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AF52C  4B DE 28 4D */	bl mCoBG_SetPluss5PointOffset_file
/* 805AF530  3B 7B 00 01 */	addi r27, r27, 1
/* 805AF534  3B FF 00 07 */	addi r31, r31, 7
/* 805AF538  2C 1B 00 01 */	cmpwi r27, 1
/* 805AF53C  40 81 FF 6C */	ble lbl_805AF4A8
/* 805AF540  3B 5A 00 01 */	addi r26, r26, 1
/* 805AF544  2C 1A 00 01 */	cmpwi r26, 1
/* 805AF548  40 81 FF 44 */	ble lbl_805AF48C
/* 805AF54C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805AF550  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805AF554  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805AF558  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805AF55C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805AF560  39 61 00 50 */	addi r11, r1, 0x50
/* 805AF564  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805AF568  4B AE B9 AD */	bl func_8009AF14
/* 805AF56C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805AF570  7C 08 03 A6 */	mtlr r0
/* 805AF574  38 21 00 80 */	addi r1, r1, 0x80
/* 805AF578  4E 80 00 20 */	blr 
