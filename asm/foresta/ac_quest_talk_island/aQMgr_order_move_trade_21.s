lbl_8048F80C:
/* 8048F80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F810  7C 08 02 A6 */	mflr r0
/* 8048F814  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F818  38 80 00 04 */	li r4, 4
/* 8048F81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F820  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F824  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8048F828  4B FF F0 31 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 8048F82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F830  7C 08 03 A6 */	mtlr r0
/* 8048F834  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F838  4E 80 00 20 */	blr 
