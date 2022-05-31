lbl_803DBAE8:
/* 803DBAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBAEC  7C 08 02 A6 */	mflr r0
/* 803DBAF0  38 60 00 00 */	li r3, 0
/* 803DBAF4  38 80 00 09 */	li r4, 9
/* 803DBAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBAFC  4B FB C9 81 */	bl mDemo_Get_OrderValue
/* 803DBB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBB04  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DBB08  7C 08 03 A6 */	mtlr r0
/* 803DBB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBB10  4E 80 00 20 */	blr 
