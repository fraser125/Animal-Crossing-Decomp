lbl_8048F544:
/* 8048F544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F548  7C 08 02 A6 */	mflr r0
/* 8048F54C  38 80 00 03 */	li r4, 3
/* 8048F550  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F554  4B FF FF 1D */	bl aQMgr_order_move_trade_no_term
/* 8048F558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F55C  7C 08 03 A6 */	mtlr r0
/* 8048F560  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F564  4E 80 00 20 */	blr 
