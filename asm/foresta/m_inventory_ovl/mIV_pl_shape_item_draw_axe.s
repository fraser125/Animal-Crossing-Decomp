lbl_805E2090:
/* 805E2090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E2094  7C 08 02 A6 */	mflr r0
/* 805E2098  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E209C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E20A0  7C 9F 23 78 */	mr r31, r4
/* 805E20A4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E20A8  A8 63 00 06 */	lha r3, 6(r3)
/* 805E20AC  4B FF F6 19 */	bl mIV_Get_player_item_shape_index
/* 805E20B0  4B DF 6B D9 */	bl mPlib_Get_Item_DataPointer
/* 805E20B4  28 03 00 00 */	cmplwi r3, 0
/* 805E20B8  41 82 00 20 */	beq lbl_805E20D8
/* 805E20BC  80 DF 00 00 */	lwz r6, 0(r31)
/* 805E20C0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E20C4  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 805E20C8  38 85 00 08 */	addi r4, r5, 8
/* 805E20CC  90 86 02 D0 */	stw r4, 0x2d0(r6)
/* 805E20D0  90 05 00 00 */	stw r0, 0(r5)
/* 805E20D4  90 65 00 04 */	stw r3, 4(r5)
lbl_805E20D8:
/* 805E20D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E20DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E20E0  7C 08 03 A6 */	mtlr r0
/* 805E20E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805E20E8  4E 80 00 20 */	blr 
