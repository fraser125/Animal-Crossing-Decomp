lbl_8048EE30:
/* 8048EE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EE34  7C 08 02 A6 */	mflr r0
/* 8048EE38  3C A0 80 69 */	lis r5, data_8068B210@ha /* 0x8068B210@ha */
/* 8048EE3C  3C E0 80 49 */	lis r7, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048EE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EE44  7C 64 1B 78 */	mr r4, r3
/* 8048EE48  38 67 DA D4 */	addi r3, r7, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048EE4C  38 C0 00 03 */	li r6, 3
/* 8048EE50  38 A5 B2 10 */	addi r5, r5, data_8068B210@l /* 0x8068B210@l */
/* 8048EE54  38 E0 00 00 */	li r7, 0
/* 8048EE58  39 00 03 E8 */	li r8, 0x3e8
/* 8048EE5C  39 20 07 D0 */	li r9, 0x7d0
/* 8048EE60  39 40 00 01 */	li r10, 1
/* 8048EE64  4B FF F5 51 */	bl aQMgr_order_decide_trade_common
/* 8048EE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EE6C  7C 08 03 A6 */	mtlr r0
/* 8048EE70  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EE74  4E 80 00 20 */	blr 
