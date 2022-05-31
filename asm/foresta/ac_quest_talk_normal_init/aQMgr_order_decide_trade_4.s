lbl_8049460C:
/* 8049460C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494610  7C 08 02 A6 */	mflr r0
/* 80494614  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80494618  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 8049461C  38 E5 85 38 */	addi r7, r5, common_data@l /* 0x81138538@l */
/* 80494620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494624  3C E7 00 02 */	addis r7, r7, 2
/* 80494628  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 8049462C  80 E7 61 3C */	lwz r7, 0x613c(r7)
/* 80494630  7C 69 1B 78 */	mr r9, r3
/* 80494634  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 80494638  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 8049463C  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80494640  38 C0 00 03 */	li r6, 3
/* 80494644  38 E0 00 00 */	li r7, 0
/* 80494648  39 40 00 00 */	li r10, 0
/* 8049464C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80494650  90 81 00 08 */	stw r4, 8(r1)
/* 80494654  7D 00 01 94 */	addze r8, r0
/* 80494658  7D 24 4B 78 */	mr r4, r9
/* 8049465C  7D 09 43 78 */	mr r9, r8
/* 80494660  4B FF E9 51 */	bl aQMgr_order_decide_trade_common
/* 80494664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494668  7C 08 03 A6 */	mtlr r0
/* 8049466C  38 21 00 10 */	addi r1, r1, 0x10
/* 80494670  4E 80 00 20 */	blr 
