lbl_8048F58C:
/* 8048F58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F590  7C 08 02 A6 */	mflr r0
/* 8048F594  38 80 00 01 */	li r4, 1
/* 8048F598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F59C  4B FF F0 C5 */	bl aQMgr_set_give_and_take_mode_GIVE
/* 8048F5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F5A4  7C 08 03 A6 */	mtlr r0
/* 8048F5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F5AC  4E 80 00 20 */	blr 
