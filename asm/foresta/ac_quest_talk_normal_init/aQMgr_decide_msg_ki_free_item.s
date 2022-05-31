lbl_804934D0:
/* 804934D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804934D4  7C 08 02 A6 */	mflr r0
/* 804934D8  7C 67 1B 78 */	mr r7, r3
/* 804934DC  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 804934E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804934E4  3C C0 80 69 */	lis r6, l_ki_free_item@ha /* 0x8068B4B0@ha */
/* 804934E8  54 80 10 3A */	slwi r0, r4, 2
/* 804934EC  3C 60 80 49 */	lis r3, aQMgr_get_free_possession_idx@ha /* 0x80491848@ha */
/* 804934F0  38 86 B4 B0 */	addi r4, r6, l_ki_free_item@l /* 0x8068B4B0@l */
/* 804934F4  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 804934F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 804934FC  38 63 18 48 */	addi r3, r3, aQMgr_get_free_possession_idx@l /* 0x80491848@l */
/* 80493500  A0 E7 0A 98 */	lhz r7, 0xa98(r7)
/* 80493504  38 A5 00 10 */	addi r5, r5, 0x10
/* 80493508  38 C0 00 03 */	li r6, 3
/* 8049350C  4B FF E4 1D */	bl aQMgr_decide_msg_check_possession
/* 80493510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493514  7C 08 03 A6 */	mtlr r0
/* 80493518  38 21 00 10 */	addi r1, r1, 0x10
/* 8049351C  4E 80 00 20 */	blr 
