lbl_8048F568:
/* 8048F568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F56C  7C 08 02 A6 */	mflr r0
/* 8048F570  38 80 00 04 */	li r4, 4
/* 8048F574  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F578  4B FF FE F9 */	bl aQMgr_order_move_trade_no_term
/* 8048F57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F580  7C 08 03 A6 */	mtlr r0
/* 8048F584  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F588  4E 80 00 20 */	blr 
