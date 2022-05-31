lbl_80450EBC:
/* 80450EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80450EC0  7C 08 02 A6 */	mflr r0
/* 80450EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80450EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80450ECC  4B C4 9F FD */	bl func_8009AEC8
/* 80450ED0  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80450ED4  7C 7A 1B 78 */	mr r26, r3
/* 80450ED8  7C 9B 23 78 */	mr r27, r4
/* 80450EDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80450EE0  3B DA 00 38 */	addi r30, r26, 0x38
/* 80450EE4  41 82 00 0C */	beq lbl_80450EF0
/* 80450EE8  3B BE 00 70 */	addi r29, r30, 0x70
/* 80450EEC  48 00 00 08 */	b lbl_80450EF4
lbl_80450EF0:
/* 80450EF0  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_80450EF4:
/* 80450EF4  C0 3A 05 A4 */	lfs f1, 0x5a4(r26)
/* 80450EF8  38 60 00 00 */	li r3, 0
/* 80450EFC  C0 1A 05 B0 */	lfs f0, 0x5b0(r26)
/* 80450F00  83 9B 00 00 */	lwz r28, 0(r27)
/* 80450F04  EC 41 00 2A */	fadds f2, f1, f0
/* 80450F08  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 80450F0C  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 80450F10  4B FB B3 F1 */	bl Matrix_translate
/* 80450F14  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 80450F18  38 C0 00 01 */	li r6, 1
/* 80450F1C  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 80450F20  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 80450F24  4B FB BA 71 */	bl Matrix_rotateXYZ
/* 80450F28  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80450F2C  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 80450F30  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80450F34  38 60 00 01 */	li r3, 1
/* 80450F38  C0 24 00 00 */	lfs f1, 0(r4)
/* 80450F3C  FC 40 08 90 */	fmr f2, f1
/* 80450F40  4B FB B3 C1 */	bl Matrix_translate
/* 80450F44  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80450F48  38 60 00 01 */	li r3, 1
/* 80450F4C  FC 40 08 90 */	fmr f2, f1
/* 80450F50  FC 60 08 90 */	fmr f3, f1
/* 80450F54  4B FB B4 99 */	bl Matrix_scale
/* 80450F58  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 80450F5C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80450F60  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80450F64  38 7F 00 08 */	addi r3, r31, 8
/* 80450F68  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80450F6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80450F70  80 7B 00 00 */	lwz r3, 0(r27)
/* 80450F74  4B FB C4 61 */	bl _Matrix_to_Mtx_new
/* 80450F78  3C 80 80 45 */	lis r4, mfish_ito_before_disp@ha /* 0x80450AD4@ha */
/* 80450F7C  90 7F 00 04 */	stw r3, 4(r31)
/* 80450F80  38 C4 0A D4 */	addi r6, r4, mfish_ito_before_disp@l /* 0x80450AD4@l */
/* 80450F84  7F 63 DB 78 */	mr r3, r27
/* 80450F88  7F C4 F3 78 */	mr r4, r30
/* 80450F8C  7F A5 EB 78 */	mr r5, r29
/* 80450F90  7F 48 D3 78 */	mr r8, r26
/* 80450F94  38 E0 00 00 */	li r7, 0
/* 80450F98  4B F2 07 A1 */	bl cKF_Si3_draw_R_SV
/* 80450F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80450FA0  4B C4 9F 75 */	bl func_8009AF14
/* 80450FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80450FA8  7C 08 03 A6 */	mtlr r0
/* 80450FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80450FB0  4E 80 00 20 */	blr 
