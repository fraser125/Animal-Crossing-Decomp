lbl_8043CEAC:
/* 8043CEAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8043CEB0  7C 08 02 A6 */	mflr r0
/* 8043CEB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8043CEB8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8043CEBC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8043CEC0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8043CEC4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8043CEC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043CECC  7C 7F 1B 78 */	mr r31, r3
/* 8043CED0  4B C1 FE 25 */	bl fqrand
/* 8043CED4  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8043CED8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CEDC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043CEE0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8043CEE4  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043CEE8  EC 63 10 2A */	fadds f3, f3, f2
/* 8043CEEC  EF C2 08 2A */	fadds f30, f2, f1
/* 8043CEF0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043CEF4  40 81 00 08 */	ble lbl_8043CEFC
/* 8043CEF8  48 00 00 08 */	b lbl_8043CF00
lbl_8043CEFC:
/* 8043CEFC  FC 60 00 90 */	fmr f3, f0
lbl_8043CF00:
/* 8043CF00  EF FE 18 24 */	fdivs f31, f30, f3
/* 8043CF04  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 8043CF08  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8043CF0C  40 81 00 14 */	ble lbl_8043CF20
/* 8043CF10  7F E3 FB 78 */	mr r3, r31
/* 8043CF14  38 80 00 00 */	li r4, 0
/* 8043CF18  4B FF F4 09 */	bl func_8043C320
/* 8043CF1C  D3 DF 05 F0 */	stfs f30, 0x5f0(r31)
lbl_8043CF20:
/* 8043CF20  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043CF24  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043CF28  4B FF 48 31 */	bl Rnd_EX_fx
/* 8043CF2C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8043CF30  3C 60 80 64 */	lis r3, lit_976@ha /* 0x806442F4@ha */
/* 8043CF34  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8043CF38  C0 63 42 F4 */	lfs f3, lit_976@l(r3)  /* 0x806442F4@l */
/* 8043CF3C  C0 84 42 98 */	lfs f4, lit_588@l(r4)  /* 0x80644298@l */
/* 8043CF40  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8043CF44  C0 5F 05 F4 */	lfs f2, 0x5f4(r31)
/* 8043CF48  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8043CF4C  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 8043CF50  EC 22 08 2A */	fadds f1, f2, f1
/* 8043CF54  EC 01 00 28 */	fsubs f0, f1, f0
/* 8043CF58  EC 03 00 32 */	fmuls f0, f3, f0
/* 8043CF5C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8043CF60  FC 00 00 1E */	fctiwz f0, f0
/* 8043CF64  D8 01 00 08 */	stfd f0, 8(r1)
/* 8043CF68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8043CF6C  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 8043CF70  A8 7F 06 12 */	lha r3, 0x612(r31)
/* 8043CF74  2C 03 DC 72 */	cmpwi r3, -9102
/* 8043CF78  40 80 00 0C */	bge lbl_8043CF84
/* 8043CF7C  38 00 DC 72 */	li r0, -9102
/* 8043CF80  48 00 00 14 */	b lbl_8043CF94
lbl_8043CF84:
/* 8043CF84  2C 03 23 8E */	cmpwi r3, 0x238e
/* 8043CF88  38 00 23 8E */	li r0, 0x238e
/* 8043CF8C  41 81 00 08 */	bgt lbl_8043CF94
/* 8043CF90  7C 60 1B 78 */	mr r0, r3
lbl_8043CF94:
/* 8043CF94  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043CF98  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 8043CF9C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043CFA0  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 8043CFA4  4B C1 FD 51 */	bl fqrand
/* 8043CFA8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8043CFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043CFB0  40 81 00 D4 */	ble lbl_8043D084
/* 8043CFB4  A8 7F 00 30 */	lha r3, 0x30(r31)
/* 8043CFB8  3C 00 43 30 */	lis r0, 0x4330
/* 8043CFBC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043CFC0  3C A0 80 64 */	lis r5, data_80644244@ha /* 0x80644244@ha */
/* 8043CFC4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043CFC8  90 01 00 08 */	stw r0, 8(r1)
/* 8043CFCC  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043CFD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8043CFD4  C0 45 42 44 */	lfs f2, data_80644244@l(r5)  /* 0x80644244@l */
/* 8043CFD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043CFDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043CFE0  EC 22 00 32 */	fmuls f1, f2, f0
/* 8043CFE4  4B FF 47 75 */	bl Rnd_EX_fx
/* 8043CFE8  FC 00 08 1E */	fctiwz f0, f1
/* 8043CFEC  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043CFF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043CFF4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8043CFF8  7C 00 1A 14 */	add r0, r0, r3
/* 8043CFFC  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043D000  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 8043D004  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043D008  7C 83 00 50 */	subf r4, r3, r0
/* 8043D00C  7C 80 07 34 */	extsh r0, r4
/* 8043D010  7C 83 07 35 */	extsh. r3, r4
/* 8043D014  7C 60 00 D0 */	neg r3, r0
/* 8043D018  41 80 00 08 */	blt lbl_8043D020
/* 8043D01C  7C 03 03 78 */	mr r3, r0
lbl_8043D020:
/* 8043D020  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 8043D024  40 80 00 28 */	bge lbl_8043D04C
/* 8043D028  7C 80 07 35 */	extsh. r0, r4
/* 8043D02C  40 81 00 14 */	ble lbl_8043D040
/* 8043D030  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043D034  38 03 0E 38 */	addi r0, r3, 0xe38
/* 8043D038  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043D03C  48 00 00 10 */	b lbl_8043D04C
lbl_8043D040:
/* 8043D040  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043D044  38 03 F1 C8 */	addi r0, r3, -3640
/* 8043D048  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043D04C:
/* 8043D04C  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 8043D050  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 8043D054  C0 03 42 84 */	lfs f0, lit_568@l(r3)  /* 0x80644284@l */
/* 8043D058  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043D05C  C0 24 42 B4 */	lfs f1, lit_698@l(r4)  /* 0x806442B4@l */
/* 8043D060  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043D064  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8043D068  EC 01 00 2A */	fadds f0, f1, f0
/* 8043D06C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043D070  FC 00 00 1E */	fctiwz f0, f0
/* 8043D074  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043D078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D07C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 8043D080  48 00 00 60 */	b lbl_8043D0E0
lbl_8043D084:
/* 8043D084  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043D088  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043D08C  7C 00 18 50 */	subf r0, r0, r3
/* 8043D090  7C 00 07 35 */	extsh. r0, r0
/* 8043D094  40 81 00 10 */	ble lbl_8043D0A4
/* 8043D098  38 03 0E 38 */	addi r0, r3, 0xe38
/* 8043D09C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043D0A0  48 00 00 0C */	b lbl_8043D0AC
lbl_8043D0A4:
/* 8043D0A4  38 03 F1 C8 */	addi r0, r3, -3640
/* 8043D0A8  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043D0AC:
/* 8043D0AC  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 8043D0B0  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 8043D0B4  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 8043D0B8  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043D0BC  C0 24 42 84 */	lfs f1, lit_568@l(r4)  /* 0x80644284@l */
/* 8043D0C0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043D0C4  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8043D0C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8043D0CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043D0D0  FC 00 00 1E */	fctiwz f0, f0
/* 8043D0D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043D0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043D0DC  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_8043D0E0:
/* 8043D0E0  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043D0E4  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043D0E8  7C 03 00 50 */	subf r0, r3, r0
/* 8043D0EC  7C 00 07 35 */	extsh. r0, r0
/* 8043D0F0  40 81 00 10 */	ble lbl_8043D100
/* 8043D0F4  38 00 80 00 */	li r0, -32768
/* 8043D0F8  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 8043D0FC  48 00 00 0C */	b lbl_8043D108
lbl_8043D100:
/* 8043D100  38 00 00 00 */	li r0, 0
/* 8043D104  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_8043D108:
/* 8043D108  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043D10C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043D110  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8043D114  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 8043D118  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043D11C  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 8043D120  3C 60 80 44 */	lis r3, mfish_koi_normal_process@ha /* 0x8043D154@ha */
/* 8043D124  38 03 D1 54 */	addi r0, r3, mfish_koi_normal_process@l /* 0x8043D154@l */
/* 8043D128  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043D12C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043D130  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8043D134  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8043D138  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8043D13C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8043D140  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043D144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043D148  7C 08 03 A6 */	mtlr r0
/* 8043D14C  38 21 00 40 */	addi r1, r1, 0x40
/* 8043D150  4E 80 00 20 */	blr 
