lbl_803A8E0C:
/* 803A8E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8E10  7C 08 02 A6 */	mflr r0
/* 803A8E14  38 C0 00 01 */	li r6, 1
/* 803A8E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8E1C  4B FF FF 81 */	bl mFI_SetDeposit
/* 803A8E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8E24  7C 08 03 A6 */	mtlr r0
/* 803A8E28  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8E2C  4E 80 00 20 */	blr 
