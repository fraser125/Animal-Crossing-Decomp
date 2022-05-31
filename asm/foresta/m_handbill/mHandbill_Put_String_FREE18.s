lbl_803B1FAC:
/* 803B1FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1FB0  7C 08 02 A6 */	mflr r0
/* 803B1FB4  7C E8 3B 78 */	mr r8, r7
/* 803B1FB8  38 E0 00 12 */	li r7, 0x12
/* 803B1FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1FC0  4B FF FB 89 */	bl mHandbill_Put_String_FREE
/* 803B1FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1FC8  7C 08 03 A6 */	mtlr r0
/* 803B1FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1FD0  4E 80 00 20 */	blr 
