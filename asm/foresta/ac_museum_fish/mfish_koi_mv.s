lbl_8043F044:
/* 8043F044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043F048  7C 08 02 A6 */	mflr r0
/* 8043F04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043F050  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043F054  7C 7F 1B 78 */	mr r31, r3
/* 8043F058  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043F05C  7C 9E 23 78 */	mr r30, r4
/* 8043F060  4B FF 55 9D */	bl mfish_onefish_mv
/* 8043F064  7F E3 FB 78 */	mr r3, r31
/* 8043F068  7F C4 F3 78 */	mr r4, r30
/* 8043F06C  4B FF FB E1 */	bl mfish_koi_base_mv
/* 8043F070  7F E3 FB 78 */	mr r3, r31
/* 8043F074  7F C4 F3 78 */	mr r4, r30
/* 8043F078  4B FF 6C 19 */	bl Museum_Fish_BGCheck
/* 8043F07C  3C 60 80 44 */	lis r3, mfish_koi_dummy_process@ha /* 0x8043CB14@ha */
/* 8043F080  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8043F084  38 03 CB 14 */	addi r0, r3, mfish_koi_dummy_process@l /* 0x8043CB14@l */
/* 8043F088  7C 04 00 40 */	cmplw r4, r0
/* 8043F08C  41 82 00 14 */	beq lbl_8043F0A0
/* 8043F090  3C 60 80 44 */	lis r3, mfish_koi_long_move_process@ha /* 0x8043E690@ha */
/* 8043F094  38 03 E6 90 */	addi r0, r3, mfish_koi_long_move_process@l /* 0x8043E690@l */
/* 8043F098  7C 04 00 40 */	cmplw r4, r0
/* 8043F09C  40 82 00 30 */	bne lbl_8043F0CC
lbl_8043F0A0:
/* 8043F0A0  80 1E 20 90 */	lwz r0, 0x2090(r30)
/* 8043F0A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8043F0A8  40 82 00 24 */	bne lbl_8043F0CC
/* 8043F0AC  4B C1 DC 49 */	bl fqrand
/* 8043F0B0  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8043F0B4  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8043F0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043F0BC  40 80 00 10 */	bge lbl_8043F0CC
/* 8043F0C0  7F E3 FB 78 */	mr r3, r31
/* 8043F0C4  38 80 00 02 */	li r4, 2
/* 8043F0C8  4B FF D2 59 */	bl func_8043C320
lbl_8043F0CC:
/* 8043F0CC  A8 7F 06 40 */	lha r3, 0x640(r31)
/* 8043F0D0  2C 03 00 00 */	cmpwi r3, 0
/* 8043F0D4  40 81 01 94 */	ble lbl_8043F268
/* 8043F0D8  38 03 FF FF */	addi r0, r3, -1
/* 8043F0DC  3C 60 80 44 */	lis r3, mfish_koi_dummy_process@ha /* 0x8043CB14@ha */
/* 8043F0E0  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8043F0E4  38 03 CB 14 */	addi r0, r3, mfish_koi_dummy_process@l /* 0x8043CB14@l */
/* 8043F0E8  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8043F0EC  7C 04 00 40 */	cmplw r4, r0
/* 8043F0F0  41 82 00 14 */	beq lbl_8043F104
/* 8043F0F4  3C 60 80 44 */	lis r3, mfish_koi_long_move_process@ha /* 0x8043E690@ha */
/* 8043F0F8  38 03 E6 90 */	addi r0, r3, mfish_koi_long_move_process@l /* 0x8043E690@l */
/* 8043F0FC  7C 04 00 40 */	cmplw r4, r0
/* 8043F100  40 82 00 64 */	bne lbl_8043F164
lbl_8043F104:
/* 8043F104  C0 5F 05 F0 */	lfs f2, 0x5f0(r31)
/* 8043F108  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043F10C  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043F110  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043F114  EC 62 08 28 */	fsubs f3, f2, f1
/* 8043F118  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043F11C  40 81 00 08 */	ble lbl_8043F124
/* 8043F120  48 00 00 08 */	b lbl_8043F128
lbl_8043F124:
/* 8043F124  FC 60 00 90 */	fmr f3, f0
lbl_8043F128:
/* 8043F128  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 8043F12C  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8043F130  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043F134  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043F138  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8043F13C  EC 82 00 F2 */	fmuls f4, f2, f3
/* 8043F140  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043F144  38 7F 00 44 */	addi r3, r31, 0x44
/* 8043F148  EC 01 00 2A */	fadds f0, f1, f0
/* 8043F14C  C0 24 43 20 */	lfs f1, lit_1100@l(r4)  /* 0x80644320@l */
/* 8043F150  FC 60 10 90 */	fmr f3, f2
/* 8043F154  EC 04 00 24 */	fdivs f0, f4, f0
/* 8043F158  EC 21 00 2A */	fadds f1, f1, f0
/* 8043F15C  4B F7 C1 39 */	bl add_calc2
/* 8043F160  48 00 00 60 */	b lbl_8043F1C0
lbl_8043F164:
/* 8043F164  C0 5F 05 F0 */	lfs f2, 0x5f0(r31)
/* 8043F168  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043F16C  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043F170  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043F174  EC 62 08 28 */	fsubs f3, f2, f1
/* 8043F178  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043F17C  40 81 00 08 */	ble lbl_8043F184
/* 8043F180  48 00 00 08 */	b lbl_8043F188
lbl_8043F184:
/* 8043F184  FC 60 00 90 */	fmr f3, f0
lbl_8043F188:
/* 8043F188  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 8043F18C  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8043F190  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043F194  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043F198  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8043F19C  EC 82 00 F2 */	fmuls f4, f2, f3
/* 8043F1A0  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043F1A4  38 7F 00 44 */	addi r3, r31, 0x44
/* 8043F1A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8043F1AC  C0 24 43 20 */	lfs f1, lit_1100@l(r4)  /* 0x80644320@l */
/* 8043F1B0  FC 60 10 90 */	fmr f3, f2
/* 8043F1B4  EC 04 00 24 */	fdivs f0, f4, f0
/* 8043F1B8  EC 21 00 2A */	fadds f1, f1, f0
/* 8043F1BC  4B F7 C0 D9 */	bl add_calc2
lbl_8043F1C0:
/* 8043F1C0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043F1C4  3C 00 43 30 */	lis r0, 0x4330
/* 8043F1C8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043F1CC  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043F1D0  80 84 00 00 */	lwz r4, 0(r4)
/* 8043F1D4  39 03 42 8C */	addi r8, r3, lit_570@l /* 0x8064428C@l */
/* 8043F1D8  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 8043F1DC  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043F1E0  A8 84 1B A0 */	lha r4, 0x1ba0(r4)
/* 8043F1E4  39 25 42 C4 */	addi r9, r5, lit_793@l /* 0x806442C4@l */
/* 8043F1E8  38 C3 42 94 */	addi r6, r3, lit_587@l /* 0x80644294@l */
/* 8043F1EC  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043F1F0  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8043F1F4  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043F1F8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8043F1FC  38 E3 42 D4 */	addi r7, r3, lit_839@l /* 0x806442D4@l */
/* 8043F200  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043F204  38 A4 42 5C */	addi r5, r4, lit_471@l /* 0x8064425C@l */
/* 8043F208  90 01 00 08 */	stw r0, 8(r1)
/* 8043F20C  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8043F210  C8 28 00 00 */	lfd f1, 0(r8)
/* 8043F214  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8043F218  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043F21C  C0 89 00 00 */	lfs f4, 0(r9)
/* 8043F220  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043F224  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8043F228  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043F22C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8043F230  EC C4 00 32 */	fmuls f6, f4, f0
/* 8043F234  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 8043F238  EC A3 10 2A */	fadds f5, f3, f2
/* 8043F23C  C0 87 00 00 */	lfs f4, 0(r7)
/* 8043F240  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043F244  EC 21 30 28 */	fsubs f1, f1, f6
/* 8043F248  EC 05 00 28 */	fsubs f0, f5, f0
/* 8043F24C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8043F250  EC 84 30 2A */	fadds f4, f4, f6
/* 8043F254  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043F258  EC 00 28 24 */	fdivs f0, f0, f5
/* 8043F25C  EC 24 00 2A */	fadds f1, f4, f0
/* 8043F260  4B F7 C0 35 */	bl add_calc2
/* 8043F264  48 00 00 68 */	b lbl_8043F2CC
lbl_8043F268:
/* 8043F268  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8043F26C  3C A0 80 64 */	lis r5, lit_1071@ha /* 0x80644314@ha */
/* 8043F270  C0 63 42 44 */	lfs f3, data_80644244@l(r3)  /* 0x80644244@l */
/* 8043F274  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043F278  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 8043F27C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043F280  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043F284  EC 83 00 B2 */	fmuls f4, f3, f2
/* 8043F288  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8043F28C  C0 63 42 68 */	lfs f3, lit_527@l(r3)  /* 0x80644268@l */
/* 8043F290  38 7F 00 44 */	addi r3, r31, 0x44
/* 8043F294  EC 01 00 2A */	fadds f0, f1, f0
/* 8043F298  C0 A5 43 14 */	lfs f5, lit_1071@l(r5)  /* 0x80644314@l */
/* 8043F29C  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043F2A0  EC 04 00 24 */	fdivs f0, f4, f0
/* 8043F2A4  EC 25 00 2A */	fadds f1, f5, f0
/* 8043F2A8  4B F7 BF ED */	bl add_calc2
/* 8043F2AC  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 8043F2B0  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 8043F2B4  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644264@ha */
/* 8043F2B8  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 8043F2BC  C0 45 42 68 */	lfs f2, lit_527@l(r5)  /* 0x80644268@l */
/* 8043F2C0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8043F2C4  C0 64 42 64 */	lfs f3, lit_526@l(r4)  /* 0x80644264@l */
/* 8043F2C8  4B F7 BF CD */	bl add_calc2
lbl_8043F2CC:
/* 8043F2CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043F2D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043F2D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043F2D8  7C 08 03 A6 */	mtlr r0
/* 8043F2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8043F2E0  4E 80 00 20 */	blr 
