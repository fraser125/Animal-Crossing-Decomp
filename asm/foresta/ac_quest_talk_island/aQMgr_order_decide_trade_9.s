lbl_8048ECE0:
/* 8048ECE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ECE4  7C 08 02 A6 */	mflr r0
/* 8048ECE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048ECEC  3C A0 80 49 */	lis r5, aQMgr_get_possession_ftr_cpt_wl_rnd@ha /* 0x8048DAD4@ha */
/* 8048ECF0  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8048ECF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ECF8  3C C6 00 02 */	addis r6, r6, 2
/* 8048ECFC  3C 80 80 69 */	lis r4, data_8068B210@ha /* 0x8068B210@ha */
/* 8048ED00  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 8048ED04  38 05 DA D4 */	addi r0, r5, aQMgr_get_possession_ftr_cpt_wl_rnd@l /* 0x8048DAD4@l */
/* 8048ED08  38 A4 B2 10 */	addi r5, r4, data_8068B210@l /* 0x8068B210@l */
/* 8048ED0C  7C 64 1B 78 */	mr r4, r3
/* 8048ED10  81 06 00 8C */	lwz r8, 0x8c(r6)
/* 8048ED14  7C 03 03 78 */	mr r3, r0
/* 8048ED18  38 C0 00 03 */	li r6, 3
/* 8048ED1C  38 E0 00 01 */	li r7, 1
/* 8048ED20  7D 09 43 78 */	mr r9, r8
/* 8048ED24  39 40 00 01 */	li r10, 1
/* 8048ED28  4B FF F6 8D */	bl aQMgr_order_decide_trade_common
/* 8048ED2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ED30  7C 08 03 A6 */	mtlr r0
/* 8048ED34  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ED38  4E 80 00 20 */	blr 
