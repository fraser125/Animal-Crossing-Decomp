lbl_803A8EB4:
/* 803A8EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8EB8  7C 08 02 A6 */	mflr r0
/* 803A8EBC  38 E0 00 01 */	li r7, 1
/* 803A8EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8EC4  4B FF FF 91 */	bl mFI_BkUtNum2SetDeposit
/* 803A8EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8ECC  7C 08 03 A6 */	mtlr r0
/* 803A8ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8ED4  4E 80 00 20 */	blr 
