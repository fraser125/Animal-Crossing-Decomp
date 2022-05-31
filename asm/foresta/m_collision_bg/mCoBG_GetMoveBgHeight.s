lbl_8038CB1C:
/* 8038CB1C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8038CB20  7C 08 02 A6 */	mflr r0
/* 8038CB24  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8038CB28  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8038CB2C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8038CB30  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8038CB34  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8038CB38  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8038CB3C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8038CB40  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8038CB44  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8038CB48  39 61 00 60 */	addi r11, r1, 0x60
/* 8038CB4C  4B D0 E3 75 */	bl func_8009AEC0
/* 8038CB50  3C A0 80 64 */	lis r5, lit_1500@ha /* 0x80641A38@ha */
/* 8038CB54  7C 78 1B 78 */	mr r24, r3
/* 8038CB58  C0 05 1A 38 */	lfs f0, lit_1500@l(r5)  /* 0x80641A38@l */
/* 8038CB5C  3C C0 81 13 */	lis r6, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038CB60  38 66 71 E8 */	addi r3, r6, l_mBgMgr@l /* 0x811371E8@l */
/* 8038CB64  3B 60 FF FF */	li r27, -1
/* 8038CB68  D0 18 00 00 */	stfs f0, 0(r24)
/* 8038CB6C  7C 7D 1B 78 */	mr r29, r3
/* 8038CB70  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038CB74  80 03 01 00 */	lwz r0, 0x100(r3)
/* 8038CB78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8038CB7C  2C 00 00 00 */	cmpwi r0, 0
/* 8038CB80  C0 04 00 08 */	lfs f0, 8(r4)
/* 8038CB84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8038CB88  41 82 01 E0 */	beq lbl_8038CD68
/* 8038CB8C  3B 80 00 00 */	li r28, 0
lbl_8038CB90:
/* 8038CB90  83 FD 00 00 */	lwz r31, 0(r29)
/* 8038CB94  28 1F 00 00 */	cmplwi r31, 0
/* 8038CB98  41 82 01 C0 */	beq lbl_8038CD58
/* 8038CB9C  83 DF 00 00 */	lwz r30, 0(r31)
/* 8038CBA0  38 61 00 20 */	addi r3, r1, 0x20
/* 8038CBA4  83 3F 00 10 */	lwz r25, 0x10(r31)
/* 8038CBA8  38 81 00 28 */	addi r4, r1, 0x28
/* 8038CBAC  83 5F 00 14 */	lwz r26, 0x14(r31)
/* 8038CBB0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8038CBB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8038CBB8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8038CBBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8038CBC0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8038CBC4  4B FF FE E9 */	bl func_8038CAAC
/* 8038CBC8  2C 03 00 00 */	cmpwi r3, 0
/* 8038CBCC  41 82 01 8C */	beq lbl_8038CD58
/* 8038CBD0  80 9F 00 08 */	lwz r4, 8(r31)
/* 8038CBD4  3C 00 43 30 */	lis r0, 0x4330
/* 8038CBD8  3C C0 80 64 */	lis r6, lit_1501@ha /* 0x80641A3C@ha */
/* 8038CBDC  80 FF 00 24 */	lwz r7, 0x24(r31)
/* 8038CBE0  A8 A4 00 00 */	lha r5, 0(r4)
/* 8038CBE4  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038CBE8  38 83 19 DC */	addi r4, r3, lit_793@l /* 0x806419DC@l */
/* 8038CBEC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8038CBF0  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8038CBF4  C8 24 00 00 */	lfd f1, 0(r4)
/* 8038CBF8  90 61 00 34 */	stw r3, 0x34(r1)
/* 8038CBFC  28 07 00 00 */	cmplwi r7, 0
/* 8038CC00  C0 46 1A 3C */	lfs f2, lit_1501@l(r6)  /* 0x80641A3C@l */
/* 8038CC04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8038CC08  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038CC0C  EF 82 00 32 */	fmuls f28, f2, f0
/* 8038CC10  41 82 00 0C */	beq lbl_8038CC1C
/* 8038CC14  C0 87 00 00 */	lfs f4, 0(r7)
/* 8038CC18  48 00 00 0C */	b lbl_8038CC24
lbl_8038CC1C:
/* 8038CC1C  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038CC20  C0 83 19 B0 */	lfs f4, lit_522@l(r3)  /* 0x806419B0@l */
lbl_8038CC24:
/* 8038CC24  C0 39 00 04 */	lfs f1, 4(r25)
/* 8038CC28  38 61 00 18 */	addi r3, r1, 0x18
/* 8038CC2C  C0 19 00 08 */	lfs f0, 8(r25)
/* 8038CC30  EC 21 01 32 */	fmuls f1, f1, f4
/* 8038CC34  C0 79 00 00 */	lfs f3, 0(r25)
/* 8038CC38  EC 00 01 32 */	fmuls f0, f0, f4
/* 8038CC3C  C0 59 00 0C */	lfs f2, 0xc(r25)
/* 8038CC40  EF C3 01 32 */	fmuls f30, f3, f4
/* 8038CC44  FF E0 08 50 */	fneg f31, f1
/* 8038CC48  EF A2 01 32 */	fmuls f29, f2, f4
/* 8038CC4C  FC 40 00 50 */	fneg f2, f0
/* 8038CC50  FC 20 F8 90 */	fmr f1, f31
/* 8038CC54  4B FF E6 E1 */	bl mCoBG_SetLinePos
/* 8038CC58  FC 20 F8 90 */	fmr f1, f31
/* 8038CC5C  38 61 00 10 */	addi r3, r1, 0x10
/* 8038CC60  FC 40 E8 90 */	fmr f2, f29
/* 8038CC64  4B FF E6 D1 */	bl mCoBG_SetLinePos
/* 8038CC68  FC 20 F0 90 */	fmr f1, f30
/* 8038CC6C  38 61 00 08 */	addi r3, r1, 8
/* 8038CC70  FC 40 E8 90 */	fmr f2, f29
/* 8038CC74  4B FF E6 C1 */	bl mCoBG_SetLinePos
/* 8038CC78  28 1A 00 00 */	cmplwi r26, 0
/* 8038CC7C  41 82 00 34 */	beq lbl_8038CCB0
/* 8038CC80  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038CC84  38 61 00 18 */	addi r3, r1, 0x18
/* 8038CC88  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8038CC8C  4B FF E6 B5 */	bl mCoBG_PlusLinePos
/* 8038CC90  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038CC94  38 61 00 10 */	addi r3, r1, 0x10
/* 8038CC98  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8038CC9C  4B FF E6 A5 */	bl mCoBG_PlusLinePos
/* 8038CCA0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038CCA4  38 61 00 08 */	addi r3, r1, 8
/* 8038CCA8  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8038CCAC  4B FF E6 95 */	bl mCoBG_PlusLinePos
lbl_8038CCB0:
/* 8038CCB0  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038CCB4  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038CCB8  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8038CCBC  41 82 00 28 */	beq lbl_8038CCE4
/* 8038CCC0  FC 20 E0 90 */	fmr f1, f28
/* 8038CCC4  38 61 00 18 */	addi r3, r1, 0x18
/* 8038CCC8  4B FF D4 E1 */	bl func_8038A1A8
/* 8038CCCC  FC 20 E0 90 */	fmr f1, f28
/* 8038CCD0  38 61 00 10 */	addi r3, r1, 0x10
/* 8038CCD4  4B FF D4 D5 */	bl func_8038A1A8
/* 8038CCD8  FC 20 E0 90 */	fmr f1, f28
/* 8038CCDC  38 61 00 08 */	addi r3, r1, 8
/* 8038CCE0  4B FF D4 C9 */	bl func_8038A1A8
lbl_8038CCE4:
/* 8038CCE4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8038CCE8  38 61 00 18 */	addi r3, r1, 0x18
/* 8038CCEC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8038CCF0  4B FF E6 51 */	bl mCoBG_PlusLinePos
/* 8038CCF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8038CCF8  38 61 00 10 */	addi r3, r1, 0x10
/* 8038CCFC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8038CD00  4B FF E6 41 */	bl mCoBG_PlusLinePos
/* 8038CD04  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8038CD08  38 61 00 08 */	addi r3, r1, 8
/* 8038CD0C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8038CD10  4B FF E6 31 */	bl mCoBG_PlusLinePos
/* 8038CD14  38 61 00 18 */	addi r3, r1, 0x18
/* 8038CD18  38 81 00 10 */	addi r4, r1, 0x10
/* 8038CD1C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8038CD20  4B FF E5 65 */	bl mCoBG_RangeCheckLinePoint
/* 8038CD24  2C 03 00 00 */	cmpwi r3, 0
/* 8038CD28  41 82 00 30 */	beq lbl_8038CD58
/* 8038CD2C  38 61 00 10 */	addi r3, r1, 0x10
/* 8038CD30  38 81 00 08 */	addi r4, r1, 8
/* 8038CD34  38 A1 00 28 */	addi r5, r1, 0x28
/* 8038CD38  4B FF E5 4D */	bl mCoBG_RangeCheckLinePoint
/* 8038CD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8038CD40  41 82 00 18 */	beq lbl_8038CD58
/* 8038CD44  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038CD48  7F 9B E3 78 */	mr r27, r28
/* 8038CD4C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8038CD50  EC 01 00 2A */	fadds f0, f1, f0
/* 8038CD54  D0 18 00 00 */	stfs f0, 0(r24)
lbl_8038CD58:
/* 8038CD58  3B 9C 00 01 */	addi r28, r28, 1
/* 8038CD5C  3B BD 00 04 */	addi r29, r29, 4
/* 8038CD60  2C 1C 00 40 */	cmpwi r28, 0x40
/* 8038CD64  41 80 FE 2C */	blt lbl_8038CB90
lbl_8038CD68:
/* 8038CD68  7F 63 DB 78 */	mr r3, r27
/* 8038CD6C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8038CD70  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8038CD74  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8038CD78  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8038CD7C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8038CD80  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8038CD84  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8038CD88  39 61 00 60 */	addi r11, r1, 0x60
/* 8038CD8C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8038CD90  4B D0 E1 7D */	bl func_8009AF0C
/* 8038CD94  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8038CD98  7C 08 03 A6 */	mtlr r0
/* 8038CD9C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8038CDA0  4E 80 00 20 */	blr 
