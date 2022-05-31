lbl_803A9078:
/* 803A9078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A907C  7C 08 02 A6 */	mflr r0
/* 803A9080  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9084  38 81 00 08 */	addi r4, r1, 8
/* 803A9088  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A908C  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A9090  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A9094  80 03 00 08 */	lwz r0, 8(r3)
/* 803A9098  38 61 00 0C */	addi r3, r1, 0xc
/* 803A909C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A90A0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A90A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A90A8  4B FF C2 C1 */	bl mFI_Wpos2UtNum
/* 803A90AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A90B0  80 81 00 08 */	lwz r4, 8(r1)
/* 803A90B4  4B FF FF 01 */	bl mFI_UtNum2DepositGet
/* 803A90B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A90BC  7C 08 03 A6 */	mtlr r0
/* 803A90C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A90C4  4E 80 00 20 */	blr 
