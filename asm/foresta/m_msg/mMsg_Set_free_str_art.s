lbl_803BFD2C:
/* 803BFD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFD30  7C 08 02 A6 */	mflr r0
/* 803BFD34  7C E8 3B 78 */	mr r8, r7
/* 803BFD38  38 E0 00 00 */	li r7, 0
/* 803BFD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFD40  48 00 00 15 */	bl mMsg_Set_free_str_cl_art
/* 803BFD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFD48  7C 08 03 A6 */	mtlr r0
/* 803BFD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFD50  4E 80 00 20 */	blr 
