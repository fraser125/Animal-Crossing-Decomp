lbl_8040C7F0:
/* 8040C7F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040C7F4  7C 08 02 A6 */	mflr r0
/* 8040C7F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040C7FC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8040C800  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8040C804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040C808  93 C1 00 08 */	stw r30, 8(r1)
/* 8040C80C  2C 04 00 01 */	cmpwi r4, 1
/* 8040C810  7C 7E 1B 78 */	mr r30, r3
/* 8040C814  40 82 00 D8 */	bne lbl_8040C8EC
/* 8040C818  7F C0 07 35 */	extsh. r0, r30
/* 8040C81C  41 82 01 58 */	beq lbl_8040C974
/* 8040C820  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C824  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C828  4B FA E2 C9 */	bl sin_s
/* 8040C82C  FF E0 08 90 */	fmr f31, f1
/* 8040C830  7F C3 F3 78 */	mr r3, r30
/* 8040C834  4B FA E2 69 */	bl cos_s
/* 8040C838  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8040C83C  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 8040C840  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C844  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C848  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C84C  FC 40 00 50 */	fneg f2, f0
/* 8040C850  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C854  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C858  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C85C  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040C860  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8040C864  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8040C868  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 8040C86C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C870  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C874  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C878  FC 40 00 50 */	fneg f2, f0
/* 8040C87C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C880  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C884  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C888  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040C88C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8040C890  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8040C894  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 8040C898  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C89C  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C8A0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C8A4  FC 40 00 50 */	fneg f2, f0
/* 8040C8A8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C8AC  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C8B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C8B4  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040C8B8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8040C8BC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8040C8C0  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 8040C8C4  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C8C8  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C8CC  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C8D0  FC 40 00 50 */	fneg f2, f0
/* 8040C8D4  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C8D8  EC 24 18 2A */	fadds f1, f4, f3
/* 8040C8DC  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C8E0  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040C8E4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8040C8E8  48 00 00 8C */	b lbl_8040C974
lbl_8040C8EC:
/* 8040C8EC  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C8F0  7F C0 07 35 */	extsh. r0, r30
/* 8040C8F4  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C8F8  41 82 00 18 */	beq lbl_8040C910
/* 8040C8FC  4B FA E1 F5 */	bl sin_s
/* 8040C900  FF E0 08 90 */	fmr f31, f1
/* 8040C904  7F C3 F3 78 */	mr r3, r30
/* 8040C908  4B FA E1 95 */	bl cos_s
/* 8040C90C  48 00 00 14 */	b lbl_8040C920
lbl_8040C910:
/* 8040C910  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C914  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C918  C3 E4 37 3C */	lfs f31, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C91C  C0 23 37 40 */	lfs f1, lit_338@l(r3)  /* 0x80643740@l */
lbl_8040C920:
/* 8040C920  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C924  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C928  C0 64 37 3C */	lfs f3, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C92C  FC 00 F8 50 */	fneg f0, f31
/* 8040C930  C0 43 37 40 */	lfs f2, lit_338@l(r3)  /* 0x80643740@l */
/* 8040C934  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040C938  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8040C93C  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8040C940  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8040C944  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8040C948  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8040C94C  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 8040C950  D0 7F 00 30 */	stfs f3, 0x30(r31)
/* 8040C954  D0 7F 00 34 */	stfs f3, 0x34(r31)
/* 8040C958  D0 7F 00 38 */	stfs f3, 0x38(r31)
/* 8040C95C  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 8040C960  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 8040C964  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8040C968  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8040C96C  D3 FF 00 04 */	stfs f31, 4(r31)
/* 8040C970  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8040C974:
/* 8040C974  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8040C978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040C97C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8040C980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040C984  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040C988  7C 08 03 A6 */	mtlr r0
/* 8040C98C  38 21 00 20 */	addi r1, r1, 0x20
/* 8040C990  4E 80 00 20 */	blr 
