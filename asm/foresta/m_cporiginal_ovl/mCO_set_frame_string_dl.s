lbl_805CE390:
/* 805CE390  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CE394  7C 08 02 A6 */	mflr r0
/* 805CE398  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CE39C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805CE3A0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805CE3A4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805CE3A8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805CE3AC  39 61 00 30 */	addi r11, r1, 0x30
/* 805CE3B0  4B AC CB 19 */	bl func_8009AEC8
/* 805CE3B4  7C 9B 23 78 */	mr r27, r4
/* 805CE3B8  FF C0 08 90 */	fmr f30, f1
/* 805CE3BC  7C BC 2B 78 */	mr r28, r5
/* 805CE3C0  FF E0 10 90 */	fmr f31, f2
/* 805CE3C4  83 C4 00 00 */	lwz r30, 0(r4)
/* 805CE3C8  7C 7A 1B 78 */	mr r26, r3
/* 805CE3CC  7F 84 E3 78 */	mr r4, r28
/* 805CE3D0  4B FF F2 8D */	bl mCO_get_folder_name
/* 805CE3D4  83 FA 00 2C */	lwz r31, 0x2c(r26)
/* 805CE3D8  3C 80 80 6D */	lis r4, color_table@ha /* 0x806CB8F4@ha */
/* 805CE3DC  57 85 10 3A */	slwi r5, r28, 2
/* 805CE3E0  7C 7D 1B 78 */	mr r29, r3
/* 805CE3E4  80 1F 07 18 */	lwz r0, 0x718(r31)
/* 805CE3E8  38 84 B8 F4 */	addi r4, r4, color_table@l /* 0x806CB8F4@l */
/* 805CE3EC  7F 84 28 2E */	lwzx r28, r4, r5
/* 805CE3F0  2C 00 00 02 */	cmpwi r0, 2
/* 805CE3F4  40 82 00 50 */	bne lbl_805CE444
/* 805CE3F8  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 805CE3FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CE400  40 82 00 44 */	bne lbl_805CE444
/* 805CE404  3C 60 E3 00 */	lis r3, 0xE300 /* 0xE3000A01@ha */
/* 805CE408  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805CE40C  38 03 0A 01 */	addi r0, r3, 0x0A01 /* 0xE3000A01@l */
/* 805CE410  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 805CE414  90 05 00 00 */	stw r0, 0(r5)
/* 805CE418  38 00 00 00 */	li r0, 0
/* 805CE41C  3C 60 00 50 */	lis r3, 0x0050 /* 0x00504240@ha */
/* 805CE420  38 84 00 1C */	addi r4, r4, 0x001C /* 0xE200001C@l */
/* 805CE424  90 05 00 04 */	stw r0, 4(r5)
/* 805CE428  38 A5 00 08 */	addi r5, r5, 8
/* 805CE42C  7C A6 2B 78 */	mr r6, r5
/* 805CE430  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x00504240@l */
/* 805CE434  90 85 00 00 */	stw r4, 0(r5)
/* 805CE438  38 A5 00 08 */	addi r5, r5, 8
/* 805CE43C  90 06 00 04 */	stw r0, 4(r6)
/* 805CE440  90 BE 02 D0 */	stw r5, 0x2d0(r30)
lbl_805CE444:
/* 805CE444  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805CE448  7F C3 F3 78 */	mr r3, r30
/* 805CE44C  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805CE450  7D 89 03 A6 */	mtctr r12
/* 805CE454  4E 80 04 21 */	bctrl 
/* 805CE458  80 1F 07 18 */	lwz r0, 0x718(r31)
/* 805CE45C  2C 00 00 02 */	cmpwi r0, 2
/* 805CE460  40 82 00 7C */	bne lbl_805CE4DC
/* 805CE464  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 805CE468  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CE46C  40 82 00 70 */	bne lbl_805CE4DC
/* 805CE470  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805CE474  3B C0 00 0C */	li r30, 0xc
/* 805CE478  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 805CE47C  28 03 00 00 */	cmplwi r3, 0
/* 805CE480  41 82 00 D0 */	beq lbl_805CE550
/* 805CE484  A8 63 00 1C */	lha r3, 0x1c(r3)
/* 805CE488  3C 00 43 30 */	lis r0, 0x4330
/* 805CE48C  3C C0 80 65 */	lis r6, lit_929@ha /* 0x8064B02C@ha */
/* 805CE490  3C 80 80 65 */	lis r4, lit_655@ha /* 0x8064B01C@ha */
/* 805CE494  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CE498  C0 66 B0 2C */	lfs f3, lit_929@l(r6)  /* 0x8064B02C@l */
/* 805CE49C  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CE4A0  38 64 B0 1C */	addi r3, r4, lit_655@l /* 0x8064B01C@l */
/* 805CE4A4  3C A0 80 65 */	lis r5, lit_931@ha /* 0x8064B034@ha */
/* 805CE4A8  C8 23 00 00 */	lfd f1, 0(r3)
/* 805CE4AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CE4B0  38 85 B0 34 */	addi r4, r5, lit_931@l /* 0x8064B034@l */
/* 805CE4B4  C0 44 00 00 */	lfs f2, 0(r4)
/* 805CE4B8  3C A0 80 65 */	lis r5, lit_930@ha /* 0x8064B030@ha */
/* 805CE4BC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CE4C0  EC 63 F0 2A */	fadds f3, f3, f30
/* 805CE4C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CE4C8  C0 25 B0 30 */	lfs f1, lit_930@l(r5)  /* 0x8064B030@l */
/* 805CE4CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CE4D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805CE4D4  EF C3 00 28 */	fsubs f30, f3, f0
/* 805CE4D8  48 00 00 78 */	b lbl_805CE550
lbl_805CE4DC:
/* 805CE4DC  7F A3 EB 78 */	mr r3, r29
/* 805CE4E0  38 80 00 0C */	li r4, 0xc
/* 805CE4E4  38 A0 00 20 */	li r5, 0x20
/* 805CE4E8  4B DE E1 3D */	bl func_803BC624
/* 805CE4EC  7C 60 1B 78 */	mr r0, r3
/* 805CE4F0  7F A3 EB 78 */	mr r3, r29
/* 805CE4F4  7C 1E 03 78 */	mr r30, r0
/* 805CE4F8  38 A0 00 01 */	li r5, 1
/* 805CE4FC  7F C4 F3 78 */	mr r4, r30
/* 805CE500  4B DE 11 D1 */	bl mFont_GetStringWidth
/* 805CE504  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CE508  3C 00 43 30 */	lis r0, 0x4330
/* 805CE50C  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CE510  3C 80 80 65 */	lis r4, lit_655@ha /* 0x8064B01C@ha */
/* 805CE514  C8 24 B0 1C */	lfd f1, lit_655@l(r4)  /* 0x8064B01C@l */
/* 805CE518  3C 60 80 65 */	lis r3, lit_931@ha /* 0x8064B034@ha */
/* 805CE51C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CE520  38 A3 B0 34 */	addi r5, r3, lit_931@l /* 0x8064B034@l */
/* 805CE524  C0 45 00 00 */	lfs f2, 0(r5)
/* 805CE528  3C 80 80 65 */	lis r4, lit_930@ha /* 0x8064B030@ha */
/* 805CE52C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CE530  3C 60 80 65 */	lis r3, lit_929@ha /* 0x8064B02C@ha */
/* 805CE534  EC 60 08 28 */	fsubs f3, f0, f1
/* 805CE538  C0 03 B0 2C */	lfs f0, lit_929@l(r3)  /* 0x8064B02C@l */
/* 805CE53C  C0 24 B0 30 */	lfs f1, lit_930@l(r4)  /* 0x8064B030@l */
/* 805CE540  EC 00 F0 2A */	fadds f0, f0, f30
/* 805CE544  EC 42 00 F2 */	fmuls f2, f2, f3
/* 805CE548  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805CE54C  EF C0 08 28 */	fsubs f30, f0, f1
lbl_805CE550:
/* 805CE550  3C 60 80 65 */	lis r3, lit_932@ha /* 0x8064B038@ha */
/* 805CE554  2C 1E 00 00 */	cmpwi r30, 0
/* 805CE558  C0 03 B0 38 */	lfs f0, lit_932@l(r3)  /* 0x8064B038@l */
/* 805CE55C  EF E0 F8 28 */	fsubs f31, f0, f31
/* 805CE560  41 82 00 4C */	beq lbl_805CE5AC
/* 805CE564  38 00 00 01 */	li r0, 1
/* 805CE568  3C 60 80 65 */	lis r3, lit_931@ha /* 0x8064B034@ha */
/* 805CE56C  90 01 00 08 */	stw r0, 8(r1)
/* 805CE570  38 00 00 00 */	li r0, 0
/* 805CE574  C0 63 B0 34 */	lfs f3, lit_931@l(r3)  /* 0x8064B034@l */
/* 805CE578  FC 20 F0 90 */	fmr f1, f30
/* 805CE57C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CE580  FC 40 F8 90 */	fmr f2, f31
/* 805CE584  FC 80 18 90 */	fmr f4, f3
/* 805CE588  7F 63 DB 78 */	mr r3, r27
/* 805CE58C  88 DC 00 00 */	lbz r6, 0(r28)
/* 805CE590  88 FC 00 01 */	lbz r7, 1(r28)
/* 805CE594  7F A4 EB 78 */	mr r4, r29
/* 805CE598  89 1C 00 02 */	lbz r8, 2(r28)
/* 805CE59C  7F C5 F3 78 */	mr r5, r30
/* 805CE5A0  39 20 00 FF */	li r9, 0xff
/* 805CE5A4  39 40 00 00 */	li r10, 0
/* 805CE5A8  4B DE 1B 01 */	bl mFont_SetLineStrings
lbl_805CE5AC:
/* 805CE5AC  80 1F 07 18 */	lwz r0, 0x718(r31)
/* 805CE5B0  2C 00 00 02 */	cmpwi r0, 2
/* 805CE5B4  40 82 00 78 */	bne lbl_805CE62C
/* 805CE5B8  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 805CE5BC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CE5C0  40 82 00 6C */	bne lbl_805CE62C
/* 805CE5C4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805CE5C8  80 E3 09 8C */	lwz r7, 0x98c(r3)
/* 805CE5CC  28 07 00 00 */	cmplwi r7, 0
/* 805CE5D0  41 82 00 5C */	beq lbl_805CE62C
/* 805CE5D4  A8 67 00 26 */	lha r3, 0x26(r7)
/* 805CE5D8  3C 00 43 30 */	lis r0, 0x4330
/* 805CE5DC  3C 80 80 65 */	lis r4, lit_655@ha /* 0x8064B01C@ha */
/* 805CE5E0  3C A0 80 65 */	lis r5, lit_933@ha /* 0x8064B03C@ha */
/* 805CE5E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CE5E8  C8 24 B0 1C */	lfd f1, lit_655@l(r4)  /* 0x8064B01C@l */
/* 805CE5EC  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CE5F0  3C C0 80 65 */	lis r6, lit_931@ha /* 0x8064B034@ha */
/* 805CE5F4  C0 65 B0 3C */	lfs f3, lit_933@l(r5)  /* 0x8064B03C@l */
/* 805CE5F8  FC 40 F8 90 */	fmr f2, f31
/* 805CE5FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CE600  7F 43 D3 78 */	mr r3, r26
/* 805CE604  81 87 00 30 */	lwz r12, 0x30(r7)
/* 805CE608  7F 64 DB 78 */	mr r4, r27
/* 805CE60C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CE610  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CE614  C0 26 B0 34 */	lfs f1, lit_931@l(r6)  /* 0x8064B034@l */
/* 805CE618  EC 03 00 2A */	fadds f0, f3, f0
/* 805CE61C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805CE620  EC 3E 00 2A */	fadds f1, f30, f0
/* 805CE624  7D 89 03 A6 */	mtctr r12
/* 805CE628  4E 80 04 21 */	bctrl 
lbl_805CE62C:
/* 805CE62C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805CE630  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805CE634  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805CE638  39 61 00 30 */	addi r11, r1, 0x30
/* 805CE63C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805CE640  4B AC C8 D5 */	bl func_8009AF14
/* 805CE644  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CE648  7C 08 03 A6 */	mtlr r0
/* 805CE64C  38 21 00 50 */	addi r1, r1, 0x50
/* 805CE650  4E 80 00 20 */	blr 
