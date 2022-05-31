lbl_80494DDC:
/* 80494DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494DE0  7C 08 02 A6 */	mflr r0
/* 80494DE4  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494DE8  38 80 00 03 */	li r4, 3
/* 80494DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494DF0  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494DF4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80494DF8  4B FF E5 D1 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494E00  7C 08 03 A6 */	mtlr r0
/* 80494E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80494E08  4E 80 00 20 */	blr 
