lbl_8049455C:
/* 8049455C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494560  7C 08 02 A6 */	mflr r0
/* 80494564  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 80494568  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 8049456C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494570  7C 60 1B 78 */	mr r0, r3
/* 80494574  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 80494578  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 8049457C  90 81 00 08 */	stw r4, 8(r1)
/* 80494580  7C 04 03 78 */	mr r4, r0
/* 80494584  38 C0 00 03 */	li r6, 3
/* 80494588  38 E0 00 00 */	li r7, 0
/* 8049458C  39 00 03 E8 */	li r8, 0x3e8
/* 80494590  39 20 13 88 */	li r9, 0x1388
/* 80494594  39 40 00 01 */	li r10, 1
/* 80494598  4B FF EA 19 */	bl aQMgr_order_decide_trade_common
/* 8049459C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804945A0  7C 08 03 A6 */	mtlr r0
/* 804945A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804945A8  4E 80 00 20 */	blr 
