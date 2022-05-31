lbl_803A8FD8:
/* 803A8FD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8FDC  7C 08 02 A6 */	mflr r0
/* 803A8FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8FE4  38 81 00 08 */	addi r4, r1, 8
/* 803A8FE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A8FEC  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A8FF0  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A8FF4  80 03 00 08 */	lwz r0, 8(r3)
/* 803A8FF8  38 61 00 0C */	addi r3, r1, 0xc
/* 803A8FFC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A9000  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A9004  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A9008  4B FF C3 61 */	bl mFI_Wpos2UtNum
/* 803A900C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A9010  80 81 00 08 */	lwz r4, 8(r1)
/* 803A9014  4B FF FF 59 */	bl mFI_UtNum2DepositON
/* 803A9018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A901C  7C 08 03 A6 */	mtlr r0
/* 803A9020  38 21 00 20 */	addi r1, r1, 0x20
/* 803A9024  4E 80 00 20 */	blr 
