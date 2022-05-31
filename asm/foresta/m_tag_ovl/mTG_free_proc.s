lbl_805F5E84:
/* 805F5E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5E88  7C 08 02 A6 */	mflr r0
/* 805F5E8C  38 A0 00 00 */	li r5, 0
/* 805F5E90  38 C0 00 00 */	li r6, 0
/* 805F5E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5E98  4B FF D9 85 */	bl mTG_set_trade_cond
/* 805F5E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5EA0  7C 08 03 A6 */	mtlr r0
/* 805F5EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5EA8  4E 80 00 20 */	blr 
