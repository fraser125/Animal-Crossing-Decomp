lbl_803840B8:
/* 803840B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803840BC  7C 08 02 A6 */	mflr r0
/* 803840C0  38 E0 00 13 */	li r7, 0x13
/* 803840C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803840C8  4B FF FC E9 */	bl mChoice_Put_String_FREE
/* 803840CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803840D0  7C 08 03 A6 */	mtlr r0
/* 803840D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803840D8  4E 80 00 20 */	blr 
