lbl_803D2DA4:
/* 803D2DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2DA8  7C 08 02 A6 */	mflr r0
/* 803D2DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2DB4  4B CC 81 19 */	bl func_8009AECC
/* 803D2DB8  7C 7B 1B 78 */	mr r27, r3
/* 803D2DBC  7C 9C 23 78 */	mr r28, r4
/* 803D2DC0  7C BD 2B 78 */	mr r29, r5
/* 803D2DC4  7C DE 33 78 */	mr r30, r6
/* 803D2DC8  4B FD 37 A5 */	bl mFI_GetBkNum2ColTop
/* 803D2DCC  7C 7F 1B 78 */	mr r31, r3
/* 803D2DD0  7F 63 DB 78 */	mr r3, r27
/* 803D2DD4  7F 84 E3 78 */	mr r4, r28
/* 803D2DD8  4B FD 43 7D */	bl mFI_BkNumtoUtFGTop
/* 803D2DDC  28 1F 00 00 */	cmplwi r31, 0
/* 803D2DE0  38 00 00 00 */	li r0, 0
/* 803D2DE4  41 82 00 34 */	beq lbl_803D2E18
/* 803D2DE8  28 03 00 00 */	cmplwi r3, 0
/* 803D2DEC  41 82 00 2C */	beq lbl_803D2E18
/* 803D2DF0  57 C0 20 36 */	slwi r0, r30, 4
/* 803D2DF4  7C BD 02 14 */	add r5, r29, r0
/* 803D2DF8  54 A4 10 3A */	slwi r4, r5, 2
/* 803D2DFC  38 04 00 03 */	addi r0, r4, 3
/* 803D2E00  54 A4 08 3C */	slwi r4, r5, 1
/* 803D2E04  7C 1F 00 AE */	lbzx r0, r31, r0
/* 803D2E08  7C 63 22 2E */	lhzx r3, r3, r4
/* 803D2E0C  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803D2E10  4B FF FE DD */	bl mNpc_CheckNpcSet_fgcol
/* 803D2E14  7C 60 1B 78 */	mr r0, r3
lbl_803D2E18:
/* 803D2E18  7C 03 03 78 */	mr r3, r0
/* 803D2E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2E20  4B CC 80 F9 */	bl func_8009AF18
/* 803D2E24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D2E28  7C 08 03 A6 */	mtlr r0
/* 803D2E2C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2E30  4E 80 00 20 */	blr 
