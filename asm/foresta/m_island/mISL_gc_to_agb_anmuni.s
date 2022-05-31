lbl_803B51CC:
/* 803B51CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B51D0  7C 08 02 A6 */	mflr r0
/* 803B51D4  38 A0 00 02 */	li r5, 2
/* 803B51D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B51DC  4B FF EF 1D */	bl mISL_int
/* 803B51E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B51E4  7C 08 03 A6 */	mtlr r0
/* 803B51E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B51EC  4E 80 00 20 */	blr 
