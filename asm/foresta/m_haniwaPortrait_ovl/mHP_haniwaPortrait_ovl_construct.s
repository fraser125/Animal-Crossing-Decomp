lbl_805DFC88:
/* 805DFC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DFC8C  7C 08 02 A6 */	mflr r0
/* 805DFC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DFC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DFC98  93 C1 00 08 */	stw r30, 8(r1)
/* 805DFC9C  7C 7E 1B 78 */	mr r30, r3
/* 805DFCA0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805DFCA4  80 1F 09 84 */	lwz r0, 0x984(r31)
/* 805DFCA8  28 00 00 00 */	cmplwi r0, 0
/* 805DFCAC  40 82 00 5C */	bne lbl_805DFD08
/* 805DFCB0  3C 60 81 21 */	lis r3, hp_ovl_data@ha /* 0x81211AB8@ha */
/* 805DFCB4  38 80 01 20 */	li r4, 0x120
/* 805DFCB8  38 63 1A B8 */	addi r3, r3, hp_ovl_data@l /* 0x81211AB8@l */
/* 805DFCBC  38 A0 00 00 */	li r5, 0
/* 805DFCC0  4B DD AD 89 */	bl mem_clear
/* 805DFCC4  3C 60 81 21 */	lis r3, hp_ovl_data@ha /* 0x81211AB8@ha */
/* 805DFCC8  3C 80 80 5E */	lis r4, mHP_set_haniwaPortrait@ha /* 0x805DFB50@ha */
/* 805DFCCC  38 03 1A B8 */	addi r0, r3, hp_ovl_data@l /* 0x81211AB8@l */
/* 805DFCD0  3C 60 80 5E */	lis r3, mHP_haniwaPortrait_shape_move@ha /* 0x805DF9AC@ha */
/* 805DFCD4  90 1F 09 84 */	stw r0, 0x984(r31)
/* 805DFCD8  38 A4 FB 50 */	addi r5, r4, mHP_set_haniwaPortrait@l /* 0x805DFB50@l */
/* 805DFCDC  38 03 F9 AC */	addi r0, r3, mHP_haniwaPortrait_shape_move@l /* 0x805DF9AC@l */
/* 805DFCE0  7F C3 F3 78 */	mr r3, r30
/* 805DFCE4  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805DFCE8  80 84 09 84 */	lwz r4, 0x984(r4)
/* 805DFCEC  90 A4 01 18 */	stw r5, 0x118(r4)
/* 805DFCF0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805DFCF4  80 84 09 84 */	lwz r4, 0x984(r4)
/* 805DFCF8  90 04 01 1C */	stw r0, 0x11c(r4)
/* 805DFCFC  4B FF FC 1D */	bl func_805DF918
/* 805DFD00  7F C3 F3 78 */	mr r3, r30
/* 805DFD04  4B FF FC A9 */	bl mHP_haniwaPortrait_shape_move
lbl_805DFD08:
/* 805DFD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DFD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DFD10  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DFD14  7C 08 03 A6 */	mtlr r0
/* 805DFD18  38 21 00 10 */	addi r1, r1, 0x10
/* 805DFD1C  4E 80 00 20 */	blr 
