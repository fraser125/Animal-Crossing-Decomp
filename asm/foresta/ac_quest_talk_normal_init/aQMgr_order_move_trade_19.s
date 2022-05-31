lbl_80494DAC:
/* 80494DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494DB0  7C 08 02 A6 */	mflr r0
/* 80494DB4  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494DB8  38 80 00 02 */	li r4, 2
/* 80494DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494DC0  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494DC4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80494DC8  4B FF E6 01 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494DD0  7C 08 03 A6 */	mtlr r0
/* 80494DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80494DD8  4E 80 00 20 */	blr 
