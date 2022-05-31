lbl_804946C4:
/* 804946C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804946C8  7C 08 02 A6 */	mflr r0
/* 804946CC  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 804946D0  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 804946D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804946D8  7C 60 1B 78 */	mr r0, r3
/* 804946DC  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 804946E0  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 804946E4  90 81 00 08 */	stw r4, 8(r1)
/* 804946E8  7C 04 03 78 */	mr r4, r0
/* 804946EC  38 C0 00 03 */	li r6, 3
/* 804946F0  38 E0 00 00 */	li r7, 0
/* 804946F4  39 00 03 E8 */	li r8, 0x3e8
/* 804946F8  39 20 03 E8 */	li r9, 0x3e8
/* 804946FC  39 40 00 00 */	li r10, 0
/* 80494700  4B FF E8 B1 */	bl aQMgr_order_decide_trade_common
/* 80494704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494708  7C 08 03 A6 */	mtlr r0
/* 8049470C  38 21 00 10 */	addi r1, r1, 0x10
/* 80494710  4E 80 00 20 */	blr 
