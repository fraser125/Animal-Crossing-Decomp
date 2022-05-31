lbl_80494998:
/* 80494998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049499C  7C 08 02 A6 */	mflr r0
/* 804949A0  38 60 07 D0 */	li r3, 0x7d0
/* 804949A4  38 80 0B B7 */	li r4, 0xbb7
/* 804949A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804949AC  38 A0 00 01 */	li r5, 1
/* 804949B0  4B FF E5 CD */	bl aQMgr_order_decide_trade_common_pay
/* 804949B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804949B8  7C 08 03 A6 */	mtlr r0
/* 804949BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804949C0  4E 80 00 20 */	blr 
