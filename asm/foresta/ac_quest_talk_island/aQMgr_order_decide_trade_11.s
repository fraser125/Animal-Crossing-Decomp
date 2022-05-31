lbl_8048EDA0:
/* 8048EDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EDA4  7C 08 02 A6 */	mflr r0
/* 8048EDA8  3C A0 80 69 */	lis r5, l_quest_category_1@ha /* 0x8068B21C@ha */
/* 8048EDAC  3C E0 80 49 */	lis r7, aQMgr_get_possession_item_rnd@ha /* 0x8048DC38@ha */
/* 8048EDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EDB4  7C 64 1B 78 */	mr r4, r3
/* 8048EDB8  38 67 DC 38 */	addi r3, r7, aQMgr_get_possession_item_rnd@l /* 0x8048DC38@l */
/* 8048EDBC  38 C0 00 03 */	li r6, 3
/* 8048EDC0  38 A5 B2 1C */	addi r5, r5, l_quest_category_1@l /* 0x8068B21C@l */
/* 8048EDC4  38 E0 00 01 */	li r7, 1
/* 8048EDC8  39 00 00 64 */	li r8, 0x64
/* 8048EDCC  39 20 0B B8 */	li r9, 0xbb8
/* 8048EDD0  39 40 00 01 */	li r10, 1
/* 8048EDD4  4B FF F5 E1 */	bl aQMgr_order_decide_trade_common
/* 8048EDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EDDC  7C 08 03 A6 */	mtlr r0
/* 8048EDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EDE4  4E 80 00 20 */	blr 
