lbl_805AEE9C:
/* 805AEE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AEEA0  7C 08 02 A6 */	mflr r0
/* 805AEEA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AEEA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AEEAC  7C 7F 1B 78 */	mr r31, r3
/* 805AEEB0  38 61 00 08 */	addi r3, r1, 8
/* 805AEEB4  38 9F 00 28 */	addi r4, r31, 0x28
/* 805AEEB8  4B E0 C0 05 */	bl xyz_t_move
/* 805AEEBC  3C 60 80 65 */	lis r3, data_8064A744@ha /* 0x8064A744@ha */
/* 805AEEC0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805AEEC4  38 83 A7 44 */	addi r4, r3, data_8064A744@l /* 0x8064A744@l */
/* 805AEEC8  7F E3 FB 78 */	mr r3, r31
/* 805AEECC  C0 04 00 00 */	lfs f0, 0(r4)
/* 805AEED0  38 A1 00 08 */	addi r5, r1, 8
/* 805AEED4  38 80 00 0C */	li r4, 0xc
/* 805AEED8  EC 01 00 2A */	fadds f0, f1, f0
/* 805AEEDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805AEEE0  48 07 F0 65 */	bl sAdo_OngenPos
/* 805AEEE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AEEE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AEEEC  7C 08 03 A6 */	mtlr r0
/* 805AEEF0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AEEF4  4E 80 00 20 */	blr 
