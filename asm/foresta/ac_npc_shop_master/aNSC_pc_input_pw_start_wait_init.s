lbl_8057C2C0:
/* 8057C2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C2C4  7C 08 02 A6 */	mflr r0
/* 8057C2C8  38 80 00 1C */	li r4, 0x1c
/* 8057C2CC  38 63 09 D8 */	addi r3, r3, 0x9d8
/* 8057C2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C2D4  38 A0 00 20 */	li r5, 0x20
/* 8057C2D8  4B E3 E7 71 */	bl mem_clear
/* 8057C2DC  38 60 00 04 */	li r3, 4
/* 8057C2E0  38 80 00 09 */	li r4, 9
/* 8057C2E4  38 A0 00 00 */	li r5, 0
/* 8057C2E8  4B E1 C1 51 */	bl mDemo_Set_OrderValue
/* 8057C2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C2F0  7C 08 03 A6 */	mtlr r0
/* 8057C2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C2F8  4E 80 00 20 */	blr 
