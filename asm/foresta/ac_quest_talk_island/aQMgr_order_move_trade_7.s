lbl_8048F5D4:
/* 8048F5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F5D8  7C 08 02 A6 */	mflr r0
/* 8048F5DC  38 80 00 03 */	li r4, 3
/* 8048F5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F5E4  4B FF F0 7D */	bl aQMgr_set_give_and_take_mode_GIVE
/* 8048F5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F5EC  7C 08 03 A6 */	mtlr r0
/* 8048F5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F5F4  4E 80 00 20 */	blr 
