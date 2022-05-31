lbl_8048EC98:
/* 8048EC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EC9C  7C 08 02 A6 */	mflr r0
/* 8048ECA0  3C A0 80 69 */	lis r5, data_8068B210@ha /* 0x8068B210@ha */
/* 8048ECA4  3C E0 80 49 */	lis r7, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048ECA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ECAC  7C 64 1B 78 */	mr r4, r3
/* 8048ECB0  38 67 DA D4 */	addi r3, r7, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048ECB4  38 C0 00 03 */	li r6, 3
/* 8048ECB8  38 A5 B2 10 */	addi r5, r5, data_8068B210@l /* 0x8068B210@l */
/* 8048ECBC  38 E0 00 01 */	li r7, 1
/* 8048ECC0  39 00 00 64 */	li r8, 0x64
/* 8048ECC4  39 20 0B B8 */	li r9, 0xbb8
/* 8048ECC8  39 40 00 01 */	li r10, 1
/* 8048ECCC  4B FF F6 E9 */	bl aQMgr_order_decide_trade_common
/* 8048ECD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ECD4  7C 08 03 A6 */	mtlr r0
/* 8048ECD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ECDC  4E 80 00 20 */	blr 
