lbl_8044FED4:
/* 8044FED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044FED8  7C 08 02 A6 */	mflr r0
/* 8044FEDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044FEE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8044FEE4  4B C4 AF E5 */	bl func_8009AEC8
/* 8044FEE8  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8044FEEC  7C 7A 1B 78 */	mr r26, r3
/* 8044FEF0  7C 9B 23 78 */	mr r27, r4
/* 8044FEF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8044FEF8  3B DA 00 38 */	addi r30, r26, 0x38
/* 8044FEFC  41 82 00 0C */	beq lbl_8044FF08
/* 8044FF00  3B BE 00 70 */	addi r29, r30, 0x70
/* 8044FF04  48 00 00 08 */	b lbl_8044FF0C
lbl_8044FF08:
/* 8044FF08  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_8044FF0C:
/* 8044FF0C  83 9B 00 00 */	lwz r28, 0(r27)
/* 8044FF10  38 60 00 00 */	li r3, 0
/* 8044FF14  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 8044FF18  C0 5A 05 A4 */	lfs f2, 0x5a4(r26)
/* 8044FF1C  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 8044FF20  4B FB C3 E1 */	bl Matrix_translate
/* 8044FF24  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 8044FF28  38 C0 00 01 */	li r6, 1
/* 8044FF2C  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 8044FF30  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 8044FF34  4B FB CA 61 */	bl Matrix_rotateXYZ
/* 8044FF38  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044FF3C  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 8044FF40  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8044FF44  38 60 00 01 */	li r3, 1
/* 8044FF48  C0 24 00 00 */	lfs f1, 0(r4)
/* 8044FF4C  FC 40 08 90 */	fmr f2, f1
/* 8044FF50  4B FB C3 B1 */	bl Matrix_translate
/* 8044FF54  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8044FF58  38 60 00 01 */	li r3, 1
/* 8044FF5C  FC 40 08 90 */	fmr f2, f1
/* 8044FF60  FC 60 08 90 */	fmr f3, f1
/* 8044FF64  4B FB C4 89 */	bl Matrix_scale
/* 8044FF68  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 8044FF6C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8044FF70  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044FF74  38 7F 00 08 */	addi r3, r31, 8
/* 8044FF78  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8044FF7C  90 1F 00 00 */	stw r0, 0(r31)
/* 8044FF80  80 7B 00 00 */	lwz r3, 0(r27)
/* 8044FF84  4B FB D4 51 */	bl _Matrix_to_Mtx_new
/* 8044FF88  3C 80 80 45 */	lis r4, mfish_bfish_before_disp@ha /* 0x8044F980@ha */
/* 8044FF8C  90 7F 00 04 */	stw r3, 4(r31)
/* 8044FF90  38 C4 F9 80 */	addi r6, r4, mfish_bfish_before_disp@l /* 0x8044F980@l */
/* 8044FF94  7F 63 DB 78 */	mr r3, r27
/* 8044FF98  7F C4 F3 78 */	mr r4, r30
/* 8044FF9C  7F A5 EB 78 */	mr r5, r29
/* 8044FFA0  7F 48 D3 78 */	mr r8, r26
/* 8044FFA4  38 E0 00 00 */	li r7, 0
/* 8044FFA8  4B F2 17 91 */	bl cKF_Si3_draw_R_SV
/* 8044FFAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8044FFB0  4B C4 AF 65 */	bl func_8009AF14
/* 8044FFB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044FFB8  7C 08 03 A6 */	mtlr r0
/* 8044FFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8044FFC0  4E 80 00 20 */	blr 
