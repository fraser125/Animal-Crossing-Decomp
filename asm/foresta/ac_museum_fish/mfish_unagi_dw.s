lbl_80453AA4:
/* 80453AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80453AA8  7C 08 02 A6 */	mflr r0
/* 80453AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80453AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80453AB4  4B C4 74 15 */	bl func_8009AEC8
/* 80453AB8  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80453ABC  7C 7A 1B 78 */	mr r26, r3
/* 80453AC0  7C 9B 23 78 */	mr r27, r4
/* 80453AC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80453AC8  3B DA 00 38 */	addi r30, r26, 0x38
/* 80453ACC  41 82 00 0C */	beq lbl_80453AD8
/* 80453AD0  3B BE 00 70 */	addi r29, r30, 0x70
/* 80453AD4  48 00 00 08 */	b lbl_80453ADC
lbl_80453AD8:
/* 80453AD8  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_80453ADC:
/* 80453ADC  C0 7A 05 A0 */	lfs f3, 0x5a0(r26)
/* 80453AE0  38 60 00 00 */	li r3, 0
/* 80453AE4  C0 3A 05 AC */	lfs f1, 0x5ac(r26)
/* 80453AE8  C0 5A 05 A8 */	lfs f2, 0x5a8(r26)
/* 80453AEC  C0 1A 05 B4 */	lfs f0, 0x5b4(r26)
/* 80453AF0  EC 23 08 2A */	fadds f1, f3, f1
/* 80453AF4  83 9B 00 00 */	lwz r28, 0(r27)
/* 80453AF8  EC 62 00 2A */	fadds f3, f2, f0
/* 80453AFC  C0 5A 05 A4 */	lfs f2, 0x5a4(r26)
/* 80453B00  4B FB 88 01 */	bl Matrix_translate
/* 80453B04  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 80453B08  38 C0 00 01 */	li r6, 1
/* 80453B0C  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 80453B10  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 80453B14  4B FB 8E 81 */	bl Matrix_rotateXYZ
/* 80453B18  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80453B1C  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 80453B20  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80453B24  38 60 00 01 */	li r3, 1
/* 80453B28  C0 24 00 00 */	lfs f1, 0(r4)
/* 80453B2C  FC 40 08 90 */	fmr f2, f1
/* 80453B30  4B FB 87 D1 */	bl Matrix_translate
/* 80453B34  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80453B38  38 60 00 01 */	li r3, 1
/* 80453B3C  FC 40 08 90 */	fmr f2, f1
/* 80453B40  FC 60 08 90 */	fmr f3, f1
/* 80453B44  4B FB 88 A9 */	bl Matrix_scale
/* 80453B48  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 80453B4C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80453B50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80453B54  38 7F 00 08 */	addi r3, r31, 8
/* 80453B58  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80453B5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80453B60  80 7B 00 00 */	lwz r3, 0(r27)
/* 80453B64  4B FB 98 71 */	bl _Matrix_to_Mtx_new
/* 80453B68  3C 80 80 45 */	lis r4, mfish_unagi_before_disp@ha /* 0x80453498@ha */
/* 80453B6C  90 7F 00 04 */	stw r3, 4(r31)
/* 80453B70  38 C4 34 98 */	addi r6, r4, mfish_unagi_before_disp@l /* 0x80453498@l */
/* 80453B74  7F 63 DB 78 */	mr r3, r27
/* 80453B78  7F C4 F3 78 */	mr r4, r30
/* 80453B7C  7F A5 EB 78 */	mr r5, r29
/* 80453B80  7F 48 D3 78 */	mr r8, r26
/* 80453B84  38 E0 00 00 */	li r7, 0
/* 80453B88  4B F1 DB B1 */	bl cKF_Si3_draw_R_SV
/* 80453B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80453B90  4B C4 73 85 */	bl func_8009AF14
/* 80453B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80453B98  7C 08 03 A6 */	mtlr r0
/* 80453B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80453BA0  4E 80 00 20 */	blr 
