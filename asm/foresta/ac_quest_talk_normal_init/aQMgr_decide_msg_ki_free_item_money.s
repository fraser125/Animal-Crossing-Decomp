lbl_80493570:
/* 80493570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493574  7C 08 02 A6 */	mflr r0
/* 80493578  7C 67 1B 78 */	mr r7, r3
/* 8049357C  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493584  3C C0 80 69 */	lis r6, l_ki_free_item_money@ha /* 0x8068B4E0@ha */
/* 80493588  54 80 10 3A */	slwi r0, r4, 2
/* 8049358C  3C 60 80 49 */	lis r3, aQMgr_get_free_possession_idx_check_money@ha /* 0x8049187C@ha */
/* 80493590  38 86 B4 E0 */	addi r4, r6, l_ki_free_item_money@l /* 0x8068B4E0@l */
/* 80493594  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80493598  7C 84 00 2E */	lwzx r4, r4, r0
/* 8049359C  38 63 18 7C */	addi r3, r3, aQMgr_get_free_possession_idx_check_money@l /* 0x8049187C@l */
/* 804935A0  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 804935A4  38 A5 00 10 */	addi r5, r5, 0x10
/* 804935A8  38 C0 00 03 */	li r6, 3
/* 804935AC  4B FF E3 7D */	bl aQMgr_decide_msg_check_possession
/* 804935B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804935B4  7C 08 03 A6 */	mtlr r0
/* 804935B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804935BC  4E 80 00 20 */	blr 
