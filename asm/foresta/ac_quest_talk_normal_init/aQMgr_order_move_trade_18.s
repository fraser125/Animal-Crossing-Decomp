lbl_80494D7C:
/* 80494D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494D80  7C 08 02 A6 */	mflr r0
/* 80494D84  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494D88  38 80 00 01 */	li r4, 1
/* 80494D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494D90  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494D94  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80494D98  4B FF E6 31 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494DA0  7C 08 03 A6 */	mtlr r0
/* 80494DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80494DA8  4E 80 00 20 */	blr 
