lbl_8048F83C:
/* 8048F83C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F840  7C 08 02 A6 */	mflr r0
/* 8048F844  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F848  4B FF EF B5 */	bl aQMgr_set_give_money_and_take_item_mode_TAKE
/* 8048F84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F850  7C 08 03 A6 */	mtlr r0
/* 8048F854  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F858  4E 80 00 20 */	blr 
