lbl_8049487C:
/* 8049487C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494880  7C 08 02 A6 */	mflr r0
/* 80494884  3C A0 80 69 */	lis r5, l_quest_category_1@ha /* 0x8068B654@ha */
/* 80494888  3C C0 80 49 */	lis r6, aQMgr_get_possession_item_rnd@ha /* 0x80492C28@ha */
/* 8049488C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494890  7C 60 1B 78 */	mr r0, r3
/* 80494894  38 66 2C 28 */	addi r3, r6, aQMgr_get_possession_item_rnd@l /* 0x80492C28@l */
/* 80494898  38 A5 B6 54 */	addi r5, r5, l_quest_category_1@l /* 0x8068B654@l */
/* 8049489C  90 81 00 08 */	stw r4, 8(r1)
/* 804948A0  7C 04 03 78 */	mr r4, r0
/* 804948A4  38 C0 00 03 */	li r6, 3
/* 804948A8  38 E0 00 01 */	li r7, 1
/* 804948AC  39 00 00 64 */	li r8, 0x64
/* 804948B0  39 20 0B B8 */	li r9, 0xbb8
/* 804948B4  39 40 00 01 */	li r10, 1
/* 804948B8  4B FF E6 F9 */	bl aQMgr_order_decide_trade_common
/* 804948BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804948C0  7C 08 03 A6 */	mtlr r0
/* 804948C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804948C8  4E 80 00 20 */	blr 
