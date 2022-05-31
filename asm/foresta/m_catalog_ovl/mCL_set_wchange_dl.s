lbl_805CB92C:
/* 805CB92C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CB930  7C 08 02 A6 */	mflr r0
/* 805CB934  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CB938  39 61 00 20 */	addi r11, r1, 0x20
/* 805CB93C  4B AC F5 8D */	bl func_8009AEC8
/* 805CB940  3C C0 80 65 */	lis r6, lit_1061@ha /* 0x8064AF40@ha */
/* 805CB944  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805CB948  C0 26 AF 40 */	lfs f1, lit_1061@l(r6)  /* 0x8064AF40@l */
/* 805CB94C  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064AEB8@ha */
/* 805CB950  C0 63 AE B8 */	lfs f3, lit_526@l(r3)  /* 0x8064AEB8@l */
/* 805CB954  7C 9A 23 78 */	mr r26, r4
/* 805CB958  FC 40 08 90 */	fmr f2, f1
/* 805CB95C  83 A7 09 CC */	lwz r29, 0x9cc(r7)
/* 805CB960  7C BB 2B 78 */	mr r27, r5
/* 805CB964  38 60 00 00 */	li r3, 0
/* 805CB968  4B E4 0A 85 */	bl Matrix_scale
/* 805CB96C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 805CB970  3C 60 80 65 */	lis r3, lit_1193@ha /* 0x8064AF68@ha */
/* 805CB974  C0 63 AF 68 */	lfs f3, lit_1193@l(r3)  /* 0x8064AF68@l */
/* 805CB978  38 60 00 01 */	li r3, 1
/* 805CB97C  FC 40 00 50 */	fneg f2, f0
/* 805CB980  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 805CB984  4B E4 09 7D */	bl Matrix_translate
/* 805CB988  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CB98C  83 9B 02 D0 */	lwz r28, 0x2d0(r27)
/* 805CB990  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CB994  7F 63 DB 78 */	mr r3, r27
/* 805CB998  90 1C 00 00 */	stw r0, 0(r28)
/* 805CB99C  4B E4 1A 39 */	bl _Matrix_to_Mtx_new
/* 805CB9A0  90 7C 00 04 */	stw r3, 4(r28)
/* 805CB9A4  3D 40 DE 00 */	lis r10, 0xde00
/* 805CB9A8  3C 60 80 A4 */	lis r3, clg_mwin_mode@ha /* 0x80A3CB40@ha */
/* 805CB9AC  3C A0 80 A3 */	lis r5, clg_tag_win_mode@ha /* 0x80A33E60@ha */
/* 805CB9B0  91 5C 00 08 */	stw r10, 8(r28)
/* 805CB9B4  38 03 CB 40 */	addi r0, r3, clg_mwin_mode@l /* 0x80A3CB40@l */
/* 805CB9B8  3B C5 3E 60 */	addi r30, r5, clg_tag_win_mode@l /* 0x80A33E60@l */
/* 805CB9BC  3C C0 80 6D */	lis r6, mCL_win_data@ha /* 0x806CB4C8@ha */
/* 805CB9C0  3D 20 E3 00 */	lis r9, 0xE300 /* 0xE3000A01@ha */
/* 805CB9C4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805CB9C8  38 09 0A 01 */	addi r0, r9, 0x0A01 /* 0xE3000A01@l */
/* 805CB9CC  3C 60 32 32 */	lis r3, 0x3232 /* 0x32327DFF@ha */
/* 805CB9D0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 805CB9D4  39 00 00 00 */	li r8, 0
/* 805CB9D8  38 09 10 01 */	addi r0, r9, 0x1001
/* 805CB9DC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805CB9E0  91 1C 00 14 */	stw r8, 0x14(r28)
/* 805CB9E4  38 E6 B4 C8 */	addi r7, r6, mCL_win_data@l /* 0x806CB4C8@l */
/* 805CB9E8  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 805CB9EC  38 A0 00 FF */	li r5, 0xff
/* 805CB9F0  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805CB9F4  3C 80 FB 00 */	lis r4, 0xfb00
/* 805CB9F8  38 63 7D FF */	addi r3, r3, 0x7DFF /* 0x32327DFF@l */
/* 805CB9FC  38 00 00 09 */	li r0, 9
/* 805CBA00  91 1C 00 1C */	stw r8, 0x1c(r28)
/* 805CBA04  39 00 00 00 */	li r8, 0
/* 805CBA08  91 5C 00 20 */	stw r10, 0x20(r28)
/* 805CBA0C  93 DC 00 24 */	stw r30, 0x24(r28)
/* 805CBA10  90 DC 00 28 */	stw r6, 0x28(r28)
/* 805CBA14  90 BC 00 2C */	stw r5, 0x2c(r28)
/* 805CBA18  90 9C 00 30 */	stw r4, 0x30(r28)
/* 805CBA1C  90 7C 00 34 */	stw r3, 0x34(r28)
/* 805CBA20  7C 09 03 A6 */	mtctr r0
/* 805CBA24  3B 9C 00 38 */	addi r28, r28, 0x38
lbl_805CBA28:
/* 805CBA28  88 1D 00 01 */	lbz r0, 1(r29)
/* 805CBA2C  7C 08 00 00 */	cmpw r8, r0
/* 805CBA30  41 82 00 14 */	beq lbl_805CBA44
/* 805CBA34  91 5C 00 00 */	stw r10, 0(r28)
/* 805CBA38  80 07 00 08 */	lwz r0, 8(r7)
/* 805CBA3C  90 1C 00 04 */	stw r0, 4(r28)
/* 805CBA40  3B 9C 00 08 */	addi r28, r28, 8
lbl_805CBA44:
/* 805CBA44  39 08 00 01 */	addi r8, r8, 1
/* 805CBA48  38 E7 00 10 */	addi r7, r7, 0x10
/* 805CBA4C  42 00 FF DC */	bdnz lbl_805CBA28
/* 805CBA50  3C 80 DE 00 */	lis r4, 0xde00
/* 805CBA54  3C 60 80 A3 */	lis r3, clg_tag_picture_mode@ha /* 0x80A33E90@ha */
/* 805CBA58  90 9C 00 00 */	stw r4, 0(r28)
/* 805CBA5C  3B E3 3E 90 */	addi r31, r3, clg_tag_picture_mode@l /* 0x80A33E90@l */
/* 805CBA60  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805CBA64  3C A0 80 6D */	lis r5, mCL_win_data@ha /* 0x806CB4C8@ha */
/* 805CBA68  93 FC 00 04 */	stw r31, 4(r28)
/* 805CBA6C  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805CBA70  3C 60 91 92 */	lis r3, 0x9192 /* 0x9191CDFF@ha */
/* 805CBA74  38 A5 B4 C8 */	addi r5, r5, mCL_win_data@l /* 0x806CB4C8@l */
/* 805CBA78  90 1C 00 08 */	stw r0, 8(r28)
/* 805CBA7C  38 63 CD FF */	addi r3, r3, 0xCDFF /* 0x9191CDFF@l */
/* 805CBA80  38 00 00 09 */	li r0, 9
/* 805CBA84  90 7C 00 0C */	stw r3, 0xc(r28)
/* 805CBA88  38 60 00 00 */	li r3, 0
/* 805CBA8C  7C 09 03 A6 */	mtctr r0
/* 805CBA90  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_805CBA94:
/* 805CBA94  88 1D 00 01 */	lbz r0, 1(r29)
/* 805CBA98  7C 03 00 00 */	cmpw r3, r0
/* 805CBA9C  41 82 00 14 */	beq lbl_805CBAB0
/* 805CBAA0  90 9C 00 00 */	stw r4, 0(r28)
/* 805CBAA4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 805CBAA8  90 1C 00 04 */	stw r0, 4(r28)
/* 805CBAAC  3B 9C 00 08 */	addi r28, r28, 8
lbl_805CBAB0:
/* 805CBAB0  38 63 00 01 */	addi r3, r3, 1
/* 805CBAB4  38 A5 00 10 */	addi r5, r5, 0x10
/* 805CBAB8  42 00 FF DC */	bdnz lbl_805CBA94
/* 805CBABC  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805CBAC0  3C 60 80 65 */	lis r3, lit_1200@ha /* 0x8064AF84@ha */
/* 805CBAC4  C0 24 AE A4 */	lfs f1, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805CBAC8  C0 43 AF 84 */	lfs f2, lit_1200@l(r3)  /* 0x8064AF84@l */
/* 805CBACC  38 60 00 01 */	li r3, 1
/* 805CBAD0  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 805CBAD4  FC 60 08 90 */	fmr f3, f1
/* 805CBAD8  EC 42 00 32 */	fmuls f2, f2, f0
/* 805CBADC  4B E4 08 25 */	bl Matrix_translate
/* 805CBAE0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CBAE4  7F 63 DB 78 */	mr r3, r27
/* 805CBAE8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CBAEC  90 1C 00 00 */	stw r0, 0(r28)
/* 805CBAF0  4B E4 18 E5 */	bl _Matrix_to_Mtx_new
/* 805CBAF4  90 7C 00 04 */	stw r3, 4(r28)
/* 805CBAF8  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805CBAFC  3C 60 32 33 */	lis r3, 0x3233 /* 0x3232FFFF@ha */
/* 805CBB00  3D 00 80 6D */	lis r8, mCL_win_data@ha /* 0x806CB4C8@ha */
/* 805CBB04  88 1D 00 01 */	lbz r0, 1(r29)
/* 805CBB08  3C E0 DE 00 */	lis r7, 0xde00
/* 805CBB0C  38 C5 00 FF */	addi r6, r5, 0x00FF /* 0xFA0000FF@l */
/* 805CBB10  3C 80 00 14 */	lis r4, 0x0014 /* 0x00146EFF@ha */
/* 805CBB14  90 FC 00 08 */	stw r7, 8(r28)
/* 805CBB18  38 A4 6E FF */	addi r5, r4, 0x6EFF /* 0x00146EFF@l */
/* 805CBB1C  54 09 20 36 */	slwi r9, r0, 4
/* 805CBB20  39 08 B4 C8 */	addi r8, r8, mCL_win_data@l /* 0x806CB4C8@l */
/* 805CBB24  93 DC 00 0C */	stw r30, 0xc(r28)
/* 805CBB28  3C 80 FB 00 */	lis r4, 0xfb00
/* 805CBB2C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x3232FFFF@l */
/* 805CBB30  7D 08 4A 14 */	add r8, r8, r9
/* 805CBB34  90 DC 00 10 */	stw r6, 0x10(r28)
/* 805CBB38  38 00 FF FF */	li r0, -1
/* 805CBB3C  90 BC 00 14 */	stw r5, 0x14(r28)
/* 805CBB40  90 9C 00 18 */	stw r4, 0x18(r28)
/* 805CBB44  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 805CBB48  90 FC 00 20 */	stw r7, 0x20(r28)
/* 805CBB4C  80 68 00 08 */	lwz r3, 8(r8)
/* 805CBB50  90 7C 00 24 */	stw r3, 0x24(r28)
/* 805CBB54  90 FC 00 28 */	stw r7, 0x28(r28)
/* 805CBB58  93 FC 00 2C */	stw r31, 0x2c(r28)
/* 805CBB5C  90 DC 00 30 */	stw r6, 0x30(r28)
/* 805CBB60  90 1C 00 34 */	stw r0, 0x34(r28)
/* 805CBB64  90 FC 00 38 */	stw r7, 0x38(r28)
/* 805CBB68  80 08 00 0C */	lwz r0, 0xc(r8)
/* 805CBB6C  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 805CBB70  3B 9C 00 40 */	addi r28, r28, 0x40
/* 805CBB74  A8 1D 00 02 */	lha r0, 2(r29)
/* 805CBB78  2C 00 00 14 */	cmpwi r0, 0x14
/* 805CBB7C  40 80 00 28 */	bge lbl_805CBBA4
/* 805CBB80  3C 60 80 A4 */	lis r3, clg_name_mode@ha /* 0x80A3CB68@ha */
/* 805CBB84  90 FC 00 00 */	stw r7, 0(r28)
/* 805CBB88  38 03 CB 68 */	addi r0, r3, clg_name_mode@l /* 0x80A3CB68@l */
/* 805CBB8C  3C 60 80 A3 */	lis r3, clg_win_cbT_model@ha /* 0x80A32E20@ha */
/* 805CBB90  90 1C 00 04 */	stw r0, 4(r28)
/* 805CBB94  38 03 2E 20 */	addi r0, r3, clg_win_cbT_model@l /* 0x80A32E20@l */
/* 805CBB98  90 FC 00 08 */	stw r7, 8(r28)
/* 805CBB9C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805CBBA0  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_805CBBA4:
/* 805CBBA4  93 9B 02 D0 */	stw r28, 0x2d0(r27)
/* 805CBBA8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CBBAC  4B AC F3 69 */	bl func_8009AF14
/* 805CBBB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CBBB4  7C 08 03 A6 */	mtlr r0
/* 805CBBB8  38 21 00 20 */	addi r1, r1, 0x20
/* 805CBBBC  4E 80 00 20 */	blr 
