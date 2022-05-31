lbl_80494B44:
/* 80494B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494B48  7C 08 02 A6 */	mflr r0
/* 80494B4C  38 80 00 03 */	li r4, 3
/* 80494B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494B54  4B FF FF 15 */	bl aQMgr_order_move_trade_no_term
/* 80494B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494B5C  7C 08 03 A6 */	mtlr r0
/* 80494B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80494B64  4E 80 00 20 */	blr 
