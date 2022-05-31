lbl_8040C65C:
/* 8040C65C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040C660  7C 08 02 A6 */	mflr r0
/* 8040C664  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040C668  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8040C66C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8040C670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040C674  93 C1 00 08 */	stw r30, 8(r1)
/* 8040C678  2C 04 00 01 */	cmpwi r4, 1
/* 8040C67C  7C 7E 1B 78 */	mr r30, r3
/* 8040C680  40 82 00 C8 */	bne lbl_8040C748
/* 8040C684  7F C0 07 35 */	extsh. r0, r30
/* 8040C688  41 82 01 48 */	beq lbl_8040C7D0
/* 8040C68C  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C690  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C694  4B FA E4 5D */	bl sin_s
/* 8040C698  FF E0 08 90 */	fmr f31, f1
/* 8040C69C  7F C3 F3 78 */	mr r3, r30
/* 8040C6A0  4B FA E3 FD */	bl cos_s
/* 8040C6A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8040C6A8  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040C6AC  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C6B0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C6B4  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040C6B8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C6BC  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040C6C0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C6C4  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040C6C8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040C6CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8040C6D0  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040C6D4  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C6D8  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C6DC  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040C6E0  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C6E4  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040C6E8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C6EC  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040C6F0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040C6F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8040C6F8  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040C6FC  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C700  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C704  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040C708  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C70C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040C710  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C714  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040C718  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040C71C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8040C720  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040C724  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040C728  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C72C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040C730  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040C734  EC 24 18 28 */	fsubs f1, f4, f3
/* 8040C738  EC 02 00 2A */	fadds f0, f2, f0
/* 8040C73C  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040C740  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040C744  48 00 00 8C */	b lbl_8040C7D0
lbl_8040C748:
/* 8040C748  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C74C  7F C0 07 35 */	extsh. r0, r30
/* 8040C750  83 E4 77 A4 */	lwz r31, Matrix_now@l(r4)  /* 0x811C77A4@l */
/* 8040C754  41 82 00 18 */	beq lbl_8040C76C
/* 8040C758  4B FA E3 99 */	bl sin_s
/* 8040C75C  FF E0 08 90 */	fmr f31, f1
/* 8040C760  7F C3 F3 78 */	mr r3, r30
/* 8040C764  4B FA E3 39 */	bl cos_s
/* 8040C768  48 00 00 14 */	b lbl_8040C77C
lbl_8040C76C:
/* 8040C76C  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C770  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C774  C3 E4 37 3C */	lfs f31, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C778  C0 23 37 40 */	lfs f1, lit_338@l(r3)  /* 0x80643740@l */
lbl_8040C77C:
/* 8040C77C  3C 80 80 64 */	lis r4, data_8064373C@ha /* 0x8064373C@ha */
/* 8040C780  3C 60 80 64 */	lis r3, lit_338@ha /* 0x80643740@ha */
/* 8040C784  C0 64 37 3C */	lfs f3, data_8064373C@l(r4)  /* 0x8064373C@l */
/* 8040C788  FC 00 F8 50 */	fneg f0, f31
/* 8040C78C  C0 43 37 40 */	lfs f2, lit_338@l(r3)  /* 0x80643740@l */
/* 8040C790  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040C794  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8040C798  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8040C79C  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8040C7A0  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8040C7A4  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8040C7A8  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 8040C7AC  D0 7F 00 30 */	stfs f3, 0x30(r31)
/* 8040C7B0  D0 7F 00 34 */	stfs f3, 0x34(r31)
/* 8040C7B4  D0 7F 00 38 */	stfs f3, 0x38(r31)
/* 8040C7B8  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 8040C7BC  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 8040C7C0  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8040C7C4  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8040C7C8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040C7CC  D3 FF 00 20 */	stfs f31, 0x20(r31)
lbl_8040C7D0:
/* 8040C7D0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8040C7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040C7D8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8040C7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040C7E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040C7E4  7C 08 03 A6 */	mtlr r0
/* 8040C7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040C7EC  4E 80 00 20 */	blr 
