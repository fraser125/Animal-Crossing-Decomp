lbl_805F728C:
/* 805F728C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F7290  7C 08 02 A6 */	mflr r0
/* 805F7294  38 A0 21 00 */	li r5, 0x2100
/* 805F7298  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F729C  4B FF C0 CD */	bl mTG_make_money_sack
/* 805F72A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F72A4  7C 08 03 A6 */	mtlr r0
/* 805F72A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F72AC  4E 80 00 20 */	blr 
