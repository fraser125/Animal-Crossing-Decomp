lbl_803B1E1C:
/* 803B1E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1E20  7C 08 02 A6 */	mflr r0
/* 803B1E24  7C E8 3B 78 */	mr r8, r7
/* 803B1E28  38 E0 00 08 */	li r7, 8
/* 803B1E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1E30  4B FF FD 19 */	bl mHandbill_Put_String_FREE
/* 803B1E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1E38  7C 08 03 A6 */	mtlr r0
/* 803B1E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1E40  4E 80 00 20 */	blr 
