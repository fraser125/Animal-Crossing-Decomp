lbl_805C06A8:
/* 805C06A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C06AC  7C 08 02 A6 */	mflr r0
/* 805C06B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C06B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805C06B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805C06BC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805C06C0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805C06C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C06C8  7C 7F 1B 78 */	mr r31, r3
/* 805C06CC  3C 80 80 65 */	lis r4, lit_463@ha /* 0x8064ACA0@ha */
/* 805C06D0  C0 24 AC A0 */	lfs f1, lit_463@l(r4)  /* 0x8064ACA0@l */
/* 805C06D4  3C 80 80 65 */	lis r4, lit_486@ha /* 0x8064ACA8@ha */
/* 805C06D8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805C06DC  38 A4 AC A8 */	addi r5, r4, lit_486@l /* 0x8064ACA8@l */
/* 805C06E0  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 805C06E4  3C 80 80 65 */	lis r4, lit_487@ha /* 0x8064ACAC@ha */
/* 805C06E8  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C06EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 805C06F0  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 805C06F4  38 A4 AC AC */	addi r5, r4, lit_487@l /* 0x8064ACAC@l */
/* 805C06F8  C0 43 02 C8 */	lfs f2, 0x2c8(r3)
/* 805C06FC  EF FF 08 2A */	fadds f31, f31, f1
/* 805C0700  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C0704  EF C3 10 2A */	fadds f30, f3, f2
/* 805C0708  EC 3F F0 28 */	fsubs f1, f31, f30
/* 805C070C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0710  4C 40 13 82 */	cror 2, 0, 2
/* 805C0714  40 82 00 18 */	bne lbl_805C072C
/* 805C0718  7F E4 FB 78 */	mr r4, r31
/* 805C071C  4B FF FF 05 */	bl calc_speed1
/* 805C0720  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805C0724  D3 DF 00 28 */	stfs f30, 0x28(r31)
/* 805C0728  48 00 00 4C */	b lbl_805C0774
lbl_805C072C:
/* 805C072C  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064ACB0@ha */
/* 805C0730  C0 04 AC B0 */	lfs f0, lit_488@l(r4)  /* 0x8064ACB0@l */
/* 805C0734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0738  40 81 00 20 */	ble lbl_805C0758
/* 805C073C  4B FF FF 3D */	bl calc_speed2
/* 805C0740  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064ACB0@ha */
/* 805C0744  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805C0748  C0 03 AC B0 */	lfs f0, lit_488@l(r3)  /* 0x8064ACB0@l */
/* 805C074C  EC 00 F0 2A */	fadds f0, f0, f30
/* 805C0750  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805C0754  48 00 00 20 */	b lbl_805C0774
lbl_805C0758:
/* 805C0758  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064ACB4@ha */
/* 805C075C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C0760  38 83 AC B4 */	addi r4, r3, lit_489@l /* 0x8064ACB4@l */
/* 805C0764  38 7F 00 74 */	addi r3, r31, 0x74
/* 805C0768  C0 44 00 00 */	lfs f2, 0(r4)
/* 805C076C  4B DF A4 FD */	bl chase_f
/* 805C0770  D3 FF 00 28 */	stfs f31, 0x28(r31)
lbl_805C0774:
/* 805C0774  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805C0778  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805C077C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805C0780  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805C0784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C078C  7C 08 03 A6 */	mtlr r0
/* 805C0790  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0794  4E 80 00 20 */	blr 
