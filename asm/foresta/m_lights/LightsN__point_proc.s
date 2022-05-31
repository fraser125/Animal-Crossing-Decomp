lbl_803BBB04:
/* 803BBB04  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803BBB08  7C 08 02 A6 */	mflr r0
/* 803BBB0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803BBB10  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 803BBB14  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 803BBB18  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 803BBB1C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 803BBB20  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 803BBB24  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 803BBB28  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 803BBB2C  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 803BBB30  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 803BBB34  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 803BBB38  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803BBB3C  28 05 00 00 */	cmplwi r5, 0
/* 803BBB40  7C 9F 23 78 */	mr r31, r4
/* 803BBB44  41 82 02 38 */	beq lbl_803BBD7C
/* 803BBB48  A9 5F 00 0A */	lha r10, 0xa(r31)
/* 803BBB4C  7D 40 07 35 */	extsh. r0, r10
/* 803BBB50  40 81 02 2C */	ble lbl_803BBD7C
/* 803BBB54  A8 1F 00 00 */	lha r0, 0(r31)
/* 803BBB58  3C E0 43 30 */	lis r7, 0x4330
/* 803BBB5C  A8 9F 00 02 */	lha r4, 2(r31)
/* 803BBB60  3D 20 80 64 */	lis r9, lit_463@ha /* 0x806425B4@ha */
/* 803BBB64  6C 08 80 00 */	xoris r8, r0, 0x8000
/* 803BBB68  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803BBB6C  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 803BBB70  A8 1F 00 04 */	lha r0, 4(r31)
/* 803BBB74  91 01 00 14 */	stw r8, 0x14(r1)
/* 803BBB78  C8 A9 25 B4 */	lfd f5, lit_463@l(r9)  /* 0x806425B4@l */
/* 803BBB7C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 803BBB80  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BBB84  6D 40 80 00 */	xoris r0, r10, 0x8000
/* 803BBB88  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803BBB8C  EC 40 28 28 */	fsubs f2, f0, f5
/* 803BBB90  C0 25 00 00 */	lfs f1, 0(r5)
/* 803BBB94  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803BBB98  C0 65 00 04 */	lfs f3, 4(r5)
/* 803BBB9C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803BBBA0  EF E2 08 28 */	fsubs f31, f2, f1
/* 803BBBA4  90 81 00 24 */	stw r4, 0x24(r1)
/* 803BBBA8  EC 80 28 28 */	fsubs f4, f0, f5
/* 803BBBAC  C0 05 00 08 */	lfs f0, 8(r5)
/* 803BBBB0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 803BBBB4  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 803BBBB8  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 803BBBBC  EF C4 18 28 */	fsubs f30, f4, f3
/* 803BBBC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803BBBC4  EC 61 28 28 */	fsubs f3, f1, f5
/* 803BBBC8  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 803BBBCC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 803BBBD0  EF A3 00 28 */	fsubs f29, f3, f0
/* 803BBBD4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803BBBD8  EC 22 08 2A */	fadds f1, f2, f1
/* 803BBBDC  EF 60 28 28 */	fsubs f27, f0, f5
/* 803BBBE0  EC 5D 07 72 */	fmuls f2, f29, f29
/* 803BBBE4  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 803BBBE8  EF 82 08 2A */	fadds f28, f2, f1
/* 803BBBEC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 803BBBF0  40 80 01 8C */	bge lbl_803BBD7C
/* 803BBBF4  4B FF FE E1 */	bl LightsN_new_diffuse
/* 803BBBF8  28 03 00 00 */	cmplwi r3, 0
/* 803BBBFC  41 82 01 80 */	beq lbl_803BBD7C
/* 803BBC00  3C 80 80 64 */	lis r4, data_80642594@ha /* 0x80642594@ha */
/* 803BBC04  C0 04 25 94 */	lfs f0, data_80642594@l(r4)  /* 0x80642594@l */
/* 803BBC08  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 803BBC0C  40 81 00 6C */	ble lbl_803BBC78
/* 803BBC10  FC 20 E0 34 */	frsqrte f1, f28
/* 803BBC14  3C 80 80 64 */	lis r4, lit_458@ha /* 0x8064259C@ha */
/* 803BBC18  38 A4 25 9C */	addi r5, r4, lit_458@l /* 0x8064259C@l */
/* 803BBC1C  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806425A4@ha */
/* 803BBC20  C8 65 00 00 */	lfd f3, 0(r5)
/* 803BBC24  FC 01 00 72 */	fmul f0, f1, f1
/* 803BBC28  C8 44 25 A4 */	lfd f2, lit_459@l(r4)  /* 0x806425A4@l */
/* 803BBC2C  FC 23 00 72 */	fmul f1, f3, f1
/* 803BBC30  FC 1C 00 32 */	fmul f0, f28, f0
/* 803BBC34  FC 02 00 28 */	fsub f0, f2, f0
/* 803BBC38  FC 21 00 32 */	fmul f1, f1, f0
/* 803BBC3C  FC 01 00 72 */	fmul f0, f1, f1
/* 803BBC40  FC 23 00 72 */	fmul f1, f3, f1
/* 803BBC44  FC 1C 00 32 */	fmul f0, f28, f0
/* 803BBC48  FC 02 00 28 */	fsub f0, f2, f0
/* 803BBC4C  FC 21 00 32 */	fmul f1, f1, f0
/* 803BBC50  FC 01 00 72 */	fmul f0, f1, f1
/* 803BBC54  FC 23 00 72 */	fmul f1, f3, f1
/* 803BBC58  FC 1C 00 32 */	fmul f0, f28, f0
/* 803BBC5C  FC 02 00 28 */	fsub f0, f2, f0
/* 803BBC60  FC 01 00 32 */	fmul f0, f1, f0
/* 803BBC64  FC 1C 00 32 */	fmul f0, f28, f0
/* 803BBC68  FC 00 00 18 */	frsp f0, f0
/* 803BBC6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 803BBC70  C0 81 00 08 */	lfs f4, 8(r1)
/* 803BBC74  48 00 00 08 */	b lbl_803BBC7C
lbl_803BBC78:
/* 803BBC78  FC 80 E0 90 */	fmr f4, f28
lbl_803BBC7C:
/* 803BBC7C  EC 04 D8 24 */	fdivs f0, f4, f27
/* 803BBC80  3C 00 43 30 */	lis r0, 0x4330
/* 803BBC84  88 BF 00 06 */	lbz r5, 6(r31)
/* 803BBC88  3C C0 80 64 */	lis r6, lit_460@ha /* 0x806425AC@ha */
/* 803BBC8C  3C 80 80 64 */	lis r4, lit_467@ha /* 0x806425BC@ha */
/* 803BBC90  C0 66 25 AC */	lfs f3, lit_460@l(r6)  /* 0x806425AC@l */
/* 803BBC94  EC 40 00 32 */	fmuls f2, f0, f0
/* 803BBC98  90 01 00 28 */	stw r0, 0x28(r1)
/* 803BBC9C  C8 24 25 BC */	lfd f1, lit_467@l(r4)  /* 0x806425BC@l */
/* 803BBCA0  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 803BBCA4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 803BBCA8  EC 43 10 28 */	fsubs f2, f3, f2
/* 803BBCAC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803BBCB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 803BBCB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BBCB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 803BBCBC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803BBCC0  FC 00 00 1E */	fctiwz f0, f0
/* 803BBCC4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803BBCC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BBCCC  98 03 00 04 */	stb r0, 4(r3)
/* 803BBCD0  98 03 00 00 */	stb r0, 0(r3)
/* 803BBCD4  88 1F 00 07 */	lbz r0, 7(r31)
/* 803BBCD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803BBCDC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803BBCE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BBCE4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803BBCE8  FC 00 00 1E */	fctiwz f0, f0
/* 803BBCEC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BBCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BBCF4  98 03 00 05 */	stb r0, 5(r3)
/* 803BBCF8  98 03 00 01 */	stb r0, 1(r3)
/* 803BBCFC  88 1F 00 08 */	lbz r0, 8(r31)
/* 803BBD00  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BBD04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803BBD08  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BBD0C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803BBD10  FC 00 00 1E */	fctiwz f0, f0
/* 803BBD14  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803BBD18  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803BBD1C  98 03 00 06 */	stb r0, 6(r3)
/* 803BBD20  98 03 00 02 */	stb r0, 2(r3)
/* 803BBD24  40 80 00 10 */	bge lbl_803BBD34
/* 803BBD28  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806425B0@ha */
/* 803BBD2C  C0 04 25 B0 */	lfs f0, lit_461@l(r4)  /* 0x806425B0@l */
/* 803BBD30  48 00 00 10 */	b lbl_803BBD40
lbl_803BBD34:
/* 803BBD34  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806425B0@ha */
/* 803BBD38  C0 04 25 B0 */	lfs f0, lit_461@l(r4)  /* 0x806425B0@l */
/* 803BBD3C  EC 00 20 24 */	fdivs f0, f0, f4
lbl_803BBD40:
/* 803BBD40  EC 5F 00 32 */	fmuls f2, f31, f0
/* 803BBD44  EC 3E 00 32 */	fmuls f1, f30, f0
/* 803BBD48  EC 1D 00 32 */	fmuls f0, f29, f0
/* 803BBD4C  FC 40 10 1E */	fctiwz f2, f2
/* 803BBD50  FC 20 08 1E */	fctiwz f1, f1
/* 803BBD54  FC 00 00 1E */	fctiwz f0, f0
/* 803BBD58  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 803BBD5C  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 803BBD60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BBD64  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 803BBD68  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 803BBD6C  98 03 00 08 */	stb r0, 8(r3)
/* 803BBD70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803BBD74  98 83 00 09 */	stb r4, 9(r3)
/* 803BBD78  98 03 00 0A */	stb r0, 0xa(r3)
lbl_803BBD7C:
/* 803BBD7C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 803BBD80  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 803BBD84  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 803BBD88  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 803BBD8C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 803BBD90  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 803BBD94  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 803BBD98  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 803BBD9C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 803BBDA0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 803BBDA4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803BBDA8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803BBDAC  7C 08 03 A6 */	mtlr r0
/* 803BBDB0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803BBDB4  4E 80 00 20 */	blr 
