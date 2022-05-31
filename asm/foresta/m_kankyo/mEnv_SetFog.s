lbl_803B84B4:
/* 803B84B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B84B8  7C 08 02 A6 */	mflr r0
/* 803B84BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B84C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803B84C4  4B CE 2A 11 */	bl func_8009AED4
/* 803B84C8  7C 7D 1B 78 */	mr r29, r3
/* 803B84CC  7C 9E 23 78 */	mr r30, r4
/* 803B84D0  4B FE C7 FD */	bl mFI_GetFieldId
/* 803B84D4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 803B84D8  38 7E 00 07 */	addi r3, r30, 7
/* 803B84DC  38 9D 00 A3 */	addi r4, r29, 0xa3
/* 803B84E0  38 BD 00 84 */	addi r5, r29, 0x84
/* 803B84E4  4B FF FE E9 */	bl mEnv_AddAndSetRGBColor
/* 803B84E8  A8 7D 00 A6 */	lha r3, 0xa6(r29)
/* 803B84EC  A8 1D 00 8A */	lha r0, 0x8a(r29)
/* 803B84F0  7C 03 02 14 */	add r0, r3, r0
/* 803B84F4  2C 00 03 E4 */	cmpwi r0, 0x3e4
/* 803B84F8  41 81 00 0C */	bgt lbl_803B8504
/* 803B84FC  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 803B8500  48 00 00 0C */	b lbl_803B850C
lbl_803B8504:
/* 803B8504  38 00 03 E4 */	li r0, 0x3e4
/* 803B8508  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_803B850C:
/* 803B850C  A8 7D 00 A8 */	lha r3, 0xa8(r29)
/* 803B8510  A8 1D 00 8C */	lha r0, 0x8c(r29)
/* 803B8514  7C 03 02 14 */	add r0, r3, r0
/* 803B8518  2C 00 06 40 */	cmpwi r0, 0x640
/* 803B851C  41 81 00 0C */	bgt lbl_803B8528
/* 803B8520  B0 1E 00 0C */	sth r0, 0xc(r30)
/* 803B8524  48 00 00 0C */	b lbl_803B8530
lbl_803B8528:
/* 803B8528  38 00 06 40 */	li r0, 0x640
/* 803B852C  B0 1E 00 0C */	sth r0, 0xc(r30)
lbl_803B8530:
/* 803B8530  57 E0 04 27 */	rlwinm. r0, r31, 0, 0x10, 0x13
/* 803B8534  41 82 00 10 */	beq lbl_803B8544
/* 803B8538  38 00 03 E8 */	li r0, 0x3e8
/* 803B853C  B0 1E 00 0C */	sth r0, 0xc(r30)
/* 803B8540  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_803B8544:
/* 803B8544  39 61 00 20 */	addi r11, r1, 0x20
/* 803B8548  4B CE 29 D9 */	bl func_8009AF20
/* 803B854C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8550  7C 08 03 A6 */	mtlr r0
/* 803B8554  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8558  4E 80 00 20 */	blr 
