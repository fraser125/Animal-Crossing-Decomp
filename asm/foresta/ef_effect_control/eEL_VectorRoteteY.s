lbl_804CDEA8:
/* 804CDEA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CDEAC  7C 08 02 A6 */	mflr r0
/* 804CDEB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CDEB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CDEB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CDEBC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804CDEC0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804CDEC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CDEC8  7C 7F 1B 78 */	mr r31, r3
/* 804CDECC  FF C0 08 90 */	fmr f30, f1
/* 804CDED0  80 83 00 00 */	lwz r4, 0(r3)
/* 804CDED4  80 63 00 04 */	lwz r3, 4(r3)
/* 804CDED8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804CDEDC  90 81 00 08 */	stw r4, 8(r1)
/* 804CDEE0  90 61 00 0C */	stw r3, 0xc(r1)
/* 804CDEE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CDEE8  4B F3 AA 05 */	bl cosf_table
/* 804CDEEC  FF E0 08 90 */	fmr f31, f1
/* 804CDEF0  FC 20 F0 90 */	fmr f1, f30
/* 804CDEF4  4B F3 A9 89 */	bl sinf_table
/* 804CDEF8  C0 41 00 08 */	lfs f2, 8(r1)
/* 804CDEFC  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 804CDF00  FC 00 10 50 */	fneg f0, f2
/* 804CDF04  EC 62 07 F2 */	fmuls f3, f2, f31
/* 804CDF08  EC 44 00 72 */	fmuls f2, f4, f1
/* 804CDF0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 804CDF10  EC 04 07 F2 */	fmuls f0, f4, f31
/* 804CDF14  EC 43 10 2A */	fadds f2, f3, f2
/* 804CDF18  EC 01 00 2A */	fadds f0, f1, f0
/* 804CDF1C  D0 5F 00 00 */	stfs f2, 0(r31)
/* 804CDF20  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804CDF24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CDF28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CDF2C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804CDF30  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804CDF34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CDF38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CDF3C  7C 08 03 A6 */	mtlr r0
/* 804CDF40  38 21 00 40 */	addi r1, r1, 0x40
/* 804CDF44  4E 80 00 20 */	blr 
