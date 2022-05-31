lbl_8062F020:
/* 8062F020  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062F024  7C 08 02 A6 */	mflr r0
/* 8062F028  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062F02C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8062F030  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8062F034  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8062F038  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8062F03C  39 61 00 20 */	addi r11, r1, 0x20
/* 8062F040  4B A6 BE 91 */	bl func_8009AED0
/* 8062F044  7C 7D 1B 78 */	mr r29, r3
/* 8062F048  A8 63 08 2E */	lha r3, 0x82e(r3)
/* 8062F04C  3B 9D 01 34 */	addi r28, r29, 0x134
/* 8062F050  A0 9D 00 00 */	lhz r4, 0(r29)
/* 8062F054  2C 03 00 00 */	cmpwi r3, 0
/* 8062F058  3B C4 FE 94 */	addi r30, r4, -364
/* 8062F05C  40 81 00 0C */	ble lbl_8062F068
/* 8062F060  38 03 FF FF */	addi r0, r3, -1
/* 8062F064  B0 1D 08 2E */	sth r0, 0x82e(r29)
lbl_8062F068:
/* 8062F068  A8 7D 01 30 */	lha r3, 0x130(r29)
/* 8062F06C  2C 03 00 02 */	cmpwi r3, 2
/* 8062F070  41 82 00 60 */	beq lbl_8062F0D0
/* 8062F074  40 80 00 14 */	bge lbl_8062F088
/* 8062F078  2C 03 00 00 */	cmpwi r3, 0
/* 8062F07C  41 82 00 18 */	beq lbl_8062F094
/* 8062F080  40 80 00 20 */	bge lbl_8062F0A0
/* 8062F084  48 00 03 E8 */	b lbl_8062F46C
lbl_8062F088:
/* 8062F088  2C 03 00 04 */	cmpwi r3, 4
/* 8062F08C  40 80 03 E0 */	bge lbl_8062F46C
/* 8062F090  48 00 03 A8 */	b lbl_8062F438
lbl_8062F094:
/* 8062F094  38 03 00 01 */	addi r0, r3, 1
/* 8062F098  B0 1D 01 30 */	sth r0, 0x130(r29)
/* 8062F09C  48 00 03 D0 */	b lbl_8062F46C
lbl_8062F0A0:
/* 8062F0A0  A8 1D 08 2E */	lha r0, 0x82e(r29)
/* 8062F0A4  2C 00 00 00 */	cmpwi r0, 0
/* 8062F0A8  41 81 03 C4 */	bgt lbl_8062F46C
/* 8062F0AC  88 1D 01 2E */	lbz r0, 0x12e(r29)
/* 8062F0B0  7F A3 EB 78 */	mr r3, r29
/* 8062F0B4  7F C4 F3 78 */	mr r4, r30
/* 8062F0B8  7C 05 07 74 */	extsb r5, r0
/* 8062F0BC  4B FF FD C9 */	bl func_8062EE84
/* 8062F0C0  A8 7D 01 30 */	lha r3, 0x130(r29)
/* 8062F0C4  38 03 00 01 */	addi r0, r3, 1
/* 8062F0C8  B0 1D 01 30 */	sth r0, 0x130(r29)
/* 8062F0CC  48 00 03 A0 */	b lbl_8062F46C
lbl_8062F0D0:
/* 8062F0D0  A8 1D 08 2E */	lha r0, 0x82e(r29)
/* 8062F0D4  2C 00 00 00 */	cmpwi r0, 0
/* 8062F0D8  41 81 03 9C */	bgt lbl_8062F474
/* 8062F0DC  7F A3 EB 78 */	mr r3, r29
/* 8062F0E0  4B FF F0 D9 */	bl sAdo_GetRhythmDelay
/* 8062F0E4  7C 60 07 74 */	extsb r0, r3
/* 8062F0E8  2C 00 FF FF */	cmpwi r0, -1
/* 8062F0EC  41 82 00 08 */	beq lbl_8062F0F4
/* 8062F0F0  98 7D 01 2E */	stb r3, 0x12e(r29)
lbl_8062F0F4:
/* 8062F0F4  38 1E 00 01 */	addi r0, r30, 1
/* 8062F0F8  7F A3 EB 78 */	mr r3, r29
/* 8062F0FC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8062F100  38 BD 00 08 */	addi r5, r29, 8
/* 8062F104  4B FF F1 35 */	bl sAdo_RhythmPos
/* 8062F108  7F A3 EB 78 */	mr r3, r29
/* 8062F10C  4B FF F0 8D */	bl sAdo_GetRhythmAnimCounter
/* 8062F110  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F114  FF E0 08 90 */	fmr f31, f1
/* 8062F118  C0 63 D2 78 */	lfs f3, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062F11C  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 8062F120  4C 41 13 82 */	cror 2, 1, 2
/* 8062F124  40 82 01 98 */	bne lbl_8062F2BC
/* 8062F128  C0 1D 08 38 */	lfs f0, 0x838(r29)
/* 8062F12C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8062F130  40 80 00 10 */	bge lbl_8062F140
/* 8062F134  A8 1D 08 2A */	lha r0, 0x82a(r29)
/* 8062F138  68 00 00 01 */	xori r0, r0, 1
/* 8062F13C  B0 1D 08 2A */	sth r0, 0x82a(r29)
lbl_8062F140:
/* 8062F140  2C 1E 00 07 */	cmpwi r30, 7
/* 8062F144  D3 FD 08 38 */	stfs f31, 0x838(r29)
/* 8062F148  41 82 00 28 */	beq lbl_8062F170
/* 8062F14C  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8062F150  41 82 00 20 */	beq lbl_8062F170
/* 8062F154  38 1E FF DA */	addi r0, r30, -38
/* 8062F158  28 00 00 01 */	cmplwi r0, 1
/* 8062F15C  40 81 00 14 */	ble lbl_8062F170
/* 8062F160  2C 1E 00 30 */	cmpwi r30, 0x30
/* 8062F164  41 82 00 0C */	beq lbl_8062F170
/* 8062F168  2C 1E 00 59 */	cmpwi r30, 0x59
/* 8062F16C  40 82 00 3C */	bne lbl_8062F1A8
lbl_8062F170:
/* 8062F170  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062F174  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8062F178  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8062F17C  4C 41 13 82 */	cror 2, 1, 2
/* 8062F180  40 82 00 18 */	bne lbl_8062F198
/* 8062F184  3C 60 80 65 */	lis r3, lit_693@ha /* 0x8064D294@ha */
/* 8062F188  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8062F18C  C0 23 D2 94 */	lfs f1, lit_693@l(r3)  /* 0x8064D294@l */
/* 8062F190  EF E1 00 32 */	fmuls f31, f1, f0
/* 8062F194  48 00 00 54 */	b lbl_8062F1E8
lbl_8062F198:
/* 8062F198  3C 60 80 65 */	lis r3, lit_693@ha /* 0x8064D294@ha */
/* 8062F19C  C0 03 D2 94 */	lfs f0, lit_693@l(r3)  /* 0x8064D294@l */
/* 8062F1A0  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8062F1A4  48 00 00 44 */	b lbl_8062F1E8
lbl_8062F1A8:
/* 8062F1A8  38 1E FF 87 */	addi r0, r30, -121
/* 8062F1AC  28 00 00 01 */	cmplwi r0, 1
/* 8062F1B0  40 81 00 0C */	ble lbl_8062F1BC
/* 8062F1B4  2C 1E 00 7B */	cmpwi r30, 0x7b
/* 8062F1B8  40 82 00 30 */	bne lbl_8062F1E8
lbl_8062F1BC:
/* 8062F1BC  A8 1D 08 2A */	lha r0, 0x82a(r29)
/* 8062F1C0  2C 00 00 00 */	cmpwi r0, 0
/* 8062F1C4  40 82 00 14 */	bne lbl_8062F1D8
/* 8062F1C8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062F1CC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8062F1D0  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8062F1D4  48 00 00 14 */	b lbl_8062F1E8
lbl_8062F1D8:
/* 8062F1D8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062F1DC  C0 23 D2 8C */	lfs f1, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8062F1E0  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8062F1E4  EF E1 00 2A */	fadds f31, f1, f0
lbl_8062F1E8:
/* 8062F1E8  3C 80 80 6D */	lis r4, hnw_cKF_ba_r_table@ha /* 0x806D5BE8@ha */
/* 8062F1EC  3C 00 43 30 */	lis r0, 0x4330
/* 8062F1F0  57 DE 10 3A */	slwi r30, r30, 2
/* 8062F1F4  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F1F8  3B E4 5B E8 */	addi r31, r4, hnw_cKF_ba_r_table@l /* 0x806D5BE8@l */
/* 8062F1FC  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8062F200  7C FF F0 2E */	lwzx r7, r31, r30
/* 8062F204  39 23 D2 84 */	addi r9, r3, lit_371@l /* 0x8064D284@l */
/* 8062F208  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064D28C@ha */
/* 8062F20C  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F210  A9 07 00 12 */	lha r8, 0x12(r7)
/* 8062F214  3C 60 80 65 */	lis r3, lit_369@ha /* 0x8064D27C@ha */
/* 8062F218  38 E6 D2 78 */	addi r7, r6, lit_368@l /* 0x8064D278@l */
/* 8062F21C  38 C5 D2 8C */	addi r6, r5, lit_626@l /* 0x8064D28C@l */
/* 8062F220  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 8062F224  90 01 00 08 */	stw r0, 8(r1)
/* 8062F228  38 A4 D2 74 */	addi r5, r4, data_8064D274@l /* 0x8064D274@l */
/* 8062F22C  38 83 D2 7C */	addi r4, r3, lit_369@l /* 0x8064D27C@l */
/* 8062F230  91 01 00 0C */	stw r8, 0xc(r1)
/* 8062F234  38 7D 08 34 */	addi r3, r29, 0x834
/* 8062F238  C8 49 00 00 */	lfd f2, 0(r9)
/* 8062F23C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F240  C0 27 00 00 */	lfs f1, 0(r7)
/* 8062F244  EF C0 10 28 */	fsubs f30, f0, f2
/* 8062F248  C0 46 00 00 */	lfs f2, 0(r6)
/* 8062F24C  C0 65 00 00 */	lfs f3, 0(r5)
/* 8062F250  C0 84 00 00 */	lfs f4, 0(r4)
/* 8062F254  4B D8 BF 5D */	bl add_calc
/* 8062F258  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F25C  C0 3D 08 34 */	lfs f1, 0x834(r29)
/* 8062F260  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8062F264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062F268  40 80 00 10 */	bge lbl_8062F278
/* 8062F26C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F270  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062F274  D0 1D 08 34 */	stfs f0, 0x834(r29)
lbl_8062F278:
/* 8062F278  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F27C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F280  C0 24 D2 74 */	lfs f1, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8062F284  38 E3 D2 78 */	addi r7, r3, lit_368@l /* 0x8064D278@l */
/* 8062F288  C0 87 00 00 */	lfs f4, 0(r7)
/* 8062F28C  FC 40 F0 90 */	fmr f2, f30
/* 8062F290  EC 1E 08 28 */	fsubs f0, f30, f1
/* 8062F294  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8062F298  7C BF F0 2E */	lwzx r5, r31, r30
/* 8062F29C  7F 83 E3 78 */	mr r3, r28
/* 8062F2A0  C0 BD 08 34 */	lfs f5, 0x834(r29)
/* 8062F2A4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8062F2A8  38 C0 00 00 */	li r6, 0
/* 8062F2AC  38 E0 00 00 */	li r7, 0
/* 8062F2B0  EC 61 00 2A */	fadds f3, f1, f0
/* 8062F2B4  4B D4 1A 21 */	bl cKF_SkeletonInfo_R_init
/* 8062F2B8  48 00 00 E8 */	b lbl_8062F3A0
lbl_8062F2BC:
/* 8062F2BC  3C 60 80 65 */	lis r3, lit_694@ha /* 0x8064D298@ha */
/* 8062F2C0  C0 03 D2 98 */	lfs f0, lit_694@l(r3)  /* 0x8064D298@l */
/* 8062F2C4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8062F2C8  40 82 00 64 */	bne lbl_8062F32C
/* 8062F2CC  3C 60 80 6D */	lis r3, cKF_ba_r_int_hnw_off@ha /* 0x806D5E20@ha */
/* 8062F2D0  3C 00 43 30 */	lis r0, 0x4330
/* 8062F2D4  38 A3 5E 20 */	addi r5, r3, cKF_ba_r_int_hnw_off@l /* 0x806D5E20@l */
/* 8062F2D8  3C C0 80 65 */	lis r6, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F2DC  A8 85 00 12 */	lha r4, 0x12(r5)
/* 8062F2E0  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F2E4  90 01 00 08 */	stw r0, 8(r1)
/* 8062F2E8  FC 80 18 90 */	fmr f4, f3
/* 8062F2EC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8062F2F0  C8 43 D2 84 */	lfd f2, lit_371@l(r3)  /* 0x8064D284@l */
/* 8062F2F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F2F8  FC A0 18 90 */	fmr f5, f3
/* 8062F2FC  C0 26 D2 74 */	lfs f1, data_8064D274@l(r6)  /* 0x8064D274@l */
/* 8062F300  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F304  7F 83 E3 78 */	mr r3, r28
/* 8062F308  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8062F30C  38 C0 00 00 */	li r6, 0
/* 8062F310  EC 40 10 28 */	fsubs f2, f0, f2
/* 8062F314  38 E0 00 00 */	li r7, 0
/* 8062F318  4B D4 19 BD */	bl cKF_SkeletonInfo_R_init
/* 8062F31C  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064D29C@ha */
/* 8062F320  C0 03 D2 9C */	lfs f0, lit_695@l(r3)  /* 0x8064D29C@l */
/* 8062F324  D0 1D 08 34 */	stfs f0, 0x834(r29)
/* 8062F328  48 00 00 78 */	b lbl_8062F3A0
lbl_8062F32C:
/* 8062F32C  3C 80 80 6D */	lis r4, hnw_cKF_ba_r_table@ha /* 0x806D5BE8@ha */
/* 8062F330  3C 00 43 30 */	lis r0, 0x4330
/* 8062F334  38 A4 5B E8 */	addi r5, r4, hnw_cKF_ba_r_table@l /* 0x806D5BE8@l */
/* 8062F338  57 C6 10 3A */	slwi r6, r30, 2
/* 8062F33C  7C A5 30 2E */	lwzx r5, r5, r6
/* 8062F340  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F344  38 E4 D2 74 */	addi r7, r4, data_8064D274@l /* 0x8064D274@l */
/* 8062F348  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F34C  A8 85 00 12 */	lha r4, 0x12(r5)
/* 8062F350  39 03 D2 84 */	addi r8, r3, lit_371@l /* 0x8064D284@l */
/* 8062F354  90 01 00 08 */	stw r0, 8(r1)
/* 8062F358  3C 60 80 65 */	lis r3, lit_693@ha /* 0x8064D294@ha */
/* 8062F35C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8062F360  C0 27 00 00 */	lfs f1, 0(r7)
/* 8062F364  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F368  38 C3 D2 94 */	addi r6, r3, lit_693@l /* 0x8064D294@l */
/* 8062F36C  C0 A6 00 00 */	lfs f5, 0(r6)
/* 8062F370  FC 80 18 90 */	fmr f4, f3
/* 8062F374  C8 48 00 00 */	lfd f2, 0(r8)
/* 8062F378  7F 83 E3 78 */	mr r3, r28
/* 8062F37C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F380  38 C0 00 00 */	li r6, 0
/* 8062F384  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8062F388  EC 40 10 28 */	fsubs f2, f0, f2
/* 8062F38C  38 E0 00 00 */	li r7, 0
/* 8062F390  4B D4 19 45 */	bl cKF_SkeletonInfo_R_init
/* 8062F394  3C 60 80 65 */	lis r3, lit_693@ha /* 0x8064D294@ha */
/* 8062F398  C0 03 D2 94 */	lfs f0, lit_693@l(r3)  /* 0x8064D294@l */
/* 8062F39C  D0 1D 08 34 */	stfs f0, 0x834(r29)
lbl_8062F3A0:
/* 8062F3A0  88 1D 01 2D */	lbz r0, 0x12d(r29)
/* 8062F3A4  28 00 00 00 */	cmplwi r0, 0
/* 8062F3A8  41 82 00 C4 */	beq lbl_8062F46C
/* 8062F3AC  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8062F3B0  28 00 00 00 */	cmplwi r0, 0
/* 8062F3B4  40 82 00 B8 */	bne lbl_8062F46C
/* 8062F3B8  7F A3 EB 78 */	mr r3, r29
/* 8062F3BC  4B FF ED 1D */	bl sAdo_RhythmStop
/* 8062F3C0  38 00 00 03 */	li r0, 3
/* 8062F3C4  3C 60 80 6D */	lis r3, cKF_ba_r_int_hnw_off@ha /* 0x806D5E20@ha */
/* 8062F3C8  B0 1D 01 30 */	sth r0, 0x130(r29)
/* 8062F3CC  38 A3 5E 20 */	addi r5, r3, cKF_ba_r_int_hnw_off@l /* 0x806D5E20@l */
/* 8062F3D0  3C 00 43 30 */	lis r0, 0x4330
/* 8062F3D4  3C 80 80 65 */	lis r4, lit_371@ha /* 0x8064D284@ha */
/* 8062F3D8  A8 C5 00 12 */	lha r6, 0x12(r5)
/* 8062F3DC  39 04 D2 84 */	addi r8, r4, lit_371@l /* 0x8064D284@l */
/* 8062F3E0  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F3E4  90 01 00 08 */	stw r0, 8(r1)
/* 8062F3E8  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8062F3EC  C8 28 00 00 */	lfd f1, 0(r8)
/* 8062F3F0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8062F3F4  38 83 D2 78 */	addi r4, r3, lit_368@l /* 0x8064D278@l */
/* 8062F3F8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8062F3FC  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F400  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F404  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064D290@ha */
/* 8062F408  38 C7 D2 74 */	addi r6, r7, data_8064D274@l /* 0x8064D274@l */
/* 8062F40C  FC 80 18 90 */	fmr f4, f3
/* 8062F410  38 E3 D2 90 */	addi r7, r3, lit_627@l /* 0x8064D290@l */
/* 8062F414  EC 40 08 28 */	fsubs f2, f0, f1
/* 8062F418  C0 26 00 00 */	lfs f1, 0(r6)
/* 8062F41C  7F 83 E3 78 */	mr r3, r28
/* 8062F420  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8062F424  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8062F428  38 C0 00 00 */	li r6, 0
/* 8062F42C  38 E0 00 00 */	li r7, 0
/* 8062F430  4B D4 18 A5 */	bl cKF_SkeletonInfo_R_init
/* 8062F434  48 00 00 38 */	b lbl_8062F46C
lbl_8062F438:
/* 8062F438  88 1D 01 2D */	lbz r0, 0x12d(r29)
/* 8062F43C  28 00 00 00 */	cmplwi r0, 0
/* 8062F440  41 82 00 2C */	beq lbl_8062F46C
/* 8062F444  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8062F448  28 00 00 01 */	cmplwi r0, 1
/* 8062F44C  40 82 00 20 */	bne lbl_8062F46C
/* 8062F450  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064D290@ha */
/* 8062F454  38 00 FF FF */	li r0, -1
/* 8062F458  98 1D 01 2E */	stb r0, 0x12e(r29)
/* 8062F45C  38 00 00 01 */	li r0, 1
/* 8062F460  C0 03 D2 90 */	lfs f0, lit_627@l(r3)  /* 0x8064D290@l */
/* 8062F464  D0 1D 08 34 */	stfs f0, 0x834(r29)
/* 8062F468  B0 1D 01 30 */	sth r0, 0x130(r29)
lbl_8062F46C:
/* 8062F46C  7F 83 E3 78 */	mr r3, r28
/* 8062F470  4B D4 1B A5 */	bl cKF_SkeletonInfo_R_play
lbl_8062F474:
/* 8062F474  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8062F478  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8062F47C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8062F480  39 61 00 20 */	addi r11, r1, 0x20
/* 8062F484  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8062F488  4B A6 BA 95 */	bl func_8009AF1C
/* 8062F48C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062F490  7C 08 03 A6 */	mtlr r0
/* 8062F494  38 21 00 40 */	addi r1, r1, 0x40
/* 8062F498  4E 80 00 20 */	blr 
