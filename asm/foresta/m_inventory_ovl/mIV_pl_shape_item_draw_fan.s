lbl_805E2614:
/* 805E2614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E2618  7C 08 02 A6 */	mflr r0
/* 805E261C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E2620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E2624  7C 9F 23 78 */	mr r31, r4
/* 805E2628  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E262C  A8 63 00 06 */	lha r3, 6(r3)
/* 805E2630  4B FF F0 95 */	bl mIV_Get_player_item_shape_index
/* 805E2634  4B DF 66 55 */	bl mPlib_Get_Item_DataPointer
/* 805E2638  28 03 00 00 */	cmplwi r3, 0
/* 805E263C  41 82 00 20 */	beq lbl_805E265C
/* 805E2640  80 DF 00 00 */	lwz r6, 0(r31)
/* 805E2644  3C 00 DE 00 */	lis r0, 0xde00
/* 805E2648  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 805E264C  38 85 00 08 */	addi r4, r5, 8
/* 805E2650  90 86 02 D0 */	stw r4, 0x2d0(r6)
/* 805E2654  90 05 00 00 */	stw r0, 0(r5)
/* 805E2658  90 65 00 04 */	stw r3, 4(r5)
lbl_805E265C:
/* 805E265C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E2660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E2664  7C 08 03 A6 */	mtlr r0
/* 805E2668  38 21 00 10 */	addi r1, r1, 0x10
/* 805E266C  4E 80 00 20 */	blr 
