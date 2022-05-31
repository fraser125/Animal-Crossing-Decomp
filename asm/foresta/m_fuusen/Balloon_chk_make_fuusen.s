lbl_803B15F0:
/* 803B15F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B15F4  7C 08 02 A6 */	mflr r0
/* 803B15F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B15FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803B1600  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803B1604  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803B1608  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803B160C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B1610  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B1614  7C 7E 1B 78 */	mr r30, r3
/* 803B1618  4B CA B6 DD */	bl fqrand
/* 803B161C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B1620  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B1624  3F E3 00 03 */	addis r31, r3, 3
/* 803B1628  C0 1F 88 98 */	lfs f0, -0x7768(r31)
/* 803B162C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B1630  40 80 00 10 */	bge lbl_803B1640
/* 803B1634  7F C3 F3 78 */	mr r3, r30
/* 803B1638  4B FF FE E9 */	bl Balloon_make_fuusen
/* 803B163C  48 00 00 98 */	b lbl_803B16D4
lbl_803B1640:
/* 803B1640  4B FF 0A B1 */	bl mFAs_GetFieldRank
/* 803B1644  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B1648  3C 00 43 30 */	lis r0, 0x4330
/* 803B164C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803B1650  3C 80 80 64 */	lis r4, lit_399@ha /* 0x8064218C@ha */
/* 803B1654  3C 60 80 64 */	lis r3, lit_395@ha /* 0x8064217C@ha */
/* 803B1658  C8 44 21 8C */	lfd f2, lit_399@l(r4)  /* 0x8064218C@l */
/* 803B165C  90 01 00 08 */	stw r0, 8(r1)
/* 803B1660  C0 03 21 7C */	lfs f0, lit_395@l(r3)  /* 0x8064217C@l */
/* 803B1664  C8 21 00 08 */	lfd f1, 8(r1)
/* 803B1668  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B166C  EF C1 00 24 */	fdivs f30, f1, f0
/* 803B1670  48 02 F9 95 */	bl mPr_GetGoodsPower
/* 803B1674  7C 63 07 34 */	extsh r3, r3
/* 803B1678  3C 00 43 30 */	lis r0, 0x4330
/* 803B167C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B1680  3C 80 80 64 */	lis r4, lit_399@ha /* 0x8064218C@ha */
/* 803B1684  90 61 00 14 */	stw r3, 0x14(r1)
/* 803B1688  3C 60 80 64 */	lis r3, lit_396@ha /* 0x80642180@ha */
/* 803B168C  C8 44 21 8C */	lfd f2, lit_399@l(r4)  /* 0x8064218C@l */
/* 803B1690  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B1694  C0 03 21 80 */	lfs f0, lit_396@l(r3)  /* 0x80642180@l */
/* 803B1698  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803B169C  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B16A0  EF E1 00 24 */	fdivs f31, f1, f0
/* 803B16A4  4B CA B6 51 */	bl fqrand
/* 803B16A8  3C 60 80 64 */	lis r3, lit_397@ha /* 0x80642184@ha */
/* 803B16AC  C0 1F 88 98 */	lfs f0, -0x7768(r31)
/* 803B16B0  C0 A3 21 84 */	lfs f5, lit_397@l(r3)  /* 0x80642184@l */
/* 803B16B4  EC 65 07 F2 */	fmuls f3, f5, f31
/* 803B16B8  EC 85 00 72 */	fmuls f4, f5, f1
/* 803B16BC  EC 45 07 B2 */	fmuls f2, f5, f30
/* 803B16C0  EC 25 18 2A */	fadds f1, f5, f3
/* 803B16C4  EC 21 10 2A */	fadds f1, f1, f2
/* 803B16C8  EC 21 20 2A */	fadds f1, f1, f4
/* 803B16CC  EC 00 08 2A */	fadds f0, f0, f1
/* 803B16D0  D0 1F 88 98 */	stfs f0, -0x7768(r31)
lbl_803B16D4:
/* 803B16D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803B16D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803B16DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803B16E0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803B16E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B16E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B16EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B16F0  7C 08 03 A6 */	mtlr r0
/* 803B16F4  38 21 00 40 */	addi r1, r1, 0x40
/* 803B16F8  4E 80 00 20 */	blr 
