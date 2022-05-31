lbl_803B50B4:
/* 803B50B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B50B8  7C 08 02 A6 */	mflr r0
/* 803B50BC  38 A0 00 01 */	li r5, 1
/* 803B50C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B50C4  4B FF F0 35 */	bl mISL_int
/* 803B50C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B50CC  7C 08 03 A6 */	mtlr r0
/* 803B50D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B50D4  4E 80 00 20 */	blr 
