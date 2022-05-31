lbl_8038A1A8:
/* 8038A1A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038A1AC  7C 08 02 A6 */	mflr r0
/* 8038A1B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038A1B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8038A1B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8038A1BC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8038A1C0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8038A1C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A1C8  7C 7F 1B 78 */	mr r31, r3
/* 8038A1CC  FF C0 08 90 */	fmr f30, f1
/* 8038A1D0  48 07 E7 1D */	bl cosf_table
/* 8038A1D4  FF E0 08 90 */	fmr f31, f1
/* 8038A1D8  FC 20 F0 90 */	fmr f1, f30
/* 8038A1DC  48 07 E6 A1 */	bl sinf_table
/* 8038A1E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8038A1E4  C0 9F 00 04 */	lfs f4, 4(r31)
/* 8038A1E8  FC 00 10 50 */	fneg f0, f2
/* 8038A1EC  EC 62 07 F2 */	fmuls f3, f2, f31
/* 8038A1F0  EC 44 00 72 */	fmuls f2, f4, f1
/* 8038A1F4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8038A1F8  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8038A1FC  EC 43 10 2A */	fadds f2, f3, f2
/* 8038A200  EC 01 00 2A */	fadds f0, f1, f0
/* 8038A204  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8038A208  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8038A20C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8038A210  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8038A214  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8038A218  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8038A21C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038A220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A224  7C 08 03 A6 */	mtlr r0
/* 8038A228  38 21 00 30 */	addi r1, r1, 0x30
/* 8038A22C  4E 80 00 20 */	blr 
