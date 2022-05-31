lbl_804AF500:
/* 804AF500  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804AF504  7C 08 02 A6 */	mflr r0
/* 804AF508  90 01 00 44 */	stw r0, 0x44(r1)
/* 804AF50C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804AF510  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804AF514  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804AF518  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804AF51C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AF520  7C 7F 1B 78 */	mr r31, r3
/* 804AF524  3C 80 80 64 */	lis r4, lit_896@ha /* 0x80645FB0@ha */
/* 804AF528  C0 64 5F B0 */	lfs f3, lit_896@l(r4)  /* 0x80645FB0@l */
/* 804AF52C  3C 60 80 64 */	lis r3, lit_955@ha /* 0x80645FB8@ha */
/* 804AF530  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 804AF534  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 804AF538  EC 43 00 72 */	fmuls f2, f3, f1
/* 804AF53C  C0 23 5F B8 */	lfs f1, lit_955@l(r3)  /* 0x80645FB8@l */
/* 804AF540  EC 03 00 32 */	fmuls f0, f3, f0
/* 804AF544  A8 7F 02 86 */	lha r3, 0x286(r31)
/* 804AF548  EF E2 08 24 */	fdivs f31, f2, f1
/* 804AF54C  EF C0 08 24 */	fdivs f30, f0, f1
/* 804AF550  4B F0 B5 A1 */	bl sin_s
/* 804AF554  3C 60 80 64 */	lis r3, lit_961@ha /* 0x80645FC0@ha */
/* 804AF558  EC 5F 00 72 */	fmuls f2, f31, f1
/* 804AF55C  C0 63 5F C0 */	lfs f3, lit_961@l(r3)  /* 0x80645FC0@l */
/* 804AF560  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804AF564  3C 80 80 64 */	lis r4, lit_960@ha /* 0x80645FBC@ha */
/* 804AF568  EC 23 10 2A */	fadds f1, f3, f2
/* 804AF56C  C0 44 5F BC */	lfs f2, lit_960@l(r4)  /* 0x80645FBC@l */
/* 804AF570  EC 03 00 2A */	fadds f0, f3, f0
/* 804AF574  EC 22 00 72 */	fmuls f1, f2, f1
/* 804AF578  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AF57C  FC 20 08 1E */	fctiwz f1, f1
/* 804AF580  FC 00 00 1E */	fctiwz f0, f0
/* 804AF584  D8 21 00 08 */	stfd f1, 8(r1)
/* 804AF588  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804AF58C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AF590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF594  B0 7F 02 80 */	sth r3, 0x280(r31)
/* 804AF598  B0 1F 02 84 */	sth r0, 0x284(r31)
/* 804AF59C  A8 7F 02 86 */	lha r3, 0x286(r31)
/* 804AF5A0  38 03 04 00 */	addi r0, r3, 0x400
/* 804AF5A4  B0 1F 02 86 */	sth r0, 0x286(r31)
/* 804AF5A8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804AF5AC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804AF5B0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804AF5B4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804AF5B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AF5BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AF5C0  7C 08 03 A6 */	mtlr r0
/* 804AF5C4  38 21 00 40 */	addi r1, r1, 0x40
/* 804AF5C8  4E 80 00 20 */	blr 
