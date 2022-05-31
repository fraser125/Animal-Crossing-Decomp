lbl_804948CC:
/* 804948CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804948D0  7C 08 02 A6 */	mflr r0
/* 804948D4  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 804948D8  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 804948DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804948E0  7C 60 1B 78 */	mr r0, r3
/* 804948E4  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 804948E8  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 804948EC  90 81 00 08 */	stw r4, 8(r1)
/* 804948F0  7C 04 03 78 */	mr r4, r0
/* 804948F4  38 C0 00 03 */	li r6, 3
/* 804948F8  38 E0 00 00 */	li r7, 0
/* 804948FC  39 00 00 64 */	li r8, 0x64
/* 80494900  39 20 01 F4 */	li r9, 0x1f4
/* 80494904  39 40 00 01 */	li r10, 1
/* 80494908  4B FF E6 A9 */	bl aQMgr_order_decide_trade_common
/* 8049490C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494910  7C 08 03 A6 */	mtlr r0
/* 80494914  38 21 00 10 */	addi r1, r1, 0x10
/* 80494918  4E 80 00 20 */	blr 
