lbl_803A7DF0:
/* 803A7DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A7DF4  7C 08 02 A6 */	mflr r0
/* 803A7DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A7DFC  4B FF CE 95 */	bl mFI_CheckFieldData
/* 803A7E00  2C 03 00 00 */	cmpwi r3, 0
/* 803A7E04  41 82 00 1C */	beq lbl_803A7E20
/* 803A7E08  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7E0C  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A7E10  80 63 00 00 */	lwz r3, 0(r3)
/* 803A7E14  88 03 00 8F */	lbz r0, 0x8f(r3)
/* 803A7E18  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803A7E1C  48 00 00 08 */	b lbl_803A7E24
lbl_803A7E20:
/* 803A7E20  38 60 00 00 */	li r3, 0
lbl_803A7E24:
/* 803A7E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A7E28  7C 08 03 A6 */	mtlr r0
/* 803A7E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A7E30  4E 80 00 20 */	blr 
