lbl_80494E3C:
/* 80494E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494E40  7C 08 02 A6 */	mflr r0
/* 80494E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494E48  4B FF E5 25 */	bl aQMgr_set_give_money_and_take_item_mode_TAKE
/* 80494E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494E50  7C 08 03 A6 */	mtlr r0
/* 80494E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80494E58  4E 80 00 20 */	blr 
