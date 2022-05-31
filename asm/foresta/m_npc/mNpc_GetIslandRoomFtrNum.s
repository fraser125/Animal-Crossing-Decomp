lbl_803D5438:
/* 803D5438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D543C  7C 08 02 A6 */	mflr r0
/* 803D5440  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5448  3B E0 00 00 */	li r31, 0
/* 803D544C  93 C1 00 08 */	stw r30, 8(r1)
/* 803D5450  3B C0 00 00 */	li r30, 0
lbl_803D5454:
/* 803D5454  7F C3 F3 78 */	mr r3, r30
/* 803D5458  4B FF F1 E5 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D545C  2C 03 FF FF */	cmpwi r3, -1
/* 803D5460  41 82 00 08 */	beq lbl_803D5468
/* 803D5464  3B FF 00 01 */	addi r31, r31, 1
lbl_803D5468:
/* 803D5468  3B DE 00 01 */	addi r30, r30, 1
/* 803D546C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D5470  41 80 FF E4 */	blt lbl_803D5454
/* 803D5474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5478  7F E3 FB 78 */	mr r3, r31
/* 803D547C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5480  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D5484  7C 08 03 A6 */	mtlr r0
/* 803D5488  38 21 00 10 */	addi r1, r1, 0x10
/* 803D548C  4E 80 00 20 */	blr 
