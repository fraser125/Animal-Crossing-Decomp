lbl_80493B8C:
/* 80493B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493B90  7C 08 02 A6 */	mflr r0
/* 80493B94  7C 67 1B 78 */	mr r7, r3
/* 80493B98  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493BA0  3C C0 80 69 */	lis r6, l_trade_free_item_money@ha /* 0x8068B5D0@ha */
/* 80493BA4  54 80 10 3A */	slwi r0, r4, 2
/* 80493BA8  3C 60 80 49 */	lis r3, aQMgr_get_free_possession_idx_check_money@ha /* 0x8049187C@ha */
/* 80493BAC  38 86 B5 D0 */	addi r4, r6, l_trade_free_item_money@l /* 0x8068B5D0@l */
/* 80493BB0  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80493BB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80493BB8  38 63 18 7C */	addi r3, r3, aQMgr_get_free_possession_idx_check_money@l /* 0x8049187C@l */
/* 80493BBC  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 80493BC0  38 A5 00 10 */	addi r5, r5, 0x10
/* 80493BC4  38 C0 00 05 */	li r6, 5
/* 80493BC8  4B FF DD 61 */	bl aQMgr_decide_msg_check_possession
/* 80493BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493BD0  7C 08 03 A6 */	mtlr r0
/* 80493BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80493BD8  4E 80 00 20 */	blr 
