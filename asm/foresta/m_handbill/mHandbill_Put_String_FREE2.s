lbl_803B1D2C:
/* 803B1D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1D30  7C 08 02 A6 */	mflr r0
/* 803B1D34  7C E8 3B 78 */	mr r8, r7
/* 803B1D38  38 E0 00 02 */	li r7, 2
/* 803B1D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1D40  4B FF FE 09 */	bl mHandbill_Put_String_FREE
/* 803B1D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1D48  7C 08 03 A6 */	mtlr r0
/* 803B1D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1D50  4E 80 00 20 */	blr 