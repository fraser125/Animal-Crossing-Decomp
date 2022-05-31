lbl_803B4D00:
/* 803B4D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4D04  7C 08 02 A6 */	mflr r0
/* 803B4D08  38 A0 00 03 */	li r5, 3
/* 803B4D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4D10  4B FF F3 E9 */	bl mISL_int
/* 803B4D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4D18  7C 08 03 A6 */	mtlr r0
/* 803B4D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4D20  4E 80 00 20 */	blr 
