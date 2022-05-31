lbl_8048F67C:
/* 8048F67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F680  7C 08 02 A6 */	mflr r0
/* 8048F684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F688  4B FF F0 81 */	bl aQMgr_set_give_item_and_take_money_mode_GIVE
/* 8048F68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F690  7C 08 03 A6 */	mtlr r0
/* 8048F694  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F698  4E 80 00 20 */	blr 
