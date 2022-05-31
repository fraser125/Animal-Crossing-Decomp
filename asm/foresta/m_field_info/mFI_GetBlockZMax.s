lbl_803A4DD8:
/* 803A4DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4DDC  7C 08 02 A6 */	mflr r0
/* 803A4DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A4DE8  3B E0 00 00 */	li r31, 0
/* 803A4DEC  4B FF FE A5 */	bl mFI_CheckFieldData
/* 803A4DF0  2C 03 00 01 */	cmpwi r3, 1
/* 803A4DF4  40 82 00 14 */	bne lbl_803A4E08
/* 803A4DF8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4DFC  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A4E00  80 63 00 00 */	lwz r3, 0(r3)
/* 803A4E04  8B E3 00 93 */	lbz r31, 0x93(r3)
lbl_803A4E08:
/* 803A4E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4E0C  7F E3 FB 78 */	mr r3, r31
/* 803A4E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A4E14  7C 08 03 A6 */	mtlr r0
/* 803A4E18  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4E1C  4E 80 00 20 */	blr 
