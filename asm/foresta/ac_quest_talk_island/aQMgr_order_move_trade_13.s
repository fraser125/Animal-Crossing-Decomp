lbl_8048F69C:
/* 8048F69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F6A0  7C 08 02 A6 */	mflr r0
/* 8048F6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F6A8  4B FF F0 C5 */	bl aQMgr_set_give_money_and_take_item_mode_GIVE
/* 8048F6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F6B0  7C 08 03 A6 */	mtlr r0
/* 8048F6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F6B8  4E 80 00 20 */	blr 
