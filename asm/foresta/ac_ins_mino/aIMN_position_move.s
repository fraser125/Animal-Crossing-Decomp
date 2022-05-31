lbl_8059DFE8:
/* 8059DFE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059DFEC  7C 08 02 A6 */	mflr r0
/* 8059DFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059DFF4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8059DFF8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8059DFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E000  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E004  7C 7E 1B 78 */	mr r30, r3
/* 8059E008  AB E3 00 34 */	lha r31, 0x34(r3)
/* 8059E00C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8059E010  C3 FE 02 44 */	lfs f31, 0x244(r30)
/* 8059E014  38 9E 00 28 */	addi r4, r30, 0x28
/* 8059E018  4B E1 CE A5 */	bl xyz_t_move
/* 8059E01C  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064A194@ha */
/* 8059E020  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 8059E024  C0 43 A1 94 */	lfs f2, lit_462@l(r3)  /* 0x8064A194@l */
/* 8059E028  38 7E 00 74 */	addi r3, r30, 0x74
/* 8059E02C  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 8059E030  EC 42 00 32 */	fmuls f2, f2, f0
/* 8059E034  4B E1 CC 35 */	bl chase_f
/* 8059E038  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064A194@ha */
/* 8059E03C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8059E040  38 83 A1 94 */	addi r4, r3, lit_462@l /* 0x8064A194@l */
/* 8059E044  7F E3 FB 78 */	mr r3, r31
/* 8059E048  C0 24 00 00 */	lfs f1, 0(r4)
/* 8059E04C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059E050  EF FF 00 2A */	fadds f31, f31, f0
/* 8059E054  D3 FE 02 44 */	stfs f31, 0x244(r30)
/* 8059E058  4B E1 CA 45 */	bl cos_s
/* 8059E05C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059E060  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8059E064  7F E3 FB 78 */	mr r3, r31
/* 8059E068  EC 00 08 2A */	fadds f0, f0, f1
/* 8059E06C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8059E070  4B E1 CA 81 */	bl sin_s
/* 8059E074  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059E078  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 8059E07C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059E080  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8059E084  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8059E088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059E08C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8059E090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E094  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E098  7C 08 03 A6 */	mtlr r0
/* 8059E09C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059E0A0  4E 80 00 20 */	blr 
