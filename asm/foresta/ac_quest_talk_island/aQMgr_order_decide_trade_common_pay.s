lbl_8048E380:
/* 8048E380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E384  7C 08 02 A6 */	mflr r0
/* 8048E388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E38C  4B FF F6 1D */	bl aQMgr_get_rnd_no_cut_10
/* 8048E390  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E394  38 80 00 13 */	li r4, 0x13
/* 8048E398  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E39C  90 65 00 08 */	stw r3, 8(r5)
/* 8048E3A0  4B FF F3 1D */	bl aQMgr_set_number_free_str
/* 8048E3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E3A8  7C 08 03 A6 */	mtlr r0
/* 8048E3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E3B0  4E 80 00 20 */	blr 
