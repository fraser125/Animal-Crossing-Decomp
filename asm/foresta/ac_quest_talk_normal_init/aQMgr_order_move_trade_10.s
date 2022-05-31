lbl_80494C3C:
/* 80494C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494C40  7C 08 02 A6 */	mflr r0
/* 80494C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494C48  4B FF E6 31 */	bl aQMgr_set_give_item_and_take_money_mode_GIVE
/* 80494C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494C50  7C 08 03 A6 */	mtlr r0
/* 80494C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80494C58  4E 80 00 20 */	blr 
