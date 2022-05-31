lbl_8048EA70:
/* 8048EA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EA74  7C 08 02 A6 */	mflr r0
/* 8048EA78  3C A0 80 69 */	lis r5, data_8068B210@ha /* 0x8068B210@ha */
/* 8048EA7C  3C E0 80 49 */	lis r7, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048EA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EA84  7C 64 1B 78 */	mr r4, r3
/* 8048EA88  38 67 DA D4 */	addi r3, r7, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048EA8C  38 C0 00 03 */	li r6, 3
/* 8048EA90  38 A5 B2 10 */	addi r5, r5, data_8068B210@l /* 0x8068B210@l */
/* 8048EA94  38 E0 00 00 */	li r7, 0
/* 8048EA98  39 00 00 64 */	li r8, 0x64
/* 8048EA9C  39 20 0B B8 */	li r9, 0xbb8
/* 8048EAA0  39 40 00 01 */	li r10, 1
/* 8048EAA4  4B FF F9 11 */	bl aQMgr_order_decide_trade_common
/* 8048EAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EAAC  7C 08 03 A6 */	mtlr r0
/* 8048EAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EAB4  4E 80 00 20 */	blr 
