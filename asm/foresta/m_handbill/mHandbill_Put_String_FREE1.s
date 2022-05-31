lbl_803B1D04:
/* 803B1D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1D08  7C 08 02 A6 */	mflr r0
/* 803B1D0C  7C E8 3B 78 */	mr r8, r7
/* 803B1D10  38 E0 00 01 */	li r7, 1
/* 803B1D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1D18  4B FF FE 31 */	bl mHandbill_Put_String_FREE
/* 803B1D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1D20  7C 08 03 A6 */	mtlr r0
/* 803B1D24  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1D28  4E 80 00 20 */	blr 
