lbl_803A8F6C:
/* 803A8F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8F70  7C 08 02 A6 */	mflr r0
/* 803A8F74  38 A0 00 00 */	li r5, 0
/* 803A8F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8F7C  4B FF FF 5D */	bl mFI_UtNum2SetDeposit
/* 803A8F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8F84  7C 08 03 A6 */	mtlr r0
/* 803A8F88  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8F8C  4E 80 00 20 */	blr 
