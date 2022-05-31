lbl_80383E0C:
/* 80383E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383E10  7C 08 02 A6 */	mflr r0
/* 80383E14  38 E0 00 00 */	li r7, 0
/* 80383E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383E1C  4B FF FF 95 */	bl mChoice_Put_String_FREE
/* 80383E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383E24  7C 08 03 A6 */	mtlr r0
/* 80383E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80383E2C  4E 80 00 20 */	blr 
