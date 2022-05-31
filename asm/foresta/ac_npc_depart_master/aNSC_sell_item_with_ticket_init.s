lbl_805524AC:
/* 805524AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805524B0  7C 08 02 A6 */	mflr r0
/* 805524B4  38 A0 00 00 */	li r5, 0
/* 805524B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805524BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805524C0  7C 9F 23 78 */	mr r31, r4
/* 805524C4  38 80 00 09 */	li r4, 9
/* 805524C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805524CC  7C 7E 1B 78 */	mr r30, r3
/* 805524D0  38 60 00 04 */	li r3, 4
/* 805524D4  4B E4 5F 65 */	bl mDemo_Set_OrderValue
/* 805524D8  7F C3 F3 78 */	mr r3, r30
/* 805524DC  7F E4 FB 78 */	mr r4, r31
/* 805524E0  4B FF FF 69 */	bl aNSC_sell_item_init
/* 805524E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805524E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805524EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805524F0  7C 08 03 A6 */	mtlr r0
/* 805524F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805524F8  4E 80 00 20 */	blr 
