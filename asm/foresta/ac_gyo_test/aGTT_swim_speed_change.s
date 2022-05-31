lbl_805A3624:
/* 805A3624  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A3628  7C 08 02 A6 */	mflr r0
/* 805A362C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A3630  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805A3634  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805A3638  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805A363C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805A3640  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805A3644  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805A3648  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A364C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A3650  3C 80 80 65 */	lis r4, lit_554@ha /* 0x8064A3D8@ha */
/* 805A3654  FF C0 10 90 */	fmr f30, f2
/* 805A3658  C0 04 A3 D8 */	lfs f0, lit_554@l(r4)  /* 0x8064A3D8@l */
/* 805A365C  7C 7F 1B 78 */	mr r31, r3
/* 805A3660  FF A0 08 90 */	fmr f29, f1
/* 805A3664  38 7F 02 28 */	addi r3, r31, 0x228
/* 805A3668  FF E0 18 90 */	fmr f31, f3
/* 805A366C  EC 40 07 B2 */	fmuls f2, f0, f30
/* 805A3670  4B E1 75 F9 */	bl chase_f
/* 805A3674  3C 80 80 65 */	lis r4, lit_555@ha /* 0x8064A3DC@ha */
/* 805A3678  C0 3F 02 28 */	lfs f1, 0x228(r31)
/* 805A367C  C0 04 A3 DC */	lfs f0, lit_555@l(r4)  /* 0x8064A3DC@l */
/* 805A3680  7C 7E 1B 78 */	mr r30, r3
/* 805A3684  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 805A3688  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A368C  FC 00 00 1E */	fctiwz f0, f0
/* 805A3690  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A3694  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A3698  7C 03 07 34 */	extsh r3, r0
/* 805A369C  40 81 00 18 */	ble lbl_805A36B4
/* 805A36A0  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 805A36A4  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805A36A8  7C 04 02 14 */	add r0, r4, r0
/* 805A36AC  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A36B0  48 00 00 38 */	b lbl_805A36E8
lbl_805A36B4:
/* 805A36B4  FC 01 F0 00 */	fcmpu cr0, f1, f30
/* 805A36B8  40 82 00 30 */	bne lbl_805A36E8
/* 805A36BC  EC 1D F0 24 */	fdivs f0, f29, f30
/* 805A36C0  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A36C4  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805A36C8  7C 04 00 50 */	subf r0, r4, r0
/* 805A36CC  7C 04 07 34 */	extsh r4, r0
/* 805A36D0  FC 00 00 1E */	fctiwz f0, f0
/* 805A36D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A36D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A36DC  7C 00 07 34 */	extsh r0, r0
/* 805A36E0  7C 04 03 D6 */	divw r0, r4, r0
/* 805A36E4  B0 1F 02 30 */	sth r0, 0x230(r31)
lbl_805A36E8:
/* 805A36E8  FC 20 F8 90 */	fmr f1, f31
/* 805A36EC  4B FF FD F5 */	bl aGTT_speed_calc
/* 805A36F0  2C 1E 00 01 */	cmpwi r30, 1
/* 805A36F4  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805A36F8  40 82 00 0C */	bne lbl_805A3704
/* 805A36FC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A3700  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_805A3704:
/* 805A3704  7F C3 F3 78 */	mr r3, r30
/* 805A3708  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A370C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A3710  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805A3714  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805A3718  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805A371C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805A3720  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A3724  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A3728  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A372C  7C 08 03 A6 */	mtlr r0
/* 805A3730  38 21 00 50 */	addi r1, r1, 0x50
/* 805A3734  4E 80 00 20 */	blr 
