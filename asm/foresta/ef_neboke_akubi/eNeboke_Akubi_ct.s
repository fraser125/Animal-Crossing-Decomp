lbl_80618578:
/* 80618578  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8061857C  7C 08 02 A6 */	mflr r0
/* 80618580  90 01 00 64 */	stw r0, 0x64(r1)
/* 80618584  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80618588  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8061858C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80618590  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80618594  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80618598  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8061859C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806185A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806185A4  3C 80 80 65 */	lis r4, data_8064C82C@ha /* 0x8064C82C@ha */
/* 806185A8  7C 7F 1B 78 */	mr r31, r3
/* 806185AC  38 C4 C8 2C */	addi r6, r4, data_8064C82C@l /* 0x8064C82C@l */
/* 806185B0  7C BE 2B 78 */	mr r30, r5
/* 806185B4  80 86 00 00 */	lwz r4, 0(r6)
/* 806185B8  80 66 00 04 */	lwz r3, 4(r6)
/* 806185BC  80 06 00 08 */	lwz r0, 8(r6)
/* 806185C0  90 81 00 08 */	stw r4, 8(r1)
/* 806185C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 806185C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806185CC  4B A4 47 61 */	bl fqrand2
/* 806185D0  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064C838@ha */
/* 806185D4  C0 03 C8 38 */	lfs f0, lit_383@l(r3)  /* 0x8064C838@l */
/* 806185D8  EF E0 00 72 */	fmuls f31, f0, f1
/* 806185DC  4B A4 47 51 */	bl fqrand2
/* 806185E0  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064C838@ha */
/* 806185E4  C0 03 C8 38 */	lfs f0, lit_383@l(r3)  /* 0x8064C838@l */
/* 806185E8  EF C0 00 72 */	fmuls f30, f0, f1
/* 806185EC  4B A4 47 41 */	bl fqrand2
/* 806185F0  38 00 00 50 */	li r0, 0x50
/* 806185F4  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064C838@ha */
/* 806185F8  B0 1F 00 00 */	sth r0, 0(r31)
/* 806185FC  C0 03 C8 38 */	lfs f0, lit_383@l(r3)  /* 0x8064C838@l */
/* 80618600  A8 1E 00 00 */	lha r0, 0(r30)
/* 80618604  EF A0 00 72 */	fmuls f29, f0, f1
/* 80618608  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8061860C  4B A4 46 C1 */	bl func_8005CCCC
/* 80618610  B0 7F 00 4E */	sth r3, 0x4e(r31)
/* 80618614  3C 00 43 30 */	lis r0, 0x4330
/* 80618618  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064C854@ha */
/* 8061861C  3C A0 80 65 */	lis r5, lit_384@ha /* 0x8064C83C@ha */
/* 80618620  A8 9F 00 4C */	lha r4, 0x4c(r31)
/* 80618624  C8 23 C8 54 */	lfd f1, lit_391@l(r3)  /* 0x8064C854@l */
/* 80618628  38 61 00 08 */	addi r3, r1, 8
/* 8061862C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80618630  90 01 00 18 */	stw r0, 0x18(r1)
/* 80618634  C0 45 C8 3C */	lfs f2, lit_384@l(r5)  /* 0x8064C83C@l */
/* 80618638  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8061863C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80618640  EC 00 08 28 */	fsubs f0, f0, f1
/* 80618644  EC 22 00 32 */	fmuls f1, f2, f0
/* 80618648  4B DF 37 65 */	bl sMath_RotateY
/* 8061864C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80618650  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80618654  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C840@ha */
/* 80618658  3C C0 80 65 */	lis r6, lit_386@ha /* 0x8064C844@ha */
/* 8061865C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80618660  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80618664  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064C848@ha */
/* 80618668  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061866C  38 E4 C8 40 */	addi r7, r4, lit_385@l /* 0x8064C840@l */
/* 80618670  C0 46 C8 44 */	lfs f2, lit_386@l(r6)  /* 0x8064C844@l */
/* 80618674  EC 01 00 2A */	fadds f0, f1, f0
/* 80618678  3C 83 00 02 */	addis r4, r3, 2
/* 8061867C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80618680  C0 27 00 00 */	lfs f1, 0(r7)
/* 80618684  C0 65 C8 48 */	lfs f3, lit_387@l(r5)  /* 0x8064C848@l */
/* 80618688  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8061868C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80618690  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80618694  EC 00 F0 2A */	fadds f0, f0, f30
/* 80618698  EC 04 00 2A */	fadds f0, f4, f0
/* 8061869C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 806186A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806186A4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 806186A8  EC 00 E8 2A */	fadds f0, f0, f29
/* 806186AC  EC 04 00 2A */	fadds f0, f4, f0
/* 806186B0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 806186B4  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 806186B8  81 84 00 0C */	lwz r12, 0xc(r4)
/* 806186BC  7D 89 03 A6 */	mtctr r12
/* 806186C0  4E 80 04 21 */	bctrl 
/* 806186C4  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064C84C@ha */
/* 806186C8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806186CC  C0 24 C8 4C */	lfs f1, lit_388@l(r4)  /* 0x8064C84C@l */
/* 806186D0  4B DF 37 7D */	bl sMath_RotateX
/* 806186D4  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 806186D8  3C 00 43 30 */	lis r0, 0x4330
/* 806186DC  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C854@ha */
/* 806186E0  3C A0 80 65 */	lis r5, lit_384@ha /* 0x8064C83C@ha */
/* 806186E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 806186E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806186EC  C8 24 C8 54 */	lfd f1, lit_391@l(r4)  /* 0x8064C854@l */
/* 806186F0  90 61 00 24 */	stw r3, 0x24(r1)
/* 806186F4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806186F8  C0 45 C8 3C */	lfs f2, lit_384@l(r5)  /* 0x8064C83C@l */
/* 806186FC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80618700  EC 00 08 28 */	fsubs f0, f0, f1
/* 80618704  EC 22 00 32 */	fmuls f1, f2, f0
/* 80618708  4B DF 36 A5 */	bl sMath_RotateY
/* 8061870C  3C 80 80 65 */	lis r4, lit_387@ha /* 0x8064C848@ha */
/* 80618710  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064C850@ha */
/* 80618714  C0 24 C8 48 */	lfs f1, lit_387@l(r4)  /* 0x8064C848@l */
/* 80618718  C0 03 C8 50 */	lfs f0, lit_389@l(r3)  /* 0x8064C850@l */
/* 8061871C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80618720  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80618724  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 80618728  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8061872C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80618730  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80618734  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80618738  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8061873C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80618740  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80618744  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80618748  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061874C  7C 08 03 A6 */	mtlr r0
/* 80618750  38 21 00 60 */	addi r1, r1, 0x60
/* 80618754  4E 80 00 20 */	blr 