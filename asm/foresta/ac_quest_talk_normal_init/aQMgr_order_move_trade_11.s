lbl_80494C5C:
/* 80494C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494C60  7C 08 02 A6 */	mflr r0
/* 80494C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494C68  4B FF E6 11 */	bl aQMgr_set_give_item_and_take_money_mode_GIVE
/* 80494C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494C70  7C 08 03 A6 */	mtlr r0
/* 80494C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80494C78  4E 80 00 20 */	blr 
