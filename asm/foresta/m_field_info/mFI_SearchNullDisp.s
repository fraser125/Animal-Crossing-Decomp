lbl_803A6A98:
/* 803A6A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6A9C  7C 08 02 A6 */	mflr r0
/* 803A6AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A6AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A6AA8  3B E0 00 00 */	li r31, 0
/* 803A6AAC  93 C1 00 08 */	stw r30, 8(r1)
/* 803A6AB0  7C 7E 1B 78 */	mr r30, r3
/* 803A6AB4  4B FF F3 FD */	bl mFI_GetFreeRegisterBgInfo
/* 803A6AB8  2C 03 FF FF */	cmpwi r3, -1
/* 803A6ABC  41 82 00 10 */	beq lbl_803A6ACC
/* 803A6AC0  90 7E 00 00 */	stw r3, 0(r30)
/* 803A6AC4  3B E0 00 01 */	li r31, 1
/* 803A6AC8  48 00 00 18 */	b lbl_803A6AE0
lbl_803A6ACC:
/* 803A6ACC  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6AD0  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A6AD4  80 63 00 00 */	lwz r3, 0(r3)
/* 803A6AD8  88 03 00 8E */	lbz r0, 0x8e(r3)
/* 803A6ADC  90 1E 00 00 */	stw r0, 0(r30)
lbl_803A6AE0:
/* 803A6AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A6AE4  7F E3 FB 78 */	mr r3, r31
/* 803A6AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A6AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A6AF0  7C 08 03 A6 */	mtlr r0
/* 803A6AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A6AF8  4E 80 00 20 */	blr 
