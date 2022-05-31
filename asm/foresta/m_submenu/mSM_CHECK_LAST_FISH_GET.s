lbl_803EF400:
/* 803EF400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF404  7C 08 02 A6 */	mflr r0
/* 803EF408  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF410  3B E0 00 00 */	li r31, 0
/* 803EF414  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF418  7C 7E 1B 78 */	mr r30, r3
/* 803EF41C  4B FF FF 61 */	bl mSM_CHECK_ALL_FISH_GET_SUB
/* 803EF420  2C 03 00 27 */	cmpwi r3, 0x27
/* 803EF424  40 82 00 18 */	bne lbl_803EF43C
/* 803EF428  7F C3 F3 78 */	mr r3, r30
/* 803EF42C  4B FF FE D5 */	bl mSM_COLLECT_FISH_GET
/* 803EF430  2C 03 00 00 */	cmpwi r3, 0
/* 803EF434  40 82 00 08 */	bne lbl_803EF43C
/* 803EF438  3B E0 00 01 */	li r31, 1
lbl_803EF43C:
/* 803EF43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF440  7F E3 FB 78 */	mr r3, r31
/* 803EF444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF448  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF44C  7C 08 03 A6 */	mtlr r0
/* 803EF450  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF454  4E 80 00 20 */	blr 
