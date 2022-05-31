lbl_805A6A84:
/* 805A6A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6A88  7C 08 02 A6 */	mflr r0
/* 805A6A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6A90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6A94  7C 7F 1B 78 */	mr r31, r3
/* 805A6A98  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A6A9C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805A6AA0  B0 03 02 40 */	sth r0, 0x240(r3)
/* 805A6AA4  4B AB 62 51 */	bl fqrand
/* 805A6AA8  3C 60 80 65 */	lis r3, lit_794@ha /* 0x8064A490@ha */
/* 805A6AAC  3C 80 80 65 */	lis r4, lit_866@ha /* 0x8064A4A4@ha */
/* 805A6AB0  38 A3 A4 90 */	addi r5, r3, lit_794@l /* 0x8064A490@l */
/* 805A6AB4  C0 44 A4 A4 */	lfs f2, lit_866@l(r4)  /* 0x8064A4A4@l */
/* 805A6AB8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A6ABC  3C 60 80 65 */	lis r3, lit_793@ha /* 0x8064A48C@ha */
/* 805A6AC0  EC 20 00 72 */	fmuls f1, f0, f1
/* 805A6AC4  C0 03 A4 8C */	lfs f0, lit_793@l(r3)  /* 0x8064A48C@l */
/* 805A6AC8  EC 22 08 2A */	fadds f1, f2, f1
/* 805A6ACC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A6AD0  FC 00 00 1E */	fctiwz f0, f0
/* 805A6AD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A6AD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A6ADC  90 1F 02 18 */	stw r0, 0x218(r31)
/* 805A6AE0  4B AB 62 4D */	bl fqrand2
/* 805A6AE4  3C 60 80 65 */	lis r3, lit_795@ha /* 0x8064A494@ha */
/* 805A6AE8  3C 80 80 65 */	lis r4, lit_931@ha /* 0x8064A4BC@ha */
/* 805A6AEC  38 A3 A4 94 */	addi r5, r3, lit_795@l /* 0x8064A494@l */
/* 805A6AF0  C0 44 A4 BC */	lfs f2, lit_931@l(r4)  /* 0x8064A4BC@l */
/* 805A6AF4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A6AF8  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A44C@ha */
/* 805A6AFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 805A6B00  C0 03 A4 4C */	lfs f0, lit_466@l(r3)  /* 0x8064A44C@l */
/* 805A6B04  EC 22 08 2A */	fadds f1, f2, f1
/* 805A6B08  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805A6B0C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A6B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6B14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6B18  7C 08 03 A6 */	mtlr r0
/* 805A6B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6B20  4E 80 00 20 */	blr 
