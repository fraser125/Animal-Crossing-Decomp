lbl_80585D88:
/* 80585D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585D8C  7C 08 02 A6 */	mflr r0
/* 80585D90  38 A0 00 10 */	li r5, 0x10
/* 80585D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585D9C  7C 7F 1B 78 */	mr r31, r3
/* 80585DA0  38 64 1D EC */	addi r3, r4, 0x1dec
/* 80585DA4  38 80 00 01 */	li r4, 1
/* 80585DA8  A0 DF 09 F6 */	lhz r6, 0x9f6(r31)
/* 80585DAC  4B E6 99 31 */	bl mSM_open_submenu
/* 80585DB0  38 00 00 2C */	li r0, 0x2c
/* 80585DB4  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80585DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585DC0  7C 08 03 A6 */	mtlr r0
/* 80585DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80585DC8  4E 80 00 20 */	blr 
