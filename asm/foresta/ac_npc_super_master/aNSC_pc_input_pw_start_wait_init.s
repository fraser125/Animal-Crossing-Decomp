lbl_80585DCC:
/* 80585DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585DD0  7C 08 02 A6 */	mflr r0
/* 80585DD4  38 80 00 1C */	li r4, 0x1c
/* 80585DD8  38 63 09 D8 */	addi r3, r3, 0x9d8
/* 80585DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585DE0  38 A0 00 20 */	li r5, 0x20
/* 80585DE4  4B E3 4C 65 */	bl mem_clear
/* 80585DE8  38 60 00 04 */	li r3, 4
/* 80585DEC  38 80 00 09 */	li r4, 9
/* 80585DF0  38 A0 00 00 */	li r5, 0
/* 80585DF4  4B E1 26 45 */	bl mDemo_Set_OrderValue
/* 80585DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585DFC  7C 08 03 A6 */	mtlr r0
/* 80585E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80585E04  4E 80 00 20 */	blr 
