lbl_804A92C8:
/* 804A92C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A92CC  7C 08 02 A6 */	mflr r0
/* 804A92D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A92D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A92D8  4B BF 1B F9 */	bl func_8009AED0
/* 804A92DC  7C 7C 1B 78 */	mr r28, r3
/* 804A92E0  7F 9F E3 78 */	mr r31, r28
/* 804A92E4  80 9C 01 C0 */	lwz r4, 0x1c0(r28)
/* 804A92E8  88 1C 01 D0 */	lbz r0, 0x1d0(r28)
/* 804A92EC  7C 04 00 00 */	cmpw r4, r0
/* 804A92F0  41 82 00 0C */	beq lbl_804A92FC
/* 804A92F4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 804A92F8  4B FF FF AD */	bl aTNS_setupAction
lbl_804A92FC:
/* 804A92FC  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804A9300  7F E3 FB 78 */	mr r3, r31
/* 804A9304  7D 89 03 A6 */	mtctr r12
/* 804A9308  4E 80 04 21 */	bctrl 
/* 804A930C  83 BC 01 4C */	lwz r29, 0x14c(r28)
/* 804A9310  AB DF 01 D2 */	lha r30, 0x1d2(r31)
/* 804A9314  AB 9D 00 DE */	lha r28, 0xde(r29)
/* 804A9318  4B BB 39 DD */	bl fqrand
/* 804A931C  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80645DF8@ha */
/* 804A9320  3C 80 80 64 */	lis r4, data_80645DF4@ha /* 0x80645DF4@ha */
/* 804A9324  38 A3 5D F8 */	addi r5, r3, lit_447@l /* 0x80645DF8@l */
/* 804A9328  C0 04 5D F4 */	lfs f0, data_80645DF4@l(r4)  /* 0x80645DF4@l */
/* 804A932C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A9330  7F 83 E3 78 */	mr r3, r28
/* 804A9334  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A9338  EC 00 08 2A */	fadds f0, f0, f1
/* 804A933C  FC 00 00 1E */	fctiwz f0, f0
/* 804A9340  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A9344  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A9348  54 00 40 2E */	slwi r0, r0, 8
/* 804A934C  7C 1E 02 14 */	add r0, r30, r0
/* 804A9350  7C 1E 07 34 */	extsh r30, r0
/* 804A9354  4B F1 17 9D */	bl sin_s
/* 804A9358  3C 60 80 64 */	lis r3, lit_448@ha /* 0x80645DFC@ha */
/* 804A935C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 804A9360  38 83 5D FC */	addi r4, r3, lit_448@l /* 0x80645DFC@l */
/* 804A9364  7F C3 F3 78 */	mr r3, r30
/* 804A9368  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A936C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A9370  EC 00 08 2A */	fadds f0, f0, f1
/* 804A9374  D0 1F 01 D4 */	stfs f0, 0x1d4(r31)
/* 804A9378  4B F1 17 79 */	bl sin_s
/* 804A937C  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80645E04@ha */
/* 804A9380  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80645E00@ha */
/* 804A9384  C0 64 5E 04 */	lfs f3, lit_450@l(r4)  /* 0x80645E04@l */
/* 804A9388  C0 43 5E 00 */	lfs f2, lit_449@l(r3)  /* 0x80645E00@l */
/* 804A938C  7F 83 E3 78 */	mr r3, r28
/* 804A9390  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 804A9394  EC 23 00 72 */	fmuls f1, f3, f1
/* 804A9398  EC 02 00 2A */	fadds f0, f2, f0
/* 804A939C  EC 00 08 2A */	fadds f0, f0, f1
/* 804A93A0  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 804A93A4  4B F1 16 F9 */	bl cos_s
/* 804A93A8  3C 60 80 64 */	lis r3, lit_448@ha /* 0x80645DFC@ha */
/* 804A93AC  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 804A93B0  C0 43 5D FC */	lfs f2, lit_448@l(r3)  /* 0x80645DFC@l */
/* 804A93B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A93B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A93BC  EC 00 08 2A */	fadds f0, f0, f1
/* 804A93C0  D0 1F 01 DC */	stfs f0, 0x1dc(r31)
/* 804A93C4  B3 DF 01 D2 */	sth r30, 0x1d2(r31)
/* 804A93C8  4B BF 1B 55 */	bl func_8009AF1C
/* 804A93CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A93D0  7C 08 03 A6 */	mtlr r0
/* 804A93D4  38 21 00 20 */	addi r1, r1, 0x20
/* 804A93D8  4E 80 00 20 */	blr 
