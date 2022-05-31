lbl_805C0094:
/* 805C0094  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C0098  7C 08 02 A6 */	mflr r0
/* 805C009C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C00A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805C00A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805C00A8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805C00AC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805C00B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C00B4  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064AC44@ha */
/* 805C00B8  3C A0 80 65 */	lis r5, lit_547@ha /* 0x8064AC7C@ha */
/* 805C00BC  C0 24 AC 44 */	lfs f1, lit_437@l(r4)  /* 0x8064AC44@l */
/* 805C00C0  3C 80 80 65 */	lis r4, lit_548@ha /* 0x8064AC80@ha */
/* 805C00C4  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 805C00C8  7C 7F 1B 78 */	mr r31, r3
/* 805C00CC  C3 E3 02 C8 */	lfs f31, 0x2c8(r3)
/* 805C00D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 805C00D4  C0 65 AC 7C */	lfs f3, lit_547@l(r5)  /* 0x8064AC7C@l */
/* 805C00D8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 805C00DC  C0 04 AC 80 */	lfs f0, lit_548@l(r4)  /* 0x8064AC80@l */
/* 805C00E0  EF C3 10 2A */	fadds f30, f3, f2
/* 805C00E4  EF FF 08 2A */	fadds f31, f31, f1
/* 805C00E8  EC 3F F0 28 */	fsubs f1, f31, f30
/* 805C00EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C00F0  40 81 00 20 */	ble lbl_805C0110
/* 805C00F4  4B FF FF 71 */	bl calc_speed2
/* 805C00F8  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064AC80@ha */
/* 805C00FC  D0 3F 02 CC */	stfs f1, 0x2cc(r31)
/* 805C0100  C0 03 AC 80 */	lfs f0, lit_548@l(r3)  /* 0x8064AC80@l */
/* 805C0104  EC 00 F0 2A */	fadds f0, f0, f30
/* 805C0108  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805C010C  48 00 00 44 */	b lbl_805C0150
lbl_805C0110:
/* 805C0110  3C 80 80 65 */	lis r4, lit_438@ha /* 0x8064AC48@ha */
/* 805C0114  C4 04 AC 48 */	lfsu f0, lit_438@l(r4)  /* 0x8064AC48@l */
/* 805C0118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C011C  4C 40 13 82 */	cror 2, 0, 2
/* 805C0120  40 82 00 14 */	bne lbl_805C0134
/* 805C0124  4B FF FE E9 */	bl calc_speed1
/* 805C0128  D0 3F 02 CC */	stfs f1, 0x2cc(r31)
/* 805C012C  D3 DF 02 C8 */	stfs f30, 0x2c8(r31)
/* 805C0130  48 00 00 20 */	b lbl_805C0150
lbl_805C0134:
/* 805C0134  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064AC84@ha */
/* 805C0138  C0 24 00 00 */	lfs f1, 0(r4)
/* 805C013C  38 83 AC 84 */	addi r4, r3, lit_549@l /* 0x8064AC84@l */
/* 805C0140  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805C0144  C0 44 00 00 */	lfs f2, 0(r4)
/* 805C0148  4B DF AB 21 */	bl chase_f
/* 805C014C  D3 FF 02 C8 */	stfs f31, 0x2c8(r31)
lbl_805C0150:
/* 805C0150  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805C0154  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805C0158  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805C015C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805C0160  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C0168  7C 08 03 A6 */	mtlr r0
/* 805C016C  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0170  4E 80 00 20 */	blr 
