lbl_8044CED8:
/* 8044CED8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044CEDC  7C 08 02 A6 */	mflr r0
/* 8044CEE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044CEE4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044CEE8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044CEEC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8044CEF0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8044CEF4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044CEF8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8044CEFC  7C 7E 1B 78 */	mr r30, r3
/* 8044CF00  7C 9F 23 78 */	mr r31, r4
/* 8044CF04  81 83 00 34 */	lwz r12, 0x34(r3)
/* 8044CF08  7D 89 03 A6 */	mtctr r12
/* 8044CF0C  4E 80 04 21 */	bctrl 
/* 8044CF10  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8044CF14  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044CF18  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8044CF1C  C8 64 42 4C */	lfd f3, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044CF20  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044CF24  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044CF28  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044CF2C  FC 20 20 34 */	frsqrte f1, f4
/* 8044CF30  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044CF34  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CF38  FC 23 00 72 */	fmul f1, f3, f1
/* 8044CF3C  FC 04 00 32 */	fmul f0, f4, f0
/* 8044CF40  FC 02 00 28 */	fsub f0, f2, f0
/* 8044CF44  FC 21 00 32 */	fmul f1, f1, f0
/* 8044CF48  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CF4C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044CF50  FC 04 00 32 */	fmul f0, f4, f0
/* 8044CF54  FC 02 00 28 */	fsub f0, f2, f0
/* 8044CF58  FC 21 00 32 */	fmul f1, f1, f0
/* 8044CF5C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044CF60  FC 23 00 72 */	fmul f1, f3, f1
/* 8044CF64  FC 04 00 32 */	fmul f0, f4, f0
/* 8044CF68  FC 02 00 28 */	fsub f0, f2, f0
/* 8044CF6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8044CF70  FC 04 00 32 */	fmul f0, f4, f0
/* 8044CF74  FC 00 00 18 */	frsp f0, f0
/* 8044CF78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8044CF7C  C3 C1 00 18 */	lfs f30, 0x18(r1)
/* 8044CF80  4B F6 DB 71 */	bl sin_s
/* 8044CF84  FF E0 08 90 */	fmr f31, f1
/* 8044CF88  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044CF8C  4B F6 DB 65 */	bl sin_s
/* 8044CF90  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8044CF94  3C 00 43 30 */	lis r0, 0x4330
/* 8044CF98  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044CF9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044CFA0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044CFA4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044CFA8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8044CFAC  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8044CFB0  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044CFB4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044CFB8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044CFBC  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8044CFC0  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044CFC4  38 A0 03 8E */	li r5, 0x38e
/* 8044CFC8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044CFCC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044CFD0  38 C0 00 5B */	li r6, 0x5b
/* 8044CFD4  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044CFD8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8044CFDC  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8044CFE0  FC 00 00 1E */	fctiwz f0, f0
/* 8044CFE4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044CFE8  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8044CFEC  7C 00 22 14 */	add r0, r0, r4
/* 8044CFF0  7C 04 07 34 */	extsh r4, r0
/* 8044CFF4  4B F6 E3 1D */	bl add_calc_short_angle2
/* 8044CFF8  3C 80 80 64 */	lis r4, lit_920@ha /* 0x806442DC@ha */
/* 8044CFFC  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 8044D000  C8 A4 42 DC */	lfd f5, lit_920@l(r4)  /* 0x806442DC@l */
/* 8044D004  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044D008  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 8044D00C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044D010  FC 40 28 34 */	frsqrte f2, f5
/* 8044D014  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 8044D018  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044D01C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044D020  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044D024  C8 65 00 00 */	lfd f3, 0(r5)
/* 8044D028  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D02C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044D030  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 8044D034  38 7E 06 18 */	addi r3, r30, 0x618
/* 8044D038  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D03C  38 A0 03 8E */	li r5, 0x38e
/* 8044D040  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D044  38 C0 00 5B */	li r6, 0x5b
/* 8044D048  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D04C  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D050  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D054  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D058  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D05C  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D060  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D064  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D068  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D06C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D070  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D074  FC 22 00 72 */	fmul f1, f2, f1
/* 8044D078  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D07C  FC 20 08 18 */	frsp f1, f1
/* 8044D080  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8044D084  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8044D088  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044D08C  4B F6 E2 85 */	bl add_calc_short_angle2
/* 8044D090  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044D094  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044D098  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8044D09C  40 81 00 20 */	ble lbl_8044D0BC
/* 8044D0A0  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044D0A4  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044D0A8  C0 63 42 AC */	lfs f3, lit_666@l(r3)  /* 0x806442AC@l */
/* 8044D0AC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044D0B0  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8044D0B4  4B F6 E1 E1 */	bl add_calc2
/* 8044D0B8  48 00 00 1C */	b lbl_8044D0D4
lbl_8044D0BC:
/* 8044D0BC  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044D0C0  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8044D0C4  C0 63 43 48 */	lfs f3, lit_1558@l(r3)  /* 0x80644348@l */
/* 8044D0C8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044D0CC  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 8044D0D0  4B F6 E1 C5 */	bl add_calc2
lbl_8044D0D4:
/* 8044D0D4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044D0D8  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044D0DC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044D0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044D0E4  40 80 00 B8 */	bge lbl_8044D19C
/* 8044D0E8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044D0EC  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 8044D0F0  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 8044D0F4  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 8044D0F8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8044D0FC  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044D100  4B F6 E1 D9 */	bl add_calc0
/* 8044D104  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044D108  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044D10C  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8044D110  38 C0 00 5B */	li r6, 0x5b
/* 8044D114  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044D118  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044D11C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044D120  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044D124  FC 40 28 34 */	frsqrte f2, f5
/* 8044D128  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044D12C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044D130  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044D134  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044D138  38 7E 06 12 */	addi r3, r30, 0x612
/* 8044D13C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D140  38 80 00 00 */	li r4, 0
/* 8044D144  38 A0 01 11 */	li r5, 0x111
/* 8044D148  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D14C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D150  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D154  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D158  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D15C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D160  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D164  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D168  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D16C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D170  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D174  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D178  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D17C  FC 22 00 72 */	fmul f1, f2, f1
/* 8044D180  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D184  FC 20 08 18 */	frsp f1, f1
/* 8044D188  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044D18C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8044D190  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044D194  4B F6 E1 7D */	bl add_calc_short_angle2
/* 8044D198  48 00 00 5C */	b lbl_8044D1F4
lbl_8044D19C:
/* 8044D19C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044D1A0  7C 60 07 35 */	extsh. r0, r3
/* 8044D1A4  7C 03 00 D0 */	neg r0, r3
/* 8044D1A8  41 80 00 08 */	blt lbl_8044D1B0
/* 8044D1AC  7C 60 1B 78 */	mr r0, r3
lbl_8044D1B0:
/* 8044D1B0  2C 00 23 8E */	cmpwi r0, 0x238e
/* 8044D1B4  40 81 00 40 */	ble lbl_8044D1F4
/* 8044D1B8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8044D1BC  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044D1C0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044D1C4  38 A3 42 44 */	addi r5, r3, data_80644244@l /* 0x80644244@l */
/* 8044D1C8  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044D1CC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044D1D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8044D1D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8044D1D8  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044D1DC  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044D1E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044D1E4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8044D1E8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8044D1EC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044D1F0  4B F6 E0 A5 */	bl add_calc2
lbl_8044D1F4:
/* 8044D1F4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044D1F8  4B F6 D8 A5 */	bl cos_s
/* 8044D1FC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044D200  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044D204  EF C0 00 72 */	fmuls f30, f0, f1
/* 8044D208  4B F6 D8 E9 */	bl sin_s
/* 8044D20C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8044D210  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8044D214  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044D218  4B F6 D8 85 */	bl cos_s
/* 8044D21C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8044D220  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8044D224  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044D228  4B F6 D8 C9 */	bl sin_s
/* 8044D22C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044D230  7F C4 F3 78 */	mr r4, r30
/* 8044D234  7F E5 FB 78 */	mr r5, r31
/* 8044D238  38 61 00 1C */	addi r3, r1, 0x1c
/* 8044D23C  FC 00 00 50 */	fneg f0, f0
/* 8044D240  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044D244  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8044D248  4B FE A5 5D */	bl mfish_get_flow_vec
/* 8044D24C  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 8044D250  7F C3 F3 78 */	mr r3, r30
/* 8044D254  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8044D258  7F E4 FB 78 */	mr r4, r31
/* 8044D25C  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8044D260  EC 01 00 2A */	fadds f0, f1, f0
/* 8044D264  EC 02 00 2A */	fadds f0, f2, f0
/* 8044D268  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8044D26C  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 8044D270  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8044D274  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8044D278  EC 01 00 2A */	fadds f0, f1, f0
/* 8044D27C  EC 02 00 2A */	fadds f0, f2, f0
/* 8044D280  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044D284  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8044D288  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8044D28C  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 8044D290  EC 01 00 2A */	fadds f0, f1, f0
/* 8044D294  EC 02 00 2A */	fadds f0, f2, f0
/* 8044D298  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8044D29C  4B FE 73 61 */	bl mfish_onefish_mv
/* 8044D2A0  A8 7E 06 12 */	lha r3, 0x612(r30)
/* 8044D2A4  7C 60 07 35 */	extsh. r0, r3
/* 8044D2A8  7C 03 00 D0 */	neg r0, r3
/* 8044D2AC  41 80 00 08 */	blt lbl_8044D2B4
/* 8044D2B0  7C 60 1B 78 */	mr r0, r3
lbl_8044D2B4:
/* 8044D2B4  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 8044D2B8  40 81 00 C0 */	ble lbl_8044D378
/* 8044D2BC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044D2C0  3C A0 43 30 */	lis r5, 0x4330
/* 8044D2C4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044D2C8  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 8044D2CC  81 04 00 00 */	lwz r8, 0(r4)
/* 8044D2D0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044D2D4  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8044D2D8  C0 66 42 68 */	lfs f3, lit_527@l(r6)  /* 0x80644268@l */
/* 8044D2DC  A8 68 1B 48 */	lha r3, 0x1b48(r8)
/* 8044D2E0  3C E0 80 64 */	lis r7, lit_840@ha /* 0x806442D8@ha */
/* 8044D2E4  A8 08 1B 4A */	lha r0, 0x1b4a(r8)
/* 8044D2E8  3C C0 80 64 */	lis r6, lit_471@ha /* 0x8064425C@ha */
/* 8044D2EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044D2F0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8044D2F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044D2F8  C8 44 00 00 */	lfd f2, 0(r4)
/* 8044D2FC  90 61 00 34 */	stw r3, 0x34(r1)
/* 8044D300  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8044D304  38 83 42 D4 */	addi r4, r3, lit_839@l /* 0x806442D4@l */
/* 8044D308  C0 A7 42 D8 */	lfs f5, lit_840@l(r7)  /* 0x806442D8@l */
/* 8044D30C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044D310  38 7E 00 44 */	addi r3, r30, 0x44
/* 8044D314  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8044D318  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044D31C  C0 C6 42 5C */	lfs f6, lit_471@l(r6)  /* 0x8064425C@l */
/* 8044D320  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8044D324  EC 83 00 32 */	fmuls f4, f3, f0
/* 8044D328  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8044D32C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044D330  EC 21 10 28 */	fsubs f1, f1, f2
/* 8044D334  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044D338  EC 85 20 2A */	fadds f4, f5, f4
/* 8044D33C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044D340  EC 86 01 32 */	fmuls f4, f6, f4
/* 8044D344  EC 25 08 2A */	fadds f1, f5, f1
/* 8044D348  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044D34C  EC 24 00 2A */	fadds f1, f4, f0
/* 8044D350  4B F6 DF 45 */	bl add_calc2
/* 8044D354  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 8044D358  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 8044D35C  3C 80 80 64 */	lis r4, lit_1558@ha /* 0x80644348@ha */
/* 8044D360  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 8044D364  C0 45 42 68 */	lfs f2, lit_527@l(r5)  /* 0x80644268@l */
/* 8044D368  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8044D36C  C0 64 43 48 */	lfs f3, lit_1558@l(r4)  /* 0x80644348@l */
/* 8044D370  4B F6 DF 25 */	bl add_calc2
/* 8044D374  48 00 00 60 */	b lbl_8044D3D4
lbl_8044D378:
/* 8044D378  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8044D37C  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 8044D380  C0 23 43 34 */	lfs f1, lit_1315@l(r3)  /* 0x80644334@l */
/* 8044D384  38 C5 42 5C */	addi r6, r5, lit_471@l /* 0x8064425C@l */
/* 8044D388  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044D38C  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044D390  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044D394  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044D398  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044D39C  C0 86 00 00 */	lfs f4, 0(r6)
/* 8044D3A0  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044D3A4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044D3A8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044D3AC  38 7E 00 44 */	addi r3, r30, 0x44
/* 8044D3B0  EC 24 00 2A */	fadds f1, f4, f0
/* 8044D3B4  4B F6 DE E1 */	bl add_calc2
/* 8044D3B8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044D3BC  3C 80 80 64 */	lis r4, lit_1558@ha /* 0x80644348@ha */
/* 8044D3C0  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 8044D3C4  C0 44 43 48 */	lfs f2, lit_1558@l(r4)  /* 0x80644348@l */
/* 8044D3C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8044D3CC  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8044D3D0  4B F6 DF 09 */	bl add_calc0
lbl_8044D3D4:
/* 8044D3D4  80 BE 05 A0 */	lwz r5, 0x5a0(r30)
/* 8044D3D8  7F C3 F3 78 */	mr r3, r30
/* 8044D3DC  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 8044D3E0  7F E4 FB 78 */	mr r4, r31
/* 8044D3E4  90 BE 05 B8 */	stw r5, 0x5b8(r30)
/* 8044D3E8  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 8044D3EC  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 8044D3F0  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8044D3F4  4B FE 88 9D */	bl Museum_Fish_BGCheck
/* 8044D3F8  3C 60 80 64 */	lis r3, lit_6315@ha /* 0x8064441C@ha */
/* 8044D3FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8044D400  C0 03 44 1C */	lfs f0, lit_6315@l(r3)  /* 0x8064441C@l */
/* 8044D404  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8044D408  EC 00 08 2A */	fadds f0, f0, f1
/* 8044D40C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044D410  40 80 00 A0 */	bge lbl_8044D4B0
/* 8044D414  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044D418  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044D41C  2C 00 00 00 */	cmpwi r0, 0
/* 8044D420  40 81 02 2C */	ble lbl_8044D64C
/* 8044D424  4B C0 F8 D1 */	bl fqrand
/* 8044D428  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044D42C  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044D430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044D434  40 80 00 10 */	bge lbl_8044D444
/* 8044D438  A8 1E 06 3E */	lha r0, 0x63e(r30)
/* 8044D43C  2C 00 00 00 */	cmpwi r0, 0
/* 8044D440  41 80 00 10 */	blt lbl_8044D450
lbl_8044D444:
/* 8044D444  A8 7E 06 3E */	lha r3, 0x63e(r30)
/* 8044D448  7C 60 07 35 */	extsh. r0, r3
/* 8044D44C  40 81 00 3C */	ble lbl_8044D488
lbl_8044D450:
/* 8044D450  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8044D454  38 00 C7 1D */	li r0, -14563
/* 8044D458  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044D45C  C0 03 42 70 */	lfs f0, lit_529@l(r3)  /* 0x80644270@l */
/* 8044D460  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 8044D464  A8 7E 06 3E */	lha r3, 0x63e(r30)
/* 8044D468  2C 03 00 00 */	cmpwi r3, 0
/* 8044D46C  41 81 00 10 */	bgt lbl_8044D47C
/* 8044D470  38 00 00 01 */	li r0, 1
/* 8044D474  B0 1E 06 3E */	sth r0, 0x63e(r30)
/* 8044D478  48 00 01 D4 */	b lbl_8044D64C
lbl_8044D47C:
/* 8044D47C  38 03 FF FF */	addi r0, r3, -1
/* 8044D480  B0 1E 06 3E */	sth r0, 0x63e(r30)
/* 8044D484  48 00 01 C8 */	b lbl_8044D64C
lbl_8044D488:
/* 8044D488  7C 60 07 35 */	extsh. r0, r3
/* 8044D48C  40 82 00 0C */	bne lbl_8044D498
/* 8044D490  38 03 FF FF */	addi r0, r3, -1
/* 8044D494  B0 1E 06 3E */	sth r0, 0x63e(r30)
lbl_8044D498:
/* 8044D498  3C 60 80 64 */	lis r3, lit_836@ha /* 0x806442C8@ha */
/* 8044D49C  38 00 F8 E4 */	li r0, -1820
/* 8044D4A0  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044D4A4  C0 03 42 C8 */	lfs f0, lit_836@l(r3)  /* 0x806442C8@l */
/* 8044D4A8  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 8044D4AC  48 00 01 A0 */	b lbl_8044D64C
lbl_8044D4B0:
/* 8044D4B0  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 8044D4B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044D4B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044D4BC  40 81 00 40 */	ble lbl_8044D4FC
/* 8044D4C0  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044D4C4  3C 60 80 64 */	lis r3, lit_5574@ha /* 0x80644414@ha */
/* 8044D4C8  C0 03 44 14 */	lfs f0, lit_5574@l(r3)  /* 0x80644414@l */
/* 8044D4CC  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8044D4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044D4D4  40 81 00 1C */	ble lbl_8044D4F0
/* 8044D4D8  38 00 38 E3 */	li r0, 0x38e3
/* 8044D4DC  7F C3 F3 78 */	mr r3, r30
/* 8044D4E0  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044D4E4  7F E4 FB 78 */	mr r4, r31
/* 8044D4E8  4B FE B2 81 */	bl mfish_hamon_make
/* 8044D4EC  48 00 01 60 */	b lbl_8044D64C
lbl_8044D4F0:
/* 8044D4F0  38 00 07 1C */	li r0, 0x71c
/* 8044D4F4  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044D4F8  48 00 01 54 */	b lbl_8044D64C
lbl_8044D4FC:
/* 8044D4FC  A8 1E 06 3E */	lha r0, 0x63e(r30)
/* 8044D500  2C 00 00 00 */	cmpwi r0, 0
/* 8044D504  40 81 01 3C */	ble lbl_8044D640
/* 8044D508  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044D50C  2C 00 00 00 */	cmpwi r0, 0
/* 8044D510  40 81 00 9C */	ble lbl_8044D5AC
/* 8044D514  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8044D518  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044D51C  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8044D520  38 C0 00 00 */	li r6, 0
/* 8044D524  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044D528  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044D52C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044D530  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044D534  FC 40 28 34 */	frsqrte f2, f5
/* 8044D538  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044D53C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044D540  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044D544  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044D548  38 7E 06 12 */	addi r3, r30, 0x612
/* 8044D54C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D550  38 80 35 55 */	li r4, 0x3555
/* 8044D554  38 A0 00 2D */	li r5, 0x2d
/* 8044D558  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D55C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D560  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D564  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D568  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D56C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D570  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D574  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D578  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D57C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D580  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D584  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D588  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D58C  FC 22 00 72 */	fmul f1, f2, f1
/* 8044D590  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D594  FC 20 08 18 */	frsp f1, f1
/* 8044D598  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8044D59C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8044D5A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044D5A4  4B F6 DD 6D */	bl add_calc_short_angle2
/* 8044D5A8  48 00 00 98 */	b lbl_8044D640
lbl_8044D5AC:
/* 8044D5AC  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8044D5B0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044D5B4  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8044D5B8  38 C0 00 00 */	li r6, 0
/* 8044D5BC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8044D5C0  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8044D5C4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044D5C8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044D5CC  FC 40 28 34 */	frsqrte f2, f5
/* 8044D5D0  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8044D5D4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044D5D8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044D5DC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044D5E0  38 7E 06 12 */	addi r3, r30, 0x612
/* 8044D5E4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D5E8  38 80 CA AB */	li r4, -13653
/* 8044D5EC  38 A0 00 2D */	li r5, 0x2d
/* 8044D5F0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D5F4  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D5F8  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D5FC  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D600  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D604  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D608  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D60C  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D610  FC 42 00 72 */	fmul f2, f2, f1
/* 8044D614  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044D618  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044D61C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D620  FC 23 08 28 */	fsub f1, f3, f1
/* 8044D624  FC 22 00 72 */	fmul f1, f2, f1
/* 8044D628  FC 25 00 72 */	fmul f1, f5, f1
/* 8044D62C  FC 20 08 18 */	frsp f1, f1
/* 8044D630  D0 21 00 08 */	stfs f1, 8(r1)
/* 8044D634  C0 21 00 08 */	lfs f1, 8(r1)
/* 8044D638  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044D63C  4B F6 DC D5 */	bl add_calc_short_angle2
lbl_8044D640:
/* 8044D640  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 8044D644  38 03 FF FF */	addi r0, r3, -1
/* 8044D648  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8044D64C:
/* 8044D64C  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 8044D650  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 8044D654  7C A0 2B 78 */	mr r0, r5
/* 8044D658  7C 04 28 00 */	cmpw r4, r5
/* 8044D65C  40 80 00 08 */	bge lbl_8044D664
/* 8044D660  7C 80 23 78 */	mr r0, r4
lbl_8044D664:
/* 8044D664  7C 64 00 D0 */	neg r3, r4
/* 8044D668  7C 00 07 34 */	extsh r0, r0
/* 8044D66C  7C 63 07 34 */	extsh r3, r3
/* 8044D670  7C 03 00 00 */	cmpw r3, r0
/* 8044D674  40 81 00 08 */	ble lbl_8044D67C
/* 8044D678  48 00 00 14 */	b lbl_8044D68C
lbl_8044D67C:
/* 8044D67C  7C 04 28 00 */	cmpw r4, r5
/* 8044D680  40 80 00 08 */	bge lbl_8044D688
/* 8044D684  7C 85 23 78 */	mr r5, r4
lbl_8044D688:
/* 8044D688  7C A3 2B 78 */	mr r3, r5
lbl_8044D68C:
/* 8044D68C  B0 7E 06 12 */	sth r3, 0x612(r30)
/* 8044D690  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044D694  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044D698  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8044D69C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8044D6A0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044D6A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044D6A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8044D6AC  7C 08 03 A6 */	mtlr r0
/* 8044D6B0  38 21 00 60 */	addi r1, r1, 0x60
/* 8044D6B4  4E 80 00 20 */	blr 
