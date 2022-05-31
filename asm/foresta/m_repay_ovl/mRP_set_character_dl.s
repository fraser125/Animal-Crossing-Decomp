lbl_805ECA94:
/* 805ECA94  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805ECA98  7C 08 02 A6 */	mflr r0
/* 805ECA9C  90 01 00 94 */	stw r0, 0x94(r1)
/* 805ECAA0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805ECAA4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805ECAA8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805ECAAC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805ECAB0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805ECAB4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805ECAB8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805ECABC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805ECAC0  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 805ECAC4  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 805ECAC8  39 61 00 40 */	addi r11, r1, 0x40
/* 805ECACC  4B AA E3 F5 */	bl func_8009AEC0
/* 805ECAD0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805ECAD4  7C 9C 23 78 */	mr r28, r4
/* 805ECAD8  3C 60 80 6D */	lis r3, data_806CE3E0@ha /* 0x806CE3E0@ha */
/* 805ECADC  FF C0 08 90 */	fmr f30, f1
/* 805ECAE0  81 85 09 50 */	lwz r12, 0x950(r5)
/* 805ECAE4  FF E0 10 90 */	fmr f31, f2
/* 805ECAE8  3B E3 E3 E0 */	addi r31, r3, data_806CE3E0@l /* 0x806CE3E0@l */
/* 805ECAEC  83 C5 09 AC */	lwz r30, 0x9ac(r5)
/* 805ECAF0  80 64 00 00 */	lwz r3, 0(r4)
/* 805ECAF4  7D 89 03 A6 */	mtctr r12
/* 805ECAF8  4E 80 04 21 */	bctrl 
/* 805ECAFC  3C A0 80 65 */	lis r5, lit_562@ha /* 0x8064B75C@ha */
/* 805ECB00  3C 80 80 65 */	lis r4, lit_563@ha /* 0x8064B760@ha */
/* 805ECB04  C0 25 B7 5C */	lfs f1, lit_562@l(r5)  /* 0x8064B75C@l */
/* 805ECB08  3C 60 80 65 */	lis r3, lit_564@ha /* 0x8064B764@ha */
/* 805ECB0C  C0 04 B7 60 */	lfs f0, lit_563@l(r4)  /* 0x8064B760@l */
/* 805ECB10  38 C0 00 01 */	li r6, 1
/* 805ECB14  C0 63 B7 64 */	lfs f3, lit_564@l(r3)  /* 0x8064B764@l */
/* 805ECB18  38 00 00 00 */	li r0, 0
/* 805ECB1C  90 C1 00 08 */	stw r6, 8(r1)
/* 805ECB20  EC 21 F0 2A */	fadds f1, f1, f30
/* 805ECB24  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805ECB28  7F 83 E3 78 */	mr r3, r28
/* 805ECB2C  FC 80 18 90 */	fmr f4, f3
/* 805ECB30  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECB34  38 9F 00 48 */	addi r4, r31, 0x48
/* 805ECB38  38 A0 00 09 */	li r5, 9
/* 805ECB3C  38 C0 00 FF */	li r6, 0xff
/* 805ECB40  38 E0 00 FF */	li r7, 0xff
/* 805ECB44  39 00 00 FF */	li r8, 0xff
/* 805ECB48  39 20 00 FF */	li r9, 0xff
/* 805ECB4C  39 40 00 00 */	li r10, 0
/* 805ECB50  4B DC 35 59 */	bl mFont_SetLineStrings
/* 805ECB54  3C 60 80 65 */	lis r3, lit_565@ha /* 0x8064B768@ha */
/* 805ECB58  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B76C@ha */
/* 805ECB5C  38 A3 B7 68 */	addi r5, r3, lit_565@l /* 0x8064B768@l */
/* 805ECB60  C0 04 B7 6C */	lfs f0, lit_566@l(r4)  /* 0x8064B76C@l */
/* 805ECB64  C0 25 00 00 */	lfs f1, 0(r5)
/* 805ECB68  3C 60 80 65 */	lis r3, lit_564@ha /* 0x8064B764@ha */
/* 805ECB6C  C0 63 B7 64 */	lfs f3, lit_564@l(r3)  /* 0x8064B764@l */
/* 805ECB70  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805ECB74  EC 21 F0 2A */	fadds f1, f1, f30
/* 805ECB78  80 9E 00 00 */	lwz r4, 0(r30)
/* 805ECB7C  7F 83 E3 78 */	mr r3, r28
/* 805ECB80  38 BF 00 58 */	addi r5, r31, 0x58
/* 805ECB84  4B FF FE 05 */	bl mRP_set_num_str
/* 805ECB88  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 805ECB8C  2C 1D 00 03 */	cmpwi r29, 3
/* 805ECB90  41 80 00 08 */	blt lbl_805ECB98
/* 805ECB94  3B BD 00 01 */	addi r29, r29, 1
lbl_805ECB98:
/* 805ECB98  80 BE 00 08 */	lwz r5, 8(r30)
/* 805ECB9C  38 61 00 10 */	addi r3, r1, 0x10
/* 805ECBA0  38 80 00 07 */	li r4, 7
/* 805ECBA4  38 C0 00 06 */	li r6, 6
/* 805ECBA8  38 E0 00 00 */	li r7, 0
/* 805ECBAC  39 00 00 01 */	li r8, 1
/* 805ECBB0  39 20 00 01 */	li r9, 1
/* 805ECBB4  4B DC 28 C5 */	bl mFont_UnintToString
/* 805ECBB8  38 61 00 10 */	addi r3, r1, 0x10
/* 805ECBBC  38 80 00 07 */	li r4, 7
/* 805ECBC0  38 A0 00 01 */	li r5, 1
/* 805ECBC4  4B DC 2B 0D */	bl mFont_GetStringWidth
/* 805ECBC8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805ECBCC  3F 40 43 30 */	lis r26, 0x4330
/* 805ECBD0  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B754@ha */
/* 805ECBD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ECBD8  38 A3 B7 54 */	addi r5, r3, lit_533@l /* 0x8064B754@l */
/* 805ECBDC  3C 80 80 65 */	lis r4, lit_565@ha /* 0x8064B768@ha */
/* 805ECBE0  93 41 00 18 */	stw r26, 0x18(r1)
/* 805ECBE4  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B770@ha */
/* 805ECBE8  CB A5 00 00 */	lfd f29, 0(r5)
/* 805ECBEC  3B 00 00 00 */	li r24, 0
/* 805ECBF0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805ECBF4  C0 03 B7 70 */	lfs f0, lit_567@l(r3)  /* 0x8064B770@l */
/* 805ECBF8  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B748@ha */
/* 805ECBFC  EC 41 E8 28 */	fsubs f2, f1, f29
/* 805ECC00  C0 24 B7 68 */	lfs f1, lit_565@l(r4)  /* 0x8064B768@l */
/* 805ECC04  EF 80 F8 28 */	fsubs f28, f0, f31
/* 805ECC08  3B 63 B7 48 */	addi r27, r3, lit_523@l /* 0x8064B748@l */
/* 805ECC0C  EC 1E 10 28 */	fsubs f0, f30, f2
/* 805ECC10  EF 61 00 2A */	fadds f27, f1, f0
lbl_805ECC14:
/* 805ECC14  7C 1D C0 00 */	cmpw r29, r24
/* 805ECC18  38 BF 00 5C */	addi r5, r31, 0x5c
/* 805ECC1C  40 82 00 08 */	bne lbl_805ECC24
/* 805ECC20  38 BF 00 60 */	addi r5, r31, 0x60
lbl_805ECC24:
/* 805ECC24  38 00 00 01 */	li r0, 1
/* 805ECC28  C0 7B 00 00 */	lfs f3, 0(r27)
/* 805ECC2C  90 01 00 08 */	stw r0, 8(r1)
/* 805ECC30  38 00 00 00 */	li r0, 0
/* 805ECC34  3B 21 00 10 */	addi r25, r1, 0x10
/* 805ECC38  FC 20 D8 90 */	fmr f1, f27
/* 805ECC3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECC40  7F 39 C2 14 */	add r25, r25, r24
/* 805ECC44  FC 40 E0 90 */	fmr f2, f28
/* 805ECC48  7F 83 E3 78 */	mr r3, r28
/* 805ECC4C  FC 80 18 90 */	fmr f4, f3
/* 805ECC50  88 C5 00 00 */	lbz r6, 0(r5)
/* 805ECC54  7F 24 CB 78 */	mr r4, r25
/* 805ECC58  88 E5 00 01 */	lbz r7, 1(r5)
/* 805ECC5C  89 05 00 02 */	lbz r8, 2(r5)
/* 805ECC60  38 A0 00 01 */	li r5, 1
/* 805ECC64  39 20 00 FF */	li r9, 0xff
/* 805ECC68  39 40 00 00 */	li r10, 0
/* 805ECC6C  4B DC 34 3D */	bl mFont_SetLineStrings
/* 805ECC70  7F 23 CB 78 */	mr r3, r25
/* 805ECC74  38 80 00 01 */	li r4, 1
/* 805ECC78  38 A0 00 01 */	li r5, 1
/* 805ECC7C  4B DC 2A 55 */	bl mFont_GetStringWidth
/* 805ECC80  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805ECC84  3B 18 00 01 */	addi r24, r24, 1
/* 805ECC88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ECC8C  2C 18 00 07 */	cmpwi r24, 7
/* 805ECC90  93 41 00 18 */	stw r26, 0x18(r1)
/* 805ECC94  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ECC98  EC 00 E8 28 */	fsubs f0, f0, f29
/* 805ECC9C  EF 7B 00 2A */	fadds f27, f27, f0
/* 805ECCA0  41 80 FF 74 */	blt lbl_805ECC14
/* 805ECCA4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805ECCA8  39 1F 00 60 */	addi r8, r31, 0x60
/* 805ECCAC  2C 00 00 06 */	cmpwi r0, 6
/* 805ECCB0  40 80 00 08 */	bge lbl_805ECCB8
/* 805ECCB4  39 1F 00 64 */	addi r8, r31, 0x64
lbl_805ECCB8:
/* 805ECCB8  38 00 00 01 */	li r0, 1
/* 805ECCBC  3C A0 80 65 */	lis r5, lit_568@ha /* 0x8064B774@ha */
/* 805ECCC0  3C 80 80 65 */	lis r4, lit_569@ha /* 0x8064B778@ha */
/* 805ECCC4  3C 60 80 65 */	lis r3, lit_564@ha /* 0x8064B764@ha */
/* 805ECCC8  38 C5 B7 74 */	addi r6, r5, lit_568@l /* 0x8064B774@l */
/* 805ECCCC  90 01 00 08 */	stw r0, 8(r1)
/* 805ECCD0  38 A4 B7 78 */	addi r5, r4, lit_569@l /* 0x8064B778@l */
/* 805ECCD4  38 83 B7 64 */	addi r4, r3, lit_564@l /* 0x8064B764@l */
/* 805ECCD8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805ECCDC  38 00 00 00 */	li r0, 0
/* 805ECCE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECCE4  7F 83 E3 78 */	mr r3, r28
/* 805ECCE8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805ECCEC  EC 21 F0 2A */	fadds f1, f1, f30
/* 805ECCF0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805ECCF4  38 9F 00 54 */	addi r4, r31, 0x54
/* 805ECCF8  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805ECCFC  88 C8 00 00 */	lbz r6, 0(r8)
/* 805ECD00  FC 80 18 90 */	fmr f4, f3
/* 805ECD04  88 E8 00 01 */	lbz r7, 1(r8)
/* 805ECD08  38 A0 00 02 */	li r5, 2
/* 805ECD0C  89 08 00 02 */	lbz r8, 2(r8)
/* 805ECD10  39 20 00 FF */	li r9, 0xff
/* 805ECD14  39 40 00 00 */	li r10, 0
/* 805ECD18  4B DC 33 91 */	bl mFont_SetLineStrings
/* 805ECD1C  3C 60 80 65 */	lis r3, lit_570@ha /* 0x8064B77C@ha */
/* 805ECD20  3C 80 80 65 */	lis r4, lit_571@ha /* 0x8064B780@ha */
/* 805ECD24  38 A3 B7 7C */	addi r5, r3, lit_570@l /* 0x8064B77C@l */
/* 805ECD28  C0 04 B7 80 */	lfs f0, lit_571@l(r4)  /* 0x8064B780@l */
/* 805ECD2C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805ECD30  3C 60 80 65 */	lis r3, lit_564@ha /* 0x8064B764@ha */
/* 805ECD34  C0 63 B7 64 */	lfs f3, lit_564@l(r3)  /* 0x8064B764@l */
/* 805ECD38  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805ECD3C  EC 21 F0 2A */	fadds f1, f1, f30
/* 805ECD40  80 9E 00 04 */	lwz r4, 4(r30)
/* 805ECD44  7F 83 E3 78 */	mr r3, r28
/* 805ECD48  38 BF 00 68 */	addi r5, r31, 0x68
/* 805ECD4C  4B FF FC 3D */	bl mRP_set_num_str
/* 805ECD50  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805ECD54  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805ECD58  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805ECD5C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805ECD60  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805ECD64  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805ECD68  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805ECD6C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805ECD70  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 805ECD74  39 61 00 40 */	addi r11, r1, 0x40
/* 805ECD78  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 805ECD7C  4B AA E1 91 */	bl func_8009AF0C
/* 805ECD80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805ECD84  7C 08 03 A6 */	mtlr r0
/* 805ECD88  38 21 00 90 */	addi r1, r1, 0x90
/* 805ECD8C  4E 80 00 20 */	blr 
