lbl_8061EE58:
/* 8061EE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061EE5C  7C 08 02 A6 */	mflr r0
/* 8061EE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061EE64  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8061EE68  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8061EE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061EE70  93 C1 00 08 */	stw r30, 8(r1)
/* 8061EE74  7C 7E 1B 78 */	mr r30, r3
/* 8061EE78  7C BF 2B 78 */	mr r31, r5
/* 8061EE7C  4B A3 DE 79 */	bl fqrand
/* 8061EE80  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064CC38@ha */
/* 8061EE84  3C A0 80 65 */	lis r5, data_8064CC34@ha /* 0x8064CC34@ha */
/* 8061EE88  38 83 CC 38 */	addi r4, r3, lit_383@l /* 0x8064CC38@l */
/* 8061EE8C  C0 45 CC 34 */	lfs f2, data_8064CC34@l(r5)  /* 0x8064CC34@l */
/* 8061EE90  C0 04 00 00 */	lfs f0, 0(r4)
/* 8061EE94  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064CC3C@ha */
/* 8061EE98  EF E2 08 2A */	fadds f31, f2, f1
/* 8061EE9C  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8061EEA0  C0 03 CC 3C */	lfs f0, lit_384@l(r3)  /* 0x8064CC3C@l */
/* 8061EEA4  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8061EEA8  4B A3 DE 4D */	bl fqrand
/* 8061EEAC  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064CC40@ha */
/* 8061EEB0  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064CC44@ha */
/* 8061EEB4  C0 44 CC 40 */	lfs f2, lit_385@l(r4)  /* 0x8064CC40@l */
/* 8061EEB8  C0 03 CC 44 */	lfs f0, lit_386@l(r3)  /* 0x8064CC44@l */
/* 8061EEBC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061EEC0  FC 20 08 50 */	fneg f1, f1
/* 8061EEC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061EEC8  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8061EECC  A8 7F 00 00 */	lha r3, 0(r31)
/* 8061EED0  4B D9 BC 21 */	bl sin_s
/* 8061EED4  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8061EED8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8061EEDC  A8 7F 00 00 */	lha r3, 0(r31)
/* 8061EEE0  4B D9 BB BD */	bl cos_s
/* 8061EEE4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061EEE8  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC48@ha */
/* 8061EEEC  C0 03 CC 48 */	lfs f0, lit_387@l(r3)  /* 0x8064CC48@l */
/* 8061EEF0  38 00 00 1E */	li r0, 0x1e
/* 8061EEF4  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 8061EEF8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8061EEFC  B0 1E 00 00 */	sth r0, 0(r30)
/* 8061EF00  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8061EF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061EF08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8061EF0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061EF10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061EF14  7C 08 03 A6 */	mtlr r0
/* 8061EF18  38 21 00 20 */	addi r1, r1, 0x20
/* 8061EF1C  4E 80 00 20 */	blr 
