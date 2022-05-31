lbl_803D8D84:
/* 803D8D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8D88  7C 08 02 A6 */	mflr r0
/* 803D8D8C  38 E0 00 00 */	li r7, 0
/* 803D8D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8D98  4B FF FF 9D */	bl mPlib_Get_UseFaceRom_index
/* 803D8D9C  7C 7F 1B 78 */	mr r31, r3
/* 803D8DA0  38 60 00 17 */	li r3, 0x17
/* 803D8DA4  4B C2 DE 31 */	bl JW_GetAramAddress
/* 803D8DA8  1C 1F 0E 20 */	mulli r0, r31, 0xe20
/* 803D8DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8DB0  7C 63 02 14 */	add r3, r3, r0
/* 803D8DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8DB8  7C 08 03 A6 */	mtlr r0
/* 803D8DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8DC0  4E 80 00 20 */	blr 
