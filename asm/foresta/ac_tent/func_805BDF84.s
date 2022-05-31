lbl_805BDF84:
/* 805BDF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BDF88  7C 08 02 A6 */	mflr r0
/* 805BDF8C  38 80 00 01 */	li r4, 1
/* 805BDF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BDF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BDF98  7C 7F 1B 78 */	mr r31, r3
/* 805BDF9C  48 00 00 7D */	bl aTnt_ChangeFg
/* 805BDFA0  7F E3 FB 78 */	mr r3, r31
/* 805BDFA4  38 80 00 00 */	li r4, 0
/* 805BDFA8  48 00 05 E1 */	bl aTnt_SetupAction
/* 805BDFAC  7F E3 FB 78 */	mr r3, r31
/* 805BDFB0  38 80 00 01 */	li r4, 1
/* 805BDFB4  48 00 02 15 */	bl aTnt_SetBgOffset
/* 805BDFB8  7F E3 FB 78 */	mr r3, r31
/* 805BDFBC  48 00 05 E9 */	bl aTnt_ControlLight
/* 805BDFC0  2C 03 00 00 */	cmpwi r3, 0
/* 805BDFC4  41 82 00 10 */	beq lbl_805BDFD4
/* 805BDFC8  3C 60 80 65 */	lis r3, data_8064AB94@ha /* 0x8064AB94@ha */
/* 805BDFCC  C0 03 AB 94 */	lfs f0, data_8064AB94@l(r3)  /* 0x8064AB94@l */
/* 805BDFD0  48 00 00 0C */	b lbl_805BDFDC
lbl_805BDFD4:
/* 805BDFD4  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064AB98@ha */
/* 805BDFD8  C0 03 AB 98 */	lfs f0, lit_436@l(r3)  /* 0x8064AB98@l */
lbl_805BDFDC:
/* 805BDFDC  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805BDFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BDFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BDFE8  7C 08 03 A6 */	mtlr r0
/* 805BDFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805BDFF0  4E 80 00 20 */	blr 
