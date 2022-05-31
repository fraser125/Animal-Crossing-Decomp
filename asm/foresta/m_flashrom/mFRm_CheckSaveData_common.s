lbl_803AC58C:
/* 803AC58C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AC590  7C 08 02 A6 */	mflr r0
/* 803AC594  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AC598  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC59C  4B CE E9 39 */	bl func_8009AED4
/* 803AC5A0  7C 7D 1B 78 */	mr r29, r3
/* 803AC5A4  7C 9E 23 78 */	mr r30, r4
/* 803AC5A8  3B E0 00 00 */	li r31, 0
/* 803AC5AC  4B FF FF C5 */	bl mFRm_CheckSaveData_ID
/* 803AC5B0  2C 03 00 00 */	cmpwi r3, 0
/* 803AC5B4  41 82 00 24 */	beq lbl_803AC5D8
/* 803AC5B8  A0 7D 00 08 */	lhz r3, 8(r29)
/* 803AC5BC  54 60 04 2E */	rlwinm r0, r3, 0, 0x10, 0x17
/* 803AC5C0  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803AC5C4  40 82 00 14 */	bne lbl_803AC5D8
/* 803AC5C8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803AC5CC  7C 03 00 40 */	cmplw r3, r0
/* 803AC5D0  40 82 00 08 */	bne lbl_803AC5D8
/* 803AC5D4  3B E0 00 01 */	li r31, 1
lbl_803AC5D8:
/* 803AC5D8  7F E3 FB 78 */	mr r3, r31
/* 803AC5DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC5E0  4B CE E9 41 */	bl func_8009AF20
/* 803AC5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AC5E8  7C 08 03 A6 */	mtlr r0
/* 803AC5EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803AC5F0  4E 80 00 20 */	blr 
