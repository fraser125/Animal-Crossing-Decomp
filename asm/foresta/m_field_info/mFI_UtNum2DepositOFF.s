lbl_803A8F90:
/* 803A8F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8F94  7C 08 02 A6 */	mflr r0
/* 803A8F98  38 A0 00 01 */	li r5, 1
/* 803A8F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8FA0  4B FF FF 39 */	bl mFI_UtNum2SetDeposit
/* 803A8FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8FA8  7C 08 03 A6 */	mtlr r0
/* 803A8FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8FB0  4E 80 00 20 */	blr 
