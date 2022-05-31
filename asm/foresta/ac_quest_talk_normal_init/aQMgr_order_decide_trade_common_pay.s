lbl_80492F7C:
/* 80492F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80492F80  7C 08 02 A6 */	mflr r0
/* 80492F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80492F88  4B FF FA A5 */	bl aQMgr_get_rnd_no_cut_10
/* 80492F8C  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80492F90  38 80 00 13 */	li r4, 0x13
/* 80492F94  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80492F98  90 65 00 08 */	stw r3, 8(r5)
/* 80492F9C  4B FF E5 AD */	bl aQMgr_set_number_free_str
/* 80492FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80492FA4  7C 08 03 A6 */	mtlr r0
/* 80492FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80492FAC  4E 80 00 20 */	blr 
