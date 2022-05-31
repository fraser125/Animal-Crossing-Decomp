lbl_805F72B0:
/* 805F72B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F72B4  7C 08 02 A6 */	mflr r0
/* 805F72B8  38 A0 21 01 */	li r5, 0x2101
/* 805F72BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F72C0  4B FF C0 A9 */	bl mTG_make_money_sack
/* 805F72C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F72C8  7C 08 03 A6 */	mtlr r0
/* 805F72CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F72D0  4E 80 00 20 */	blr 
