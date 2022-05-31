lbl_8040A70C:
/* 8040A70C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8040A710  7C 08 02 A6 */	mflr r0
/* 8040A714  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8040A718  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8040A71C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8040A720  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8040A724  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8040A728  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8040A72C  4B C9 07 9D */	bl func_8009AEC8
/* 8040A730  3D 00 80 64 */	lis r8, lit_275@ha /* 0x806436E8@ha */
/* 8040A734  7C 7A 1B 78 */	mr r26, r3
/* 8040A738  C3 E8 36 E8 */	lfs f31, lit_275@l(r8)  /* 0x806436E8@l */
/* 8040A73C  7C 9B 23 78 */	mr r27, r4
/* 8040A740  7C BE 2B 78 */	mr r30, r5
/* 8040A744  7C DC 33 78 */	mr r28, r6
/* 8040A748  FF C0 F8 90 */	fmr f30, f31
/* 8040A74C  7C FD 3B 78 */	mr r29, r7
/* 8040A750  3B E0 00 00 */	li r31, 0
/* 8040A754  4B FF FE B1 */	bl Math3D_pipeVsPos
/* 8040A758  2C 03 00 00 */	cmpwi r3, 0
/* 8040A75C  41 82 00 50 */	beq lbl_8040A7AC
/* 8040A760  7F 43 D3 78 */	mr r3, r26
/* 8040A764  7F C4 F3 78 */	mr r4, r30
/* 8040A768  4B FF FE 9D */	bl Math3D_pipeVsPos
/* 8040A76C  2C 03 00 00 */	cmpwi r3, 0
/* 8040A770  41 82 00 3C */	beq lbl_8040A7AC
/* 8040A774  80 9B 00 00 */	lwz r4, 0(r27)
/* 8040A778  38 60 00 02 */	li r3, 2
/* 8040A77C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8040A780  90 9C 00 00 */	stw r4, 0(r28)
/* 8040A784  90 1C 00 04 */	stw r0, 4(r28)
/* 8040A788  80 1B 00 08 */	lwz r0, 8(r27)
/* 8040A78C  90 1C 00 08 */	stw r0, 8(r28)
/* 8040A790  80 9E 00 00 */	lwz r4, 0(r30)
/* 8040A794  80 1E 00 04 */	lwz r0, 4(r30)
/* 8040A798  90 9D 00 00 */	stw r4, 0(r29)
/* 8040A79C  90 1D 00 04 */	stw r0, 4(r29)
/* 8040A7A0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8040A7A4  90 1D 00 08 */	stw r0, 8(r29)
/* 8040A7A8  48 00 0A 1C */	b lbl_8040B1C4
lbl_8040A7AC:
/* 8040A7AC  A8 1A 00 06 */	lha r0, 6(r26)
/* 8040A7B0  3C E0 43 30 */	lis r7, 0x4330
/* 8040A7B4  3C 60 80 64 */	lis r3, lit_573@ha /* 0x8064370C@ha */
/* 8040A7B8  90 E1 00 60 */	stw r7, 0x60(r1)
/* 8040A7BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A7C0  C8 C3 37 0C */	lfd f6, lit_573@l(r3)  /* 0x8064370C@l */
/* 8040A7C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8040A7C8  38 61 00 18 */	addi r3, r1, 0x18
/* 8040A7CC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8040A7D0  38 81 00 24 */	addi r4, r1, 0x24
/* 8040A7D4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8040A7D8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8040A7DC  90 E1 00 68 */	stw r7, 0x68(r1)
/* 8040A7E0  EC 00 30 28 */	fsubs f0, f0, f6
/* 8040A7E4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8040A7E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040A7EC  90 E1 00 80 */	stw r7, 0x80(r1)
/* 8040A7F0  90 E1 00 70 */	stw r7, 0x70(r1)
/* 8040A7F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8040A7F8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8040A7FC  A8 DA 00 08 */	lha r6, 8(r26)
/* 8040A800  A8 1A 00 04 */	lha r0, 4(r26)
/* 8040A804  EC 60 30 28 */	fsubs f3, f0, f6
/* 8040A808  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8040A80C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8040A810  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8040A814  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A818  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 8040A81C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8040A820  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040A824  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8040A828  90 C1 00 8C */	stw r6, 0x8c(r1)
/* 8040A82C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8040A830  EC 20 30 28 */	fsubs f1, f0, f6
/* 8040A834  90 E1 00 88 */	stw r7, 0x88(r1)
/* 8040A838  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040A83C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8040A840  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8040A844  90 E1 00 90 */	stw r7, 0x90(r1)
/* 8040A848  EC 40 30 28 */	fsubs f2, f0, f6
/* 8040A84C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8040A850  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8040A854  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040A858  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8040A85C  EC 20 30 28 */	fsubs f1, f0, f6
/* 8040A860  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A864  C0 BB 00 08 */	lfs f5, 8(r27)
/* 8040A868  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8040A86C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8040A870  90 E1 00 98 */	stw r7, 0x98(r1)
/* 8040A874  EC 80 30 28 */	fsubs f4, f0, f6
/* 8040A878  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8040A87C  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040A880  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8040A884  EC 00 30 28 */	fsubs f0, f0, f6
/* 8040A888  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8040A88C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040A890  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040A894  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8040A898  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8040A89C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8040A8A0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8040A8A4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8040A8A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8040A8AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040A8B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8040A8B4  4B FB 06 C5 */	bl xyz_t_sub
/* 8040A8B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040A8BC  3C 80 43 30 */	lis r4, 0x4330
/* 8040A8C0  A8 1A 00 00 */	lha r0, 0(r26)
/* 8040A8C4  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040A8C8  FC 20 02 10 */	fabs f1, f0
/* 8040A8CC  3C 60 80 64 */	lis r3, data_806436E4@ha /* 0x806436E4@ha */
/* 8040A8D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A8D4  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8040A8D8  C8 C5 37 0C */	lfd f6, lit_573@l(r5)  /* 0x8064370C@l */
/* 8040A8DC  FC 40 08 18 */	frsp f2, f1
/* 8040A8E0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8040A8E4  C0 23 36 E4 */	lfs f1, data_806436E4@l(r3)  /* 0x806436E4@l */
/* 8040A8E8  C8 61 00 A0 */	lfd f3, 0xa0(r1)
/* 8040A8EC  90 01 00 AC */	stw r0, 0xac(r1)
/* 8040A8F0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040A8F4  EC 63 30 28 */	fsubs f3, f3, f6
/* 8040A8F8  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040A8FC  C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 8040A900  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040A904  EC 43 00 72 */	fmuls f2, f3, f1
/* 8040A908  41 80 02 00 */	blt lbl_8040AB08
/* 8040A90C  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 8040A910  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040A914  C0 23 36 E8 */	lfs f1, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040A918  FC 60 38 50 */	fneg f3, f7
/* 8040A91C  ED 03 00 24 */	fdivs f8, f3, f0
/* 8040A920  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 8040A924  4C 41 13 82 */	cror 2, 1, 2
/* 8040A928  40 82 00 C8 */	bne lbl_8040A9F0
/* 8040A92C  3C 60 80 64 */	lis r3, lit_276@ha /* 0x806436EC@ha */
/* 8040A930  C0 23 36 EC */	lfs f1, lit_276@l(r3)  /* 0x806436EC@l */
/* 8040A934  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 8040A938  4C 40 13 82 */	cror 2, 0, 2
/* 8040A93C  40 82 00 B4 */	bne lbl_8040A9F0
/* 8040A940  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8040A944  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8040A948  EC 83 02 32 */	fmuls f4, f3, f8
/* 8040A94C  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8040A950  EC 21 02 32 */	fmuls f1, f1, f8
/* 8040A954  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 8040A958  EC 85 20 2A */	fadds f4, f5, f4
/* 8040A95C  EC A3 08 2A */	fadds f5, f3, f1
/* 8040A960  EC 64 01 32 */	fmuls f3, f4, f4
/* 8040A964  EC 25 01 72 */	fmuls f1, f5, f5
/* 8040A968  EC 23 08 2A */	fadds f1, f3, f1
/* 8040A96C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8040A970  40 80 00 80 */	bge lbl_8040A9F0
/* 8040A974  A8 1A 00 06 */	lha r0, 6(r26)
/* 8040A978  63 FF 00 01 */	ori r31, r31, 1
/* 8040A97C  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040A980  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A984  90 01 00 AC */	stw r0, 0xac(r1)
/* 8040A988  C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 8040A98C  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8040A990  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040A994  90 81 00 98 */	stw r4, 0x98(r1)
/* 8040A998  EC 24 08 2A */	fadds f1, f4, f1
/* 8040A99C  90 81 00 90 */	stw r4, 0x90(r1)
/* 8040A9A0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8040A9A4  A8 7A 00 08 */	lha r3, 8(r26)
/* 8040A9A8  A8 1A 00 04 */	lha r0, 4(r26)
/* 8040A9AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040A9B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A9B4  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8040A9B8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8040A9BC  C8 61 00 A0 */	lfd f3, 0xa0(r1)
/* 8040A9C0  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8040A9C4  EC 63 30 28 */	fsubs f3, f3, f6
/* 8040A9C8  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040A9CC  EC 23 08 2A */	fadds f1, f3, f1
/* 8040A9D0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8040A9D4  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040A9D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A9DC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040A9E0  C8 21 00 90 */	lfd f1, 0x90(r1)
/* 8040A9E4  EC 21 30 28 */	fsubs f1, f1, f6
/* 8040A9E8  EC 25 08 2A */	fadds f1, f5, f1
/* 8040A9EC  D0 21 00 38 */	stfs f1, 0x38(r1)
lbl_8040A9F0:
/* 8040A9F0  A8 1A 00 02 */	lha r0, 2(r26)
/* 8040A9F4  3C 80 43 30 */	lis r4, 0x4330
/* 8040A9F8  3C C0 80 64 */	lis r6, lit_573@ha /* 0x8064370C@ha */
/* 8040A9FC  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040AA00  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8040AA04  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040AA08  C8 A6 37 0C */	lfd f5, lit_573@l(r6)  /* 0x8064370C@l */
/* 8040AA0C  90 A1 00 AC */	stw r5, 0xac(r1)
/* 8040AA10  C0 23 36 E8 */	lfs f1, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040AA14  C8 61 00 A8 */	lfd f3, 0xa8(r1)
/* 8040AA18  EC 63 28 28 */	fsubs f3, f3, f5
/* 8040AA1C  EC 63 38 28 */	fsubs f3, f3, f7
/* 8040AA20  EF E3 00 24 */	fdivs f31, f3, f0
/* 8040AA24  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8040AA28  4C 41 13 82 */	cror 2, 1, 2
/* 8040AA2C  40 82 00 DC */	bne lbl_8040AB08
/* 8040AA30  3C 60 80 64 */	lis r3, lit_276@ha /* 0x806436EC@ha */
/* 8040AA34  C0 03 36 EC */	lfs f0, lit_276@l(r3)  /* 0x806436EC@l */
/* 8040AA38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8040AA3C  4C 40 13 82 */	cror 2, 0, 2
/* 8040AA40  40 82 00 C8 */	bne lbl_8040AB08
/* 8040AA44  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8040AA48  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8040AA4C  EC 61 07 F2 */	fmuls f3, f1, f31
/* 8040AA50  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 8040AA54  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8040AA58  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8040AA5C  EC 64 18 2A */	fadds f3, f4, f3
/* 8040AA60  EC 81 00 2A */	fadds f4, f1, f0
/* 8040AA64  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8040AA68  EC 04 01 32 */	fmuls f0, f4, f4
/* 8040AA6C  EC 01 00 2A */	fadds f0, f1, f0
/* 8040AA70  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8040AA74  40 80 00 94 */	bge lbl_8040AB08
/* 8040AA78  A8 1A 00 06 */	lha r0, 6(r26)
/* 8040AA7C  63 FF 00 02 */	ori r31, r31, 2
/* 8040AA80  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040AA84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AA88  90 01 00 AC */	stw r0, 0xac(r1)
/* 8040AA8C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8040AA90  90 81 00 98 */	stw r4, 0x98(r1)
/* 8040AA94  EC 00 28 28 */	fsubs f0, f0, f5
/* 8040AA98  90 81 00 90 */	stw r4, 0x90(r1)
/* 8040AA9C  EC 03 00 2A */	fadds f0, f3, f0
/* 8040AAA0  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8040AAA4  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8040AAA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8040AAAC  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8040AAB0  A8 7A 00 08 */	lha r3, 8(r26)
/* 8040AAB4  A8 1A 00 04 */	lha r0, 4(r26)
/* 8040AAB8  EC 60 28 28 */	fsubs f3, f0, f5
/* 8040AABC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040AAC0  90 81 00 88 */	stw r4, 0x88(r1)
/* 8040AAC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AAC8  90 61 00 9C */	stw r3, 0x9c(r1)
/* 8040AACC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040AAD0  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8040AAD4  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8040AAD8  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040AADC  EC 00 28 28 */	fsubs f0, f0, f5
/* 8040AAE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8040AAE4  EC 03 00 2A */	fadds f0, f3, f0
/* 8040AAE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8040AAEC  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040AAF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AAF4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8040AAF8  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8040AAFC  EC 00 28 28 */	fsubs f0, f0, f5
/* 8040AB00  EC 04 00 2A */	fadds f0, f4, f0
/* 8040AB04  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_8040AB08:
/* 8040AB08  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8040AB0C  3C 60 80 64 */	lis r3, lit_404@ha /* 0x806436F0@ha */
/* 8040AB10  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 8040AB14  38 83 36 F0 */	addi r4, r3, lit_404@l /* 0x806436F0@l */
/* 8040AB18  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8040AB1C  C1 21 00 24 */	lfs f9, 0x24(r1)
/* 8040AB20  EC 04 01 32 */	fmuls f0, f4, f4
/* 8040AB24  C1 01 00 2C */	lfs f8, 0x2c(r1)
/* 8040AB28  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8040AB2C  EC C3 02 72 */	fmuls f6, f3, f9
/* 8040AB30  ED 41 00 2A */	fadds f10, f1, f0
/* 8040AB34  3C 60 80 64 */	lis r3, data_806436E4@ha /* 0x806436E4@ha */
/* 8040AB38  EC A4 02 32 */	fmuls f5, f4, f8
/* 8040AB3C  C0 63 36 E4 */	lfs f3, data_806436E4@l(r3)  /* 0x806436E4@l */
/* 8040AB40  EC 89 02 72 */	fmuls f4, f9, f9
/* 8040AB44  EC 07 02 B2 */	fmuls f0, f7, f10
/* 8040AB48  EC 28 02 32 */	fmuls f1, f8, f8
/* 8040AB4C  EC C6 28 2A */	fadds f6, f6, f5
/* 8040AB50  FD 00 02 10 */	fabs f8, f0
/* 8040AB54  EC A4 08 2A */	fadds f5, f4, f1
/* 8040AB58  EC 27 01 B2 */	fmuls f1, f7, f6
/* 8040AB5C  FC 80 40 18 */	frsp f4, f8
/* 8040AB60  EC A5 10 28 */	fsubs f5, f5, f2
/* 8040AB64  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8040AB68  41 80 00 F4 */	blt lbl_8040AC5C
/* 8040AB6C  3C 80 80 64 */	lis r4, lit_1441@ha /* 0x8064371C@ha */
/* 8040AB70  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040AB74  C0 64 37 1C */	lfs f3, lit_1441@l(r4)  /* 0x8064371C@l */
/* 8040AB78  EC 81 00 72 */	fmuls f4, f1, f1
/* 8040AB7C  C0 43 36 E8 */	lfs f2, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040AB80  EC 63 02 B2 */	fmuls f3, f3, f10
/* 8040AB84  EC 63 01 72 */	fmuls f3, f3, f5
/* 8040AB88  EC C4 18 28 */	fsubs f6, f4, f3
/* 8040AB8C  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8040AB90  40 80 00 0C */	bge lbl_8040AB9C
/* 8040AB94  38 60 00 00 */	li r3, 0
/* 8040AB98  48 00 06 2C */	b lbl_8040B1C4
lbl_8040AB9C:
/* 8040AB9C  40 81 00 10 */	ble lbl_8040ABAC
/* 8040ABA0  38 60 00 01 */	li r3, 1
/* 8040ABA4  38 00 00 01 */	li r0, 1
/* 8040ABA8  48 00 00 0C */	b lbl_8040ABB4
lbl_8040ABAC:
/* 8040ABAC  38 00 00 01 */	li r0, 1
/* 8040ABB0  38 60 00 00 */	li r3, 0
lbl_8040ABB4:
/* 8040ABB4  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040ABB8  C0 44 36 E8 */	lfs f2, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040ABBC  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8040ABC0  40 81 00 6C */	ble lbl_8040AC2C
/* 8040ABC4  FC 60 30 34 */	frsqrte f3, f6
/* 8040ABC8  3C 80 80 64 */	lis r4, lit_516@ha /* 0x806436F4@ha */
/* 8040ABCC  38 A4 36 F4 */	addi r5, r4, lit_516@l /* 0x806436F4@l */
/* 8040ABD0  3C 80 80 64 */	lis r4, lit_517@ha /* 0x806436FC@ha */
/* 8040ABD4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8040ABD8  FC 43 00 F2 */	fmul f2, f3, f3
/* 8040ABDC  C8 84 36 FC */	lfd f4, lit_517@l(r4)  /* 0x806436FC@l */
/* 8040ABE0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8040ABE4  FC 46 00 B2 */	fmul f2, f6, f2
/* 8040ABE8  FC 44 10 28 */	fsub f2, f4, f2
/* 8040ABEC  FC 63 00 B2 */	fmul f3, f3, f2
/* 8040ABF0  FC 43 00 F2 */	fmul f2, f3, f3
/* 8040ABF4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8040ABF8  FC 46 00 B2 */	fmul f2, f6, f2
/* 8040ABFC  FC 44 10 28 */	fsub f2, f4, f2
/* 8040AC00  FC 63 00 B2 */	fmul f3, f3, f2
/* 8040AC04  FC 43 00 F2 */	fmul f2, f3, f3
/* 8040AC08  FC 65 00 F2 */	fmul f3, f5, f3
/* 8040AC0C  FC 46 00 B2 */	fmul f2, f6, f2
/* 8040AC10  FC 44 10 28 */	fsub f2, f4, f2
/* 8040AC14  FC 43 00 B2 */	fmul f2, f3, f2
/* 8040AC18  FC 46 00 B2 */	fmul f2, f6, f2
/* 8040AC1C  FC 40 10 18 */	frsp f2, f2
/* 8040AC20  D0 41 00 08 */	stfs f2, 8(r1)
/* 8040AC24  C0 61 00 08 */	lfs f3, 8(r1)
/* 8040AC28  48 00 00 08 */	b lbl_8040AC30
lbl_8040AC2C:
/* 8040AC2C  FC 60 30 90 */	fmr f3, f6
lbl_8040AC30:
/* 8040AC30  2C 00 00 01 */	cmpwi r0, 1
/* 8040AC34  40 82 00 10 */	bne lbl_8040AC44
/* 8040AC38  FC 40 08 50 */	fneg f2, f1
/* 8040AC3C  EC 42 18 2A */	fadds f2, f2, f3
/* 8040AC40  EF E2 00 24 */	fdivs f31, f2, f0
lbl_8040AC44:
/* 8040AC44  2C 03 00 01 */	cmpwi r3, 1
/* 8040AC48  40 82 00 40 */	bne lbl_8040AC88
/* 8040AC4C  FC 20 08 50 */	fneg f1, f1
/* 8040AC50  EC 21 18 28 */	fsubs f1, f1, f3
/* 8040AC54  EF C1 00 24 */	fdivs f30, f1, f0
/* 8040AC58  48 00 00 30 */	b lbl_8040AC88
lbl_8040AC5C:
/* 8040AC5C  FC 00 0A 10 */	fabs f0, f1
/* 8040AC60  FC 00 00 18 */	frsp f0, f0
/* 8040AC64  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8040AC68  41 80 00 18 */	blt lbl_8040AC80
/* 8040AC6C  FC 00 28 50 */	fneg f0, f5
/* 8040AC70  38 00 00 01 */	li r0, 1
/* 8040AC74  38 60 00 00 */	li r3, 0
/* 8040AC78  EF E0 08 24 */	fdivs f31, f0, f1
/* 8040AC7C  48 00 00 0C */	b lbl_8040AC88
lbl_8040AC80:
/* 8040AC80  38 60 00 00 */	li r3, 0
/* 8040AC84  48 00 05 40 */	b lbl_8040B1C4
lbl_8040AC88:
/* 8040AC88  2C 00 00 01 */	cmpwi r0, 1
/* 8040AC8C  40 82 00 34 */	bne lbl_8040ACC0
/* 8040AC90  2C 03 00 00 */	cmpwi r3, 0
/* 8040AC94  40 82 00 2C */	bne lbl_8040ACC0
/* 8040AC98  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040AC9C  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040ACA0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8040ACA4  41 81 00 14 */	bgt lbl_8040ACB8
/* 8040ACA8  3C 80 80 64 */	lis r4, lit_276@ha /* 0x806436EC@ha */
/* 8040ACAC  C0 04 36 EC */	lfs f0, lit_276@l(r4)  /* 0x806436EC@l */
/* 8040ACB0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8040ACB4  40 81 00 8C */	ble lbl_8040AD40
lbl_8040ACB8:
/* 8040ACB8  38 60 00 00 */	li r3, 0
/* 8040ACBC  48 00 05 08 */	b lbl_8040B1C4
lbl_8040ACC0:
/* 8040ACC0  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040ACC4  38 A0 00 01 */	li r5, 1
/* 8040ACC8  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040ACCC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8040ACD0  41 81 00 18 */	bgt lbl_8040ACE8
/* 8040ACD4  3C 80 80 64 */	lis r4, lit_276@ha /* 0x806436EC@ha */
/* 8040ACD8  C0 04 36 EC */	lfs f0, lit_276@l(r4)  /* 0x806436EC@l */
/* 8040ACDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8040ACE0  41 81 00 08 */	bgt lbl_8040ACE8
/* 8040ACE4  38 A0 00 00 */	li r5, 0
lbl_8040ACE8:
/* 8040ACE8  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040ACEC  38 C0 00 01 */	li r6, 1
/* 8040ACF0  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040ACF4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8040ACF8  41 81 00 18 */	bgt lbl_8040AD10
/* 8040ACFC  3C 80 80 64 */	lis r4, lit_276@ha /* 0x806436EC@ha */
/* 8040AD00  C0 04 36 EC */	lfs f0, lit_276@l(r4)  /* 0x806436EC@l */
/* 8040AD04  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8040AD08  41 81 00 08 */	bgt lbl_8040AD10
/* 8040AD0C  38 C0 00 00 */	li r6, 0
lbl_8040AD10:
/* 8040AD10  2C 05 00 00 */	cmpwi r5, 0
/* 8040AD14  41 82 00 14 */	beq lbl_8040AD28
/* 8040AD18  2C 06 00 00 */	cmpwi r6, 0
/* 8040AD1C  41 82 00 0C */	beq lbl_8040AD28
/* 8040AD20  38 60 00 00 */	li r3, 0
/* 8040AD24  48 00 04 A0 */	b lbl_8040B1C4
lbl_8040AD28:
/* 8040AD28  2C 05 00 00 */	cmpwi r5, 0
/* 8040AD2C  41 82 00 08 */	beq lbl_8040AD34
/* 8040AD30  38 00 00 00 */	li r0, 0
lbl_8040AD34:
/* 8040AD34  2C 06 00 00 */	cmpwi r6, 0
/* 8040AD38  41 82 00 08 */	beq lbl_8040AD40
/* 8040AD3C  38 60 00 00 */	li r3, 0
lbl_8040AD40:
/* 8040AD40  2C 00 00 01 */	cmpwi r0, 1
/* 8040AD44  40 82 00 54 */	bne lbl_8040AD98
/* 8040AD48  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040AD4C  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040AD50  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8040AD54  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8040AD58  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040AD5C  EC 42 08 2A */	fadds f2, f2, f1
/* 8040AD60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8040AD64  41 80 00 30 */	blt lbl_8040AD94
/* 8040AD68  A8 DA 00 02 */	lha r6, 2(r26)
/* 8040AD6C  3C 80 43 30 */	lis r4, 0x4330
/* 8040AD70  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040AD74  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040AD78  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8040AD7C  C8 25 37 0C */	lfd f1, lit_573@l(r5)  /* 0x8064370C@l */
/* 8040AD80  90 81 00 AC */	stw r4, 0xac(r1)
/* 8040AD84  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8040AD88  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040AD8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8040AD90  40 81 00 08 */	ble lbl_8040AD98
lbl_8040AD94:
/* 8040AD94  38 00 00 00 */	li r0, 0
lbl_8040AD98:
/* 8040AD98  2C 03 00 01 */	cmpwi r3, 1
/* 8040AD9C  40 82 00 54 */	bne lbl_8040ADF0
/* 8040ADA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040ADA4  3C 80 80 64 */	lis r4, lit_275@ha /* 0x806436E8@ha */
/* 8040ADA8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8040ADAC  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8040ADB0  C0 04 36 E8 */	lfs f0, lit_275@l(r4)  /* 0x806436E8@l */
/* 8040ADB4  EC 42 08 2A */	fadds f2, f2, f1
/* 8040ADB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8040ADBC  41 80 00 30 */	blt lbl_8040ADEC
/* 8040ADC0  A8 DA 00 02 */	lha r6, 2(r26)
/* 8040ADC4  3C 80 43 30 */	lis r4, 0x4330
/* 8040ADC8  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040ADCC  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040ADD0  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8040ADD4  C8 25 37 0C */	lfd f1, lit_573@l(r5)  /* 0x8064370C@l */
/* 8040ADD8  90 81 00 AC */	stw r4, 0xac(r1)
/* 8040ADDC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8040ADE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040ADE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8040ADE8  40 81 00 08 */	ble lbl_8040ADF0
lbl_8040ADEC:
/* 8040ADEC  38 60 00 00 */	li r3, 0
lbl_8040ADF0:
/* 8040ADF0  2C 00 00 00 */	cmpwi r0, 0
/* 8040ADF4  40 82 00 14 */	bne lbl_8040AE08
/* 8040ADF8  2C 03 00 00 */	cmpwi r3, 0
/* 8040ADFC  40 82 00 0C */	bne lbl_8040AE08
/* 8040AE00  38 60 00 00 */	li r3, 0
/* 8040AE04  48 00 03 C0 */	b lbl_8040B1C4
lbl_8040AE08:
/* 8040AE08  2C 00 00 01 */	cmpwi r0, 1
/* 8040AE0C  40 82 01 40 */	bne lbl_8040AF4C
/* 8040AE10  2C 03 00 01 */	cmpwi r3, 1
/* 8040AE14  40 82 01 38 */	bne lbl_8040AF4C
/* 8040AE18  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8040AE1C  3C 80 43 30 */	lis r4, 0x4330
/* 8040AE20  A8 1A 00 06 */	lha r0, 6(r26)
/* 8040AE24  3C 60 80 64 */	lis r3, lit_573@ha /* 0x8064370C@ha */
/* 8040AE28  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8040AE2C  C1 01 00 24 */	lfs f8, 0x24(r1)
/* 8040AE30  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8040AE34  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8040AE38  EC 7E 00 32 */	fmuls f3, f30, f0
/* 8040AE3C  C1 41 00 14 */	lfs f10, 0x14(r1)
/* 8040AE40  90 A1 00 AC */	stw r5, 0xac(r1)
/* 8040AE44  EC C8 08 2A */	fadds f6, f8, f1
/* 8040AE48  C8 03 37 0C */	lfd f0, lit_573@l(r3)  /* 0x8064370C@l */
/* 8040AE4C  EC 9F 02 B2 */	fmuls f4, f31, f10
/* 8040AE50  C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 8040AE54  63 FF 00 0C */	ori r31, r31, 0xc
/* 8040AE58  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8040AE5C  EC E1 00 28 */	fsubs f7, f1, f0
/* 8040AE60  C1 61 00 2C */	lfs f11, 0x2c(r1)
/* 8040AE64  EC BF 00 B2 */	fmuls f5, f31, f2
/* 8040AE68  C1 21 00 28 */	lfs f9, 0x28(r1)
/* 8040AE6C  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8040AE70  90 81 00 98 */	stw r4, 0x98(r1)
/* 8040AE74  EC E7 30 2A */	fadds f7, f7, f6
/* 8040AE78  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8040AE7C  EC CB 20 2A */	fadds f6, f11, f4
/* 8040AE80  EC 3E 02 B2 */	fmuls f1, f30, f10
/* 8040AE84  90 81 00 78 */	stw r4, 0x78(r1)
/* 8040AE88  EC 88 18 2A */	fadds f4, f8, f3
/* 8040AE8C  D0 E1 00 48 */	stfs f7, 0x48(r1)
/* 8040AE90  EC A9 28 2A */	fadds f5, f9, f5
/* 8040AE94  EC 49 10 2A */	fadds f2, f9, f2
/* 8040AE98  A8 1A 00 08 */	lha r0, 8(r26)
/* 8040AE9C  EC 2B 08 2A */	fadds f1, f11, f1
/* 8040AEA0  A8 7A 00 04 */	lha r3, 4(r26)
/* 8040AEA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AEA8  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8040AEAC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040AEB0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8040AEB4  C8 61 00 98 */	lfd f3, 0x98(r1)
/* 8040AEB8  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8040AEBC  EC 63 00 28 */	fsubs f3, f3, f0
/* 8040AEC0  C8 E1 00 A0 */	lfd f7, 0xa0(r1)
/* 8040AEC4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8040AEC8  EC A3 28 2A */	fadds f5, f3, f5
/* 8040AECC  EC E7 00 28 */	fsubs f7, f7, f0
/* 8040AED0  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 8040AED4  90 81 00 88 */	stw r4, 0x88(r1)
/* 8040AED8  EC 63 00 28 */	fsubs f3, f3, f0
/* 8040AEDC  EC A7 28 2A */	fadds f5, f7, f5
/* 8040AEE0  90 81 00 90 */	stw r4, 0x90(r1)
/* 8040AEE4  EC 63 10 2A */	fadds f3, f3, f2
/* 8040AEE8  C8 41 00 88 */	lfd f2, 0x88(r1)
/* 8040AEEC  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 8040AEF0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8040AEF4  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040AEF8  90 61 00 84 */	stw r3, 0x84(r1)
/* 8040AEFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AF00  EC A2 20 2A */	fadds f5, f2, f4
/* 8040AF04  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040AF08  90 81 00 80 */	stw r4, 0x80(r1)
/* 8040AF0C  C8 81 00 90 */	lfd f4, 0x90(r1)
/* 8040AF10  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 8040AF14  EC E4 00 28 */	fsubs f7, f4, f0
/* 8040AF18  90 01 00 74 */	stw r0, 0x74(r1)
/* 8040AF1C  EC 82 00 28 */	fsubs f4, f2, f0
/* 8040AF20  90 81 00 70 */	stw r4, 0x70(r1)
/* 8040AF24  EC C7 30 2A */	fadds f6, f7, f6
/* 8040AF28  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 8040AF2C  EC 64 18 2A */	fadds f3, f4, f3
/* 8040AF30  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 8040AF34  EC 02 00 28 */	fsubs f0, f2, f0
/* 8040AF38  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 8040AF3C  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AF40  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8040AF44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8040AF48  48 00 01 90 */	b lbl_8040B0D8
lbl_8040AF4C:
/* 8040AF4C  2C 00 00 01 */	cmpwi r0, 1
/* 8040AF50  40 82 00 C4 */	bne lbl_8040B014
/* 8040AF54  A8 7A 00 06 */	lha r3, 6(r26)
/* 8040AF58  3C 00 43 30 */	lis r0, 0x4330
/* 8040AF5C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8040AF60  3C 80 80 64 */	lis r4, lit_573@ha /* 0x8064370C@ha */
/* 8040AF64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040AF68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040AF6C  90 61 00 AC */	stw r3, 0xac(r1)
/* 8040AF70  EC 5F 00 72 */	fmuls f2, f31, f1
/* 8040AF74  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8040AF78  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8040AF7C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8040AF80  63 FF 00 04 */	ori r31, r31, 4
/* 8040AF84  C8 A4 37 0C */	lfd f5, lit_573@l(r4)  /* 0x8064370C@l */
/* 8040AF88  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8040AF8C  EC 63 10 2A */	fadds f3, f3, f2
/* 8040AF90  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8040AF94  EC 80 28 28 */	fsubs f4, f0, f5
/* 8040AF98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8040AF9C  EC 42 08 2A */	fadds f2, f2, f1
/* 8040AFA0  90 01 00 98 */	stw r0, 0x98(r1)
/* 8040AFA4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8040AFA8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8040AFAC  EC 64 18 2A */	fadds f3, f4, f3
/* 8040AFB0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8040AFB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8040AFB8  90 01 00 90 */	stw r0, 0x90(r1)
/* 8040AFBC  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8040AFC0  A8 1A 00 08 */	lha r0, 8(r26)
/* 8040AFC4  A8 7A 00 04 */	lha r3, 4(r26)
/* 8040AFC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AFCC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8040AFD0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8040AFD4  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8040AFD8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8040AFDC  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040AFE0  C8 61 00 A0 */	lfd f3, 0xa0(r1)
/* 8040AFE4  EC 63 28 28 */	fsubs f3, f3, f5
/* 8040AFE8  EC 21 10 2A */	fadds f1, f1, f2
/* 8040AFEC  EC 23 08 2A */	fadds f1, f3, f1
/* 8040AFF0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8040AFF4  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040AFF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040AFFC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040B000  C8 21 00 90 */	lfd f1, 0x90(r1)
/* 8040B004  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040B008  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B00C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8040B010  48 00 00 C8 */	b lbl_8040B0D8
lbl_8040B014:
/* 8040B014  2C 03 00 01 */	cmpwi r3, 1
/* 8040B018  40 82 00 C0 */	bne lbl_8040B0D8
/* 8040B01C  A8 7A 00 06 */	lha r3, 6(r26)
/* 8040B020  3C 00 43 30 */	lis r0, 0x4330
/* 8040B024  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8040B028  3C 80 80 64 */	lis r4, lit_573@ha /* 0x8064370C@ha */
/* 8040B02C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040B030  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040B034  90 61 00 AC */	stw r3, 0xac(r1)
/* 8040B038  EC 5E 00 72 */	fmuls f2, f30, f1
/* 8040B03C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8040B040  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8040B044  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8040B048  63 FF 00 04 */	ori r31, r31, 4
/* 8040B04C  C8 A4 37 0C */	lfd f5, lit_573@l(r4)  /* 0x8064370C@l */
/* 8040B050  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8040B054  EC 63 10 2A */	fadds f3, f3, f2
/* 8040B058  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8040B05C  EC 80 28 28 */	fsubs f4, f0, f5
/* 8040B060  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8040B064  EC 42 08 2A */	fadds f2, f2, f1
/* 8040B068  90 01 00 98 */	stw r0, 0x98(r1)
/* 8040B06C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8040B070  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8040B074  EC 64 18 2A */	fadds f3, f4, f3
/* 8040B078  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8040B07C  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B080  90 01 00 90 */	stw r0, 0x90(r1)
/* 8040B084  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8040B088  A8 1A 00 08 */	lha r0, 8(r26)
/* 8040B08C  A8 7A 00 04 */	lha r3, 4(r26)
/* 8040B090  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B094  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8040B098  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8040B09C  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8040B0A0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8040B0A4  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040B0A8  C8 61 00 A0 */	lfd f3, 0xa0(r1)
/* 8040B0AC  EC 63 28 28 */	fsubs f3, f3, f5
/* 8040B0B0  EC 21 10 2A */	fadds f1, f1, f2
/* 8040B0B4  EC 23 08 2A */	fadds f1, f3, f1
/* 8040B0B8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8040B0BC  A8 1A 00 0A */	lha r0, 0xa(r26)
/* 8040B0C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B0C4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040B0C8  C8 21 00 90 */	lfd f1, 0x90(r1)
/* 8040B0CC  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040B0D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B0D4  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_8040B0D8:
/* 8040B0D8  38 00 00 04 */	li r0, 4
/* 8040B0DC  38 C1 00 30 */	addi r6, r1, 0x30
/* 8040B0E0  3B C0 00 00 */	li r30, 0
/* 8040B0E4  39 00 00 00 */	li r8, 0
/* 8040B0E8  38 60 00 00 */	li r3, 0
/* 8040B0EC  38 E0 00 01 */	li r7, 1
/* 8040B0F0  7C 09 03 A6 */	mtctr r0
lbl_8040B0F4:
/* 8040B0F4  7C E0 40 30 */	slw r0, r7, r8
/* 8040B0F8  7F E0 00 39 */	and. r0, r31, r0
/* 8040B0FC  41 82 00 B8 */	beq lbl_8040B1B4
/* 8040B100  2C 1E 00 00 */	cmpwi r30, 0
/* 8040B104  40 82 00 24 */	bne lbl_8040B128
/* 8040B108  7C A6 1A 14 */	add r5, r6, r3
/* 8040B10C  80 85 00 00 */	lwz r4, 0(r5)
/* 8040B110  80 05 00 04 */	lwz r0, 4(r5)
/* 8040B114  90 9C 00 00 */	stw r4, 0(r28)
/* 8040B118  90 1C 00 04 */	stw r0, 4(r28)
/* 8040B11C  80 05 00 08 */	lwz r0, 8(r5)
/* 8040B120  90 1C 00 08 */	stw r0, 8(r28)
/* 8040B124  48 00 00 8C */	b lbl_8040B1B0
lbl_8040B128:
/* 8040B128  2C 1E 00 01 */	cmpwi r30, 1
/* 8040B12C  40 82 00 84 */	bne lbl_8040B1B0
/* 8040B130  1C 08 00 0C */	mulli r0, r8, 0xc
/* 8040B134  3B 41 00 30 */	addi r26, r1, 0x30
/* 8040B138  7F 83 E3 78 */	mr r3, r28
/* 8040B13C  7F 5A 02 14 */	add r26, r26, r0
/* 8040B140  7F 44 D3 78 */	mr r4, r26
/* 8040B144  4B FF DD A5 */	bl Math3DLengthSquare
/* 8040B148  FF C0 08 90 */	fmr f30, f1
/* 8040B14C  7F 83 E3 78 */	mr r3, r28
/* 8040B150  7F 64 DB 78 */	mr r4, r27
/* 8040B154  4B FF DD 95 */	bl Math3DLengthSquare
/* 8040B158  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8040B15C  40 80 00 20 */	bge lbl_8040B17C
/* 8040B160  80 7A 00 00 */	lwz r3, 0(r26)
/* 8040B164  80 1A 00 04 */	lwz r0, 4(r26)
/* 8040B168  90 7D 00 00 */	stw r3, 0(r29)
/* 8040B16C  90 1D 00 04 */	stw r0, 4(r29)
/* 8040B170  80 1A 00 08 */	lwz r0, 8(r26)
/* 8040B174  90 1D 00 08 */	stw r0, 8(r29)
/* 8040B178  48 00 00 48 */	b lbl_8040B1C0
lbl_8040B17C:
/* 8040B17C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8040B180  80 1C 00 04 */	lwz r0, 4(r28)
/* 8040B184  90 7D 00 00 */	stw r3, 0(r29)
/* 8040B188  90 1D 00 04 */	stw r0, 4(r29)
/* 8040B18C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8040B190  90 1D 00 08 */	stw r0, 8(r29)
/* 8040B194  80 7A 00 00 */	lwz r3, 0(r26)
/* 8040B198  80 1A 00 04 */	lwz r0, 4(r26)
/* 8040B19C  90 7C 00 00 */	stw r3, 0(r28)
/* 8040B1A0  90 1C 00 04 */	stw r0, 4(r28)
/* 8040B1A4  80 1A 00 08 */	lwz r0, 8(r26)
/* 8040B1A8  90 1C 00 08 */	stw r0, 8(r28)
/* 8040B1AC  48 00 00 14 */	b lbl_8040B1C0
lbl_8040B1B0:
/* 8040B1B0  3B DE 00 01 */	addi r30, r30, 1
lbl_8040B1B4:
/* 8040B1B4  39 08 00 01 */	addi r8, r8, 1
/* 8040B1B8  38 63 00 0C */	addi r3, r3, 0xc
/* 8040B1BC  42 00 FF 38 */	bdnz lbl_8040B0F4
lbl_8040B1C0:
/* 8040B1C0  7F C3 F3 78 */	mr r3, r30
lbl_8040B1C4:
/* 8040B1C4  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8040B1C8  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8040B1CC  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8040B1D0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8040B1D4  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8040B1D8  4B C8 FD 3D */	bl func_8009AF14
/* 8040B1DC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8040B1E0  7C 08 03 A6 */	mtlr r0
/* 8040B1E4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8040B1E8  4E 80 00 20 */	blr 
