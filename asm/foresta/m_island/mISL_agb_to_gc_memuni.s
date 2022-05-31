lbl_803B4D24:
/* 803B4D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4D28  7C 08 02 A6 */	mflr r0
/* 803B4D2C  38 A0 00 03 */	li r5, 3
/* 803B4D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4D34  4B FF F3 C5 */	bl mISL_int
/* 803B4D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4D3C  7C 08 03 A6 */	mtlr r0
/* 803B4D40  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4D44  4E 80 00 20 */	blr 
