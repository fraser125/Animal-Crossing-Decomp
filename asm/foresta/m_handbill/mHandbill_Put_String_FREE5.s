lbl_803B1DA4:
/* 803B1DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1DA8  7C 08 02 A6 */	mflr r0
/* 803B1DAC  7C E8 3B 78 */	mr r8, r7
/* 803B1DB0  38 E0 00 05 */	li r7, 5
/* 803B1DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1DB8  4B FF FD 91 */	bl mHandbill_Put_String_FREE
/* 803B1DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1DC0  7C 08 03 A6 */	mtlr r0
/* 803B1DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1DC8  4E 80 00 20 */	blr 
