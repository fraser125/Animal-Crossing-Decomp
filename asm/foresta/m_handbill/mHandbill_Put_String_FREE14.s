lbl_803B1F0C:
/* 803B1F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1F10  7C 08 02 A6 */	mflr r0
/* 803B1F14  7C E8 3B 78 */	mr r8, r7
/* 803B1F18  38 E0 00 0E */	li r7, 0xe
/* 803B1F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1F20  4B FF FC 29 */	bl mHandbill_Put_String_FREE
/* 803B1F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1F28  7C 08 03 A6 */	mtlr r0
/* 803B1F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1F30  4E 80 00 20 */	blr 
