lbl_80493BDC:
/* 80493BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493BE0  7C 08 02 A6 */	mflr r0
/* 80493BE4  7C 67 1B 78 */	mr r7, r3
/* 80493BE8  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493BF0  3C C0 80 69 */	lis r6, l_trade_item@ha /* 0x8068B5B8@ha */
/* 80493BF4  54 80 10 3A */	slwi r0, r4, 2
/* 80493BF8  3C 60 80 49 */	lis r3, aQMgr_get_possession_item@ha /* 0x804918C4@ha */
/* 80493BFC  38 86 B5 B8 */	addi r4, r6, l_trade_item@l /* 0x8068B5B8@l */
/* 80493C00  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80493C04  7C 84 00 2E */	lwzx r4, r4, r0
/* 80493C08  38 63 18 C4 */	addi r3, r3, aQMgr_get_possession_item@l /* 0x804918C4@l */
/* 80493C0C  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 80493C10  38 A5 00 0C */	addi r5, r5, 0xc
/* 80493C14  38 C0 00 05 */	li r6, 5
/* 80493C18  4B FF DD 11 */	bl aQMgr_decide_msg_check_possession
/* 80493C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493C20  7C 08 03 A6 */	mtlr r0
/* 80493C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80493C28  4E 80 00 20 */	blr 
