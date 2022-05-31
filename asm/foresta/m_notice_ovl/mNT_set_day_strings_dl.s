lbl_805EBACC:
/* 805EBACC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805EBAD0  7C 08 02 A6 */	mflr r0
/* 805EBAD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805EBAD8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805EBADC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805EBAE0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805EBAE4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805EBAE8  39 61 00 30 */	addi r11, r1, 0x30
/* 805EBAEC  4B AA F3 E9 */	bl func_8009AED4
/* 805EBAF0  7C 9F 23 78 */	mr r31, r4
/* 805EBAF4  FF C0 08 90 */	fmr f30, f1
/* 805EBAF8  88 04 00 05 */	lbz r0, 5(r4)
/* 805EBAFC  FF E0 10 90 */	fmr f31, f2
/* 805EBB00  7C 7E 1B 78 */	mr r30, r3
/* 805EBB04  28 00 00 01 */	cmplwi r0, 1
/* 805EBB08  41 80 00 0C */	blt lbl_805EBB14
/* 805EBB0C  28 00 00 0C */	cmplwi r0, 0xc
/* 805EBB10  40 81 00 0C */	ble lbl_805EBB1C
lbl_805EBB14:
/* 805EBB14  38 00 00 0D */	li r0, 0xd
/* 805EBB18  98 1F 00 05 */	stb r0, 5(r31)
lbl_805EBB1C:
/* 805EBB1C  88 9F 00 05 */	lbz r4, 5(r31)
/* 805EBB20  3C 60 80 6D */	lis r3, month_str@ha /* 0x806CE374@ha */
/* 805EBB24  38 03 E3 74 */	addi r0, r3, month_str@l /* 0x806CE374@l */
/* 805EBB28  38 A0 00 01 */	li r5, 1
/* 805EBB2C  38 64 FF FF */	addi r3, r4, -1
/* 805EBB30  54 63 18 38 */	slwi r3, r3, 3
/* 805EBB34  7F A0 1A 14 */	add r29, r0, r3
/* 805EBB38  80 7D 00 00 */	lwz r3, 0(r29)
/* 805EBB3C  80 9D 00 04 */	lwz r4, 4(r29)
/* 805EBB40  4B DC 3B 91 */	bl mFont_GetStringWidth
/* 805EBB44  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EBB48  3C 00 43 30 */	lis r0, 0x4330
/* 805EBB4C  3C 80 80 65 */	lis r4, lit_469@ha /* 0x8064B6DC@ha */
/* 805EBB50  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805EBB54  38 C4 B6 DC */	addi r6, r4, lit_469@l /* 0x8064B6DC@l */
/* 805EBB58  3C A0 80 65 */	lis r5, lit_769@ha /* 0x8064B724@ha */
/* 805EBB5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805EBB60  3C 80 80 65 */	lis r4, lit_798@ha /* 0x8064B728@ha */
/* 805EBB64  C8 26 00 00 */	lfd f1, 0(r6)
/* 805EBB68  3C 60 80 65 */	lis r3, lit_768@ha /* 0x8064B720@ha */
/* 805EBB6C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805EBB70  38 00 00 00 */	li r0, 0
/* 805EBB74  C0 65 B7 24 */	lfs f3, lit_769@l(r5)  /* 0x8064B724@l */
/* 805EBB78  38 C0 00 00 */	li r6, 0
/* 805EBB7C  EC 40 08 28 */	fsubs f2, f0, f1
/* 805EBB80  C0 03 B7 20 */	lfs f0, lit_768@l(r3)  /* 0x8064B720@l */
/* 805EBB84  C0 24 B7 28 */	lfs f1, lit_798@l(r4)  /* 0x8064B728@l */
/* 805EBB88  38 80 00 01 */	li r4, 1
/* 805EBB8C  90 81 00 08 */	stw r4, 8(r1)
/* 805EBB90  EF E0 F8 28 */	fsubs f31, f0, f31
/* 805EBB94  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBB98  EC A3 00 B2 */	fmuls f5, f3, f2
/* 805EBB9C  EC 01 F0 2A */	fadds f0, f1, f30
/* 805EBBA0  7F C3 F3 78 */	mr r3, r30
/* 805EBBA4  FC 40 F8 90 */	fmr f2, f31
/* 805EBBA8  80 9D 00 00 */	lwz r4, 0(r29)
/* 805EBBAC  FC 80 18 90 */	fmr f4, f3
/* 805EBBB0  EC 20 28 28 */	fsubs f1, f0, f5
/* 805EBBB4  80 BD 00 04 */	lwz r5, 4(r29)
/* 805EBBB8  38 E0 00 00 */	li r7, 0
/* 805EBBBC  39 00 00 FF */	li r8, 0xff
/* 805EBBC0  39 20 00 FF */	li r9, 0xff
/* 805EBBC4  39 40 00 00 */	li r10, 0
/* 805EBBC8  4B DC 44 E1 */	bl mFont_SetLineStrings
/* 805EBBCC  88 BF 00 03 */	lbz r5, 3(r31)
/* 805EBBD0  38 61 00 10 */	addi r3, r1, 0x10
/* 805EBBD4  38 80 00 02 */	li r4, 2
/* 805EBBD8  38 C0 00 02 */	li r6, 2
/* 805EBBDC  38 E0 00 00 */	li r7, 0
/* 805EBBE0  39 00 00 01 */	li r8, 1
/* 805EBBE4  39 20 00 01 */	li r9, 1
/* 805EBBE8  4B DC 38 91 */	bl mFont_UnintToString
/* 805EBBEC  3C 80 80 65 */	lis r4, lit_799@ha /* 0x8064B72C@ha */
/* 805EBBF0  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064B724@ha */
/* 805EBBF4  C0 04 B7 2C */	lfs f0, lit_799@l(r4)  /* 0x8064B72C@l */
/* 805EBBF8  38 00 00 01 */	li r0, 1
/* 805EBBFC  C0 63 B7 24 */	lfs f3, lit_769@l(r3)  /* 0x8064B724@l */
/* 805EBC00  FC 40 F8 90 */	fmr f2, f31
/* 805EBC04  90 01 00 08 */	stw r0, 8(r1)
/* 805EBC08  38 00 00 00 */	li r0, 0
/* 805EBC0C  FC 80 18 90 */	fmr f4, f3
/* 805EBC10  7F C3 F3 78 */	mr r3, r30
/* 805EBC14  EC 20 F0 2A */	fadds f1, f0, f30
/* 805EBC18  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBC1C  38 81 00 10 */	addi r4, r1, 0x10
/* 805EBC20  38 A0 00 02 */	li r5, 2
/* 805EBC24  38 C0 00 00 */	li r6, 0
/* 805EBC28  38 E0 00 00 */	li r7, 0
/* 805EBC2C  39 00 00 FF */	li r8, 0xff
/* 805EBC30  39 20 00 FF */	li r9, 0xff
/* 805EBC34  39 40 00 00 */	li r10, 0
/* 805EBC38  4B DC 44 71 */	bl mFont_SetLineStrings
/* 805EBC3C  3C 80 80 65 */	lis r4, lit_800@ha /* 0x8064B730@ha */
/* 805EBC40  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064B724@ha */
/* 805EBC44  C0 63 B7 24 */	lfs f3, lit_769@l(r3)  /* 0x8064B724@l */
/* 805EBC48  38 00 00 01 */	li r0, 1
/* 805EBC4C  C0 04 B7 30 */	lfs f0, lit_800@l(r4)  /* 0x8064B730@l */
/* 805EBC50  3C 60 80 6D */	lis r3, comma_str@ha /* 0x806CE3DC@ha */
/* 805EBC54  90 01 00 08 */	stw r0, 8(r1)
/* 805EBC58  38 00 00 00 */	li r0, 0
/* 805EBC5C  FC 40 F8 90 */	fmr f2, f31
/* 805EBC60  38 83 E3 DC */	addi r4, r3, comma_str@l /* 0x806CE3DC@l */
/* 805EBC64  FC 80 18 90 */	fmr f4, f3
/* 805EBC68  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBC6C  EC 20 F0 2A */	fadds f1, f0, f30
/* 805EBC70  7F C3 F3 78 */	mr r3, r30
/* 805EBC74  38 A0 00 01 */	li r5, 1
/* 805EBC78  38 C0 00 00 */	li r6, 0
/* 805EBC7C  38 E0 00 00 */	li r7, 0
/* 805EBC80  39 00 00 FF */	li r8, 0xff
/* 805EBC84  39 20 00 FF */	li r9, 0xff
/* 805EBC88  39 40 00 00 */	li r10, 0
/* 805EBC8C  4B DC 44 1D */	bl mFont_SetLineStrings
/* 805EBC90  A0 BF 00 06 */	lhz r5, 6(r31)
/* 805EBC94  38 00 00 64 */	li r0, 0x64
/* 805EBC98  38 61 00 14 */	addi r3, r1, 0x14
/* 805EBC9C  38 80 00 02 */	li r4, 2
/* 805EBCA0  7C A5 03 D6 */	divw r5, r5, r0
/* 805EBCA4  38 C0 00 02 */	li r6, 2
/* 805EBCA8  38 E0 00 00 */	li r7, 0
/* 805EBCAC  39 00 00 01 */	li r8, 1
/* 805EBCB0  39 20 00 00 */	li r9, 0
/* 805EBCB4  4B DC 37 C5 */	bl mFont_UnintToString
/* 805EBCB8  A1 5F 00 06 */	lhz r10, 6(r31)
/* 805EBCBC  38 A0 00 64 */	li r5, 0x64
/* 805EBCC0  38 61 00 16 */	addi r3, r1, 0x16
/* 805EBCC4  38 80 00 02 */	li r4, 2
/* 805EBCC8  7C 0A 2B D6 */	divw r0, r10, r5
/* 805EBCCC  38 C0 00 02 */	li r6, 2
/* 805EBCD0  38 E0 00 00 */	li r7, 0
/* 805EBCD4  39 00 00 01 */	li r8, 1
/* 805EBCD8  39 20 00 00 */	li r9, 0
/* 805EBCDC  7C 00 29 D6 */	mullw r0, r0, r5
/* 805EBCE0  7C A0 50 50 */	subf r5, r0, r10
/* 805EBCE4  4B DC 37 95 */	bl mFont_UnintToString
/* 805EBCE8  3C 80 80 65 */	lis r4, lit_801@ha /* 0x8064B734@ha */
/* 805EBCEC  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064B724@ha */
/* 805EBCF0  C0 04 B7 34 */	lfs f0, lit_801@l(r4)  /* 0x8064B734@l */
/* 805EBCF4  38 00 00 01 */	li r0, 1
/* 805EBCF8  C0 63 B7 24 */	lfs f3, lit_769@l(r3)  /* 0x8064B724@l */
/* 805EBCFC  FC 40 F8 90 */	fmr f2, f31
/* 805EBD00  90 01 00 08 */	stw r0, 8(r1)
/* 805EBD04  38 00 00 00 */	li r0, 0
/* 805EBD08  FC 80 18 90 */	fmr f4, f3
/* 805EBD0C  7F C3 F3 78 */	mr r3, r30
/* 805EBD10  EC 20 F0 2A */	fadds f1, f0, f30
/* 805EBD14  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBD18  38 81 00 14 */	addi r4, r1, 0x14
/* 805EBD1C  38 A0 00 04 */	li r5, 4
/* 805EBD20  38 C0 00 00 */	li r6, 0
/* 805EBD24  38 E0 00 00 */	li r7, 0
/* 805EBD28  39 00 00 FF */	li r8, 0xff
/* 805EBD2C  39 20 00 FF */	li r9, 0xff
/* 805EBD30  39 40 00 00 */	li r10, 0
/* 805EBD34  4B DC 43 75 */	bl mFont_SetLineStrings
/* 805EBD38  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805EBD3C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805EBD40  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805EBD44  39 61 00 30 */	addi r11, r1, 0x30
/* 805EBD48  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805EBD4C  4B AA F1 D5 */	bl func_8009AF20
/* 805EBD50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805EBD54  7C 08 03 A6 */	mtlr r0
/* 805EBD58  38 21 00 50 */	addi r1, r1, 0x50
/* 805EBD5C  4E 80 00 20 */	blr 
