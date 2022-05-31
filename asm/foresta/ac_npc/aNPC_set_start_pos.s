lbl_80538BC8:
/* 80538BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538BCC  7C 08 02 A6 */	mflr r0
/* 80538BD0  7C 64 1B 78 */	mr r4, r3
/* 80538BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538BD8  80 A3 01 7C */	lwz r5, 0x17c(r3)
/* 80538BDC  38 64 08 4C */	addi r3, r4, 0x84c
/* 80538BE0  38 84 08 4D */	addi r4, r4, 0x84d
/* 80538BE4  4B E9 F9 51 */	bl mNpcW_GetAppearStatusWay
/* 80538BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538BEC  7C 08 03 A6 */	mtlr r0
/* 80538BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80538BF4  4E 80 00 20 */	blr 
