lbl_8049491C:
/* 8049491C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494920  7C 08 02 A6 */	mflr r0
/* 80494924  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 80494928  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 8049492C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494930  7C 60 1B 78 */	mr r0, r3
/* 80494934  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 80494938  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 8049493C  90 81 00 08 */	stw r4, 8(r1)
/* 80494940  7C 04 03 78 */	mr r4, r0
/* 80494944  38 C0 00 03 */	li r6, 3
/* 80494948  38 E0 00 00 */	li r7, 0
/* 8049494C  39 00 03 E8 */	li r8, 0x3e8
/* 80494950  39 20 07 D0 */	li r9, 0x7d0
/* 80494954  39 40 00 01 */	li r10, 1
/* 80494958  4B FF E6 59 */	bl aQMgr_order_decide_trade_common
/* 8049495C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494960  7C 08 03 A6 */	mtlr r0
/* 80494964  38 21 00 10 */	addi r1, r1, 0x10
/* 80494968  4E 80 00 20 */	blr 
