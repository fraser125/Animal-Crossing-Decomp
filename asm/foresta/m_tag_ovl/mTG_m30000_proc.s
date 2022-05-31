lbl_805F72D4:
/* 805F72D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F72D8  7C 08 02 A6 */	mflr r0
/* 805F72DC  38 A0 21 02 */	li r5, 0x2102
/* 805F72E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F72E4  4B FF C0 85 */	bl mTG_make_money_sack
/* 805F72E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F72EC  7C 08 03 A6 */	mtlr r0
/* 805F72F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805F72F4  4E 80 00 20 */	blr 
