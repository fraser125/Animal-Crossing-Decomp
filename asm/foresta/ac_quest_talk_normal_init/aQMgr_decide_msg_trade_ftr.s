lbl_80493B3C:
/* 80493B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493B40  7C 08 02 A6 */	mflr r0
/* 80493B44  7C 67 1B 78 */	mr r7, r3
/* 80493B48  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493B50  3C C0 80 69 */	lis r6, l_trade_ftr@ha /* 0x8068B5A0@ha */
/* 80493B54  54 80 10 3A */	slwi r0, r4, 2
/* 80493B58  3C 60 80 49 */	lis r3, aQMgr_get_possession_ftr_cpt_wl@ha /* 0x804917A4@ha */
/* 80493B5C  38 86 B5 A0 */	addi r4, r6, l_trade_ftr@l /* 0x8068B5A0@l */
/* 80493B60  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80493B64  7C 84 00 2E */	lwzx r4, r4, r0
/* 80493B68  38 63 17 A4 */	addi r3, r3, aQMgr_get_possession_ftr_cpt_wl@l /* 0x804917A4@l */
/* 80493B6C  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 80493B70  38 A5 00 0C */	addi r5, r5, 0xc
/* 80493B74  38 C0 00 05 */	li r6, 5
/* 80493B78  4B FF DD B1 */	bl aQMgr_decide_msg_check_possession
/* 80493B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493B80  7C 08 03 A6 */	mtlr r0
/* 80493B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80493B88  4E 80 00 20 */	blr 
