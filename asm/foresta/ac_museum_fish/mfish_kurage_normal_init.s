lbl_80457ACC:
/* 80457ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80457AD0  7C 08 02 A6 */	mflr r0
/* 80457AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80457AD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80457ADC  7C 7F 1B 78 */	mr r31, r3
/* 80457AE0  4B C0 52 15 */	bl fqrand
/* 80457AE4  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 80457AE8  3C 00 43 30 */	lis r0, 0x4330
/* 80457AEC  90 01 00 08 */	stw r0, 8(r1)
/* 80457AF0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80457AF4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80457AF8  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80457AFC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80457B00  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 80457B04  C8 01 00 08 */	lfd f0, 8(r1)
/* 80457B08  EC 00 10 28 */	fsubs f0, f0, f2
/* 80457B0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80457B10  FC 00 00 1E */	fctiwz f0, f0
/* 80457B14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80457B18  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80457B1C  7C 00 1A 14 */	add r0, r0, r3
/* 80457B20  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 80457B24  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 80457B28  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 80457B2C  4B C0 51 C9 */	bl fqrand
/* 80457B30  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80457B34  3C 60 80 45 */	lis r3, mfish_kurage_normal@ha /* 0x80457B64@ha */
/* 80457B38  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80457B3C  38 03 7B 64 */	addi r0, r3, mfish_kurage_normal@l /* 0x80457B64@l */
/* 80457B40  EC 22 00 72 */	fmuls f1, f2, f1
/* 80457B44  EC 00 08 2A */	fadds f0, f0, f1
/* 80457B48  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80457B4C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80457B50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80457B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80457B58  7C 08 03 A6 */	mtlr r0
/* 80457B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80457B60  4E 80 00 20 */	blr 
