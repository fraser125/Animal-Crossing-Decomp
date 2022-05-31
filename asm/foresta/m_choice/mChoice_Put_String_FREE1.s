lbl_80383E30:
/* 80383E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383E34  7C 08 02 A6 */	mflr r0
/* 80383E38  38 E0 00 01 */	li r7, 1
/* 80383E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383E40  4B FF FF 71 */	bl mChoice_Put_String_FREE
/* 80383E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383E48  7C 08 03 A6 */	mtlr r0
/* 80383E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80383E50  4E 80 00 20 */	blr 
