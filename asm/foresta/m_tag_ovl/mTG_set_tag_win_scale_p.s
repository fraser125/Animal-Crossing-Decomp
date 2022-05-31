lbl_805EF9FC:
/* 805EF9FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EFA00  7C 08 02 A6 */	mflr r0
/* 805EFA04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EFA08  39 61 00 20 */	addi r11, r1, 0x20
/* 805EFA0C  4B AA B4 C5 */	bl func_8009AED0
/* 805EFA10  3C C0 80 6D */	lis r6, data_806CF828@ha /* 0x806CF828@ha */
/* 805EFA14  3C A0 80 65 */	lis r5, data_8064B814@ha /* 0x8064B814@ha */
/* 805EFA18  3B C6 F8 28 */	addi r30, r6, data_806CF828@l /* 0x806CF828@l */
/* 805EFA1C  C0 05 B8 14 */	lfs f0, data_8064B814@l(r5)  /* 0x8064B814@l */
/* 805EFA20  1C 04 00 30 */	mulli r0, r4, 0x30
/* 805EFA24  7C 7F 1B 78 */	mr r31, r3
/* 805EFA28  3B BE 10 04 */	addi r29, r30, 0x1004
/* 805EFA2C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 805EFA30  7F BD 02 14 */	add r29, r29, r0
/* 805EFA34  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 805EFA38  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805EFA3C  EC 21 18 28 */	fsubs f1, f1, f3
/* 805EFA40  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 805EFA44  EC 01 00 24 */	fdivs f0, f1, f0
/* 805EFA48  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805EFA4C  41 82 00 24 */	beq lbl_805EFA70
/* 805EFA50  3C A0 80 65 */	lis r5, lit_628@ha /* 0x8064B830@ha */
/* 805EFA54  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064B834@ha */
/* 805EFA58  C0 25 B8 30 */	lfs f1, lit_628@l(r5)  /* 0x8064B830@l */
/* 805EFA5C  C0 03 B8 34 */	lfs f0, lit_629@l(r3)  /* 0x8064B834@l */
/* 805EFA60  EC 22 08 28 */	fsubs f1, f2, f1
/* 805EFA64  EC 01 00 24 */	fdivs f0, f1, f0
/* 805EFA68  D0 1F 00 08 */	stfs f0, 8(r31)
/* 805EFA6C  48 00 00 0C */	b lbl_805EFA78
lbl_805EFA70:
/* 805EFA70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805EFA74  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_805EFA78:
/* 805EFA78  2C 04 00 01 */	cmpwi r4, 1
/* 805EFA7C  40 82 00 30 */	bne lbl_805EFAAC
/* 805EFA80  7F E3 FB 78 */	mr r3, r31
/* 805EFA84  4B FF FF 15 */	bl mTG_quest_disp_up_check
/* 805EFA88  2C 03 00 01 */	cmpwi r3, 1
/* 805EFA8C  40 82 00 0C */	bne lbl_805EFA98
/* 805EFA90  3B 9E 0F D4 */	addi r28, r30, 0xfd4
/* 805EFA94  48 00 00 18 */	b lbl_805EFAAC
lbl_805EFA98:
/* 805EFA98  7F E3 FB 78 */	mr r3, r31
/* 805EFA9C  4B FF FF 39 */	bl mTG_quest_disp_low_check
/* 805EFAA0  2C 03 00 01 */	cmpwi r3, 1
/* 805EFAA4  40 82 00 08 */	bne lbl_805EFAAC
/* 805EFAA8  3B 9E 0F E4 */	addi r28, r30, 0xfe4
lbl_805EFAAC:
/* 805EFAAC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805EFAB0  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805EFAB4  38 00 00 02 */	li r0, 2
/* 805EFAB8  C0 83 B8 38 */	lfs f4, lit_630@l(r3)  /* 0x8064B838@l */
/* 805EFABC  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 805EFAC0  38 60 00 00 */	li r3, 0
/* 805EFAC4  7C 09 03 A6 */	mtctr r0
lbl_805EFAC8:
/* 805EFAC8  7C BD 1A 14 */	add r5, r29, r3
/* 805EFACC  7C 9F 1A 14 */	add r4, r31, r3
/* 805EFAD0  C0 45 00 00 */	lfs f2, 0(r5)
/* 805EFAD4  7C DC 1A 14 */	add r6, r28, r3
/* 805EFAD8  C0 24 00 04 */	lfs f1, 4(r4)
/* 805EFADC  38 63 00 04 */	addi r3, r3, 4
/* 805EFAE0  EC 04 10 28 */	fsubs f0, f4, f2
/* 805EFAE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFAE8  EC 02 00 2A */	fadds f0, f2, f0
/* 805EFAEC  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 805EFAF0  D0 84 00 1C */	stfs f4, 0x1c(r4)
/* 805EFAF4  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 805EFAF8  C0 04 00 04 */	lfs f0, 4(r4)
/* 805EFAFC  C0 65 00 1C */	lfs f3, 0x1c(r5)
/* 805EFB00  EC 41 00 32 */	fmuls f2, f1, f0
/* 805EFB04  C0 25 00 08 */	lfs f1, 8(r5)
/* 805EFB08  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 805EFB0C  EC 43 10 2A */	fadds f2, f3, f2
/* 805EFB10  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFB14  EC 02 00 2A */	fadds f0, f2, f0
/* 805EFB18  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 805EFB1C  C0 26 00 08 */	lfs f1, 8(r6)
/* 805EFB20  C0 04 00 04 */	lfs f0, 4(r4)
/* 805EFB24  C0 66 00 00 */	lfs f3, 0(r6)
/* 805EFB28  EC 41 00 32 */	fmuls f2, f1, f0
/* 805EFB2C  C0 25 00 08 */	lfs f1, 8(r5)
/* 805EFB30  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 805EFB34  EC 43 10 2A */	fadds f2, f3, f2
/* 805EFB38  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFB3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 805EFB40  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805EFB44  42 00 FF 84 */	bdnz lbl_805EFAC8
/* 805EFB48  39 61 00 20 */	addi r11, r1, 0x20
/* 805EFB4C  4B AA B3 D1 */	bl func_8009AF1C
/* 805EFB50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EFB54  7C 08 03 A6 */	mtlr r0
/* 805EFB58  38 21 00 20 */	addi r1, r1, 0x20
/* 805EFB5C  4E 80 00 20 */	blr 
