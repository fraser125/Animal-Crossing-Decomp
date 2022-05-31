lbl_803B51F0:
/* 803B51F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B51F4  7C 08 02 A6 */	mflr r0
/* 803B51F8  38 A0 00 02 */	li r5, 2
/* 803B51FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5200  4B FF EE F9 */	bl mISL_int
/* 803B5204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5208  7C 08 03 A6 */	mtlr r0
/* 803B520C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5210  4E 80 00 20 */	blr 
