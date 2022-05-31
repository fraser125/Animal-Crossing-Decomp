lbl_803A1D1C:
/* 803A1D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1D20  7C 08 02 A6 */	mflr r0
/* 803A1D24  38 60 00 00 */	li r3, 0
/* 803A1D28  38 C0 00 00 */	li r6, 0
/* 803A1D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1D30  38 00 00 00 */	li r0, 0
/* 803A1D34  38 81 00 0C */	addi r4, r1, 0xc
/* 803A1D38  38 A1 00 08 */	addi r5, r1, 8
/* 803A1D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A1D40  90 01 00 08 */	stw r0, 8(r1)
/* 803A1D44  4B FF FC BD */	bl mFAs_GetFieldGoodBlockNum_common
/* 803A1D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1D4C  7C 08 03 A6 */	mtlr r0
/* 803A1D50  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1D54  4E 80 00 20 */	blr 
