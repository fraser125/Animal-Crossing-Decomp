lbl_8048F5B0:
/* 8048F5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F5B4  7C 08 02 A6 */	mflr r0
/* 8048F5B8  38 80 00 02 */	li r4, 2
/* 8048F5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F5C0  4B FF F0 A1 */	bl aQMgr_set_give_and_take_mode_GIVE
/* 8048F5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F5C8  7C 08 03 A6 */	mtlr r0
/* 8048F5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F5D0  4E 80 00 20 */	blr 
