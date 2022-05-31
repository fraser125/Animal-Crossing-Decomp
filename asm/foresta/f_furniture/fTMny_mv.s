lbl_8063D020:
/* 8063D020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D024  7C 08 02 A6 */	mflr r0
/* 8063D028  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D02C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D030  4B A5 DE A5 */	bl func_8009AED4
/* 8063D034  7C 7D 1B 78 */	mr r29, r3
/* 8063D038  3B FD 01 34 */	addi r31, r29, 0x134
/* 8063D03C  4B E3 6D 49 */	bl aMR_GetContactInfoLayer1
/* 8063D040  7C 7E 1B 78 */	mr r30, r3
/* 8063D044  7F A3 EB 78 */	mr r3, r29
/* 8063D048  4B FF FE F5 */	bl fTMny_GetSpeed
/* 8063D04C  28 1E 00 00 */	cmplwi r30, 0
/* 8063D050  41 82 02 08 */	beq lbl_8063D258
/* 8063D054  3C 60 80 65 */	lis r3, lit_6350@ha /* 0x8064D3BC@ha */
/* 8063D058  3C 80 80 65 */	lis r4, lit_369@ha /* 0x8064D27C@ha */
/* 8063D05C  C0 03 D3 BC */	lfs f0, lit_6350@l(r3)  /* 0x8064D3BC@l */
/* 8063D060  38 64 D2 7C */	addi r3, r4, lit_369@l /* 0x8064D27C@l */
/* 8063D064  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064D28C@ha */
/* 8063D068  EC 01 00 24 */	fdivs f0, f1, f0
/* 8063D06C  38 85 D2 8C */	addi r4, r5, lit_626@l /* 0x8064D28C@l */
/* 8063D070  C0 23 00 00 */	lfs f1, 0(r3)
/* 8063D074  A8 BD 00 3C */	lha r5, 0x3c(r29)
/* 8063D078  C0 44 00 00 */	lfs f2, 0(r4)
/* 8063D07C  2C 05 00 01 */	cmpwi r5, 1
/* 8063D080  EC 01 00 2A */	fadds f0, f1, f0
/* 8063D084  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063D088  41 82 00 1C */	beq lbl_8063D0A4
/* 8063D08C  38 05 FF FE */	addi r0, r5, -2
/* 8063D090  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8063D094  28 00 00 01 */	cmplwi r0, 1
/* 8063D098  40 81 00 0C */	ble lbl_8063D0A4
/* 8063D09C  2C 05 00 04 */	cmpwi r5, 4
/* 8063D0A0  40 82 00 C8 */	bne lbl_8063D168
lbl_8063D0A4:
/* 8063D0A4  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8063D0A8  2C 00 00 02 */	cmpwi r0, 2
/* 8063D0AC  41 82 00 AC */	beq lbl_8063D158
/* 8063D0B0  40 80 00 10 */	bge lbl_8063D0C0
/* 8063D0B4  2C 00 00 01 */	cmpwi r0, 1
/* 8063D0B8  40 80 00 58 */	bge lbl_8063D110
/* 8063D0BC  48 00 00 9C */	b lbl_8063D158
lbl_8063D0C0:
/* 8063D0C0  2C 00 00 04 */	cmpwi r0, 4
/* 8063D0C4  40 80 00 94 */	bge lbl_8063D158
/* 8063D0C8  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D0CC  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063D0D0  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 8063D0D4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D0D8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8063D0DC  3C 00 43 30 */	lis r0, 0x4330
/* 8063D0E0  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8063D0E4  38 84 7D 4C */	addi r4, r4, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063D0E8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8063D0EC  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8063D0F0  90 01 00 08 */	stw r0, 8(r1)
/* 8063D0F4  A8 04 00 12 */	lha r0, 0x12(r4)
/* 8063D0F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063D0FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063D100  C8 01 00 08 */	lfd f0, 8(r1)
/* 8063D104  EC 00 08 28 */	fsubs f0, f0, f1
/* 8063D108  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8063D10C  48 00 01 58 */	b lbl_8063D264
lbl_8063D110:
/* 8063D110  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063D114  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D118  38 63 7D 4C */	addi r3, r3, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063D11C  3C 00 43 30 */	lis r0, 0x4330
/* 8063D120  A8 83 00 12 */	lha r4, 0x12(r3)
/* 8063D124  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8063D128  38 A3 D2 84 */	addi r5, r3, lit_371@l /* 0x8064D284@l */
/* 8063D12C  90 01 00 08 */	stw r0, 8(r1)
/* 8063D130  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8063D134  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D138  90 81 00 0C */	stw r4, 0xc(r1)
/* 8063D13C  C8 45 00 00 */	lfd f2, 0(r5)
/* 8063D140  C8 21 00 08 */	lfd f1, 8(r1)
/* 8063D144  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063D148  EC 21 10 28 */	fsubs f1, f1, f2
/* 8063D14C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8063D150  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8063D154  48 00 01 10 */	b lbl_8063D264
lbl_8063D158:
/* 8063D158  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D15C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D160  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D164  48 00 01 00 */	b lbl_8063D264
lbl_8063D168:
/* 8063D168  38 05 FF FB */	addi r0, r5, -5
/* 8063D16C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8063D170  28 00 00 01 */	cmplwi r0, 1
/* 8063D174  40 81 00 0C */	ble lbl_8063D180
/* 8063D178  2C 05 00 07 */	cmpwi r5, 7
/* 8063D17C  40 82 00 CC */	bne lbl_8063D248
lbl_8063D180:
/* 8063D180  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8063D184  2C 00 00 02 */	cmpwi r0, 2
/* 8063D188  41 82 00 B0 */	beq lbl_8063D238
/* 8063D18C  40 80 00 10 */	bge lbl_8063D19C
/* 8063D190  2C 00 00 01 */	cmpwi r0, 1
/* 8063D194  40 80 00 14 */	bge lbl_8063D1A8
/* 8063D198  48 00 00 A0 */	b lbl_8063D238
lbl_8063D19C:
/* 8063D19C  2C 00 00 04 */	cmpwi r0, 4
/* 8063D1A0  40 80 00 98 */	bge lbl_8063D238
/* 8063D1A4  48 00 00 4C */	b lbl_8063D1F0
lbl_8063D1A8:
/* 8063D1A8  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D1AC  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063D1B0  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 8063D1B4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D1B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8063D1BC  3C 00 43 30 */	lis r0, 0x4330
/* 8063D1C0  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8063D1C4  38 84 7D 4C */	addi r4, r4, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063D1C8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8063D1CC  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8063D1D0  90 01 00 08 */	stw r0, 8(r1)
/* 8063D1D4  A8 04 00 12 */	lha r0, 0x12(r4)
/* 8063D1D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063D1DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063D1E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8063D1E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8063D1E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8063D1EC  48 00 00 78 */	b lbl_8063D264
lbl_8063D1F0:
/* 8063D1F0  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063D1F4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D1F8  38 63 7D 4C */	addi r3, r3, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063D1FC  3C 00 43 30 */	lis r0, 0x4330
/* 8063D200  A8 83 00 12 */	lha r4, 0x12(r3)
/* 8063D204  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8063D208  38 A3 D2 84 */	addi r5, r3, lit_371@l /* 0x8064D284@l */
/* 8063D20C  90 01 00 08 */	stw r0, 8(r1)
/* 8063D210  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8063D214  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063D218  90 81 00 0C */	stw r4, 0xc(r1)
/* 8063D21C  C8 45 00 00 */	lfd f2, 0(r5)
/* 8063D220  C8 21 00 08 */	lfd f1, 8(r1)
/* 8063D224  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063D228  EC 21 10 28 */	fsubs f1, f1, f2
/* 8063D22C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8063D230  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8063D234  48 00 00 30 */	b lbl_8063D264
lbl_8063D238:
/* 8063D238  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D23C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D240  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D244  48 00 00 20 */	b lbl_8063D264
lbl_8063D248:
/* 8063D248  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D24C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D250  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063D254  48 00 00 10 */	b lbl_8063D264
lbl_8063D258:
/* 8063D258  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063D25C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063D260  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063D264:
/* 8063D264  7F E3 FB 78 */	mr r3, r31
/* 8063D268  4B D3 3D AD */	bl cKF_SkeletonInfo_R_play
/* 8063D26C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D270  4B A5 DC B1 */	bl func_8009AF20
/* 8063D274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D278  7C 08 03 A6 */	mtlr r0
/* 8063D27C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D280  4E 80 00 20 */	blr 
