lbl_80611974:
/* 80611974  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80611978  7C 08 02 A6 */	mflr r0
/* 8061197C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80611980  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80611984  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80611988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061198C  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064C3FC@ha */
/* 80611990  7C 7F 1B 78 */	mr r31, r3
/* 80611994  C8 84 C3 FC */	lfd f4, lit_420@l(r4)  /* 0x8064C3FC@l */
/* 80611998  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064C404@ha */
/* 8061199C  38 83 C4 04 */	addi r4, r3, lit_421@l /* 0x8064C404@l */
/* 806119A0  3C A0 80 65 */	lis r5, lit_419@ha /* 0x8064C3F4@ha */
/* 806119A4  FC 20 20 34 */	frsqrte f1, f4
/* 806119A8  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C40C@ha */
/* 806119AC  C8 43 C4 0C */	lfd f2, lit_422@l(r3)  /* 0x8064C40C@l */
/* 806119B0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806119B4  C8 64 00 00 */	lfd f3, 0(r4)
/* 806119B8  FC 01 00 72 */	fmul f0, f1, f1
/* 806119BC  C0 FF 00 10 */	lfs f7, 0x10(r31)
/* 806119C0  C0 DF 00 1C */	lfs f6, 0x1c(r31)
/* 806119C4  FC 23 00 72 */	fmul f1, f3, f1
/* 806119C8  C0 A5 C3 F4 */	lfs f5, lit_419@l(r5)  /* 0x8064C3F4@l */
/* 806119CC  FC 04 00 32 */	fmul f0, f4, f0
/* 806119D0  EC C7 30 2A */	fadds f6, f7, f6
/* 806119D4  FC 02 00 28 */	fsub f0, f2, f0
/* 806119D8  D0 DF 00 10 */	stfs f6, 0x10(r31)
/* 806119DC  FC C1 00 32 */	fmul f6, f1, f0
/* 806119E0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806119E4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806119E8  EC 21 00 2A */	fadds f1, f1, f0
/* 806119EC  FC 06 01 B2 */	fmul f0, f6, f6
/* 806119F0  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 806119F4  FC 23 01 B2 */	fmul f1, f3, f6
/* 806119F8  FC 04 00 32 */	fmul f0, f4, f0
/* 806119FC  C0 FF 00 18 */	lfs f7, 0x18(r31)
/* 80611A00  C0 DF 00 24 */	lfs f6, 0x24(r31)
/* 80611A04  EC C7 30 2A */	fadds f6, f7, f6
/* 80611A08  FC 02 00 28 */	fsub f0, f2, f0
/* 80611A0C  D0 DF 00 18 */	stfs f6, 0x18(r31)
/* 80611A10  FC 21 00 32 */	fmul f1, f1, f0
/* 80611A14  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80611A18  EC A0 28 2A */	fadds f5, f0, f5
/* 80611A1C  FC 01 00 72 */	fmul f0, f1, f1
/* 80611A20  FC 23 00 72 */	fmul f1, f3, f1
/* 80611A24  D0 BF 00 20 */	stfs f5, 0x20(r31)
/* 80611A28  FC 04 00 32 */	fmul f0, f4, f0
/* 80611A2C  FC 02 00 28 */	fsub f0, f2, f0
/* 80611A30  FC 01 00 32 */	fmul f0, f1, f0
/* 80611A34  FC 04 00 32 */	fmul f0, f4, f0
/* 80611A38  FC 00 00 18 */	frsp f0, f0
/* 80611A3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80611A40  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80611A44  4B DA 95 69 */	bl xyz_t_mult_v
/* 80611A48  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064C3FC@ha */
/* 80611A4C  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064C404@ha */
/* 80611A50  38 A3 C3 FC */	addi r5, r3, lit_420@l /* 0x8064C3FC@l */
/* 80611A54  C0 DF 00 34 */	lfs f6, 0x34(r31)
/* 80611A58  C8 85 00 00 */	lfd f4, 0(r5)
/* 80611A5C  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C40C@ha */
/* 80611A60  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80611A64  3C A0 80 65 */	lis r5, lit_419@ha /* 0x8064C3F4@ha */
/* 80611A68  FC E0 20 34 */	frsqrte f7, f4
/* 80611A6C  C8 43 C4 0C */	lfd f2, lit_422@l(r3)  /* 0x8064C40C@l */
/* 80611A70  EC C6 08 2A */	fadds f6, f6, f1
/* 80611A74  C8 64 C4 04 */	lfd f3, lit_421@l(r4)  /* 0x8064C404@l */
/* 80611A78  C0 A5 C3 F4 */	lfs f5, lit_419@l(r5)  /* 0x8064C3F4@l */
/* 80611A7C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80611A80  FC 07 01 F2 */	fmul f0, f7, f7
/* 80611A84  D0 DF 00 34 */	stfs f6, 0x34(r31)
/* 80611A88  FC 23 01 F2 */	fmul f1, f3, f7
/* 80611A8C  C0 FF 00 38 */	lfs f7, 0x38(r31)
/* 80611A90  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 80611A94  FC 04 00 32 */	fmul f0, f4, f0
/* 80611A98  EC C7 30 2A */	fadds f6, f7, f6
/* 80611A9C  FC 02 00 28 */	fsub f0, f2, f0
/* 80611AA0  D0 DF 00 38 */	stfs f6, 0x38(r31)
/* 80611AA4  FC E1 00 32 */	fmul f7, f1, f0
/* 80611AA8  C0 DF 00 3C */	lfs f6, 0x3c(r31)
/* 80611AAC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80611AB0  EC C6 08 2A */	fadds f6, f6, f1
/* 80611AB4  FC 07 01 F2 */	fmul f0, f7, f7
/* 80611AB8  D0 DF 00 3C */	stfs f6, 0x3c(r31)
/* 80611ABC  FC 23 01 F2 */	fmul f1, f3, f7
/* 80611AC0  FC 04 00 32 */	fmul f0, f4, f0
/* 80611AC4  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 80611AC8  EC A6 28 2A */	fadds f5, f6, f5
/* 80611ACC  FC 02 00 28 */	fsub f0, f2, f0
/* 80611AD0  D0 BF 00 2C */	stfs f5, 0x2c(r31)
/* 80611AD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80611AD8  FC 01 00 72 */	fmul f0, f1, f1
/* 80611ADC  FC 23 00 72 */	fmul f1, f3, f1
/* 80611AE0  FC 04 00 32 */	fmul f0, f4, f0
/* 80611AE4  FC 02 00 28 */	fsub f0, f2, f0
/* 80611AE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80611AEC  FC 04 00 32 */	fmul f0, f4, f0
/* 80611AF0  FC 00 00 18 */	frsp f0, f0
/* 80611AF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80611AF8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80611AFC  4B DA 94 B1 */	bl xyz_t_mult_v
/* 80611B00  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80611B04  4B DA 8F ED */	bl sin_s
/* 80611B08  FF E0 08 90 */	fmr f31, f1
/* 80611B0C  4B A4 B1 E9 */	bl fqrand
/* 80611B10  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064C414@ha */
/* 80611B14  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80611B18  C0 43 C4 14 */	lfs f2, lit_423@l(r3)  /* 0x8064C414@l */
/* 80611B1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80611B20  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80611B24  EC 00 08 2A */	fadds f0, f0, f1
/* 80611B28  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80611B2C  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80611B30  4B DA 8F C1 */	bl sin_s
/* 80611B34  FF E0 08 90 */	fmr f31, f1
/* 80611B38  4B A4 B1 BD */	bl fqrand
/* 80611B3C  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064C414@ha */
/* 80611B40  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80611B44  C0 43 C4 14 */	lfs f2, lit_423@l(r3)  /* 0x8064C414@l */
/* 80611B48  EC 22 00 72 */	fmuls f1, f2, f1
/* 80611B4C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80611B50  EC 00 08 2A */	fadds f0, f0, f1
/* 80611B54  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80611B58  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80611B5C  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 80611B60  7C 03 02 14 */	add r0, r3, r0
/* 80611B64  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80611B68  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80611B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80611B70  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80611B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80611B78  7C 08 03 A6 */	mtlr r0
/* 80611B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80611B80  4E 80 00 20 */	blr 
