lbl_803A9100:
/* 803A9100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9104  7C 08 02 A6 */	mflr r0
/* 803A9108  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A910C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A9110  3B E0 00 00 */	li r31, 0
/* 803A9114  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A9118  7C 9E 23 78 */	mr r30, r4
/* 803A911C  A0 63 00 00 */	lhz r3, 0(r3)
/* 803A9120  4B FF FF A9 */	bl mFI_CheckItemNoHole
/* 803A9124  2C 03 00 01 */	cmpwi r3, 1
/* 803A9128  40 82 00 30 */	bne lbl_803A9158
/* 803A912C  80 BE 00 00 */	lwz r5, 0(r30)
/* 803A9130  38 61 00 08 */	addi r3, r1, 8
/* 803A9134  80 9E 00 04 */	lwz r4, 4(r30)
/* 803A9138  80 1E 00 08 */	lwz r0, 8(r30)
/* 803A913C  90 A1 00 08 */	stw r5, 8(r1)
/* 803A9140  90 81 00 0C */	stw r4, 0xc(r1)
/* 803A9144  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A9148  4B FF FF 31 */	bl mFI_Wpos2DepositGet
/* 803A914C  2C 03 00 01 */	cmpwi r3, 1
/* 803A9150  40 82 00 08 */	bne lbl_803A9158
/* 803A9154  3B E0 00 01 */	li r31, 1
lbl_803A9158:
/* 803A9158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A915C  7F E3 FB 78 */	mr r3, r31
/* 803A9160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A9164  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A9168  7C 08 03 A6 */	mtlr r0
/* 803A916C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A9170  4E 80 00 20 */	blr 