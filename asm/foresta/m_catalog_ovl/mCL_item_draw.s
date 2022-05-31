lbl_805CAD14:
/* 805CAD14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CAD18  7C 08 02 A6 */	mflr r0
/* 805CAD1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CAD20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805CAD24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805CAD28  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805CAD2C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805CAD30  39 61 00 20 */	addi r11, r1, 0x20
/* 805CAD34  4B AD 01 95 */	bl func_8009AEC8
/* 805CAD38  7C FF 3B 78 */	mr r31, r7
/* 805CAD3C  FF C0 08 90 */	fmr f30, f1
/* 805CAD40  A8 E7 50 88 */	lha r7, 0x5088(r7)
/* 805CAD44  FF E0 10 90 */	fmr f31, f2
/* 805CAD48  7C 7B 1B 78 */	mr r27, r3
/* 805CAD4C  7C 9C 23 78 */	mr r28, r4
/* 805CAD50  7C E0 07 35 */	extsh. r0, r7
/* 805CAD54  7C BD 2B 78 */	mr r29, r5
/* 805CAD58  7C DE 33 78 */	mr r30, r6
/* 805CAD5C  40 82 00 B8 */	bne lbl_805CAE14
/* 805CAD60  4B E4 14 75 */	bl Matrix_push
/* 805CAD64  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805CAD68  3C 80 80 65 */	lis r4, lit_1060@ha /* 0x8064AF3C@ha */
/* 805CAD6C  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064AEB4@ha */
/* 805CAD70  C0 24 AF 3C */	lfs f1, lit_1060@l(r4)  /* 0x8064AF3C@l */
/* 805CAD74  38 06 00 08 */	addi r0, r6, 8
/* 805CAD78  C0 03 AE B4 */	lfs f0, lit_525@l(r3)  /* 0x8064AEB4@l */
/* 805CAD7C  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805CAD80  3C 00 E7 00 */	lis r0, 0xe700
/* 805CAD84  3C 60 80 65 */	lis r3, lit_528@ha /* 0x8064AEC0@ha */
/* 805CAD88  3C A0 80 65 */	lis r5, lit_1059@ha /* 0x8064AF38@ha */
/* 805CAD8C  90 06 00 00 */	stw r0, 0(r6)
/* 805CAD90  38 00 00 00 */	li r0, 0
/* 805CAD94  C0 65 AF 38 */	lfs f3, lit_1059@l(r5)  /* 0x8064AF38@l */
/* 805CAD98  EC 41 F0 2A */	fadds f2, f1, f30
/* 805CAD9C  90 06 00 04 */	stw r0, 4(r6)
/* 805CADA0  38 83 AE C0 */	addi r4, r3, lit_528@l /* 0x8064AEC0@l */
/* 805CADA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CADA8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 805CADAC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805CADB0  3C C0 80 65 */	lis r6, lit_749@ha /* 0x8064AF28@ha */
/* 805CADB4  3C 80 80 65 */	lis r4, lit_748@ha /* 0x8064AF24@ha */
/* 805CADB8  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 805CADBC  EC 63 00 B2 */	fmuls f3, f3, f2
/* 805CADC0  EC 81 00 32 */	fmuls f4, f1, f0
/* 805CADC4  C0 26 AF 28 */	lfs f1, lit_749@l(r6)  /* 0x8064AF28@l */
/* 805CADC8  C0 44 AF 24 */	lfs f2, lit_748@l(r4)  /* 0x8064AF24@l */
/* 805CADCC  7F C3 F3 78 */	mr r3, r30
/* 805CADD0  38 80 09 00 */	li r4, 0x900
/* 805CADD4  38 A0 01 00 */	li r5, 0x100
/* 805CADD8  38 C0 01 00 */	li r6, 0x100
/* 805CADDC  7D 89 03 A6 */	mtctr r12
/* 805CADE0  4E 80 04 21 */	bctrl 
/* 805CADE4  7F E3 FB 78 */	mr r3, r31
/* 805CADE8  7F A4 EB 78 */	mr r4, r29
/* 805CADEC  4B FF F9 DD */	bl mCL_furniture_draw
/* 805CADF0  80 DB 00 2C */	lwz r6, 0x2c(r27)
/* 805CADF4  7F 63 DB 78 */	mr r3, r27
/* 805CADF8  7F C4 F3 78 */	mr r4, r30
/* 805CADFC  38 A0 00 00 */	li r5, 0
/* 805CAE00  81 86 09 64 */	lwz r12, 0x964(r6)
/* 805CAE04  7D 89 03 A6 */	mtctr r12
/* 805CAE08  4E 80 04 21 */	bctrl 
/* 805CAE0C  4B E4 14 09 */	bl Matrix_pull
/* 805CAE10  48 00 01 04 */	b lbl_805CAF14
lbl_805CAE14:
/* 805CAE14  2C 07 00 05 */	cmpwi r7, 5
/* 805CAE18  41 82 00 FC */	beq lbl_805CAF14
/* 805CAE1C  3C 60 80 65 */	lis r3, lit_1061@ha /* 0x8064AF40@ha */
/* 805CAE20  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805CAE24  38 A3 AF 40 */	addi r5, r3, lit_1061@l /* 0x8064AF40@l */
/* 805CAE28  C0 64 AE B8 */	lfs f3, lit_526@l(r4)  /* 0x8064AEB8@l */
/* 805CAE2C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805CAE30  38 60 00 00 */	li r3, 0
/* 805CAE34  FC 40 08 90 */	fmr f2, f1
/* 805CAE38  4B E4 15 B5 */	bl Matrix_scale
/* 805CAE3C  3C 60 80 65 */	lis r3, lit_1063@ha /* 0x8064AF48@ha */
/* 805CAE40  3C A0 80 65 */	lis r5, lit_1062@ha /* 0x8064AF44@ha */
/* 805CAE44  38 83 AF 48 */	addi r4, r3, lit_1063@l /* 0x8064AF48@l */
/* 805CAE48  C0 45 AF 44 */	lfs f2, lit_1062@l(r5)  /* 0x8064AF44@l */
/* 805CAE4C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805CAE50  3C 60 80 65 */	lis r3, lit_1064@ha /* 0x8064AF4C@ha */
/* 805CAE54  38 83 AF 4C */	addi r4, r3, lit_1064@l /* 0x8064AF4C@l */
/* 805CAE58  C0 9F 00 08 */	lfs f4, 8(r31)
/* 805CAE5C  EC 00 F0 2A */	fadds f0, f0, f30
/* 805CAE60  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CAE64  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805CAE68  38 83 AE A4 */	addi r4, r3, data_8064AEA4@l /* 0x8064AEA4@l */
/* 805CAE6C  EC A2 00 2A */	fadds f5, f2, f0
/* 805CAE70  C0 1F 50 94 */	lfs f0, 0x5094(r31)
/* 805CAE74  EC 41 F8 2A */	fadds f2, f1, f31
/* 805CAE78  C0 64 00 00 */	lfs f3, 0(r4)
/* 805CAE7C  38 60 00 01 */	li r3, 1
/* 805CAE80  EC 25 20 2A */	fadds f1, f5, f4
/* 805CAE84  EC 42 00 2A */	fadds f2, f2, f0
/* 805CAE88  4B E4 14 79 */	bl Matrix_translate
/* 805CAE8C  C0 3F 50 90 */	lfs f1, 0x5090(r31)
/* 805CAE90  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064AEB8@ha */
/* 805CAE94  38 83 AE B8 */	addi r4, r3, lit_526@l /* 0x8064AEB8@l */
/* 805CAE98  FC 40 08 90 */	fmr f2, f1
/* 805CAE9C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805CAEA0  38 60 00 01 */	li r3, 1
/* 805CAEA4  4B E4 15 49 */	bl Matrix_scale
/* 805CAEA8  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 805CAEAC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CAEB0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CAEB4  90 1B 00 00 */	stw r0, 0(r27)
/* 805CAEB8  7F 7A DB 78 */	mr r26, r27
/* 805CAEBC  3B 7B 00 08 */	addi r27, r27, 8
/* 805CAEC0  80 7D 00 00 */	lwz r3, 0(r29)
/* 805CAEC4  4B E4 25 11 */	bl _Matrix_to_Mtx_new
/* 805CAEC8  90 7A 00 04 */	stw r3, 4(r26)
/* 805CAECC  7F 64 DB 78 */	mr r4, r27
/* 805CAED0  3C 00 DE 00 */	lis r0, 0xde00
/* 805CAED4  3C 60 80 A3 */	lis r3, data_80A32EF0@ha /* 0x80A32EF0@ha */
/* 805CAED8  90 1B 00 00 */	stw r0, 0(r27)
/* 805CAEDC  38 03 2E F0 */	addi r0, r3, data_80A32EF0@l /* 0x80A32EF0@l */
/* 805CAEE0  3C 60 80 6D */	lis r3, draw_proc@ha /* 0x806CB6F0@ha */
/* 805CAEE4  3B 7B 00 08 */	addi r27, r27, 8
/* 805CAEE8  90 04 00 04 */	stw r0, 4(r4)
/* 805CAEEC  38 C3 B6 F0 */	addi r6, r3, draw_proc@l /* 0x806CB6F0@l */
/* 805CAEF0  7F E3 FB 78 */	mr r3, r31
/* 805CAEF4  7F 84 E3 78 */	mr r4, r28
/* 805CAEF8  93 7E 02 D0 */	stw r27, 0x2d0(r30)
/* 805CAEFC  7F C5 F3 78 */	mr r5, r30
/* 805CAF00  A8 1F 50 88 */	lha r0, 0x5088(r31)
/* 805CAF04  54 00 10 3A */	slwi r0, r0, 2
/* 805CAF08  7D 86 00 2E */	lwzx r12, r6, r0
/* 805CAF0C  7D 89 03 A6 */	mtctr r12
/* 805CAF10  4E 80 04 21 */	bctrl 
lbl_805CAF14:
/* 805CAF14  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805CAF18  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805CAF1C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805CAF20  39 61 00 20 */	addi r11, r1, 0x20
/* 805CAF24  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805CAF28  4B AC FF ED */	bl func_8009AF14
/* 805CAF2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CAF30  7C 08 03 A6 */	mtlr r0
/* 805CAF34  38 21 00 40 */	addi r1, r1, 0x40
/* 805CAF38  4E 80 00 20 */	blr 
