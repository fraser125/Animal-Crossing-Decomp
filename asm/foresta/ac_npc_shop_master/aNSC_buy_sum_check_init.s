lbl_8057BD7C:
/* 8057BD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BD80  7C 08 02 A6 */	mflr r0
/* 8057BD84  38 60 00 04 */	li r3, 4
/* 8057BD88  38 80 00 09 */	li r4, 9
/* 8057BD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BD90  38 A0 00 00 */	li r5, 0
/* 8057BD94  4B E1 C6 A5 */	bl mDemo_Set_OrderValue
/* 8057BD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BD9C  7C 08 03 A6 */	mtlr r0
/* 8057BDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BDA4  4E 80 00 20 */	blr 
