lbl_80601438:
/* 80601438  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8060143C  7C 08 02 A6 */	mflr r0
/* 80601440  90 01 00 64 */	stw r0, 0x64(r1)
/* 80601444  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80601448  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8060144C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80601450  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80601454  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80601458  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8060145C  39 61 00 30 */	addi r11, r1, 0x30
/* 80601460  4B A9 9A 69 */	bl func_8009AEC8
/* 80601464  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 80601468  7C 7B 1B 78 */	mr r27, r3
/* 8060146C  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064B9DC@ha */
/* 80601470  3C A0 80 65 */	lis r5, lit_495@ha /* 0x8064B9D8@ha */
/* 80601474  C0 63 B9 DC */	lfs f3, lit_496@l(r3)  /* 0x8064B9DC@l */
/* 80601478  3C 60 80 6D */	lis r3, data_806D1C18@ha /* 0x806D1C18@ha */
/* 8060147C  C0 05 B9 D8 */	lfs f0, lit_495@l(r5)  /* 0x8064B9D8@l */
/* 80601480  FF C0 10 90 */	fmr f30, f2
/* 80601484  3B E3 1C 18 */	addi r31, r3, data_806D1C18@l /* 0x806D1C18@l */
/* 80601488  3C C0 80 65 */	lis r6, lit_494@ha /* 0x8064B9D4@ha */
/* 8060148C  FF A0 08 90 */	fmr f29, f1
/* 80601490  C0 26 B9 D4 */	lfs f1, lit_494@l(r6)  /* 0x8064B9D4@l */
/* 80601494  7C 9C 23 78 */	mr r28, r4
/* 80601498  83 C7 09 F4 */	lwz r30, 0x9f4(r7)
/* 8060149C  38 60 00 01 */	li r3, 1
/* 806014A0  83 A7 09 8C */	lwz r29, 0x98c(r7)
/* 806014A4  FC 80 18 90 */	fmr f4, f3
/* 806014A8  38 00 00 00 */	li r0, 0
/* 806014AC  90 61 00 08 */	stw r3, 8(r1)
/* 806014B0  EC 21 E8 2A */	fadds f1, f1, f29
/* 806014B4  EC 40 F0 28 */	fsubs f2, f0, f30
/* 806014B8  7F 83 E3 78 */	mr r3, r28
/* 806014BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806014C0  38 9F 00 14 */	addi r4, r31, 0x14
/* 806014C4  38 A0 00 14 */	li r5, 0x14
/* 806014C8  38 C0 00 FF */	li r6, 0xff
/* 806014CC  38 E0 00 FF */	li r7, 0xff
/* 806014D0  39 00 00 FF */	li r8, 0xff
/* 806014D4  39 20 00 FF */	li r9, 0xff
/* 806014D8  39 40 00 00 */	li r10, 0
/* 806014DC  4B DA EB CD */	bl mFont_SetLineStrings
/* 806014E0  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064B9E0@ha */
/* 806014E4  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064B9E4@ha */
/* 806014E8  38 A3 B9 E0 */	addi r5, r3, lit_497@l /* 0x8064B9E0@l */
/* 806014EC  C0 04 B9 E4 */	lfs f0, lit_498@l(r4)  /* 0x8064B9E4@l */
/* 806014F0  C0 25 00 00 */	lfs f1, 0(r5)
/* 806014F4  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064B9C8@ha */
/* 806014F8  C0 63 B9 C8 */	lfs f3, lit_477@l(r3)  /* 0x8064B9C8@l */
/* 806014FC  38 00 00 00 */	li r0, 0
/* 80601500  EF E1 E8 2A */	fadds f31, f1, f29
/* 80601504  90 01 00 08 */	stw r0, 8(r1)
/* 80601508  EC 40 F0 28 */	fsubs f2, f0, f30
/* 8060150C  7F 83 E3 78 */	mr r3, r28
/* 80601510  FC 80 18 90 */	fmr f4, f3
/* 80601514  90 01 00 0C */	stw r0, 0xc(r1)
/* 80601518  FC 20 F8 90 */	fmr f1, f31
/* 8060151C  38 9E 00 06 */	addi r4, r30, 6
/* 80601520  38 A0 00 0E */	li r5, 0xe
/* 80601524  38 C0 00 EB */	li r6, 0xeb
/* 80601528  38 E0 00 EB */	li r7, 0xeb
/* 8060152C  39 00 00 32 */	li r8, 0x32
/* 80601530  39 20 00 FF */	li r9, 0xff
/* 80601534  39 40 00 00 */	li r10, 0
/* 80601538  4B DA EB 71 */	bl mFont_SetLineStrings
/* 8060153C  3C 80 80 65 */	lis r4, lit_499@ha /* 0x8064B9E8@ha */
/* 80601540  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064B9C8@ha */
/* 80601544  C0 04 B9 E8 */	lfs f0, lit_499@l(r4)  /* 0x8064B9E8@l */
/* 80601548  38 00 00 00 */	li r0, 0
/* 8060154C  C0 63 B9 C8 */	lfs f3, lit_477@l(r3)  /* 0x8064B9C8@l */
/* 80601550  FC 20 F8 90 */	fmr f1, f31
/* 80601554  90 01 00 08 */	stw r0, 8(r1)
/* 80601558  EC 40 F0 28 */	fsubs f2, f0, f30
/* 8060155C  FC 80 18 90 */	fmr f4, f3
/* 80601560  7F 83 E3 78 */	mr r3, r28
/* 80601564  90 01 00 0C */	stw r0, 0xc(r1)
/* 80601568  38 9E 00 14 */	addi r4, r30, 0x14
/* 8060156C  38 A0 00 0E */	li r5, 0xe
/* 80601570  38 C0 00 EB */	li r6, 0xeb
/* 80601574  38 E0 00 EB */	li r7, 0xeb
/* 80601578  39 00 00 32 */	li r8, 0x32
/* 8060157C  39 20 00 FF */	li r9, 0xff
/* 80601580  39 40 00 00 */	li r10, 0
/* 80601584  4B DA EB 25 */	bl mFont_SetLineStrings
/* 80601588  83 5E 00 00 */	lwz r26, 0(r30)
/* 8060158C  38 7E 00 06 */	addi r3, r30, 6
/* 80601590  2C 1A 00 00 */	cmpwi r26, 0
/* 80601594  40 82 00 08 */	bne lbl_8060159C
/* 80601598  38 7E 00 14 */	addi r3, r30, 0x14
lbl_8060159C:
/* 8060159C  A8 9D 00 22 */	lha r4, 0x22(r29)
/* 806015A0  38 A0 00 00 */	li r5, 0
/* 806015A4  4B DA E1 2D */	bl mFont_GetStringWidth
/* 806015A8  3C 00 43 30 */	lis r0, 0x4330
/* 806015AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 806015B0  90 61 00 14 */	stw r3, 0x14(r1)
/* 806015B4  3C 80 80 65 */	lis r4, lit_502@ha /* 0x8064B9F4@ha */
/* 806015B8  57 46 10 3A */	slwi r6, r26, 2
/* 806015BC  38 7F 00 28 */	addi r3, r31, 0x28
/* 806015C0  7C 03 34 2E */	lfsx f0, r3, r6
/* 806015C4  3C A0 80 65 */	lis r5, lit_500@ha /* 0x8064B9EC@ha */
/* 806015C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806015CC  FC 20 F0 50 */	fneg f1, f30
/* 806015D0  C8 84 B9 F4 */	lfd f4, lit_502@l(r4)  /* 0x8064B9F4@l */
/* 806015D4  38 9F 00 30 */	addi r4, r31, 0x30
/* 806015D8  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 806015DC  EC 7D 00 2A */	fadds f3, f29, f0
/* 806015E0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806015E4  7C 04 34 2E */	lfsx f0, r4, r6
/* 806015E8  EC 82 20 28 */	fsubs f4, f2, f4
/* 806015EC  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 806015F0  7F 84 E3 78 */	mr r4, r28
/* 806015F4  EC 41 00 2A */	fadds f2, f1, f0
/* 806015F8  C0 A5 B9 EC */	lfs f5, lit_500@l(r5)  /* 0x8064B9EC@l */
/* 806015FC  EC 04 18 2A */	fadds f0, f4, f3
/* 80601600  81 83 00 30 */	lwz r12, 0x30(r3)
/* 80601604  7F 63 DB 78 */	mr r3, r27
/* 80601608  EC 25 00 2A */	fadds f1, f5, f0
/* 8060160C  7D 89 03 A6 */	mtctr r12
/* 80601610  4E 80 04 21 */	bctrl 
/* 80601614  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80601618  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8060161C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80601620  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80601624  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80601628  39 61 00 30 */	addi r11, r1, 0x30
/* 8060162C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80601630  4B A9 98 E5 */	bl func_8009AF14
/* 80601634  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80601638  7C 08 03 A6 */	mtlr r0
/* 8060163C  38 21 00 60 */	addi r1, r1, 0x60
/* 80601640  4E 80 00 20 */	blr 