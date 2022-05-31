lbl_803D0D94:
/* 803D0D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D0D98  7C 08 02 A6 */	mflr r0
/* 803D0D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D0DA4  7C 7F 1B 78 */	mr r31, r3
/* 803D0DA8  4B FF A5 DD */	bl mNpc_ClearAnimalPersonalID
/* 803D0DAC  38 00 00 00 */	li r0, 0
/* 803D0DB0  98 1F 00 0E */	stb r0, 0xe(r31)
/* 803D0DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D0DBC  7C 08 03 A6 */	mtlr r0
/* 803D0DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D0DC4  4E 80 00 20 */	blr 
