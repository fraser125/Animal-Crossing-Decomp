lbl_805563D0:
/* 805563D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805563D4  7C 08 02 A6 */	mflr r0
/* 805563D8  38 60 00 04 */	li r3, 4
/* 805563DC  38 80 00 09 */	li r4, 9
/* 805563E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805563E4  38 A0 00 00 */	li r5, 0
/* 805563E8  4B E4 20 51 */	bl mDemo_Set_OrderValue
/* 805563EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805563F0  7C 08 03 A6 */	mtlr r0
/* 805563F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805563F8  4E 80 00 20 */	blr 
