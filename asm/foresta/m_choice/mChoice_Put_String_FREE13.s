lbl_80383FE0:
/* 80383FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383FE4  7C 08 02 A6 */	mflr r0
/* 80383FE8  38 E0 00 0D */	li r7, 0xd
/* 80383FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383FF0  4B FF FD C1 */	bl mChoice_Put_String_FREE
/* 80383FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383FF8  7C 08 03 A6 */	mtlr r0
/* 80383FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80384000  4E 80 00 20 */	blr 
