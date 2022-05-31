lbl_8049450C:
/* 8049450C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494510  7C 08 02 A6 */	mflr r0
/* 80494514  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 80494518  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 8049451C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494520  7C 60 1B 78 */	mr r0, r3
/* 80494524  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 80494528  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 8049452C  90 81 00 08 */	stw r4, 8(r1)
/* 80494530  7C 04 03 78 */	mr r4, r0
/* 80494534  38 C0 00 03 */	li r6, 3
/* 80494538  38 E0 00 00 */	li r7, 0
/* 8049453C  39 00 00 64 */	li r8, 0x64
/* 80494540  39 20 0B B8 */	li r9, 0xbb8
/* 80494544  39 40 00 01 */	li r10, 1
/* 80494548  4B FF EA 69 */	bl aQMgr_order_decide_trade_common
/* 8049454C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494550  7C 08 03 A6 */	mtlr r0
/* 80494554  38 21 00 10 */	addi r1, r1, 0x10
/* 80494558  4E 80 00 20 */	blr 
