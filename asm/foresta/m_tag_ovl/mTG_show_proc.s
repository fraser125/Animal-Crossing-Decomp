lbl_805F6FCC:
/* 805F6FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F6FD0  7C 08 02 A6 */	mflr r0
/* 805F6FD4  38 A0 00 01 */	li r5, 1
/* 805F6FD8  38 C0 00 00 */	li r6, 0
/* 805F6FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F6FE0  4B FF C8 3D */	bl mTG_set_trade_cond
/* 805F6FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F6FE8  7C 08 03 A6 */	mtlr r0
/* 805F6FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F6FF0  4E 80 00 20 */	blr 
