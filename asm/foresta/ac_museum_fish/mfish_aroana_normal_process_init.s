lbl_8043A6DC:
/* 8043A6DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043A6E0  7C 08 02 A6 */	mflr r0
/* 8043A6E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043A6E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8043A6EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8043A6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043A6F4  7C 7F 1B 78 */	mr r31, r3
/* 8043A6F8  4B C2 25 FD */	bl fqrand
/* 8043A6FC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8043A700  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043A704  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043A708  EC 23 00 72 */	fmuls f1, f3, f1
/* 8043A70C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043A710  EC 63 10 2A */	fadds f3, f3, f2
/* 8043A714  EC 22 08 2A */	fadds f1, f2, f1
/* 8043A718  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043A71C  40 81 00 08 */	ble lbl_8043A724
/* 8043A720  48 00 00 08 */	b lbl_8043A728
lbl_8043A724:
/* 8043A724  FC 60 00 90 */	fmr f3, f0
lbl_8043A728:
/* 8043A728  EF E1 18 24 */	fdivs f31, f1, f3
/* 8043A72C  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 8043A730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043A734  40 81 00 08 */	ble lbl_8043A73C
/* 8043A738  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_8043A73C:
/* 8043A73C  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043A740  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043A744  4B FF 70 15 */	bl Rnd_EX_fx
/* 8043A748  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8043A74C  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8043A750  C0 5F 05 F4 */	lfs f2, 0x5f4(r31)
/* 8043A754  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8043A758  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 8043A75C  EC 42 08 2A */	fadds f2, f2, f1
/* 8043A760  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043A764  EC 42 00 28 */	fsubs f2, f2, f0
/* 8043A768  4B FD 18 99 */	bl atans_table
/* 8043A76C  7C 60 07 34 */	extsh r0, r3
/* 8043A770  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043A774  7C 00 26 70 */	srawi r0, r0, 4
/* 8043A778  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043A77C  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 8043A780  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 8043A784  4B C2 25 71 */	bl fqrand
/* 8043A788  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8043A78C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043A790  40 81 00 D4 */	ble lbl_8043A864
/* 8043A794  A8 7F 00 30 */	lha r3, 0x30(r31)
/* 8043A798  3C 00 43 30 */	lis r0, 0x4330
/* 8043A79C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043A7A0  3C A0 80 64 */	lis r5, data_80644244@ha /* 0x80644244@ha */
/* 8043A7A4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043A7A8  90 01 00 08 */	stw r0, 8(r1)
/* 8043A7AC  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043A7B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8043A7B4  C0 45 42 44 */	lfs f2, data_80644244@l(r5)  /* 0x80644244@l */
/* 8043A7B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043A7BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043A7C0  EC 22 00 32 */	fmuls f1, f2, f0
/* 8043A7C4  4B FF 6F 95 */	bl Rnd_EX_fx
/* 8043A7C8  FC 00 08 1E */	fctiwz f0, f1
/* 8043A7CC  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043A7D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043A7D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8043A7D8  7C 00 1A 14 */	add r0, r0, r3
/* 8043A7DC  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043A7E0  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 8043A7E4  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043A7E8  7C 83 00 50 */	subf r4, r3, r0
/* 8043A7EC  7C 80 07 34 */	extsh r0, r4
/* 8043A7F0  7C 83 07 35 */	extsh. r3, r4
/* 8043A7F4  7C 60 00 D0 */	neg r3, r0
/* 8043A7F8  41 80 00 08 */	blt lbl_8043A800
/* 8043A7FC  7C 03 03 78 */	mr r3, r0
lbl_8043A800:
/* 8043A800  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 8043A804  40 80 00 28 */	bge lbl_8043A82C
/* 8043A808  7C 80 07 35 */	extsh. r0, r4
/* 8043A80C  40 81 00 14 */	ble lbl_8043A820
/* 8043A810  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043A814  38 03 0E 38 */	addi r0, r3, 0xe38
/* 8043A818  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043A81C  48 00 00 10 */	b lbl_8043A82C
lbl_8043A820:
/* 8043A820  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043A824  38 03 F1 C8 */	addi r0, r3, -3640
/* 8043A828  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043A82C:
/* 8043A82C  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 8043A830  3C 80 80 64 */	lis r4, lit_697@ha /* 0x806442B0@ha */
/* 8043A834  C0 03 42 B4 */	lfs f0, lit_698@l(r3)  /* 0x806442B4@l */
/* 8043A838  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043A83C  C0 24 42 B0 */	lfs f1, lit_697@l(r4)  /* 0x806442B0@l */
/* 8043A840  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043A844  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8043A848  EC 01 00 2A */	fadds f0, f1, f0
/* 8043A84C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043A850  FC 00 00 1E */	fctiwz f0, f0
/* 8043A854  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043A858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A85C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 8043A860  48 00 00 60 */	b lbl_8043A8C0
lbl_8043A864:
/* 8043A864  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043A868  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043A86C  7C 00 18 50 */	subf r0, r0, r3
/* 8043A870  7C 00 07 35 */	extsh. r0, r0
/* 8043A874  40 81 00 10 */	ble lbl_8043A884
/* 8043A878  38 03 0E 38 */	addi r0, r3, 0xe38
/* 8043A87C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043A880  48 00 00 0C */	b lbl_8043A88C
lbl_8043A884:
/* 8043A884  38 03 F1 C8 */	addi r0, r3, -3640
/* 8043A888  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043A88C:
/* 8043A88C  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 8043A890  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 8043A894  C0 03 42 84 */	lfs f0, lit_568@l(r3)  /* 0x80644284@l */
/* 8043A898  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043A89C  C0 24 42 B4 */	lfs f1, lit_698@l(r4)  /* 0x806442B4@l */
/* 8043A8A0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043A8A4  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8043A8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8043A8AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043A8B0  FC 00 00 1E */	fctiwz f0, f0
/* 8043A8B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043A8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A8BC  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_8043A8C0:
/* 8043A8C0  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043A8C4  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043A8C8  7C 03 00 50 */	subf r0, r3, r0
/* 8043A8CC  7C 00 07 35 */	extsh. r0, r0
/* 8043A8D0  40 81 00 10 */	ble lbl_8043A8E0
/* 8043A8D4  38 00 00 00 */	li r0, 0
/* 8043A8D8  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 8043A8DC  48 00 00 0C */	b lbl_8043A8E8
lbl_8043A8E0:
/* 8043A8E0  38 00 80 00 */	li r0, -32768
/* 8043A8E4  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_8043A8E8:
/* 8043A8E8  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043A8EC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043A8F0  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8043A8F4  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 8043A8F8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043A8FC  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 8043A900  3C 60 80 44 */	lis r3, mfish_aroana_normal_process@ha /* 0x8043A92C@ha */
/* 8043A904  38 03 A9 2C */	addi r0, r3, mfish_aroana_normal_process@l /* 0x8043A92C@l */
/* 8043A908  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043A90C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043A910  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8043A914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043A918  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8043A91C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043A920  7C 08 03 A6 */	mtlr r0
/* 8043A924  38 21 00 30 */	addi r1, r1, 0x30
/* 8043A928  4E 80 00 20 */	blr 
