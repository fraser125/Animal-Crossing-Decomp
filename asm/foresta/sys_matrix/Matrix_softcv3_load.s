lbl_8040CFA8:
/* 8040CFA8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8040CFAC  7C 08 02 A6 */	mflr r0
/* 8040CFB0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8040CFB4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8040CFB8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8040CFBC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8040CFC0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8040CFC4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8040CFC8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8040CFCC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 8040CFD0  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 8040CFD4  DB 61 00 10 */	stfd f27, 0x10(r1)
/* 8040CFD8  F3 61 00 18 */	psq_st f27, 24(r1), 0, 0 /* qr0 */
/* 8040CFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040CFE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8040CFE4  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040CFE8  7C 7E 1B 78 */	mr r30, r3
/* 8040CFEC  FF 60 08 90 */	fmr f27, f1
/* 8040CFF0  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040CFF4  FF 80 10 90 */	fmr f28, f2
/* 8040CFF8  A8 7E 00 02 */	lha r3, 2(r30)
/* 8040CFFC  FF E0 18 90 */	fmr f31, f3
/* 8040D000  4B FA DA F1 */	bl sin_s
/* 8040D004  FF A0 08 90 */	fmr f29, f1
/* 8040D008  A8 7E 00 02 */	lha r3, 2(r30)
/* 8040D00C  4B FA DA 91 */	bl cos_s
/* 8040D010  FF C0 08 90 */	fmr f30, f1
/* 8040D014  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040D018  38 83 37 3C */	addi r4, r3, data_8064373C@l /* 0x8064373C@l */
/* 8040D01C  FC 00 E8 50 */	fneg f0, f29
/* 8040D020  C0 24 00 00 */	lfs f1, 0(r4)
/* 8040D024  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040D028  D3 DF 00 00 */	stfs f30, 0(r31)
/* 8040D02C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040D030  C0 03 37 40 */	lfs f0, lit_338@l(r3)  /* 0x80643740@l */
/* 8040D034  D3 7F 00 30 */	stfs f27, 0x30(r31)
/* 8040D038  D3 9F 00 34 */	stfs f28, 0x34(r31)
/* 8040D03C  D3 FF 00 38 */	stfs f31, 0x38(r31)
/* 8040D040  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8040D044  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8040D048  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040D04C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8040D050  A8 7E 00 00 */	lha r3, 0(r30)
/* 8040D054  7C 60 07 35 */	extsh. r0, r3
/* 8040D058  41 82 00 44 */	beq lbl_8040D09C
/* 8040D05C  4B FA DA 95 */	bl sin_s
/* 8040D060  FF E0 08 90 */	fmr f31, f1
/* 8040D064  A8 7E 00 00 */	lha r3, 0(r30)
/* 8040D068  4B FA DA 35 */	bl cos_s
/* 8040D06C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8040D070  EC 9E 07 F2 */	fmuls f4, f30, f31
/* 8040D074  EC 7D 00 72 */	fmuls f3, f29, f1
/* 8040D078  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040D07C  EC 5D 07 F2 */	fmuls f2, f29, f31
/* 8040D080  FC 00 F8 50 */	fneg f0, f31
/* 8040D084  D0 9F 00 18 */	stfs f4, 0x18(r31)
/* 8040D088  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8040D08C  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 8040D090  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040D094  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8040D098  48 00 00 1C */	b lbl_8040D0B4
lbl_8040D09C:
/* 8040D09C  D3 DF 00 28 */	stfs f30, 0x28(r31)
/* 8040D0A0  D3 BF 00 20 */	stfs f29, 0x20(r31)
/* 8040D0A4  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8040D0A8  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8040D0AC  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8040D0B0  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8040D0B4:
/* 8040D0B4  A8 7E 00 04 */	lha r3, 4(r30)
/* 8040D0B8  7C 60 07 35 */	extsh. r0, r3
/* 8040D0BC  41 82 00 84 */	beq lbl_8040D140
/* 8040D0C0  4B FA DA 31 */	bl sin_s
/* 8040D0C4  FF E0 08 90 */	fmr f31, f1
/* 8040D0C8  A8 7E 00 04 */	lha r3, 4(r30)
/* 8040D0CC  4B FA D9 D1 */	bl cos_s
/* 8040D0D0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8040D0D4  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 8040D0D8  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040D0DC  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040D0E0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040D0E4  FC 40 00 50 */	fneg f2, f0
/* 8040D0E8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040D0EC  EC 64 18 2A */	fadds f3, f4, f3
/* 8040D0F0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D0F4  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040D0F8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8040D0FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8040D100  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 8040D104  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040D108  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040D10C  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040D110  FC 40 00 50 */	fneg f2, f0
/* 8040D114  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040D118  EC 64 18 2A */	fadds f3, f4, f3
/* 8040D11C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D120  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040D124  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8040D128  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8040D12C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040D130  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D134  D0 5F 00 04 */	stfs f2, 4(r31)
/* 8040D138  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8040D13C  48 00 00 10 */	b lbl_8040D14C
lbl_8040D140:
/* 8040D140  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040D144  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040D148  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_8040D14C:
/* 8040D14C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8040D150  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8040D154  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8040D158  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8040D15C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8040D160  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8040D164  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 8040D168  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 8040D16C  E3 61 00 18 */	psq_l f27, 24(r1), 0, 0 /* qr0 */
/* 8040D170  CB 61 00 10 */	lfd f27, 0x10(r1)
/* 8040D174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040D178  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8040D17C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040D180  7C 08 03 A6 */	mtlr r0
/* 8040D184  38 21 00 60 */	addi r1, r1, 0x60
/* 8040D188  4E 80 00 20 */	blr 
