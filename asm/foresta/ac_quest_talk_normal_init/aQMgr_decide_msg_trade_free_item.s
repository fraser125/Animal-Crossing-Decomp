lbl_80493AEC:
/* 80493AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493AF0  7C 08 02 A6 */	mflr r0
/* 80493AF4  7C 67 1B 78 */	mr r7, r3
/* 80493AF8  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493B00  3C C0 80 69 */	lis r6, l_trade_free_item@ha /* 0x8068B588@ha */
/* 80493B04  54 80 10 3A */	slwi r0, r4, 2
/* 80493B08  3C 60 80 49 */	lis r3, aQMgr_get_free_possession_idx@ha /* 0x80491848@ha */
/* 80493B0C  38 86 B5 88 */	addi r4, r6, l_trade_free_item@l /* 0x8068B588@l */
/* 80493B10  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80493B14  7C 84 00 2E */	lwzx r4, r4, r0
/* 80493B18  38 63 18 48 */	addi r3, r3, aQMgr_get_free_possession_idx@l /* 0x80491848@l */
/* 80493B1C  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 80493B20  38 A5 00 10 */	addi r5, r5, 0x10
/* 80493B24  38 C0 00 05 */	li r6, 5
/* 80493B28  4B FF DE 01 */	bl aQMgr_decide_msg_check_possession
/* 80493B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493B30  7C 08 03 A6 */	mtlr r0
/* 80493B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80493B38  4E 80 00 20 */	blr 
