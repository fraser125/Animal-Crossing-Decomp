lbl_80423A10:
/* 80423A10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80423A14  7C 08 02 A6 */	mflr r0
/* 80423A18  90 01 00 84 */	stw r0, 0x84(r1)
/* 80423A1C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80423A20  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80423A24  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80423A28  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80423A2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80423A30  4B C7 74 A5 */	bl func_8009AED4
/* 80423A34  81 24 20 90 */	lwz r9, 0x2090(r4)
/* 80423A38  39 00 01 2C */	li r8, 0x12c
/* 80423A3C  3C 00 43 30 */	lis r0, 0x4330
/* 80423A40  3C A0 80 64 */	lis r5, lit_596@ha /* 0x80643E44@ha */
/* 80423A44  7C E9 43 96 */	divwu r7, r9, r8
/* 80423A48  90 01 00 08 */	stw r0, 8(r1)
/* 80423A4C  7C 9E 23 78 */	mr r30, r4
/* 80423A50  C8 45 3E 44 */	lfd f2, lit_596@l(r5)  /* 0x80643E44@l */
/* 80423A54  3C 80 80 64 */	lis r4, lit_754@ha /* 0x80643E58@ha */
/* 80423A58  3C C0 80 64 */	lis r6, lit_753@ha /* 0x80643E54@ha */
/* 80423A5C  7C 07 41 D6 */	mullw r0, r7, r8
/* 80423A60  38 A6 3E 54 */	addi r5, r6, lit_753@l /* 0x80643E54@l */
/* 80423A64  3C C0 80 64 */	lis r6, lit_752@ha /* 0x80643E50@ha */
/* 80423A68  C0 04 3E 58 */	lfs f0, lit_754@l(r4)  /* 0x80643E58@l */
/* 80423A6C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80423A70  7C 7D 1B 78 */	mr r29, r3
/* 80423A74  7F E0 48 50 */	subf r31, r0, r9
/* 80423A78  C0 86 3E 50 */	lfs f4, lit_752@l(r6)  /* 0x80643E50@l */
/* 80423A7C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80423A80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80423A84  C8 21 00 08 */	lfd f1, 8(r1)
/* 80423A88  EC 21 10 28 */	fsubs f1, f1, f2
/* 80423A8C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80423A90  EC 03 00 32 */	fmuls f0, f3, f0
/* 80423A94  EF E4 00 32 */	fmuls f31, f4, f0
/* 80423A98  FC 20 F8 90 */	fmr f1, f31
/* 80423A9C  4B FE 4E 51 */	bl cosf_table
/* 80423AA0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80423AA4  3C 00 43 30 */	lis r0, 0x4330
/* 80423AA8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80423AAC  3C E0 80 64 */	lis r7, lit_755@ha /* 0x80643E5C@ha */
/* 80423AB0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80423AB4  3C 60 80 64 */	lis r3, lit_596@ha /* 0x80643E44@ha */
/* 80423AB8  38 83 3E 44 */	addi r4, r3, lit_596@l /* 0x80643E44@l */
/* 80423ABC  C0 07 3E 5C */	lfs f0, lit_755@l(r7)  /* 0x80643E5C@l */
/* 80423AC0  A8 65 19 3E */	lha r3, 0x193e(r5)
/* 80423AC4  3C C0 80 64 */	lis r6, lit_756@ha /* 0x80643E60@ha */
/* 80423AC8  FF C0 08 90 */	fmr f30, f1
/* 80423ACC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80423AD0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80423AD4  EC 7F 00 28 */	fsubs f3, f31, f0
/* 80423AD8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80423ADC  C8 44 00 00 */	lfd f2, 0(r4)
/* 80423AE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80423AE4  C0 26 3E 60 */	lfs f1, lit_756@l(r6)  /* 0x80643E60@l */
/* 80423AE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80423AEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80423AF0  EC 23 00 2A */	fadds f1, f3, f0
/* 80423AF4  4B FE 4D F9 */	bl cosf_table
/* 80423AF8  93 FD 02 58 */	stw r31, 0x258(r29)
/* 80423AFC  3C 00 43 30 */	lis r0, 0x4330
/* 80423B00  3C 60 80 64 */	lis r3, lit_771@ha /* 0x80643E94@ha */
/* 80423B04  3C C0 80 64 */	lis r6, lit_757@ha /* 0x80643E64@ha */
/* 80423B08  80 BE 20 90 */	lwz r5, 0x2090(r30)
/* 80423B0C  38 83 3E 94 */	addi r4, r3, lit_771@l /* 0x80643E94@l */
/* 80423B10  3C 60 80 64 */	lis r3, lit_758@ha /* 0x80643E68@ha */
/* 80423B14  FF E0 08 90 */	fmr f31, f1
/* 80423B18  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80423B1C  FC 20 F0 90 */	fmr f1, f30
/* 80423B20  C0 43 3E 68 */	lfs f2, lit_758@l(r3)  /* 0x80643E68@l */
/* 80423B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80423B28  C8 84 00 00 */	lfd f4, 0(r4)
/* 80423B2C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 80423B30  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 80423B34  C0 A6 3E 64 */	lfs f5, lit_757@l(r6)  /* 0x80643E64@l */
/* 80423B38  EC 63 20 28 */	fsubs f3, f3, f4
/* 80423B3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80423B40  EC 45 00 F2 */	fmuls f2, f5, f3
/* 80423B44  FC 00 00 1E */	fctiwz f0, f0
/* 80423B48  FC 40 10 1E */	fctiwz f2, f2
/* 80423B4C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80423B50  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 80423B54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80423B58  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80423B5C  38 63 FF F9 */	addi r3, r3, -7
/* 80423B60  90 7D 02 4C */	stw r3, 0x24c(r29)
/* 80423B64  90 1D 02 50 */	stw r0, 0x250(r29)
/* 80423B68  4B F7 07 B5 */	bl mCoBG_WaveCos2BgCheck
/* 80423B6C  3C 80 80 64 */	lis r4, lit_761@ha /* 0x80643E74@ha */
/* 80423B70  3C 60 80 64 */	lis r3, lit_764@ha /* 0x80643E80@ha */
/* 80423B74  C0 04 3E 74 */	lfs f0, lit_761@l(r4)  /* 0x80643E74@l */
/* 80423B78  3C A0 80 64 */	lis r5, lit_760@ha /* 0x80643E70@ha */
/* 80423B7C  C0 23 3E 80 */	lfs f1, lit_764@l(r3)  /* 0x80643E80@l */
/* 80423B80  3C 60 80 64 */	lis r3, lit_767@ha /* 0x80643E8C@ha */
/* 80423B84  EC 80 07 F2 */	fmuls f4, f0, f31
/* 80423B88  C0 03 3E 8C */	lfs f0, lit_767@l(r3)  /* 0x80643E8C@l */
/* 80423B8C  C0 A5 3E 70 */	lfs f5, lit_760@l(r5)  /* 0x80643E70@l */
/* 80423B90  3C 80 80 64 */	lis r4, lit_763@ha /* 0x80643E7C@ha */
/* 80423B94  38 A4 3E 7C */	addi r5, r4, lit_763@l /* 0x80643E7C@l */
/* 80423B98  EC 41 07 F2 */	fmuls f2, f1, f31
/* 80423B9C  3C 80 80 64 */	lis r4, lit_759@ha /* 0x80643E6C@ha */
/* 80423BA0  C0 65 00 00 */	lfs f3, 0(r5)
/* 80423BA4  38 E4 3E 6C */	addi r7, r4, lit_759@l /* 0x80643E6C@l */
/* 80423BA8  EC 85 20 2A */	fadds f4, f5, f4
/* 80423BAC  3C 60 80 64 */	lis r3, lit_766@ha /* 0x80643E88@ha */
/* 80423BB0  C0 A7 00 00 */	lfs f5, 0(r7)
/* 80423BB4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80423BB8  C0 23 3E 88 */	lfs f1, lit_766@l(r3)  /* 0x80643E88@l */
/* 80423BBC  3C C0 80 64 */	lis r6, lit_762@ha /* 0x80643E78@ha */
/* 80423BC0  EC 43 10 2A */	fadds f2, f3, f2
/* 80423BC4  C0 66 3E 78 */	lfs f3, lit_762@l(r6)  /* 0x80643E78@l */
/* 80423BC8  EC 85 20 2A */	fadds f4, f5, f4
/* 80423BCC  3C 80 80 64 */	lis r4, lit_765@ha /* 0x80643E84@ha */
/* 80423BD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80423BD4  C0 24 3E 84 */	lfs f1, lit_765@l(r4)  /* 0x80643E84@l */
/* 80423BD8  EC 43 10 2A */	fadds f2, f3, f2
/* 80423BDC  38 00 00 FF */	li r0, 0xff
/* 80423BE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80423BE4  FC 60 20 1E */	fctiwz f3, f4
/* 80423BE8  FC 20 10 1E */	fctiwz f1, f2
/* 80423BEC  FC 00 00 1E */	fctiwz f0, f0
/* 80423BF0  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 80423BF4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80423BF8  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 80423BFC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80423C00  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80423C04  98 7D 02 54 */	stb r3, 0x254(r29)
/* 80423C08  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80423C0C  98 9D 02 55 */	stb r4, 0x255(r29)
/* 80423C10  98 7D 02 56 */	stb r3, 0x256(r29)
/* 80423C14  98 1D 02 57 */	stb r0, 0x257(r29)
/* 80423C18  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80423C1C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80423C20  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80423C24  39 61 00 60 */	addi r11, r1, 0x60
/* 80423C28  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80423C2C  4B C7 72 F5 */	bl func_8009AF20
/* 80423C30  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80423C34  7C 08 03 A6 */	mtlr r0
/* 80423C38  38 21 00 80 */	addi r1, r1, 0x80
/* 80423C3C  4E 80 00 20 */	blr 
