lbl_803B1EE4:
/* 803B1EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1EE8  7C 08 02 A6 */	mflr r0
/* 803B1EEC  7C E8 3B 78 */	mr r8, r7
/* 803B1EF0  38 E0 00 0D */	li r7, 0xd
/* 803B1EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1EF8  4B FF FC 51 */	bl mHandbill_Put_String_FREE
/* 803B1EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1F00  7C 08 03 A6 */	mtlr r0
/* 803B1F04  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1F08  4E 80 00 20 */	blr 
