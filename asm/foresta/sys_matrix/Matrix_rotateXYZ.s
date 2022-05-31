lbl_8040C994:
/* 8040C994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040C998  7C 08 02 A6 */	mflr r0
/* 8040C99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040C9A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8040C9A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8040C9A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8040C9AC  4B C8 E5 25 */	bl func_8009AED0
/* 8040C9B0  3C E0 81 1C */	lis r7, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C9B4  2C 06 00 01 */	cmpwi r6, 1
/* 8040C9B8  83 E7 77 A4 */	lwz r31, Matrix_now@l(r7)  /* 0x811C77A4@l */
/* 8040C9BC  7C 7C 1B 78 */	mr r28, r3
/* 8040C9C0  7C 9D 23 78 */	mr r29, r4
/* 8040C9C4  7C BE 2B 78 */	mr r30, r5
/* 8040C9C8  40 82 02 54 */	bne lbl_8040CC1C
/* 8040C9CC  7F C3 F3 78 */	mr r3, r30
/* 8040C9D0  4B FA E1 21 */	bl sin_s
/* 8040C9D4  FF E0 08 90 */	fmr f31, f1
/* 8040C9D8  7F C3 F3 78 */	mr r3, r30
/* 8040C9DC  4B FA E0 C1 */	bl cos_s
/* 8040C9E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8040C9E4  7F A0 07 35 */	extsh. r0, r29
/* 8040C9E8  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 8040C9EC  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040C9F0  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040C9F4  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040C9F8  FC 40 00 50 */	fneg f2, f0
/* 8040C9FC  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CA00  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CA04  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CA08  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040CA0C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8040CA10  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8040CA14  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 8040CA18  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CA1C  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CA20  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CA24  FC 40 00 50 */	fneg f2, f0
/* 8040CA28  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CA2C  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CA30  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CA34  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040CA38  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8040CA3C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8040CA40  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 8040CA44  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CA48  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CA4C  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CA50  FC 40 00 50 */	fneg f2, f0
/* 8040CA54  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CA58  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CA5C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CA60  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040CA64  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8040CA68  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8040CA6C  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 8040CA70  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CA74  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CA78  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CA7C  FC 40 00 50 */	fneg f2, f0
/* 8040CA80  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CA84  EC 24 18 2A */	fadds f1, f4, f3
/* 8040CA88  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CA8C  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040CA90  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8040CA94  41 82 00 B8 */	beq lbl_8040CB4C
/* 8040CA98  7F A3 EB 78 */	mr r3, r29
/* 8040CA9C  4B FA E0 55 */	bl sin_s
/* 8040CAA0  FF E0 08 90 */	fmr f31, f1
/* 8040CAA4  7F A3 EB 78 */	mr r3, r29
/* 8040CAA8  4B FA DF F5 */	bl cos_s
/* 8040CAAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8040CAB0  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040CAB4  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CAB8  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CABC  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CAC0  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CAC4  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CAC8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CACC  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040CAD0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040CAD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8040CAD8  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040CADC  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CAE0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CAE4  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CAE8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CAEC  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CAF0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CAF4  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040CAF8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040CAFC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8040CB00  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040CB04  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CB08  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CB0C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CB10  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CB14  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CB18  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CB1C  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040CB20  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040CB24  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8040CB28  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040CB2C  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CB30  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CB34  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CB38  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CB3C  EC 24 18 28 */	fsubs f1, f4, f3
/* 8040CB40  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CB44  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040CB48  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8040CB4C:
/* 8040CB4C  7F 80 07 35 */	extsh. r0, r28
/* 8040CB50  41 82 00 E0 */	beq lbl_8040CC30
/* 8040CB54  7F 83 E3 78 */	mr r3, r28
/* 8040CB58  4B FA DF 99 */	bl sin_s
/* 8040CB5C  FF E0 08 90 */	fmr f31, f1
/* 8040CB60  7F 83 E3 78 */	mr r3, r28
/* 8040CB64  4B FA DF 39 */	bl cos_s
/* 8040CB68  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8040CB6C  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040CB70  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CB74  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CB78  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CB7C  FC 40 00 50 */	fneg f2, f0
/* 8040CB80  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CB84  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CB88  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CB8C  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8040CB90  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040CB94  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8040CB98  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040CB9C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CBA0  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CBA4  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CBA8  FC 40 00 50 */	fneg f2, f0
/* 8040CBAC  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CBB0  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CBB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CBB8  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 8040CBBC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040CBC0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8040CBC4  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040CBC8  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CBCC  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CBD0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CBD4  FC 40 00 50 */	fneg f2, f0
/* 8040CBD8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CBDC  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CBE0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CBE4  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8040CBE8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040CBEC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8040CBF0  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040CBF4  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CBF8  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CBFC  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CC00  FC 40 00 50 */	fneg f2, f0
/* 8040CC04  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CC08  EC 24 18 2A */	fadds f1, f4, f3
/* 8040CC0C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CC10  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8040CC14  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040CC18  48 00 00 18 */	b lbl_8040CC30
lbl_8040CC1C:
/* 8040CC1C  7F E3 FB 78 */	mr r3, r31
/* 8040CC20  7F 84 E3 78 */	mr r4, r28
/* 8040CC24  7F A5 EB 78 */	mr r5, r29
/* 8040CC28  7F C6 F3 78 */	mr r6, r30
/* 8040CC2C  4B FE 4C 91 */	bl Skin_Matrix_SetRotateXyz_s
lbl_8040CC30:
/* 8040CC30  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8040CC34  39 61 00 20 */	addi r11, r1, 0x20
/* 8040CC38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8040CC3C  4B C8 E2 E1 */	bl func_8009AF1C
/* 8040CC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040CC44  7C 08 03 A6 */	mtlr r0
/* 8040CC48  38 21 00 30 */	addi r1, r1, 0x30
/* 8040CC4C  4E 80 00 20 */	blr 
