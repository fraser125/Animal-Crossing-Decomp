lbl_8056D474:
/* 8056D474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D478  7C 08 02 A6 */	mflr r0
/* 8056D47C  38 60 00 04 */	li r3, 4
/* 8056D480  38 80 00 09 */	li r4, 9
/* 8056D484  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D488  38 A0 00 00 */	li r5, 0
/* 8056D48C  4B E2 AF AD */	bl mDemo_Set_OrderValue
/* 8056D490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D494  7C 08 03 A6 */	mtlr r0
/* 8056D498  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D49C  4E 80 00 20 */	blr 
