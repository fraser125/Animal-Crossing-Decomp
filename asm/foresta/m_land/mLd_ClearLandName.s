lbl_803B38C8:
/* 803B38C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B38CC  7C 08 02 A6 */	mflr r0
/* 803B38D0  38 80 00 08 */	li r4, 8
/* 803B38D4  38 A0 00 20 */	li r5, 0x20
/* 803B38D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B38DC  48 00 71 6D */	bl mem_clear
/* 803B38E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B38E4  7C 08 03 A6 */	mtlr r0
/* 803B38E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B38EC  4E 80 00 20 */	blr 
