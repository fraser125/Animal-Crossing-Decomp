lbl_8048EEFC:
/* 8048EEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EF00  7C 08 02 A6 */	mflr r0
/* 8048EF04  38 60 00 64 */	li r3, 0x64
/* 8048EF08  38 80 03 E7 */	li r4, 0x3e7
/* 8048EF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EF10  38 A0 00 01 */	li r5, 1
/* 8048EF14  4B FF F4 6D */	bl aQMgr_order_decide_trade_common_pay
/* 8048EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EF1C  7C 08 03 A6 */	mtlr r0
/* 8048EF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EF24  4E 80 00 20 */	blr 
