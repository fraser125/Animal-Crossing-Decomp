lbl_8048EED0:
/* 8048EED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EED4  7C 08 02 A6 */	mflr r0
/* 8048EED8  38 60 03 E8 */	li r3, 0x3e8
/* 8048EEDC  38 80 07 CF */	li r4, 0x7cf
/* 8048EEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EEE4  38 A0 00 01 */	li r5, 1
/* 8048EEE8  4B FF F4 99 */	bl aQMgr_order_decide_trade_common_pay
/* 8048EEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EEF0  7C 08 03 A6 */	mtlr r0
/* 8048EEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EEF8  4E 80 00 20 */	blr 
