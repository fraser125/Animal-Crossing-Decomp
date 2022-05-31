lbl_8062D358:
/* 8062D358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D35C  7C 08 02 A6 */	mflr r0
/* 8062D360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D364  4B D8 F1 DD */	bl zelda_GetMemBlockSize
/* 8062D368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D36C  7C 08 03 A6 */	mtlr r0
/* 8062D370  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D374  4E 80 00 20 */	blr 
