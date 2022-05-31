lbl_8048F520:
/* 8048F520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F524  7C 08 02 A6 */	mflr r0
/* 8048F528  38 80 00 02 */	li r4, 2
/* 8048F52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F530  4B FF FF 41 */	bl aQMgr_order_move_trade_no_term
/* 8048F534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F538  7C 08 03 A6 */	mtlr r0
/* 8048F53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F540  4E 80 00 20 */	blr 
