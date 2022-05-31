lbl_80383E54:
/* 80383E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383E58  7C 08 02 A6 */	mflr r0
/* 80383E5C  38 E0 00 02 */	li r7, 2
/* 80383E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383E64  4B FF FF 4D */	bl mChoice_Put_String_FREE
/* 80383E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383E6C  7C 08 03 A6 */	mtlr r0
/* 80383E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80383E74  4E 80 00 20 */	blr 
