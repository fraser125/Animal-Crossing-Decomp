lbl_805A73B8:
/* 805A73B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A73BC  7C 08 02 A6 */	mflr r0
/* 805A73C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A73C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A73C8  7C 7F 1B 78 */	mr r31, r3
/* 805A73CC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 805A73D0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805A73D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A73D8  40 80 00 48 */	bge lbl_805A7420
/* 805A73DC  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A73E0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 805A73E4  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A73E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A73EC  40 80 00 24 */	bge lbl_805A7410
/* 805A73F0  4B AB 59 05 */	bl fqrand
/* 805A73F4  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064A4E4@ha */
/* 805A73F8  3C 60 80 65 */	lis r3, lit_451@ha /* 0x8064A4D0@ha */
/* 805A73FC  C0 44 A4 E4 */	lfs f2, lit_540@l(r4)  /* 0x8064A4E4@l */
/* 805A7400  C0 03 A4 D0 */	lfs f0, lit_451@l(r3)  /* 0x8064A4D0@l */
/* 805A7404  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A7408  EC 00 08 2A */	fadds f0, f0, f1
/* 805A740C  D0 1F 00 78 */	stfs f0, 0x78(r31)
lbl_805A7410:
/* 805A7410  3C 60 80 65 */	lis r3, lit_452@ha /* 0x8064A4D4@ha */
/* 805A7414  C0 03 A4 D4 */	lfs f0, lit_452@l(r3)  /* 0x8064A4D4@l */
/* 805A7418  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A741C  48 00 00 44 */	b lbl_805A7460
lbl_805A7420:
/* 805A7420  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7424  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 805A7428  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A742C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7430  40 81 00 24 */	ble lbl_805A7454
/* 805A7434  4B AB 58 C1 */	bl fqrand
/* 805A7438  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064A4E4@ha */
/* 805A743C  3C 60 80 65 */	lis r3, lit_451@ha /* 0x8064A4D0@ha */
/* 805A7440  C0 44 A4 E4 */	lfs f2, lit_540@l(r4)  /* 0x8064A4E4@l */
/* 805A7444  C0 03 A4 D0 */	lfs f0, lit_451@l(r3)  /* 0x8064A4D0@l */
/* 805A7448  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A744C  EC 00 08 2A */	fadds f0, f0, f1
/* 805A7450  D0 1F 00 78 */	stfs f0, 0x78(r31)
lbl_805A7454:
/* 805A7454  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064A4E8@ha */
/* 805A7458  C0 03 A4 E8 */	lfs f0, lit_541@l(r3)  /* 0x8064A4E8@l */
/* 805A745C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_805A7460:
/* 805A7460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7468  7C 08 03 A6 */	mtlr r0
/* 805A746C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7470  4E 80 00 20 */	blr 
