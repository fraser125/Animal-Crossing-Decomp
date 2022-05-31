lbl_805F7268:
/* 805F7268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F726C  7C 08 02 A6 */	mflr r0
/* 805F7270  38 A0 21 03 */	li r5, 0x2103
/* 805F7274  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F7278  4B FF C0 F1 */	bl mTG_make_money_sack
/* 805F727C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7280  7C 08 03 A6 */	mtlr r0
/* 805F7284  38 21 00 10 */	addi r1, r1, 0x10
/* 805F7288  4E 80 00 20 */	blr 
