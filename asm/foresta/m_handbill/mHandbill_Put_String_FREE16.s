lbl_803B1F5C:
/* 803B1F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1F60  7C 08 02 A6 */	mflr r0
/* 803B1F64  7C E8 3B 78 */	mr r8, r7
/* 803B1F68  38 E0 00 10 */	li r7, 0x10
/* 803B1F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1F70  4B FF FB D9 */	bl mHandbill_Put_String_FREE
/* 803B1F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1F78  7C 08 03 A6 */	mtlr r0
/* 803B1F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1F80  4E 80 00 20 */	blr 
