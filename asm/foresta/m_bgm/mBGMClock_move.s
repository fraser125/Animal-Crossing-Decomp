lbl_80378AC8:
/* 80378AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378ACC  7C 08 02 A6 */	mflr r0
/* 80378AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378AD4  4B FF FF B1 */	bl mBGMClock_now_set
/* 80378AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378ADC  7C 08 03 A6 */	mtlr r0
/* 80378AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80378AE4  4E 80 00 20 */	blr 
