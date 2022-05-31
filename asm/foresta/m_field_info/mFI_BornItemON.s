lbl_803A7E70:
/* 803A7E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A7E74  7C 08 02 A6 */	mflr r0
/* 803A7E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A7E7C  4B FF CE 15 */	bl mFI_CheckFieldData
/* 803A7E80  2C 03 00 00 */	cmpwi r3, 0
/* 803A7E84  41 82 00 18 */	beq lbl_803A7E9C
/* 803A7E88  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7E8C  38 00 00 01 */	li r0, 1
/* 803A7E90  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A7E94  80 63 00 00 */	lwz r3, 0(r3)
/* 803A7E98  98 03 00 90 */	stb r0, 0x90(r3)
lbl_803A7E9C:
/* 803A7E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A7EA0  7C 08 03 A6 */	mtlr r0
/* 803A7EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A7EA8  4E 80 00 20 */	blr 
