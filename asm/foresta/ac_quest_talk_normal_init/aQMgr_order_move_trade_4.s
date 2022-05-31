lbl_80494B68:
/* 80494B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494B6C  7C 08 02 A6 */	mflr r0
/* 80494B70  38 80 00 04 */	li r4, 4
/* 80494B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494B78  4B FF FE F1 */	bl aQMgr_order_move_trade_no_term
/* 80494B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494B80  7C 08 03 A6 */	mtlr r0
/* 80494B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80494B88  4E 80 00 20 */	blr 
