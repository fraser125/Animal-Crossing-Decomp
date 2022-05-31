lbl_803A8FB4:
/* 803A8FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8FB8  7C 08 02 A6 */	mflr r0
/* 803A8FBC  38 A0 00 02 */	li r5, 2
/* 803A8FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8FC4  4B FF FF 15 */	bl mFI_UtNum2SetDeposit
/* 803A8FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8FCC  7C 08 03 A6 */	mtlr r0
/* 803A8FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8FD4  4E 80 00 20 */	blr 
