lbl_803A52DC:
/* 803A52DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A52E0  7C 08 02 A6 */	mflr r0
/* 803A52E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A52E8  38 81 00 08 */	addi r4, r1, 8
/* 803A52EC  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A52F0  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A52F4  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A52F8  80 03 00 08 */	lwz r0, 8(r3)
/* 803A52FC  38 61 00 0C */	addi r3, r1, 0xc
/* 803A5300  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A5304  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A5308  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A530C  48 00 04 55 */	bl mFI_Wpos2BlockNum
/* 803A5310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5314  7C 08 03 A6 */	mtlr r0
/* 803A5318  38 21 00 20 */	addi r1, r1, 0x20
/* 803A531C  4E 80 00 20 */	blr 