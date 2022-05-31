lbl_804949C4:
/* 804949C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804949C8  7C 08 02 A6 */	mflr r0
/* 804949CC  38 60 03 E8 */	li r3, 0x3e8
/* 804949D0  38 80 07 CF */	li r4, 0x7cf
/* 804949D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804949D8  38 A0 00 01 */	li r5, 1
/* 804949DC  4B FF E5 A1 */	bl aQMgr_order_decide_trade_common_pay
/* 804949E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804949E4  7C 08 03 A6 */	mtlr r0
/* 804949E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804949EC  4E 80 00 20 */	blr 
