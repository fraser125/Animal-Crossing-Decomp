lbl_80383EE4:
/* 80383EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383EE8  7C 08 02 A6 */	mflr r0
/* 80383EEC  38 E0 00 06 */	li r7, 6
/* 80383EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383EF4  4B FF FE BD */	bl mChoice_Put_String_FREE
/* 80383EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383EFC  7C 08 03 A6 */	mtlr r0
/* 80383F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80383F04  4E 80 00 20 */	blr 
