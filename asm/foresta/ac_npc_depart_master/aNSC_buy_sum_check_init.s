lbl_805520FC:
/* 805520FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552100  7C 08 02 A6 */	mflr r0
/* 80552104  38 60 00 04 */	li r3, 4
/* 80552108  38 80 00 09 */	li r4, 9
/* 8055210C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552110  38 A0 00 00 */	li r5, 0
/* 80552114  4B E4 63 25 */	bl mDemo_Set_OrderValue
/* 80552118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055211C  7C 08 03 A6 */	mtlr r0
/* 80552120  38 21 00 10 */	addi r1, r1, 0x10
/* 80552124  4E 80 00 20 */	blr 
