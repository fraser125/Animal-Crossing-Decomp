lbl_803BFD08:
/* 803BFD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFD0C  7C 08 02 A6 */	mflr r0
/* 803BFD10  39 00 00 00 */	li r8, 0
/* 803BFD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFD18  48 00 00 3D */	bl mMsg_Set_free_str_cl_art
/* 803BFD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFD20  7C 08 03 A6 */	mtlr r0
/* 803BFD24  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFD28  4E 80 00 20 */	blr 
