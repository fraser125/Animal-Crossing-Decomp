lbl_803DBAB8:
/* 803DBAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBABC  7C 08 02 A6 */	mflr r0
/* 803DBAC0  38 80 00 09 */	li r4, 9
/* 803DBAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBAC8  7C 60 1B 78 */	mr r0, r3
/* 803DBACC  38 60 00 00 */	li r3, 0
/* 803DBAD0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DBAD4  4B FB C9 65 */	bl mDemo_Set_OrderValue
/* 803DBAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBADC  7C 08 03 A6 */	mtlr r0
/* 803DBAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBAE4  4E 80 00 20 */	blr 
