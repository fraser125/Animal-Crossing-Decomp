lbl_80451190:
/* 80451190  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80451194  7C 08 02 A6 */	mflr r0
/* 80451198  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045119C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804511A0  7C 7F 1B 78 */	mr r31, r3
/* 804511A4  3C 60 80 45 */	lis r3, mfish_unagi_normal_to_reverse@ha /* 0x80451C48@ha */
/* 804511A8  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 804511AC  38 03 1C 48 */	addi r0, r3, mfish_unagi_normal_to_reverse@l /* 0x80451C48@l */
/* 804511B0  7C 04 00 40 */	cmplw r4, r0
/* 804511B4  40 82 00 0C */	bne lbl_804511C0
/* 804511B8  38 00 00 0C */	li r0, 0xc
/* 804511BC  48 00 00 34 */	b lbl_804511F0
lbl_804511C0:
/* 804511C0  3C 60 80 45 */	lis r3, mfish_unagi_reverse_to_normal@ha /* 0x80452748@ha */
/* 804511C4  38 03 27 48 */	addi r0, r3, mfish_unagi_reverse_to_normal@l /* 0x80452748@l */
/* 804511C8  7C 04 00 40 */	cmplw r4, r0
/* 804511CC  40 82 00 0C */	bne lbl_804511D8
/* 804511D0  38 00 00 13 */	li r0, 0x13
/* 804511D4  48 00 00 1C */	b lbl_804511F0
lbl_804511D8:
/* 804511D8  A8 1F 06 46 */	lha r0, 0x646(r31)
/* 804511DC  3C 60 80 68 */	lis r3, unagi_rail_num_tbl@ha /* 0x80686114@ha */
/* 804511E0  38 63 61 14 */	addi r3, r3, unagi_rail_num_tbl@l /* 0x80686114@l */
/* 804511E4  54 00 10 3A */	slwi r0, r0, 2
/* 804511E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804511EC  7C 00 07 34 */	extsh r0, r0
lbl_804511F0:
/* 804511F0  7C 03 07 34 */	extsh r3, r0
/* 804511F4  A8 9F 06 40 */	lha r4, 0x640(r31)
/* 804511F8  38 03 FF FB */	addi r0, r3, -5
/* 804511FC  7C 04 00 00 */	cmpw r4, r0
/* 80451200  41 81 00 0C */	bgt lbl_8045120C
/* 80451204  2C 04 00 03 */	cmpwi r4, 3
/* 80451208  40 80 00 F8 */	bge lbl_80451300
lbl_8045120C:
/* 8045120C  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80451210  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451214  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80451218  3C 00 43 30 */	lis r0, 0x4330
/* 8045121C  C9 25 00 00 */	lfd f9, 0(r5)
/* 80451220  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80451224  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80451228  C9 04 42 4C */	lfd f8, lit_469@l(r4)  /* 0x8064424C@l */
/* 8045122C  FC 20 48 34 */	frsqrte f1, f9
/* 80451230  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80451234  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80451238  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8045123C  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80451240  C8 E7 00 00 */	lfd f7, 0(r7)
/* 80451244  FC 01 00 72 */	fmul f0, f1, f1
/* 80451248  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 8045124C  C8 46 00 00 */	lfd f2, 0(r6)
/* 80451250  3C 60 80 64 */	lis r3, lit_3229@ha /* 0x806443B4@ha */
/* 80451254  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80451258  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8045125C  FC 09 00 32 */	fmul f0, f9, f0
/* 80451260  38 E3 43 B4 */	addi r7, r3, lit_3229@l /* 0x806443B4@l */
/* 80451264  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80451268  39 04 42 98 */	addi r8, r4, lit_588@l /* 0x80644298@l */
/* 8045126C  FC 28 00 72 */	fmul f1, f8, f1
/* 80451270  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80451274  FC 07 00 28 */	fsub f0, f7, f0
/* 80451278  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8045127C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80451280  38 7F 06 12 */	addi r3, r31, 0x612
/* 80451284  C0 67 00 00 */	lfs f3, 0(r7)
/* 80451288  38 A0 00 88 */	li r5, 0x88
/* 8045128C  FC C1 00 32 */	fmul f6, f1, f0
/* 80451290  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80451294  C0 88 00 00 */	lfs f4, 0(r8)
/* 80451298  38 C0 00 00 */	li r6, 0
/* 8045129C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804512A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 804512A4  FC A6 01 B2 */	fmul f5, f6, f6
/* 804512A8  FC C8 01 B2 */	fmul f6, f8, f6
/* 804512AC  FC A9 01 72 */	fmul f5, f9, f5
/* 804512B0  EC 23 08 2A */	fadds f1, f3, f1
/* 804512B4  FC 47 28 28 */	fsub f2, f7, f5
/* 804512B8  EC 24 00 72 */	fmuls f1, f4, f1
/* 804512BC  FC 66 00 B2 */	fmul f3, f6, f2
/* 804512C0  FC 20 08 1E */	fctiwz f1, f1
/* 804512C4  FC 43 00 F2 */	fmul f2, f3, f3
/* 804512C8  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 804512CC  FC 68 00 F2 */	fmul f3, f8, f3
/* 804512D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804512D4  FC 49 00 B2 */	fmul f2, f9, f2
/* 804512D8  7C 04 07 34 */	extsh r4, r0
/* 804512DC  FC 47 10 28 */	fsub f2, f7, f2
/* 804512E0  FC 23 00 B2 */	fmul f1, f3, f2
/* 804512E4  FC 29 00 72 */	fmul f1, f9, f1
/* 804512E8  FC 20 08 18 */	frsp f1, f1
/* 804512EC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804512F0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804512F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804512F8  4B F6 A0 19 */	bl add_calc_short_angle2
/* 804512FC  48 00 00 F4 */	b lbl_804513F0
lbl_80451300:
/* 80451300  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 80451304  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451308  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8045130C  3C 00 43 30 */	lis r0, 0x4330
/* 80451310  C9 25 00 00 */	lfd f9, 0(r5)
/* 80451314  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80451318  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 8045131C  C9 04 42 4C */	lfd f8, lit_469@l(r4)  /* 0x8064424C@l */
/* 80451320  FC 20 48 34 */	frsqrte f1, f9
/* 80451324  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80451328  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 8045132C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80451330  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80451334  C8 E7 00 00 */	lfd f7, 0(r7)
/* 80451338  FC 01 00 72 */	fmul f0, f1, f1
/* 8045133C  A8 84 1B 7A */	lha r4, 0x1b7a(r4)
/* 80451340  C8 46 00 00 */	lfd f2, 0(r6)
/* 80451344  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80451348  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8045134C  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 80451350  FC 09 00 32 */	fmul f0, f9, f0
/* 80451354  38 E3 42 84 */	addi r7, r3, lit_568@l /* 0x80644284@l */
/* 80451358  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8045135C  39 04 42 98 */	addi r8, r4, lit_588@l /* 0x80644298@l */
/* 80451360  FC 28 00 72 */	fmul f1, f8, f1
/* 80451364  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80451368  FC 07 00 28 */	fsub f0, f7, f0
/* 8045136C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80451370  90 01 00 20 */	stw r0, 0x20(r1)
/* 80451374  38 7F 06 12 */	addi r3, r31, 0x612
/* 80451378  C0 67 00 00 */	lfs f3, 0(r7)
/* 8045137C  38 A0 00 2D */	li r5, 0x2d
/* 80451380  FC C1 00 32 */	fmul f6, f1, f0
/* 80451384  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80451388  C0 88 00 00 */	lfs f4, 0(r8)
/* 8045138C  38 C0 00 00 */	li r6, 0
/* 80451390  EC 21 10 28 */	fsubs f1, f1, f2
/* 80451394  C0 04 00 00 */	lfs f0, 0(r4)
/* 80451398  FC A6 01 B2 */	fmul f5, f6, f6
/* 8045139C  FC C8 01 B2 */	fmul f6, f8, f6
/* 804513A0  FC A9 01 72 */	fmul f5, f9, f5
/* 804513A4  EC 23 08 2A */	fadds f1, f3, f1
/* 804513A8  FC 47 28 28 */	fsub f2, f7, f5
/* 804513AC  EC 24 00 72 */	fmuls f1, f4, f1
/* 804513B0  FC 66 00 B2 */	fmul f3, f6, f2
/* 804513B4  FC 20 08 1E */	fctiwz f1, f1
/* 804513B8  FC 43 00 F2 */	fmul f2, f3, f3
/* 804513BC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804513C0  FC 68 00 F2 */	fmul f3, f8, f3
/* 804513C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804513C8  FC 49 00 B2 */	fmul f2, f9, f2
/* 804513CC  7C 04 07 34 */	extsh r4, r0
/* 804513D0  FC 47 10 28 */	fsub f2, f7, f2
/* 804513D4  FC 23 00 B2 */	fmul f1, f3, f2
/* 804513D8  FC 29 00 72 */	fmul f1, f9, f1
/* 804513DC  FC 20 08 18 */	frsp f1, f1
/* 804513E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804513E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804513E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804513EC  4B F6 9F 25 */	bl add_calc_short_angle2
lbl_804513F0:
/* 804513F0  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 804513F4  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804513F8  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 804513FC  3C 00 43 30 */	lis r0, 0x4330
/* 80451400  C9 45 00 00 */	lfd f10, 0(r5)
/* 80451404  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80451408  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 8045140C  3C E0 80 64 */	lis r7, lit_840@ha /* 0x806442D8@ha */
/* 80451410  FC 20 50 34 */	frsqrte f1, f10
/* 80451414  C9 24 42 4C */	lfd f9, lit_469@l(r4)  /* 0x8064424C@l */
/* 80451418  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045141C  C9 06 00 00 */	lfd f8, 0(r6)
/* 80451420  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80451424  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80451428  FC 01 00 72 */	fmul f0, f1, f1
/* 8045142C  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80451430  A8 84 1B 7C */	lha r4, 0x1b7c(r4)
/* 80451434  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80451438  38 C3 42 68 */	addi r6, r3, lit_527@l /* 0x80644268@l */
/* 8045143C  C8 45 00 00 */	lfd f2, 0(r5)
/* 80451440  FC 0A 00 32 */	fmul f0, f10, f0
/* 80451444  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80451448  C0 66 00 00 */	lfs f3, 0(r6)
/* 8045144C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80451450  FC 29 00 72 */	fmul f1, f9, f1
/* 80451454  39 03 42 98 */	addi r8, r3, lit_588@l /* 0x80644298@l */
/* 80451458  FC 08 00 28 */	fsub f0, f8, f0
/* 8045145C  90 81 00 24 */	stw r4, 0x24(r1)
/* 80451460  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80451464  C0 87 42 D8 */	lfs f4, lit_840@l(r7)  /* 0x806442D8@l */
/* 80451468  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8045146C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80451470  FC 01 00 32 */	fmul f0, f1, f0
/* 80451474  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80451478  C0 A8 00 00 */	lfs f5, 0(r8)
/* 8045147C  38 7F 06 16 */	addi r3, r31, 0x616
/* 80451480  EC 21 10 28 */	fsubs f1, f1, f2
/* 80451484  38 A0 00 04 */	li r5, 4
/* 80451488  FC C0 00 32 */	fmul f6, f0, f0
/* 8045148C  38 C0 00 00 */	li r6, 0
/* 80451490  FC E9 00 32 */	fmul f7, f9, f0
/* 80451494  C0 04 00 00 */	lfs f0, 0(r4)
/* 80451498  FC CA 01 B2 */	fmul f6, f10, f6
/* 8045149C  EC 23 00 72 */	fmuls f1, f3, f1
/* 804514A0  FC 48 30 28 */	fsub f2, f8, f6
/* 804514A4  EC 24 08 2A */	fadds f1, f4, f1
/* 804514A8  FC 67 00 B2 */	fmul f3, f7, f2
/* 804514AC  FC 20 08 50 */	fneg f1, f1
/* 804514B0  FC 43 00 F2 */	fmul f2, f3, f3
/* 804514B4  FC 69 00 F2 */	fmul f3, f9, f3
/* 804514B8  FC 4A 00 B2 */	fmul f2, f10, f2
/* 804514BC  EC 25 00 72 */	fmuls f1, f5, f1
/* 804514C0  FC 48 10 28 */	fsub f2, f8, f2
/* 804514C4  FC 20 08 1E */	fctiwz f1, f1
/* 804514C8  FC 43 00 B2 */	fmul f2, f3, f2
/* 804514CC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804514D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804514D4  FC 4A 00 B2 */	fmul f2, f10, f2
/* 804514D8  7C 04 07 34 */	extsh r4, r0
/* 804514DC  FC 20 10 18 */	frsp f1, f2
/* 804514E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804514E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804514E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804514EC  4B F6 9E 25 */	bl add_calc_short_angle2
/* 804514F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804514F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804514F8  7C 08 03 A6 */	mtlr r0
/* 804514FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80451500  4E 80 00 20 */	blr 