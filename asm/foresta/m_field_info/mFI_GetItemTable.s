lbl_803A7D98:
/* 803A7D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A7D9C  7C 08 02 A6 */	mflr r0
/* 803A7DA0  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A7DA8  38 C5 7A 58 */	addi r6, r5, g_fdinfo@l /* 0x81167A58@l */
/* 803A7DAC  38 00 00 00 */	li r0, 0
/* 803A7DB0  80 A6 00 00 */	lwz r5, 0(r6)
/* 803A7DB4  98 05 00 8F */	stb r0, 0x8f(r5)
/* 803A7DB8  80 A6 00 00 */	lwz r5, 0(r6)
/* 803A7DBC  98 05 00 90 */	stb r0, 0x90(r5)
/* 803A7DC0  80 C4 00 00 */	lwz r6, 0(r4)
/* 803A7DC4  80 A4 00 04 */	lwz r5, 4(r4)
/* 803A7DC8  80 04 00 08 */	lwz r0, 8(r4)
/* 803A7DCC  38 81 00 08 */	addi r4, r1, 8
/* 803A7DD0  90 C1 00 08 */	stw r6, 8(r1)
/* 803A7DD4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803A7DD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A7DDC  4B FF FD 41 */	bl mFI_GetItemTable_NoReset
/* 803A7DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A7DE4  7C 08 03 A6 */	mtlr r0
/* 803A7DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A7DEC  4E 80 00 20 */	blr 
