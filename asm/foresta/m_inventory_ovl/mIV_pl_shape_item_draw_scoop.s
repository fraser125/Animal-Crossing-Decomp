lbl_805E23F4:
/* 805E23F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E23F8  7C 08 02 A6 */	mflr r0
/* 805E23FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E2400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E2404  7C 9F 23 78 */	mr r31, r4
/* 805E2408  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E240C  A8 63 00 06 */	lha r3, 6(r3)
/* 805E2410  4B FF F2 B5 */	bl mIV_Get_player_item_shape_index
/* 805E2414  4B DF 68 75 */	bl mPlib_Get_Item_DataPointer
/* 805E2418  28 03 00 00 */	cmplwi r3, 0
/* 805E241C  41 82 00 20 */	beq lbl_805E243C
/* 805E2420  80 DF 00 00 */	lwz r6, 0(r31)
/* 805E2424  3C 00 DE 00 */	lis r0, 0xde00
/* 805E2428  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 805E242C  38 85 00 08 */	addi r4, r5, 8
/* 805E2430  90 86 02 D0 */	stw r4, 0x2d0(r6)
/* 805E2434  90 05 00 00 */	stw r0, 0(r5)
/* 805E2438  90 65 00 04 */	stw r3, 4(r5)
lbl_805E243C:
/* 805E243C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E2440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E2444  7C 08 03 A6 */	mtlr r0
/* 805E2448  38 21 00 10 */	addi r1, r1, 0x10
/* 805E244C  4E 80 00 20 */	blr 
