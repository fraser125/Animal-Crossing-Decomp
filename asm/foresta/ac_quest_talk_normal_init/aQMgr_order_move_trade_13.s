lbl_80494C9C:
/* 80494C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494CA0  7C 08 02 A6 */	mflr r0
/* 80494CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494CA8  4B FF E6 35 */	bl aQMgr_set_give_money_and_take_item_mode_GIVE
/* 80494CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494CB0  7C 08 03 A6 */	mtlr r0
/* 80494CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80494CB8  4E 80 00 20 */	blr 
