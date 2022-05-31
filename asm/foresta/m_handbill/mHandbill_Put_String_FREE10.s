lbl_803B1E6C:
/* 803B1E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1E70  7C 08 02 A6 */	mflr r0
/* 803B1E74  7C E8 3B 78 */	mr r8, r7
/* 803B1E78  38 E0 00 0A */	li r7, 0xa
/* 803B1E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1E80  4B FF FC C9 */	bl mHandbill_Put_String_FREE
/* 803B1E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1E88  7C 08 03 A6 */	mtlr r0
/* 803B1E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1E90  4E 80 00 20 */	blr 
