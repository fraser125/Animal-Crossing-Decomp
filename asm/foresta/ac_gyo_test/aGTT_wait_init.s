lbl_805A4B84:
/* 805A4B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4B88  7C 08 02 A6 */	mflr r0
/* 805A4B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A4B94  7C 7F 1B 78 */	mr r31, r3
/* 805A4B98  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A4B9C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805A4BA0  B0 03 02 40 */	sth r0, 0x240(r3)
/* 805A4BA4  4B AB 81 51 */	bl fqrand
/* 805A4BA8  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064A410@ha */
/* 805A4BAC  3C 80 80 65 */	lis r4, lit_891@ha /* 0x8064A424@ha */
/* 805A4BB0  38 A3 A4 10 */	addi r5, r3, lit_803@l /* 0x8064A410@l */
/* 805A4BB4  C0 44 A4 24 */	lfs f2, lit_891@l(r4)  /* 0x8064A424@l */
/* 805A4BB8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A4BBC  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064A3FC@ha */
/* 805A4BC0  EC 20 00 72 */	fmuls f1, f0, f1
/* 805A4BC4  C0 03 A3 FC */	lfs f0, lit_731@l(r3)  /* 0x8064A3FC@l */
/* 805A4BC8  EC 22 08 2A */	fadds f1, f2, f1
/* 805A4BCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4BD0  FC 00 00 1E */	fctiwz f0, f0
/* 805A4BD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A4BD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A4BDC  90 1F 02 18 */	stw r0, 0x218(r31)
/* 805A4BE0  4B AB 81 4D */	bl fqrand2
/* 805A4BE4  3C 60 80 65 */	lis r3, lit_804@ha /* 0x8064A414@ha */
/* 805A4BE8  3C 80 80 65 */	lis r4, lit_947@ha /* 0x8064A43C@ha */
/* 805A4BEC  38 A3 A4 14 */	addi r5, r3, lit_804@l /* 0x8064A414@l */
/* 805A4BF0  C0 44 A4 3C */	lfs f2, lit_947@l(r4)  /* 0x8064A43C@l */
/* 805A4BF4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A4BF8  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064A3CC@ha */
/* 805A4BFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 805A4C00  C0 03 A3 CC */	lfs f0, lit_458@l(r3)  /* 0x8064A3CC@l */
/* 805A4C04  EC 22 08 2A */	fadds f1, f2, f1
/* 805A4C08  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805A4C0C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A4C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4C14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A4C18  7C 08 03 A6 */	mtlr r0
/* 805A4C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4C20  4E 80 00 20 */	blr 
