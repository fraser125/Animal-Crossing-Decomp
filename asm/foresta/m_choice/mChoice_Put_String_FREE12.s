lbl_80383FBC:
/* 80383FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383FC0  7C 08 02 A6 */	mflr r0
/* 80383FC4  38 E0 00 0C */	li r7, 0xc
/* 80383FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383FCC  4B FF FD E5 */	bl mChoice_Put_String_FREE
/* 80383FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383FD4  7C 08 03 A6 */	mtlr r0
/* 80383FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383FDC  4E 80 00 20 */	blr 
