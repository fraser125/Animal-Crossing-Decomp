lbl_803A4D90:
/* 803A4D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4D94  7C 08 02 A6 */	mflr r0
/* 803A4D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A4DA0  3B E0 00 00 */	li r31, 0
/* 803A4DA4  4B FF FE ED */	bl mFI_CheckFieldData
/* 803A4DA8  2C 03 00 01 */	cmpwi r3, 1
/* 803A4DAC  40 82 00 14 */	bne lbl_803A4DC0
/* 803A4DB0  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4DB4  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A4DB8  80 63 00 00 */	lwz r3, 0(r3)
/* 803A4DBC  8B E3 00 92 */	lbz r31, 0x92(r3)
lbl_803A4DC0:
/* 803A4DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4DC4  7F E3 FB 78 */	mr r3, r31
/* 803A4DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A4DCC  7C 08 03 A6 */	mtlr r0
/* 803A4DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4DD4  4E 80 00 20 */	blr 
