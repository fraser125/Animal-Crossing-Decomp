lbl_804949F0:
/* 804949F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804949F4  7C 08 02 A6 */	mflr r0
/* 804949F8  38 60 00 64 */	li r3, 0x64
/* 804949FC  38 80 03 E7 */	li r4, 0x3e7
/* 80494A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494A04  38 A0 00 01 */	li r5, 1
/* 80494A08  4B FF E5 75 */	bl aQMgr_order_decide_trade_common_pay
/* 80494A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494A10  7C 08 03 A6 */	mtlr r0
/* 80494A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80494A18  4E 80 00 20 */	blr 
