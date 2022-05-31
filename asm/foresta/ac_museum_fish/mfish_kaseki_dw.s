lbl_80440DF4:
/* 80440DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80440DF8  7C 08 02 A6 */	mflr r0
/* 80440DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80440E00  39 61 00 20 */	addi r11, r1, 0x20
/* 80440E04  4B C5 A0 C5 */	bl func_8009AEC8
/* 80440E08  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80440E0C  7C 7A 1B 78 */	mr r26, r3
/* 80440E10  7C 9B 23 78 */	mr r27, r4
/* 80440E14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80440E18  3B DA 00 38 */	addi r30, r26, 0x38
/* 80440E1C  41 82 00 0C */	beq lbl_80440E28
/* 80440E20  3B BE 00 70 */	addi r29, r30, 0x70
/* 80440E24  48 00 00 08 */	b lbl_80440E2C
lbl_80440E28:
/* 80440E28  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_80440E2C:
/* 80440E2C  83 9B 00 00 */	lwz r28, 0(r27)
/* 80440E30  38 60 00 00 */	li r3, 0
/* 80440E34  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 80440E38  C0 5A 05 A4 */	lfs f2, 0x5a4(r26)
/* 80440E3C  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 80440E40  4B FC B4 C1 */	bl Matrix_translate
/* 80440E44  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 80440E48  38 C0 00 01 */	li r6, 1
/* 80440E4C  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 80440E50  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 80440E54  4B FC BB 41 */	bl Matrix_rotateXYZ
/* 80440E58  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80440E5C  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 80440E60  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80440E64  38 60 00 01 */	li r3, 1
/* 80440E68  C0 24 00 00 */	lfs f1, 0(r4)
/* 80440E6C  FC 40 08 90 */	fmr f2, f1
/* 80440E70  4B FC B4 91 */	bl Matrix_translate
/* 80440E74  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80440E78  38 60 00 01 */	li r3, 1
/* 80440E7C  FC 40 08 90 */	fmr f2, f1
/* 80440E80  FC 60 08 90 */	fmr f3, f1
/* 80440E84  4B FC B5 69 */	bl Matrix_scale
/* 80440E88  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 80440E8C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80440E90  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80440E94  38 7F 00 08 */	addi r3, r31, 8
/* 80440E98  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80440E9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80440EA0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80440EA4  4B FC C5 31 */	bl _Matrix_to_Mtx_new
/* 80440EA8  3C 80 80 44 */	lis r4, mfish_kaseki_before_disp@ha /* 0x8044083C@ha */
/* 80440EAC  90 7F 00 04 */	stw r3, 4(r31)
/* 80440EB0  38 C4 08 3C */	addi r6, r4, mfish_kaseki_before_disp@l /* 0x8044083C@l */
/* 80440EB4  7F 63 DB 78 */	mr r3, r27
/* 80440EB8  7F C4 F3 78 */	mr r4, r30
/* 80440EBC  7F A5 EB 78 */	mr r5, r29
/* 80440EC0  7F 48 D3 78 */	mr r8, r26
/* 80440EC4  38 E0 00 00 */	li r7, 0
/* 80440EC8  4B F3 08 71 */	bl cKF_Si3_draw_R_SV
/* 80440ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80440ED0  4B C5 A0 45 */	bl func_8009AF14
/* 80440ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80440ED8  7C 08 03 A6 */	mtlr r0
/* 80440EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80440EE0  4E 80 00 20 */	blr 
