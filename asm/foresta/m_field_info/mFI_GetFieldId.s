lbl_803A4CCC:
/* 803A4CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4CD0  7C 08 02 A6 */	mflr r0
/* 803A4CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A4CDC  3B E0 00 00 */	li r31, 0
/* 803A4CE0  4B FF FF B1 */	bl mFI_CheckFieldData
/* 803A4CE4  2C 03 00 01 */	cmpwi r3, 1
/* 803A4CE8  40 82 00 14 */	bne lbl_803A4CFC
/* 803A4CEC  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4CF0  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A4CF4  80 63 00 00 */	lwz r3, 0(r3)
/* 803A4CF8  A3 E3 00 00 */	lhz r31, 0(r3)
lbl_803A4CFC:
/* 803A4CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4D00  7F E3 FB 78 */	mr r3, r31
/* 803A4D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A4D08  7C 08 03 A6 */	mtlr r0
/* 803A4D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4D10  4E 80 00 20 */	blr 
