lbl_8057BEA0:
/* 8057BEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BEA4  7C 08 02 A6 */	mflr r0
/* 8057BEA8  38 60 00 04 */	li r3, 4
/* 8057BEAC  38 80 00 09 */	li r4, 9
/* 8057BEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BEB4  38 A0 00 00 */	li r5, 0
/* 8057BEB8  4B E1 C5 81 */	bl mDemo_Set_OrderValue
/* 8057BEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BEC0  7C 08 03 A6 */	mtlr r0
/* 8057BEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BEC8  4E 80 00 20 */	blr 
