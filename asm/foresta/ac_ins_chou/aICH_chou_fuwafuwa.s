lbl_80598D2C:
/* 80598D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80598D30  7C 08 02 A6 */	mflr r0
/* 80598D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80598D38  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80598D3C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80598D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598D44  7C 7F 1B 78 */	mr r31, r3
/* 80598D48  80 03 02 30 */	lwz r0, 0x230(r3)
/* 80598D4C  7C 03 07 34 */	extsh r3, r0
/* 80598D50  4B E2 1D A1 */	bl sin_s
/* 80598D54  80 7F 02 30 */	lwz r3, 0x230(r31)
/* 80598D58  3C 80 80 65 */	lis r4, lit_576@ha /* 0x80649EF4@ha */
/* 80598D5C  C0 04 9E F4 */	lfs f0, lit_576@l(r4)  /* 0x80649EF4@l */
/* 80598D60  38 03 08 00 */	addi r0, r3, 0x800
/* 80598D64  90 1F 02 30 */	stw r0, 0x230(r31)
/* 80598D68  EF E0 00 72 */	fmuls f31, f0, f1
/* 80598D6C  80 1F 02 30 */	lwz r0, 0x230(r31)
/* 80598D70  7C 03 07 34 */	extsh r3, r0
/* 80598D74  4B E2 1D 7D */	bl sin_s
/* 80598D78  3C 60 80 65 */	lis r3, lit_576@ha /* 0x80649EF4@ha */
/* 80598D7C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80598D80  C0 03 9E F4 */	lfs f0, lit_576@l(r3)  /* 0x80649EF4@l */
/* 80598D84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80598D88  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80598D8C  EC 02 00 2A */	fadds f0, f2, f0
/* 80598D90  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 80598D94  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80598D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80598D9C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80598DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598DA4  7C 08 03 A6 */	mtlr r0
/* 80598DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80598DAC  4E 80 00 20 */	blr 
