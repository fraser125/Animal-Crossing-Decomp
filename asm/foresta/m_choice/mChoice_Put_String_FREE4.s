lbl_80383E9C:
/* 80383E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383EA0  7C 08 02 A6 */	mflr r0
/* 80383EA4  38 E0 00 04 */	li r7, 4
/* 80383EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383EAC  4B FF FF 05 */	bl mChoice_Put_String_FREE
/* 80383EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383EB4  7C 08 03 A6 */	mtlr r0
/* 80383EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383EBC  4E 80 00 20 */	blr 
