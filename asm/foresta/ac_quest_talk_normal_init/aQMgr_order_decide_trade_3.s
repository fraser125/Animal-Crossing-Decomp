lbl_804945AC:
/* 804945AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804945B0  7C 08 02 A6 */	mflr r0
/* 804945B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804945B8  3C C0 80 49 */	lis r6, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x80492AB4@ha */
/* 804945BC  38 E5 85 38 */	addi r7, r5, common_data@l /* 0x81138538@l */
/* 804945C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804945C4  3C E7 00 02 */	addis r7, r7, 2
/* 804945C8  3C A0 80 69 */	lis r5, l_quest_category_0@ha /* 0x8068B648@ha */
/* 804945CC  80 E7 61 3C */	lwz r7, 0x613c(r7)
/* 804945D0  7C 60 1B 78 */	mr r0, r3
/* 804945D4  38 66 2A B4 */	addi r3, r6, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x80492AB4@l */
/* 804945D8  38 A5 B6 48 */	addi r5, r5, l_quest_category_0@l /* 0x8068B648@l */
/* 804945DC  81 07 00 8C */	lwz r8, 0x8c(r7)
/* 804945E0  38 C0 00 03 */	li r6, 3
/* 804945E4  38 E0 00 00 */	li r7, 0
/* 804945E8  39 40 00 00 */	li r10, 0
/* 804945EC  90 81 00 08 */	stw r4, 8(r1)
/* 804945F0  7C 04 03 78 */	mr r4, r0
/* 804945F4  7D 09 43 78 */	mr r9, r8
/* 804945F8  4B FF E9 B9 */	bl aQMgr_order_decide_trade_common
/* 804945FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494600  7C 08 03 A6 */	mtlr r0
/* 80494604  38 21 00 10 */	addi r1, r1, 0x10
/* 80494608  4E 80 00 20 */	blr 
