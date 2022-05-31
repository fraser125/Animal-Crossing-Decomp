lbl_803B1F84:
/* 803B1F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1F88  7C 08 02 A6 */	mflr r0
/* 803B1F8C  7C E8 3B 78 */	mr r8, r7
/* 803B1F90  38 E0 00 11 */	li r7, 0x11
/* 803B1F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1F98  4B FF FB B1 */	bl mHandbill_Put_String_FREE
/* 803B1F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1FA0  7C 08 03 A6 */	mtlr r0
/* 803B1FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1FA8  4E 80 00 20 */	blr 
