lbl_803B1E94:
/* 803B1E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1E98  7C 08 02 A6 */	mflr r0
/* 803B1E9C  7C E8 3B 78 */	mr r8, r7
/* 803B1EA0  38 E0 00 0B */	li r7, 0xb
/* 803B1EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1EA8  4B FF FC A1 */	bl mHandbill_Put_String_FREE
/* 803B1EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1EB0  7C 08 03 A6 */	mtlr r0
/* 803B1EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1EB8  4E 80 00 20 */	blr 
