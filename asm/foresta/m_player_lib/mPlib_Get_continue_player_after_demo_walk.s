lbl_803DBA8C:
/* 803DBA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBA90  7C 08 02 A6 */	mflr r0
/* 803DBA94  38 60 00 00 */	li r3, 0
/* 803DBA98  38 80 00 08 */	li r4, 8
/* 803DBA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBAA0  4B FB C9 DD */	bl mDemo_Get_OrderValue
/* 803DBAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBAA8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DBAAC  7C 08 03 A6 */	mtlr r0
/* 803DBAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBAB4  4E 80 00 20 */	blr 
