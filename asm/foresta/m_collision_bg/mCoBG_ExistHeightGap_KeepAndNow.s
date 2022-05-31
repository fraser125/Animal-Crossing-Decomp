lbl_80390AE8:
/* 80390AE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80390AEC  7C 08 02 A6 */	mflr r0
/* 80390AF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80390AF4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80390AF8  80 83 00 04 */	lwz r4, 4(r3)
/* 80390AFC  80 03 00 08 */	lwz r0, 8(r3)
/* 80390B00  38 61 00 08 */	addi r3, r1, 8
/* 80390B04  90 A1 00 08 */	stw r5, 8(r1)
/* 80390B08  90 81 00 0C */	stw r4, 0xc(r1)
/* 80390B0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80390B10  4B FF FF 69 */	bl mCoBG_GetBgHeightGapBetweenNowDefault
/* 80390B14  FC 00 08 1E */	fctiwz f0, f1
/* 80390B18  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80390B1C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80390B20  30 03 FF FF */	addic r0, r3, -1
/* 80390B24  7C 60 19 10 */	subfe r3, r0, r3
/* 80390B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80390B2C  7C 08 03 A6 */	mtlr r0
/* 80390B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80390B34  4E 80 00 20 */	blr 
