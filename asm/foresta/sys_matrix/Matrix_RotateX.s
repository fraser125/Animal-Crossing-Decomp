lbl_8040C4B8:
/* 8040C4B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040C4BC  7C 08 02 A6 */	mflr r0
/* 8040C4C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040C4C4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8040C4C8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8040C4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040C4D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8040C4D4  2C 04 00 01 */	cmpwi r4, 1
/* 8040C4D8  7C 7E 1B 78 */	mr r30, r3
/* 8040C4DC  40 82 00 D8 */	bne lbl_8040C5B4
/* 8040C4E0  7F C0 07 35 */	extsh. r0, r30
/* 8040C4E4  41 82 01 58 */	beq lbl_8040C63C
/* 8040C4E8  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C4EC  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C4F0  4B FA E6 01 */	bl sin_s
/* 8040C4F4  FF E0 08 90 */	fmr f31, f1
/* 8040C4F8  7F C3 F3 78 */	mr r3, r30
/* 8040C4FC  4B FA E5 A1 */	bl cos_s
/* 8040C500  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8040C504  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040C508  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C50C  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C510  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C514  FC 40 00 50 */	fneg f2, f0
/* 8040C518  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C51C  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C520  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C524  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8040C528  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040C52C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8040C530  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040C534  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C538  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C53C  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C540  FC 40 00 50 */	fneg f2, f0
/* 8040C544  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C548  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C54C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C550  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 8040C554  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040C558  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8040C55C  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040C560  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C564  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C568  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C56C  FC 40 00 50 */	fneg f2, f0
/* 8040C570  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C574  EC 64 18 2A */	fadds f3, f4, f3
/* 8040C578  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C57C  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8040C580  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040C584  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8040C588  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040C58C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C590  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C594  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C598  FC 40 00 50 */	fneg f2, f0
/* 8040C59C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C5A0  EC 24 18 2A */	fadds f1, f4, f3
/* 8040C5A4  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C5A8  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8040C5AC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040C5B0  48 00 00 8C */	b lbl_8040C63C
lbl_8040C5B4:
/* 8040C5B4  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C5B8  7F C0 07 35 */	extsh. r0, r30
/* 8040C5BC  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C5C0  41 82 00 18 */	beq lbl_8040C5D8
/* 8040C5C4  4B FA E5 2D */	bl sin_s
/* 8040C5C8  FF E0 08 90 */	fmr f31, f1
/* 8040C5CC  7F C3 F3 78 */	mr r3, r30
/* 8040C5D0  4B FA E4 CD */	bl cos_s
/* 8040C5D4  48 00 00 14 */	b lbl_8040C5E8
lbl_8040C5D8:
/* 8040C5D8  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C5DC  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C5E0  C3 E4 37 3C */	lfs f31, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C5E4  C0 23 37 40 */	lfs f1, lit_338@l(r3)  /* 0x80643740@l */
lbl_8040C5E8:
/* 8040C5E8  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C5EC  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C5F0  C0 64 37 3C */	lfs f3, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C5F4  FC 00 F8 50 */	fneg f0, f31
/* 8040C5F8  C0 43 37 40 */	lfs f2, lit_338@l(r3)  /* 0x80643740@l */
/* 8040C5FC  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040C600  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040C604  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8040C608  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8040C60C  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8040C610  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8040C614  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 8040C618  D0 7F 00 30 */	stfs f3, 0x30(r31)
/* 8040C61C  D0 7F 00 34 */	stfs f3, 0x34(r31)
/* 8040C620  D0 7F 00 38 */	stfs f3, 0x38(r31)
/* 8040C624  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8040C628  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 8040C62C  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8040C630  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8040C634  D3 FF 00 18 */	stfs f31, 0x18(r31)
/* 8040C638  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8040C63C:
/* 8040C63C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8040C640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040C644  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8040C648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040C64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040C650  7C 08 03 A6 */	mtlr r0
/* 8040C654  38 21 00 20 */	addi r1, r1, 0x20
/* 8040C658  4E 80 00 20 */	blr 
