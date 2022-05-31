lbl_803B50D8:
/* 803B50D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B50DC  7C 08 02 A6 */	mflr r0
/* 803B50E0  38 A0 00 01 */	li r5, 1
/* 803B50E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B50E8  4B FF F0 11 */	bl mISL_int
/* 803B50EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B50F0  7C 08 03 A6 */	mtlr r0
/* 803B50F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B50F8  4E 80 00 20 */	blr 
