lbl_8052EF84:
/* 8052EF84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8052EF88  7C 08 02 A6 */	mflr r0
/* 8052EF8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8052EF90  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8052EF94  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8052EF98  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8052EF9C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8052EFA0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8052EFA4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8052EFA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052EFAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052EFB0  C0 65 00 00 */	lfs f3, 0(r5)
/* 8052EFB4  7C 9E 23 78 */	mr r30, r4
/* 8052EFB8  C0 43 09 18 */	lfs f2, 0x918(r3)
/* 8052EFBC  3B E0 00 01 */	li r31, 1
/* 8052EFC0  C0 25 00 08 */	lfs f1, 8(r5)
/* 8052EFC4  C0 03 09 1C */	lfs f0, 0x91c(r3)
/* 8052EFC8  EF E3 10 28 */	fsubs f31, f3, f2
/* 8052EFCC  C3 A3 09 20 */	lfs f29, 0x920(r3)
/* 8052EFD0  EF C1 00 28 */	fsubs f30, f1, f0
/* 8052EFD4  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8052EFD8  EC 1D 07 72 */	fmuls f0, f29, f29
/* 8052EFDC  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8052EFE0  EC 22 08 2A */	fadds f1, f2, f1
/* 8052EFE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EFE8  40 81 00 40 */	ble lbl_8052F028
/* 8052EFEC  FC 20 F0 90 */	fmr f1, f30
/* 8052EFF0  FC 40 F8 90 */	fmr f2, f31
/* 8052EFF4  4B ED D0 0D */	bl atans_table
/* 8052EFF8  7C 7F 1B 78 */	mr r31, r3
/* 8052EFFC  4B E8 BA F5 */	bl sin_s
/* 8052F000  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8052F004  7F E3 FB 78 */	mr r3, r31
/* 8052F008  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052F00C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8052F010  4B E8 BA 8D */	bl cos_s
/* 8052F014  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8052F018  3B E0 00 00 */	li r31, 0
/* 8052F01C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8052F020  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052F024  48 00 00 14 */	b lbl_8052F038
lbl_8052F028:
/* 8052F028  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052F02C  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 8052F030  D0 01 00 08 */	stfs f0, 8(r1)
/* 8052F034  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8052F038:
/* 8052F038  28 1E 00 00 */	cmplwi r30, 0
/* 8052F03C  41 82 00 10 */	beq lbl_8052F04C
/* 8052F040  7F C3 F3 78 */	mr r3, r30
/* 8052F044  38 81 00 08 */	addi r4, r1, 8
/* 8052F048  4B E8 BE 75 */	bl xyz_t_move
lbl_8052F04C:
/* 8052F04C  7F E3 FB 78 */	mr r3, r31
/* 8052F050  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8052F054  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8052F058  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8052F05C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8052F060  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8052F064  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8052F068  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052F06C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8052F070  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052F074  7C 08 03 A6 */	mtlr r0
/* 8052F078  38 21 00 50 */	addi r1, r1, 0x50
/* 8052F07C  4E 80 00 20 */	blr 
