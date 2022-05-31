lbl_803A8E30:
/* 803A8E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8E34  7C 08 02 A6 */	mflr r0
/* 803A8E38  38 C0 00 02 */	li r6, 2
/* 803A8E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8E40  4B FF FF 5D */	bl mFI_SetDeposit
/* 803A8E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8E48  7C 08 03 A6 */	mtlr r0
/* 803A8E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8E50  4E 80 00 20 */	blr 
