lbl_80383F2C:
/* 80383F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383F30  7C 08 02 A6 */	mflr r0
/* 80383F34  38 E0 00 08 */	li r7, 8
/* 80383F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383F3C  4B FF FE 75 */	bl mChoice_Put_String_FREE
/* 80383F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383F44  7C 08 03 A6 */	mtlr r0
/* 80383F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80383F4C  4E 80 00 20 */	blr 
