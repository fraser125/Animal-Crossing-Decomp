lbl_80455EA8:
/* 80455EA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80455EAC  7C 08 02 A6 */	mflr r0
/* 80455EB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80455EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80455EB8  4B C4 50 11 */	bl func_8009AEC8
/* 80455EBC  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80455EC0  7C 7A 1B 78 */	mr r26, r3
/* 80455EC4  7C 9B 23 78 */	mr r27, r4
/* 80455EC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80455ECC  3B DA 00 38 */	addi r30, r26, 0x38
/* 80455ED0  41 82 00 0C */	beq lbl_80455EDC
/* 80455ED4  3B BE 00 70 */	addi r29, r30, 0x70
/* 80455ED8  48 00 00 08 */	b lbl_80455EE0
lbl_80455EDC:
/* 80455EDC  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_80455EE0:
/* 80455EE0  83 9B 00 00 */	lwz r28, 0(r27)
/* 80455EE4  38 60 00 00 */	li r3, 0
/* 80455EE8  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 80455EEC  C0 5A 05 A4 */	lfs f2, 0x5a4(r26)
/* 80455EF0  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 80455EF4  4B FB 64 0D */	bl Matrix_translate
/* 80455EF8  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 80455EFC  38 C0 00 01 */	li r6, 1
/* 80455F00  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 80455F04  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 80455F08  4B FB 6A 8D */	bl Matrix_rotateXYZ
/* 80455F0C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80455F10  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 80455F14  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80455F18  38 60 00 01 */	li r3, 1
/* 80455F1C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80455F20  FC 40 08 90 */	fmr f2, f1
/* 80455F24  4B FB 63 DD */	bl Matrix_translate
/* 80455F28  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80455F2C  38 60 00 01 */	li r3, 1
/* 80455F30  FC 40 08 90 */	fmr f2, f1
/* 80455F34  FC 60 08 90 */	fmr f3, f1
/* 80455F38  4B FB 64 B5 */	bl Matrix_scale
/* 80455F3C  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 80455F40  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80455F44  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80455F48  38 7F 00 08 */	addi r3, r31, 8
/* 80455F4C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80455F50  90 1F 00 00 */	stw r0, 0(r31)
/* 80455F54  80 7B 00 00 */	lwz r3, 0(r27)
/* 80455F58  4B FB 74 7D */	bl _Matrix_to_Mtx_new
/* 80455F5C  3C 80 80 45 */	lis r4, mfish_namazu_before_disp@ha /* 0x80455B80@ha */
/* 80455F60  90 7F 00 04 */	stw r3, 4(r31)
/* 80455F64  38 C4 5B 80 */	addi r6, r4, mfish_namazu_before_disp@l /* 0x80455B80@l */
/* 80455F68  7F 63 DB 78 */	mr r3, r27
/* 80455F6C  7F C4 F3 78 */	mr r4, r30
/* 80455F70  7F A5 EB 78 */	mr r5, r29
/* 80455F74  7F 48 D3 78 */	mr r8, r26
/* 80455F78  38 E0 00 00 */	li r7, 0
/* 80455F7C  4B F1 B7 BD */	bl cKF_Si3_draw_R_SV
/* 80455F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80455F84  4B C4 4F 91 */	bl func_8009AF14
/* 80455F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80455F8C  7C 08 03 A6 */	mtlr r0
/* 80455F90  38 21 00 20 */	addi r1, r1, 0x20
/* 80455F94  4E 80 00 20 */	blr 
