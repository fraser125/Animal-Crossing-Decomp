lbl_803B1D54:
/* 803B1D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1D58  7C 08 02 A6 */	mflr r0
/* 803B1D5C  7C E8 3B 78 */	mr r8, r7
/* 803B1D60  38 E0 00 03 */	li r7, 3
/* 803B1D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1D68  4B FF FD E1 */	bl mHandbill_Put_String_FREE
/* 803B1D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1D70  7C 08 03 A6 */	mtlr r0
/* 803B1D74  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1D78  4E 80 00 20 */	blr 
