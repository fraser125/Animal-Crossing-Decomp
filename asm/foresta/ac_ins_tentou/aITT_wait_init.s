lbl_805A03B8:
/* 805A03B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A03BC  7C 08 02 A6 */	mflr r0
/* 805A03C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A03C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A03C8  7C 7F 1B 78 */	mr r31, r3
/* 805A03CC  4B AB C9 29 */	bl fqrand
/* 805A03D0  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A274@ha */
/* 805A03D4  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064A25C@ha */
/* 805A03D8  38 A3 A2 74 */	addi r5, r3, lit_474@l /* 0x8064A274@l */
/* 805A03DC  C0 44 A2 5C */	lfs f2, lit_413@l(r4)  /* 0x8064A25C@l */
/* 805A03E0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805A03E4  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 805A03E8  C0 03 A2 54 */	lfs f0, lit_405@l(r3)  /* 0x8064A254@l */
/* 805A03EC  EC 23 00 72 */	fmuls f1, f3, f1
/* 805A03F0  EC 23 08 2A */	fadds f1, f3, f1
/* 805A03F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A03F8  FC 20 08 1E */	fctiwz f1, f1
/* 805A03FC  D8 21 00 08 */	stfd f1, 8(r1)
/* 805A0400  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A0404  90 1F 02 28 */	stw r0, 0x228(r31)
/* 805A0408  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A040C  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 805A0410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A0418  7C 08 03 A6 */	mtlr r0
/* 805A041C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A0420  4E 80 00 20 */	blr 
