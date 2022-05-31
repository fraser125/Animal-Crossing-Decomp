lbl_8048EBC0:
/* 8048EBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EBC4  7C 08 02 A6 */	mflr r0
/* 8048EBC8  3C A0 80 69 */	lis r5, data_8068B210@ha /* 0x8068B210@ha */
/* 8048EBCC  3C E0 80 49 */	lis r7, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048EBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EBD4  7C 64 1B 78 */	mr r4, r3
/* 8048EBD8  38 67 DA D4 */	addi r3, r7, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048EBDC  38 C0 00 03 */	li r6, 3
/* 8048EBE0  38 A5 B2 10 */	addi r5, r5, data_8068B210@l /* 0x8068B210@l */
/* 8048EBE4  38 E0 00 00 */	li r7, 0
/* 8048EBE8  39 00 0B B8 */	li r8, 0xbb8
/* 8048EBEC  39 20 0B B8 */	li r9, 0xbb8
/* 8048EBF0  39 40 00 00 */	li r10, 0
/* 8048EBF4  4B FF F7 C1 */	bl aQMgr_order_decide_trade_common
/* 8048EBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EBFC  7C 08 03 A6 */	mtlr r0
/* 8048EC00  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EC04  4E 80 00 20 */	blr 
