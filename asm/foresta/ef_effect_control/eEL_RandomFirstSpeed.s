lbl_804CDF48:
/* 804CDF48  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CDF4C  7C 08 02 A6 */	mflr r0
/* 804CDF50  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CDF54  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804CDF58  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804CDF5C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804CDF60  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804CDF64  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 804CDF68  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 804CDF6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804CDF70  3C A0 80 64 */	lis r5, data_8064627C@ha /* 0x8064627C@ha */
/* 804CDF74  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80646288@ha */
/* 804CDF78  38 A5 62 7C */	addi r5, r5, data_8064627C@l /* 0x8064627C@l */
/* 804CDF7C  C3 E4 62 88 */	lfs f31, lit_445@l(r4)  /* 0x80646288@l */
/* 804CDF80  FF A0 10 90 */	fmr f29, f2
/* 804CDF84  80 05 00 04 */	lwz r0, 4(r5)
/* 804CDF88  80 85 00 00 */	lwz r4, 0(r5)
/* 804CDF8C  FF C0 18 90 */	fmr f30, f3
/* 804CDF90  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CDF94  7C 7F 1B 78 */	mr r31, r3
/* 804CDF98  80 05 00 08 */	lwz r0, 8(r5)
/* 804CDF9C  FC 1F E8 00 */	fcmpu cr0, f31, f29
/* 804CDFA0  90 81 00 08 */	stw r4, 8(r1)
/* 804CDFA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CDFA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804CDFAC  41 82 00 34 */	beq lbl_804CDFE0
/* 804CDFB0  4B B8 ED 45 */	bl fqrand
/* 804CDFB4  3C 80 80 64 */	lis r4, lit_446@ha /* 0x8064628C@ha */
/* 804CDFB8  EC 5D 00 72 */	fmuls f2, f29, f1
/* 804CDFBC  C0 24 62 8C */	lfs f1, lit_446@l(r4)  /* 0x8064628C@l */
/* 804CDFC0  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80646290@ha */
/* 804CDFC4  C0 03 62 90 */	lfs f0, lit_447@l(r3)  /* 0x80646290@l */
/* 804CDFC8  38 61 00 08 */	addi r3, r1, 8
/* 804CDFCC  EC 21 07 72 */	fmuls f1, f1, f29
/* 804CDFD0  EC 22 08 28 */	fsubs f1, f2, f1
/* 804CDFD4  FF E0 08 90 */	fmr f31, f1
/* 804CDFD8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804CDFDC  4B F3 DF 0D */	bl sMath_RotateZ
lbl_804CDFE0:
/* 804CDFE0  3C 60 80 64 */	lis r3, lit_445@ha /* 0x80646288@ha */
/* 804CDFE4  C0 03 62 88 */	lfs f0, lit_445@l(r3)  /* 0x80646288@l */
/* 804CDFE8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 804CDFEC  41 82 00 30 */	beq lbl_804CE01C
/* 804CDFF0  4B B8 ED 05 */	bl fqrand
/* 804CDFF4  3C 80 80 64 */	lis r4, lit_446@ha /* 0x8064628C@ha */
/* 804CDFF8  EC 5E 00 72 */	fmuls f2, f30, f1
/* 804CDFFC  C0 24 62 8C */	lfs f1, lit_446@l(r4)  /* 0x8064628C@l */
/* 804CE000  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80646290@ha */
/* 804CE004  C0 03 62 90 */	lfs f0, lit_447@l(r3)  /* 0x80646290@l */
/* 804CE008  38 61 00 08 */	addi r3, r1, 8
/* 804CE00C  EC 21 07 B2 */	fmuls f1, f1, f30
/* 804CE010  EC 22 08 28 */	fsubs f1, f2, f1
/* 804CE014  EC 20 00 72 */	fmuls f1, f0, f1
/* 804CE018  4B F3 DE 35 */	bl sMath_RotateX
lbl_804CE01C:
/* 804CE01C  28 1F 00 00 */	cmplwi r31, 0
/* 804CE020  41 82 00 1C */	beq lbl_804CE03C
/* 804CE024  80 61 00 08 */	lwz r3, 8(r1)
/* 804CE028  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CE02C  90 7F 00 00 */	stw r3, 0(r31)
/* 804CE030  90 1F 00 04 */	stw r0, 4(r31)
/* 804CE034  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804CE038  90 1F 00 08 */	stw r0, 8(r31)
lbl_804CE03C:
/* 804CE03C  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80646290@ha */
/* 804CE040  3C 80 80 64 */	lis r4, lit_448@ha /* 0x80646294@ha */
/* 804CE044  C0 03 62 90 */	lfs f0, lit_447@l(r3)  /* 0x80646290@l */
/* 804CE048  C0 24 62 94 */	lfs f1, lit_448@l(r4)  /* 0x80646294@l */
/* 804CE04C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804CE050  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CE054  FC 00 00 1E */	fctiwz f0, f0
/* 804CE058  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804CE05C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804CE060  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804CE064  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804CE068  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804CE06C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804CE070  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 804CE074  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 804CE078  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CE07C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804CE080  7C 08 03 A6 */	mtlr r0
/* 804CE084  38 21 00 60 */	addi r1, r1, 0x60
/* 804CE088  4E 80 00 20 */	blr 
