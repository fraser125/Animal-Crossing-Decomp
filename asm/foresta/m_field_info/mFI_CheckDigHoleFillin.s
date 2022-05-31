lbl_803A9174:
/* 803A9174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9178  7C 08 02 A6 */	mflr r0
/* 803A917C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A9184  3B E0 00 00 */	li r31, 0
/* 803A9188  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A918C  7C 9E 23 78 */	mr r30, r4
/* 803A9190  A0 63 00 00 */	lhz r3, 0(r3)
/* 803A9194  4B FF FF 35 */	bl mFI_CheckItemNoHole
/* 803A9198  2C 03 00 01 */	cmpwi r3, 1
/* 803A919C  40 82 00 30 */	bne lbl_803A91CC
/* 803A91A0  80 BE 00 00 */	lwz r5, 0(r30)
/* 803A91A4  38 61 00 08 */	addi r3, r1, 8
/* 803A91A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 803A91AC  80 1E 00 08 */	lwz r0, 8(r30)
/* 803A91B0  90 A1 00 08 */	stw r5, 8(r1)
/* 803A91B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 803A91B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A91BC  4B FF FE BD */	bl mFI_Wpos2DepositGet
/* 803A91C0  2C 03 00 00 */	cmpwi r3, 0
/* 803A91C4  40 82 00 08 */	bne lbl_803A91CC
/* 803A91C8  3B E0 00 01 */	li r31, 1
lbl_803A91CC:
/* 803A91CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A91D0  7F E3 FB 78 */	mr r3, r31
/* 803A91D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A91D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A91DC  7C 08 03 A6 */	mtlr r0
/* 803A91E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A91E4  4E 80 00 20 */	blr 
