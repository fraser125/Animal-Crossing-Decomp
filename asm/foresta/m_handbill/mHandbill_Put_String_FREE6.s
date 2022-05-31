lbl_803B1DCC:
/* 803B1DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1DD0  7C 08 02 A6 */	mflr r0
/* 803B1DD4  7C E8 3B 78 */	mr r8, r7
/* 803B1DD8  38 E0 00 06 */	li r7, 6
/* 803B1DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1DE0  4B FF FD 69 */	bl mHandbill_Put_String_FREE
/* 803B1DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1DE8  7C 08 03 A6 */	mtlr r0
/* 803B1DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1DF0  4E 80 00 20 */	blr 
