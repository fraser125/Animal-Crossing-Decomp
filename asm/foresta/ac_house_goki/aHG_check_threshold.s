lbl_8050B8E4:
/* 8050B8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050B8E8  7C 08 02 A6 */	mflr r0
/* 8050B8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050B8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050B8F4  7C 7F 1B 78 */	mr r31, r3
/* 8050B8F8  38 61 00 08 */	addi r3, r1, 8
/* 8050B8FC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8050B900  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050B904  90 81 00 08 */	stw r4, 8(r1)
/* 8050B908  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050B90C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050B910  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050B914  4B E9 BB 1D */	bl mFI_GetUnitFG
/* 8050B918  28 03 00 00 */	cmplwi r3, 0
/* 8050B91C  41 82 00 1C */	beq lbl_8050B938
/* 8050B920  A0 03 00 00 */	lhz r0, 0(r3)
/* 8050B924  28 00 FE 1B */	cmplwi r0, 0xfe1b
/* 8050B928  40 82 00 10 */	bne lbl_8050B938
/* 8050B92C  38 00 80 00 */	li r0, -32768
/* 8050B930  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8050B934  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8050B938:
/* 8050B938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050B93C  38 60 00 00 */	li r3, 0
/* 8050B940  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050B944  7C 08 03 A6 */	mtlr r0
/* 8050B948  38 21 00 20 */	addi r1, r1, 0x20
/* 8050B94C  4E 80 00 20 */	blr 
