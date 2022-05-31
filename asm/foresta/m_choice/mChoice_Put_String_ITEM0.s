lbl_803841C8:
/* 803841C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803841CC  7C 08 02 A6 */	mflr r0
/* 803841D0  38 E0 00 00 */	li r7, 0
/* 803841D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803841D8  4B FF FF 95 */	bl mChoice_Put_String_ITEM
/* 803841DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803841E0  7C 08 03 A6 */	mtlr r0
/* 803841E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803841E8  4E 80 00 20 */	blr 
