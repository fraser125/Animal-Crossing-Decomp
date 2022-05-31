lbl_804C2774:
/* 804C2774  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C2778  7C 08 02 A6 */	mflr r0
/* 804C277C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C2780  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804C2784  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804C2788  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804C278C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804C2790  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C2794  7C 7F 1B 78 */	mr r31, r3
/* 804C2798  3C 00 43 30 */	lis r0, 0x4330
/* 804C279C  A8 A3 00 50 */	lha r5, 0x50(r3)
/* 804C27A0  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C27A4  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C27A8  A8 DF 00 8A */	lha r6, 0x8a(r31)
/* 804C27AC  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 804C27B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C27B4  C8 24 00 00 */	lfd f1, 0(r4)
/* 804C27B8  7C C0 07 35 */	extsh. r0, r6
/* 804C27BC  90 61 00 24 */	stw r3, 0x24(r1)
/* 804C27C0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C27C4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804C27C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C27CC  EF E2 00 24 */	fdivs f31, f2, f0
/* 804C27D0  40 81 00 48 */	ble lbl_804C2818
/* 804C27D4  2C 06 00 01 */	cmpwi r6, 1
/* 804C27D8  40 82 00 34 */	bne lbl_804C280C
/* 804C27DC  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C27E0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804C27E4  41 82 00 14 */	beq lbl_804C27F8
/* 804C27E8  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C27EC  38 60 04 3D */	li r3, 0x43d
/* 804C27F0  48 16 B7 B9 */	bl sAdo_OngenTrgStart
/* 804C27F4  48 00 00 18 */	b lbl_804C280C
lbl_804C27F8:
/* 804C27F8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C27FC  41 82 00 10 */	beq lbl_804C280C
/* 804C2800  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C2804  38 60 04 0C */	li r3, 0x40c
/* 804C2808  48 16 B7 A1 */	bl sAdo_OngenTrgStart
lbl_804C280C:
/* 804C280C  A8 7F 00 8A */	lha r3, 0x8a(r31)
/* 804C2810  38 03 FF FF */	addi r0, r3, -1
/* 804C2814  B0 1F 00 8A */	sth r0, 0x8a(r31)
lbl_804C2818:
/* 804C2818  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C281C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C2820  41 82 00 94 */	beq lbl_804C28B4
/* 804C2824  3C 80 80 64 */	lis r4, lit_1855@ha /* 0x806461B8@ha */
/* 804C2828  3C 00 43 30 */	lis r0, 0x4330
/* 804C282C  C0 44 61 B8 */	lfs f2, lit_1855@l(r4)  /* 0x806461B8@l */
/* 804C2830  3C 60 80 64 */	lis r3, lit_1857@ha /* 0x806461C0@ha */
/* 804C2834  38 83 61 C0 */	addi r4, r3, lit_1857@l /* 0x806461C0@l */
/* 804C2838  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804C283C  EC A2 07 F2 */	fmuls f5, f2, f31
/* 804C2840  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C2844  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804C2848  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C284C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C2850  EC 00 01 72 */	fmuls f0, f0, f5
/* 804C2854  EC 83 08 28 */	fsubs f4, f3, f1
/* 804C2858  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 804C285C  C8 23 61 5C */	lfd f1, lit_770@l(r3)  /* 0x8064615C@l */
/* 804C2860  FC 00 00 1E */	fctiwz f0, f0
/* 804C2864  FC 80 22 10 */	fabs f4, f4
/* 804C2868  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804C286C  FC 00 20 18 */	frsp f0, f4
/* 804C2870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C2874  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C2878  EF C0 18 24 */	fdivs f30, f0, f3
/* 804C287C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804C2880  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804C2884  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C2888  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C288C  EC 05 00 28 */	fsubs f0, f5, f0
/* 804C2890  FC 00 00 1E */	fctiwz f0, f0
/* 804C2894  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804C2898  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804C289C  4B EF 82 55 */	bl sin_s
/* 804C28A0  3C 60 80 64 */	lis r3, lit_1856@ha /* 0x806461BC@ha */
/* 804C28A4  C0 03 61 BC */	lfs f0, lit_1856@l(r3)  /* 0x806461BC@l */
/* 804C28A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C28AC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804C28B0  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_804C28B4:
/* 804C28B4  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C28B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C28BC  41 82 00 3C */	beq lbl_804C28F8
/* 804C28C0  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646164@ha */
/* 804C28C4  3C 80 80 64 */	lis r4, lit_1859@ha /* 0x806461C8@ha */
/* 804C28C8  C0 23 61 64 */	lfs f1, lit_845@l(r3)  /* 0x80646164@l */
/* 804C28CC  3C A0 80 64 */	lis r5, lit_1858@ha /* 0x806461C4@ha */
/* 804C28D0  C0 44 61 C8 */	lfs f2, lit_1859@l(r4)  /* 0x806461C8@l */
/* 804C28D4  EC 01 F8 28 */	fsubs f0, f1, f31
/* 804C28D8  C0 65 61 C4 */	lfs f3, lit_1858@l(r5)  /* 0x806461C4@l */
/* 804C28DC  EC 00 00 32 */	fmuls f0, f0, f0
/* 804C28E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C28E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C28E8  EC 03 00 2A */	fadds f0, f3, f0
/* 804C28EC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C28F0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C28F4  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804C28F8:
/* 804C28F8  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804C28FC  4B EF 81 F5 */	bl sin_s
/* 804C2900  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804C2904  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804C2908  EF E0 00 72 */	fmuls f31, f0, f1
/* 804C290C  4B EF 81 91 */	bl cos_s
/* 804C2910  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804C2914  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064617C@ha */
/* 804C2918  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C291C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804C2920  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C2924  C0 43 61 7C */	lfs f2, lit_1004@l(r3)  /* 0x8064617C@l */
/* 804C2928  EC 83 00 72 */	fmuls f4, f3, f1
/* 804C292C  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804C2930  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C2934  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 804C2938  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804C293C  EC 01 00 2A */	fadds f0, f1, f0
/* 804C2940  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804C2944  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804C2948  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804C294C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C2950  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804C2954  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 804C2958  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804C295C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804C2960  EC 22 08 2A */	fadds f1, f2, f1
/* 804C2964  EC 03 00 32 */	fmuls f0, f3, f0
/* 804C2968  EC 01 00 2A */	fadds f0, f1, f0
/* 804C296C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804C2970  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C2974  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804C2978  EC 04 00 32 */	fmuls f0, f4, f0
/* 804C297C  EC 01 00 2A */	fadds f0, f1, f0
/* 804C2980  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 804C2984  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C2988  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C298C  41 82 00 68 */	beq lbl_804C29F4
/* 804C2990  A0 9F 00 78 */	lhz r4, 0x78(r31)
/* 804C2994  3C 00 43 30 */	lis r0, 0x4330
/* 804C2998  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064618C@ha */
/* 804C299C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C29A0  C8 23 61 8C */	lfd f1, lit_1524@l(r3)  /* 0x8064618C@l */
/* 804C29A4  90 81 00 34 */	stw r4, 0x34(r1)
/* 804C29A8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C29AC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C29B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C29B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C29B8  40 81 00 3C */	ble lbl_804C29F4
/* 804C29BC  A0 1F 00 76 */	lhz r0, 0x76(r31)
/* 804C29C0  28 00 00 FF */	cmplwi r0, 0xff
/* 804C29C4  41 81 00 20 */	bgt lbl_804C29E4
/* 804C29C8  20 00 00 FF */	subfic r0, r0, 0xff
/* 804C29CC  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C29D0  A0 7F 00 76 */	lhz r3, 0x76(r31)
/* 804C29D4  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 804C29D8  7C 03 02 14 */	add r0, r3, r0
/* 804C29DC  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804C29E0  48 00 00 14 */	b lbl_804C29F4
lbl_804C29E4:
/* 804C29E4  38 00 00 00 */	li r0, 0
/* 804C29E8  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C29EC  90 1F 00 00 */	stw r0, 0(r31)
/* 804C29F0  90 1F 00 04 */	stw r0, 4(r31)
lbl_804C29F4:
/* 804C29F4  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C29F8  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C29FC  41 82 00 28 */	beq lbl_804C2A24
/* 804C2A00  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804C2A04  41 82 00 14 */	beq lbl_804C2A18
/* 804C2A08  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804C2A0C  38 03 FE DD */	addi r0, r3, -291
/* 804C2A10  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804C2A14  48 00 00 10 */	b lbl_804C2A24
lbl_804C2A18:
/* 804C2A18  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804C2A1C  38 03 01 23 */	addi r0, r3, 0x123
/* 804C2A20  B0 1F 00 48 */	sth r0, 0x48(r31)
lbl_804C2A24:
/* 804C2A24  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804C2A28  3C 00 43 30 */	lis r0, 0x4330
/* 804C2A2C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C2A30  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C2A34  38 04 FF FF */	addi r0, r4, -1
/* 804C2A38  C8 23 61 5C */	lfd f1, lit_770@l(r3)  /* 0x8064615C@l */
/* 804C2A3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C2A40  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C2A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C2A48  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C2A4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C2A50  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 804C2A54  40 82 00 8C */	bne lbl_804C2AE0
/* 804C2A58  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C2A5C  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804C2A60  41 82 00 80 */	beq lbl_804C2AE0
/* 804C2A64  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 804C2A68  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C2A6C  A0 9F 00 6C */	lhz r4, 0x6c(r31)
/* 804C2A70  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804C2A74  40 82 00 6C */	bne lbl_804C2AE0
/* 804C2A78  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C2A7C  28 03 28 00 */	cmplwi r3, 0x2800
/* 804C2A80  41 82 00 1C */	beq lbl_804C2A9C
/* 804C2A84  38 03 D7 FF */	addi r0, r3, -10241
/* 804C2A88  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804C2A8C  28 00 00 03 */	cmplwi r0, 3
/* 804C2A90  40 81 00 0C */	ble lbl_804C2A9C
/* 804C2A94  28 03 28 07 */	cmplwi r3, 0x2807
/* 804C2A98  40 82 00 14 */	bne lbl_804C2AAC
lbl_804C2A9C:
/* 804C2A9C  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C2AA0  38 60 01 27 */	li r3, 0x127
/* 804C2AA4  48 16 B5 05 */	bl sAdo_OngenTrgStart
/* 804C2AA8  48 00 00 38 */	b lbl_804C2AE0
lbl_804C2AAC:
/* 804C2AAC  28 03 21 00 */	cmplwi r3, 0x2100
/* 804C2AB0  41 80 00 1C */	blt lbl_804C2ACC
/* 804C2AB4  28 03 21 04 */	cmplwi r3, 0x2104
/* 804C2AB8  41 81 00 14 */	bgt lbl_804C2ACC
/* 804C2ABC  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C2AC0  38 60 04 44 */	li r3, 0x444
/* 804C2AC4  48 16 B4 E5 */	bl sAdo_OngenTrgStart
/* 804C2AC8  48 00 00 18 */	b lbl_804C2AE0
lbl_804C2ACC:
/* 804C2ACC  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804C2AD0  40 82 00 10 */	bne lbl_804C2AE0
/* 804C2AD4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C2AD8  38 60 01 28 */	li r3, 0x128
/* 804C2ADC  48 16 B4 CD */	bl sAdo_OngenTrgStart
lbl_804C2AE0:
/* 804C2AE0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C2AE4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C2AE8  41 82 00 38 */	beq lbl_804C2B20
/* 804C2AEC  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804C2AF0  3C 00 43 30 */	lis r0, 0x4330
/* 804C2AF4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C2AF8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C2AFC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C2B00  C8 23 61 5C */	lfd f1, lit_770@l(r3)  /* 0x8064615C@l */
/* 804C2B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C2B08  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C2B0C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C2B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C2B14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C2B18  4C 41 13 82 */	cror 2, 1, 2
/* 804C2B1C  41 82 00 2C */	beq lbl_804C2B48
lbl_804C2B20:
/* 804C2B20  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C2B24  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804C2B28  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804C2B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2B30  40 80 01 9C */	bge lbl_804C2CCC
/* 804C2B34  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804C2B38  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804C2B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2B40  4C 40 13 82 */	cror 2, 0, 2
/* 804C2B44  40 82 01 88 */	bne lbl_804C2CCC
lbl_804C2B48:
/* 804C2B48  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C2B4C  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C2B50  4B EF 83 6D */	bl xyz_t_move
/* 804C2B54  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C2B58  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804C2B5C  41 82 00 10 */	beq lbl_804C2B6C
/* 804C2B60  7F E3 FB 78 */	mr r3, r31
/* 804C2B64  4B FF FA BD */	bl bIT_actor_drop_move_bury_change
/* 804C2B68  48 00 01 78 */	b lbl_804C2CE0
lbl_804C2B6C:
/* 804C2B6C  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804C2B70  2C 00 00 00 */	cmpwi r0, 0
/* 804C2B74  41 82 00 F0 */	beq lbl_804C2C64
/* 804C2B78  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 804C2B7C  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C2B80  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C2B84  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C2B88  4B EF 83 35 */	bl xyz_t_move
/* 804C2B8C  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C2B90  3C 00 43 30 */	lis r0, 0x4330
/* 804C2B94  38 83 61 3C */	addi r4, r3, data_8064613C@l /* 0x8064613C@l */
/* 804C2B98  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804C2B9C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C2BA0  38 83 61 5C */	addi r4, r3, lit_770@l /* 0x8064615C@l */
/* 804C2BA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C2BA8  38 7F 00 94 */	addi r3, r31, 0x94
/* 804C2BAC  C8 44 00 00 */	lfd f2, 0(r4)
/* 804C2BB0  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C2BB4  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804C2BB8  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 804C2BBC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804C2BC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C2BC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C2BC8  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 804C2BCC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804C2BD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C2BD4  FC 00 00 1E */	fctiwz f0, f0
/* 804C2BD8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804C2BDC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C2BE0  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 804C2BE4  4B EF 82 D9 */	bl xyz_t_move
/* 804C2BE8  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 804C2BEC  3C 00 43 30 */	lis r0, 0x4330
/* 804C2BF0  3C A0 80 64 */	lis r5, data_8064613C@ha /* 0x8064613C@ha */
/* 804C2BF4  3C 80 80 64 */	lis r4, lit_770@ha /* 0x8064615C@ha */
/* 804C2BF8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804C2BFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C2C00  38 C5 61 3C */	addi r6, r5, data_8064613C@l /* 0x8064613C@l */
/* 804C2C04  38 A4 61 5C */	addi r5, r4, lit_770@l /* 0x8064615C@l */
/* 804C2C08  90 61 00 24 */	stw r3, 0x24(r1)
/* 804C2C0C  38 61 00 0C */	addi r3, r1, 0xc
/* 804C2C10  C0 26 00 00 */	lfs f1, 0(r6)
/* 804C2C14  38 81 00 08 */	addi r4, r1, 8
/* 804C2C18  C8 65 00 00 */	lfd f3, 0(r5)
/* 804C2C1C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804C2C20  FC 40 08 90 */	fmr f2, f1
/* 804C2C24  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 804C2C28  EC 60 18 28 */	fsubs f3, f0, f3
/* 804C2C2C  4B FF DB 71 */	bl func_calc_spec_drop_time
/* 804C2C30  C0 01 00 08 */	lfs f0, 8(r1)
/* 804C2C34  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646164@ha */
/* 804C2C38  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804C2C3C  C0 03 61 64 */	lfs f0, lit_845@l(r3)  /* 0x80646164@l */
/* 804C2C40  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804C2C44  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 804C2C48  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804C2C4C  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 804C2C50  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804C2C54  A8 7F 00 6E */	lha r3, 0x6e(r31)
/* 804C2C58  38 03 FF FF */	addi r0, r3, -1
/* 804C2C5C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804C2C60  48 00 00 80 */	b lbl_804C2CE0
lbl_804C2C64:
/* 804C2C64  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C2C68  28 00 00 62 */	cmplwi r0, 0x62
/* 804C2C6C  40 82 00 1C */	bne lbl_804C2C88
/* 804C2C70  38 00 00 01 */	li r0, 1
/* 804C2C74  3C 60 80 4C */	lis r3, bIT_actor_drop_wait_bee@ha /* 0x804C26A0@ha */
/* 804C2C78  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804C2C7C  38 03 26 A0 */	addi r0, r3, bIT_actor_drop_wait_bee@l /* 0x804C26A0@l */
/* 804C2C80  90 1F 00 00 */	stw r0, 0(r31)
/* 804C2C84  48 00 00 5C */	b lbl_804C2CE0
lbl_804C2C88:
/* 804C2C88  38 00 00 00 */	li r0, 0
/* 804C2C8C  90 1F 00 00 */	stw r0, 0(r31)
/* 804C2C90  90 1F 00 04 */	stw r0, 4(r31)
/* 804C2C94  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C2C98  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C2C9C  40 82 00 44 */	bne lbl_804C2CE0
/* 804C2CA0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804C2CA4  38 81 00 10 */	addi r4, r1, 0x10
/* 804C2CA8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804C2CAC  38 A0 00 01 */	li r5, 1
/* 804C2CB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 804C2CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C2CB8  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804C2CBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C2CC0  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C2CC4  4B EE 4B 6D */	bl mFI_SetFG_common
/* 804C2CC8  48 00 00 18 */	b lbl_804C2CE0
lbl_804C2CCC:
/* 804C2CCC  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064617C@ha */
/* 804C2CD0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804C2CD4  C0 03 61 7C */	lfs f0, lit_1004@l(r3)  /* 0x8064617C@l */
/* 804C2CD8  EC 01 00 2A */	fadds f0, f1, f0
/* 804C2CDC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_804C2CE0:
/* 804C2CE0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804C2CE4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804C2CE8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804C2CEC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804C2CF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C2CF4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C2CF8  7C 08 03 A6 */	mtlr r0
/* 804C2CFC  38 21 00 60 */	addi r1, r1, 0x60
/* 804C2D00  4E 80 00 20 */	blr 
