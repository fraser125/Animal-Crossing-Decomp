lbl_8054AB94:
/* 8054AB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AB98  7C 08 02 A6 */	mflr r0
/* 8054AB9C  38 A0 00 00 */	li r5, 0
/* 8054ABA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054ABA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054ABA8  7C 9F 23 78 */	mr r31, r4
/* 8054ABAC  38 80 00 09 */	li r4, 9
/* 8054ABB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054ABB4  7C 7E 1B 78 */	mr r30, r3
/* 8054ABB8  38 60 00 04 */	li r3, 4
/* 8054ABBC  4B E4 D8 7D */	bl mDemo_Set_OrderValue
/* 8054ABC0  7F C3 F3 78 */	mr r3, r30
/* 8054ABC4  7F E4 FB 78 */	mr r4, r31
/* 8054ABC8  4B FF FF 69 */	bl aNSC_sell_item_init
/* 8054ABCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054ABD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054ABD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054ABD8  7C 08 03 A6 */	mtlr r0
/* 8054ABDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054ABE0  4E 80 00 20 */	blr 
