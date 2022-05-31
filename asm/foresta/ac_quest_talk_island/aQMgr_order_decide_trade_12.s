lbl_8048EDE8:
/* 8048EDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EDEC  7C 08 02 A6 */	mflr r0
/* 8048EDF0  3C A0 80 69 */	lis r5, data_8068B210@ha /* 0x8068B210@ha */
/* 8048EDF4  3C E0 80 49 */	lis r7, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048EDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EDFC  7C 64 1B 78 */	mr r4, r3
/* 8048EE00  38 67 DA D4 */	addi r3, r7, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048EE04  38 C0 00 03 */	li r6, 3
/* 8048EE08  38 A5 B2 10 */	addi r5, r5, data_8068B210@l /* 0x8068B210@l */
/* 8048EE0C  38 E0 00 00 */	li r7, 0
/* 8048EE10  39 00 00 64 */	li r8, 0x64
/* 8048EE14  39 20 01 F4 */	li r9, 0x1f4
/* 8048EE18  39 40 00 01 */	li r10, 1
/* 8048EE1C  4B FF F5 99 */	bl aQMgr_order_decide_trade_common
/* 8048EE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EE24  7C 08 03 A6 */	mtlr r0
/* 8048EE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EE2C  4E 80 00 20 */	blr 
