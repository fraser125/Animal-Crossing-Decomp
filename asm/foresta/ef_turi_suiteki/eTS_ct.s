lbl_80624AA8:
/* 80624AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80624AAC  7C 08 02 A6 */	mflr r0
/* 80624AB0  3C 80 80 65 */	lis r4, data_8064CF8C@ha /* 0x8064CF8C@ha */
/* 80624AB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80624AB8  C0 04 CF 8C */	lfs f0, data_8064CF8C@l(r4)  /* 0x8064CF8C@l */
/* 80624ABC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80624AC0  7C 7F 1B 78 */	mr r31, r3
/* 80624AC4  38 60 35 00 */	li r3, 0x3500
/* 80624AC8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80624ACC  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80624AD0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80624AD4  4B D9 60 1D */	bl sin_s
/* 80624AD8  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064CF94@ha */
/* 80624ADC  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064CF98@ha */
/* 80624AE0  38 A3 CF 94 */	addi r5, r3, lit_384@l /* 0x8064CF94@l */
/* 80624AE4  C0 44 CF 98 */	lfs f2, lit_385@l(r4)  /* 0x8064CF98@l */
/* 80624AE8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80624AEC  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064CF90@ha */
/* 80624AF0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80624AF4  C0 03 CF 90 */	lfs f0, lit_383@l(r3)  /* 0x8064CF90@l */
/* 80624AF8  EC 21 10 24 */	fdivs f1, f1, f2
/* 80624AFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80624B00  FC 00 00 1E */	fctiwz f0, f0
/* 80624B04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80624B08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80624B0C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80624B10  A8 1F 00 4C */	lha r0, 0x4c(r31)
/* 80624B14  54 00 08 3C */	slwi r0, r0, 1
/* 80624B18  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80624B1C  4B A3 81 D9 */	bl fqrand
/* 80624B20  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064CF9C@ha */
/* 80624B24  C0 03 CF 9C */	lfs f0, lit_386@l(r3)  /* 0x8064CF9C@l */
/* 80624B28  EC 00 00 72 */	fmuls f0, f0, f1
/* 80624B2C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80624B30  4B A3 81 C5 */	bl fqrand
/* 80624B34  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064CF9C@ha */
/* 80624B38  C0 03 CF 9C */	lfs f0, lit_386@l(r3)  /* 0x8064CF9C@l */
/* 80624B3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80624B40  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80624B44  A8 1F 00 4C */	lha r0, 0x4c(r31)
/* 80624B48  B0 1F 00 00 */	sth r0, 0(r31)
/* 80624B4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80624B50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80624B54  7C 08 03 A6 */	mtlr r0
/* 80624B58  38 21 00 20 */	addi r1, r1, 0x20
/* 80624B5C  4E 80 00 20 */	blr 
