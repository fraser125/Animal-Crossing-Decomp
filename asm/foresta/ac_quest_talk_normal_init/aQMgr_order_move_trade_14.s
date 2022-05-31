lbl_80494CBC:
/* 80494CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494CC0  7C 08 02 A6 */	mflr r0
/* 80494CC4  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494CC8  38 80 00 01 */	li r4, 1
/* 80494CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494CD0  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494CD4  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80494CD8  4B FF E6 F1 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494CE0  7C 08 03 A6 */	mtlr r0
/* 80494CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80494CE8  4E 80 00 20 */	blr 
