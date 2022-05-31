lbl_80494E0C:
/* 80494E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494E10  7C 08 02 A6 */	mflr r0
/* 80494E14  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494E18  38 80 00 04 */	li r4, 4
/* 80494E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494E20  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494E24  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80494E28  4B FF E5 A1 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494E30  7C 08 03 A6 */	mtlr r0
/* 80494E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80494E38  4E 80 00 20 */	blr 
