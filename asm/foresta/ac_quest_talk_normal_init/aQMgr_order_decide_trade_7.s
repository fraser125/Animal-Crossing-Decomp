lbl_80494714:
/* 80494714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494718  7C 08 02 A6 */	mflr r0
/* 8049471C  3C A0 80 69 */	lis r5, l_quest_category_1@ha /* 0x8068B654@ha */
/* 80494720  3C C0 80 49 */	lis r6, aQMgr_get_possession_item_rnd@ha /* 0x80492C28@ha */
/* 80494724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494728  7C 60 1B 78 */	mr r0, r3
/* 8049472C  38 66 2C 28 */	addi r3, r6, aQMgr_get_possession_item_rnd@l /* 0x80492C28@l */
/* 80494730  38 A5 B6 54 */	addi r5, r5, l_quest_category_1@l /* 0x8068B654@l */
/* 80494734  90 81 00 08 */	stw r4, 8(r1)
/* 80494738  7C 04 03 78 */	mr r4, r0
/* 8049473C  38 C0 00 03 */	li r6, 3
/* 80494740  38 E0 00 00 */	li r7, 0
/* 80494744  39 00 00 64 */	li r8, 0x64
/* 80494748  39 20 0B B8 */	li r9, 0xbb8
/* 8049474C  39 40 00 01 */	li r10, 1
/* 80494750  4B FF E8 61 */	bl aQMgr_order_decide_trade_common
/* 80494754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494758  7C 08 03 A6 */	mtlr r0
/* 8049475C  38 21 00 10 */	addi r1, r1, 0x10
/* 80494760  4E 80 00 20 */	blr 
