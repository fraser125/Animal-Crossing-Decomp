lbl_803841EC:
/* 803841EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803841F0  7C 08 02 A6 */	mflr r0
/* 803841F4  38 E0 00 01 */	li r7, 1
/* 803841F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803841FC  4B FF FF 71 */	bl mChoice_Put_String_ITEM
/* 80384200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384204  7C 08 03 A6 */	mtlr r0
/* 80384208  38 21 00 10 */	addi r1, r1, 0x10
/* 8038420C  4E 80 00 20 */	blr 
