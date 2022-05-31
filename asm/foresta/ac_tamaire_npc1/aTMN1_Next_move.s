lbl_8058A79C:
/* 8058A79C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8058A7A0  7C 08 02 A6 */	mflr r0
/* 8058A7A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8058A7A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8058A7AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8058A7B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8058A7B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8058A7B8  7C 7F 1B 78 */	mr r31, r3
/* 8058A7BC  4B AD 25 39 */	bl fqrand
/* 8058A7C0  3C 80 80 65 */	lis r4, lit_582@ha /* 0x80649B70@ha */
/* 8058A7C4  3C 60 80 65 */	lis r3, lit_581@ha /* 0x80649B6C@ha */
/* 8058A7C8  C0 44 9B 70 */	lfs f2, lit_582@l(r4)  /* 0x80649B70@l */
/* 8058A7CC  C0 03 9B 6C */	lfs f0, lit_581@l(r3)  /* 0x80649B6C@l */
/* 8058A7D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058A7D4  EF E0 08 2A */	fadds f31, f0, f1
/* 8058A7D8  4B AD 25 1D */	bl fqrand
/* 8058A7DC  3C 60 80 65 */	lis r3, lit_583@ha /* 0x80649B74@ha */
/* 8058A7E0  C0 03 9B 74 */	lfs f0, lit_583@l(r3)  /* 0x80649B74@l */
/* 8058A7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058A7E8  40 80 00 08 */	bge lbl_8058A7F0
/* 8058A7EC  FF E0 F8 50 */	fneg f31, f31
lbl_8058A7F0:
/* 8058A7F0  7F E3 FB 78 */	mr r3, r31
/* 8058A7F4  4B FF FF 39 */	bl aTMN1_Tamakago_angle
/* 8058A7F8  7C 63 07 34 */	extsh r3, r3
/* 8058A7FC  3C 00 43 30 */	lis r0, 0x4330
/* 8058A800  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8058A804  3C 80 80 65 */	lis r4, lit_572@ha /* 0x80649B64@ha */
/* 8058A808  90 61 00 0C */	stw r3, 0xc(r1)
/* 8058A80C  C8 24 9B 64 */	lfd f1, lit_572@l(r4)  /* 0x80649B64@l */
/* 8058A810  90 01 00 08 */	stw r0, 8(r1)
/* 8058A814  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058A818  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058A81C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8058A820  FC 00 00 1E */	fctiwz f0, f0
/* 8058A824  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058A828  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8058A82C  4B AD 24 C9 */	bl fqrand
/* 8058A830  3C 60 80 65 */	lis r3, lit_585@ha /* 0x80649B7C@ha */
/* 8058A834  3C 80 80 65 */	lis r4, lit_584@ha /* 0x80649B78@ha */
/* 8058A838  38 A3 9B 7C */	addi r5, r3, lit_585@l /* 0x80649B7C@l */
/* 8058A83C  C0 04 9B 78 */	lfs f0, lit_584@l(r4)  /* 0x80649B78@l */
/* 8058A840  C0 45 00 00 */	lfs f2, 0(r5)
/* 8058A844  7F C3 F3 78 */	mr r3, r30
/* 8058A848  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058A84C  EF E0 08 2A */	fadds f31, f0, f1
/* 8058A850  4B E3 02 A1 */	bl sin_s
/* 8058A854  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 8058A858  3C 00 43 30 */	lis r0, 0x4330
/* 8058A85C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058A860  3C 60 80 65 */	lis r3, lit_572@ha /* 0x80649B64@ha */
/* 8058A864  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8058A868  EC 5F 00 72 */	fmuls f2, f31, f1
/* 8058A86C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8058A870  C8 23 9B 64 */	lfd f1, lit_572@l(r3)  /* 0x80649B64@l */
/* 8058A874  7F C3 F3 78 */	mr r3, r30
/* 8058A878  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8058A87C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058A880  EC 00 10 2A */	fadds f0, f0, f2
/* 8058A884  FC 00 00 1E */	fctiwz f0, f0
/* 8058A888  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8058A88C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A890  B0 1F 09 A2 */	sth r0, 0x9a2(r31)
/* 8058A894  4B E3 02 09 */	bl cos_s
/* 8058A898  A8 9F 09 A8 */	lha r4, 0x9a8(r31)
/* 8058A89C  3C 00 43 30 */	lis r0, 0x4330
/* 8058A8A0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8058A8A4  3C 60 80 65 */	lis r3, lit_572@ha /* 0x80649B64@ha */
/* 8058A8A8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8058A8AC  EC 5F 00 72 */	fmuls f2, f31, f1
/* 8058A8B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8058A8B4  C8 23 9B 64 */	lfd f1, lit_572@l(r3)  /* 0x80649B64@l */
/* 8058A8B8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8058A8BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058A8C0  EC 00 10 2A */	fadds f0, f0, f2
/* 8058A8C4  FC 00 00 1E */	fctiwz f0, f0
/* 8058A8C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8058A8CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058A8D0  B0 1F 09 A4 */	sth r0, 0x9a4(r31)
/* 8058A8D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8058A8D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8058A8DC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8058A8E0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8058A8E4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8058A8E8  7C 08 03 A6 */	mtlr r0
/* 8058A8EC  38 21 00 50 */	addi r1, r1, 0x50
/* 8058A8F0  4E 80 00 20 */	blr 
