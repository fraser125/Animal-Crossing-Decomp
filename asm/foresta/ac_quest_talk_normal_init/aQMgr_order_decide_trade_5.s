lbl_80494674:
/* 80494674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494678  7C 08 02 A6 */	mflr r0
/* 8049467C  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 80494680  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 80494684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494688  7C 60 1B 78 */	mr r0, r3
/* 8049468C  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 80494690  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 80494694  90 81 00 08 */	stw r4, 8(r1)
/* 80494698  7C 04 03 78 */	mr r4, r0
/* 8049469C  38 C0 00 03 */	li r6, 3
/* 804946A0  38 E0 00 00 */	li r7, 0
/* 804946A4  39 00 0B B8 */	li r8, 0xbb8
/* 804946A8  39 20 0B B8 */	li r9, 0xbb8
/* 804946AC  39 40 00 00 */	li r10, 0
/* 804946B0  4B FF E9 01 */	bl aQMgr_order_decide_trade_common
/* 804946B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804946B8  7C 08 03 A6 */	mtlr r0
/* 804946BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804946C0  4E 80 00 20 */	blr 
