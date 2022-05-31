lbl_804AA494:
/* 804AA494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA498  7C 08 02 A6 */	mflr r0
/* 804AA49C  38 80 00 01 */	li r4, 1
/* 804AA4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA4A4  4B FF FF 61 */	bl aTUT_calc_scale
/* 804AA4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA4AC  7C 08 03 A6 */	mtlr r0
/* 804AA4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA4B4  4E 80 00 20 */	blr 
