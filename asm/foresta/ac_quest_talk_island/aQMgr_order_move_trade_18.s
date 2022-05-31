lbl_8048F77C:
/* 8048F77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F780  7C 08 02 A6 */	mflr r0
/* 8048F784  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F788  38 80 00 01 */	li r4, 1
/* 8048F78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F790  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F794  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8048F798  4B FF F0 C1 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 8048F79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F7A0  7C 08 03 A6 */	mtlr r0
/* 8048F7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F7A8  4E 80 00 20 */	blr 
