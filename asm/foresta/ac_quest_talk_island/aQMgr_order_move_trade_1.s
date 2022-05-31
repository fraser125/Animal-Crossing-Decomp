lbl_8048F4FC:
/* 8048F4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F500  7C 08 02 A6 */	mflr r0
/* 8048F504  38 80 00 01 */	li r4, 1
/* 8048F508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F50C  4B FF FF 65 */	bl aQMgr_order_move_trade_no_term
/* 8048F510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F514  7C 08 03 A6 */	mtlr r0
/* 8048F518  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F51C  4E 80 00 20 */	blr 
