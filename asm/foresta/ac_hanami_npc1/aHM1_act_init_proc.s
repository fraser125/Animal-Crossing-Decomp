lbl_8052A640:
/* 8052A640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A644  7C 08 02 A6 */	mflr r0
/* 8052A648  38 80 00 01 */	li r4, 1
/* 8052A64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A650  4B FF FF 81 */	bl aHM1_setupAction
/* 8052A654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A658  7C 08 03 A6 */	mtlr r0
/* 8052A65C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A660  4E 80 00 20 */	blr 
