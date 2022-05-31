lbl_8057C1CC:
/* 8057C1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C1D0  7C 08 02 A6 */	mflr r0
/* 8057C1D4  38 60 00 04 */	li r3, 4
/* 8057C1D8  38 80 00 09 */	li r4, 9
/* 8057C1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C1E0  38 A0 00 00 */	li r5, 0
/* 8057C1E4  4B E1 C2 55 */	bl mDemo_Set_OrderValue
/* 8057C1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C1EC  7C 08 03 A6 */	mtlr r0
/* 8057C1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C1F4  4E 80 00 20 */	blr 
