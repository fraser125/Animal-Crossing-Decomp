lbl_805A9AB0:
/* 805A9AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9AB4  2C 05 00 01 */	cmpwi r5, 1
/* 805A9AB8  C0 88 02 CC */	lfs f4, 0x2cc(r8)
/* 805A9ABC  40 81 00 74 */	ble lbl_805A9B30
/* 805A9AC0  3C 60 80 6C */	lis r3, base_r_table@ha /* 0x806C4624@ha */
/* 805A9AC4  3C 80 43 30 */	lis r4, 0x4330
/* 805A9AC8  54 A0 08 3C */	slwi r0, r5, 1
/* 805A9ACC  A8 A9 00 04 */	lha r5, 4(r9)
/* 805A9AD0  38 63 46 24 */	addi r3, r3, base_r_table@l /* 0x806C4624@l */
/* 805A9AD4  3C C0 80 65 */	lis r6, lit_477@ha /* 0x8064A5AC@ha */
/* 805A9AD8  7C 03 02 AE */	lhax r0, r3, r0
/* 805A9ADC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 805A9AE0  3C 60 80 65 */	lis r3, lit_521@ha /* 0x8064A5CC@ha */
/* 805A9AE4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805A9AE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A9AEC  C0 03 A5 CC */	lfs f0, lit_521@l(r3)  /* 0x8064A5CC@l */
/* 805A9AF0  90 81 00 08 */	stw r4, 8(r1)
/* 805A9AF4  C8 66 A5 AC */	lfd f3, lit_477@l(r6)  /* 0x8064A5AC@l */
/* 805A9AF8  EC 20 20 28 */	fsubs f1, f0, f4
/* 805A9AFC  C8 41 00 08 */	lfd f2, 8(r1)
/* 805A9B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9B04  EC 42 18 28 */	fsubs f2, f2, f3
/* 805A9B08  90 81 00 10 */	stw r4, 0x10(r1)
/* 805A9B0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805A9B10  EC 44 00 B2 */	fmuls f2, f4, f2
/* 805A9B14  EC 00 18 28 */	fsubs f0, f0, f3
/* 805A9B18  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A9B1C  EC 02 00 2A */	fadds f0, f2, f0
/* 805A9B20  FC 00 00 1E */	fctiwz f0, f0
/* 805A9B24  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A9B28  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A9B2C  B0 09 00 04 */	sth r0, 4(r9)
lbl_805A9B30:
/* 805A9B30  38 60 00 01 */	li r3, 1
/* 805A9B34  38 21 00 20 */	addi r1, r1, 0x20
/* 805A9B38  4E 80 00 20 */	blr 
