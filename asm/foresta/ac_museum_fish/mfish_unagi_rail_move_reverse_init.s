lbl_80451FE0:
/* 80451FE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80451FE4  7C 08 02 A6 */	mflr r0
/* 80451FE8  3C 80 80 68 */	lis r4, unagi_rail_tbl@ha /* 0x80686108@ha */
/* 80451FEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80451FF0  38 A4 61 08 */	addi r5, r4, unagi_rail_tbl@l /* 0x80686108@l */
/* 80451FF4  38 00 00 00 */	li r0, 0
/* 80451FF8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80451FFC  7C 7F 1B 78 */	mr r31, r3
/* 80452000  A8 C3 06 46 */	lha r6, 0x646(r3)
/* 80452004  3C 60 80 68 */	lis r3, unagi_rail_num_tbl@ha /* 0x80686114@ha */
/* 80452008  38 83 61 14 */	addi r4, r3, unagi_rail_num_tbl@l /* 0x80686114@l */
/* 8045200C  54 C6 10 3A */	slwi r6, r6, 2
/* 80452010  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80452014  7C A5 30 2E */	lwzx r5, r5, r6
/* 80452018  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8045201C  A8 1F 06 46 */	lha r0, 0x646(r31)
/* 80452020  54 00 10 3A */	slwi r0, r0, 2
/* 80452024  7C 84 00 2E */	lwzx r4, r4, r0
/* 80452028  38 04 FF FF */	addi r0, r4, -1
/* 8045202C  B0 1F 06 42 */	sth r0, 0x642(r31)
/* 80452030  A8 1F 06 42 */	lha r0, 0x642(r31)
/* 80452034  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80452038  7C 85 02 14 */	add r4, r5, r0
/* 8045203C  4B F6 90 F5 */	bl search_position_angleY
/* 80452040  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80452044  3C 00 43 30 */	lis r0, 0x4330
/* 80452048  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 8045204C  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 80452050  80 A5 00 00 */	lwz r5, 0(r5)
/* 80452054  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80452058  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8045205C  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 80452060  A8 85 1B 5C */	lha r4, 0x1b5c(r5)
/* 80452064  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 80452068  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045206C  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80452070  C8 26 00 00 */	lfd f1, 0(r6)
/* 80452074  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80452078  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8045207C  C0 47 42 C4 */	lfs f2, lit_793@l(r7)  /* 0x806442C4@l */
/* 80452080  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80452084  C0 68 42 5C */	lfs f3, lit_471@l(r8)  /* 0x8064425C@l */
/* 80452088  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045208C  C0 89 42 60 */	lfs f4, lit_472@l(r9)  /* 0x80644260@l */
/* 80452090  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80452094  EC 22 00 72 */	fmuls f1, f2, f1
/* 80452098  EC 23 08 2A */	fadds f1, f3, f1
/* 8045209C  EC 84 08 28 */	fsubs f4, f4, f1
/* 804520A0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804520A4  40 81 00 68 */	ble lbl_8045210C
/* 804520A8  FC 20 20 34 */	frsqrte f1, f4
/* 804520AC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804520B0  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 804520B4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804520B8  C8 65 00 00 */	lfd f3, 0(r5)
/* 804520BC  FC 01 00 72 */	fmul f0, f1, f1
/* 804520C0  C8 44 42 54 */	lfd f2, lit_470@l(r4)  /* 0x80644254@l */
/* 804520C4  FC 23 00 72 */	fmul f1, f3, f1
/* 804520C8  FC 04 00 32 */	fmul f0, f4, f0
/* 804520CC  FC 02 00 28 */	fsub f0, f2, f0
/* 804520D0  FC 21 00 32 */	fmul f1, f1, f0
/* 804520D4  FC 01 00 72 */	fmul f0, f1, f1
/* 804520D8  FC 23 00 72 */	fmul f1, f3, f1
/* 804520DC  FC 04 00 32 */	fmul f0, f4, f0
/* 804520E0  FC 02 00 28 */	fsub f0, f2, f0
/* 804520E4  FC 21 00 32 */	fmul f1, f1, f0
/* 804520E8  FC 01 00 72 */	fmul f0, f1, f1
/* 804520EC  FC 23 00 72 */	fmul f1, f3, f1
/* 804520F0  FC 04 00 32 */	fmul f0, f4, f0
/* 804520F4  FC 02 00 28 */	fsub f0, f2, f0
/* 804520F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804520FC  FC 04 00 32 */	fmul f0, f4, f0
/* 80452100  FC 00 00 18 */	frsp f0, f0
/* 80452104  D0 01 00 08 */	stfs f0, 8(r1)
/* 80452108  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8045210C:
/* 8045210C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80452110  3C 00 43 30 */	lis r0, 0x4330
/* 80452114  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 80452118  3C E0 80 64 */	lis r7, lit_557@ha /* 0x80644280@ha */
/* 8045211C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80452120  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80452124  38 A4 42 8C */	addi r5, r4, lit_570@l /* 0x8064428C@l */
/* 80452128  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045212C  A8 86 1B 5E */	lha r4, 0x1b5e(r6)
/* 80452130  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 80452134  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 80452138  3D 00 80 64 */	lis r8, lit_588@ha /* 0x80644298@ha */
/* 8045213C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80452140  C8 45 00 00 */	lfd f2, 0(r5)
/* 80452144  90 81 00 14 */	stw r4, 0x14(r1)
/* 80452148  7C 64 1B 78 */	mr r4, r3
/* 8045214C  C0 67 42 80 */	lfs f3, lit_557@l(r7)  /* 0x80644280@l */
/* 80452150  EC 21 20 28 */	fsubs f1, f1, f4
/* 80452154  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80452158  38 7F 06 14 */	addi r3, r31, 0x614
/* 8045215C  38 C0 00 2D */	li r6, 0x2d
/* 80452160  EC 00 10 28 */	fsubs f0, f0, f2
/* 80452164  C0 48 42 98 */	lfs f2, lit_588@l(r8)  /* 0x80644298@l */
/* 80452168  EC 03 00 2A */	fadds f0, f3, f0
/* 8045216C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80452170  FC 00 00 1E */	fctiwz f0, f0
/* 80452174  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80452178  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045217C  7C 00 07 34 */	extsh r0, r0
/* 80452180  7C 00 0E 70 */	srawi r0, r0, 1
/* 80452184  7C 05 07 34 */	extsh r5, r0
/* 80452188  4B F6 91 89 */	bl add_calc_short_angle2
/* 8045218C  3C 60 80 45 */	lis r3, mfish_unagi_rail_move_reverse@ha /* 0x804521AC@ha */
/* 80452190  38 03 21 AC */	addi r0, r3, mfish_unagi_rail_move_reverse@l /* 0x804521AC@l */
/* 80452194  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80452198  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8045219C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804521A0  7C 08 03 A6 */	mtlr r0
/* 804521A4  38 21 00 30 */	addi r1, r1, 0x30
/* 804521A8  4E 80 00 20 */	blr 