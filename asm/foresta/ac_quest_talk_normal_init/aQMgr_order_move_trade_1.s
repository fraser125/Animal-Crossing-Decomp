lbl_80494AFC:
/* 80494AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494B00  7C 08 02 A6 */	mflr r0
/* 80494B04  38 80 00 01 */	li r4, 1
/* 80494B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494B0C  4B FF FF 5D */	bl aQMgr_order_move_trade_no_term
/* 80494B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494B14  7C 08 03 A6 */	mtlr r0
/* 80494B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80494B1C  4E 80 00 20 */	blr 
