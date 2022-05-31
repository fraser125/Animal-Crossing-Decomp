lbl_80551EC0:
/* 80551EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551EC4  7C 08 02 A6 */	mflr r0
/* 80551EC8  38 60 00 04 */	li r3, 4
/* 80551ECC  38 80 00 09 */	li r4, 9
/* 80551ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551ED4  38 A0 00 00 */	li r5, 0
/* 80551ED8  4B E4 65 61 */	bl mDemo_Set_OrderValue
/* 80551EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551EE0  7C 08 03 A6 */	mtlr r0
/* 80551EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80551EE8  4E 80 00 20 */	blr 
