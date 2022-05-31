lbl_80451AA0:
/* 80451AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80451AA4  7C 08 02 A6 */	mflr r0
/* 80451AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80451AAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80451AB0  7C 7F 1B 78 */	mr r31, r3
/* 80451AB4  3C 60 80 68 */	lis r3, unagi_normal_to_reverse_rail_pos@ha /* 0x80685F94@ha */
/* 80451AB8  A8 9F 06 42 */	lha r4, 0x642(r31)
/* 80451ABC  38 03 5F 94 */	addi r0, r3, unagi_normal_to_reverse_rail_pos@l /* 0x80685F94@l */
/* 80451AC0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80451AC4  1C 84 00 0C */	mulli r4, r4, 0xc
/* 80451AC8  7C 80 22 14 */	add r4, r0, r4
/* 80451ACC  4B F6 96 65 */	bl search_position_angleY
/* 80451AD0  38 00 00 00 */	li r0, 0
/* 80451AD4  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 80451AD8  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 80451ADC  38 C0 00 01 */	li r6, 1
/* 80451AE0  3C 00 43 30 */	lis r0, 0x4330
/* 80451AE4  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 80451AE8  B0 DF 06 42 */	sth r6, 0x642(r31)
/* 80451AEC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80451AF0  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80451AF4  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 80451AF8  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80451AFC  80 85 61 38 */	lwz r4, debug_mode@l(r5)  /* 0x81166138@l */
/* 80451B00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80451B04  A8 A4 1B 5C */	lha r5, 0x1b5c(r4)
/* 80451B08  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80451B0C  C8 26 00 00 */	lfd f1, 0(r6)
/* 80451B10  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80451B14  C0 47 42 C4 */	lfs f2, lit_793@l(r7)  /* 0x806442C4@l */
/* 80451B18  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80451B1C  C0 68 42 5C */	lfs f3, lit_471@l(r8)  /* 0x8064425C@l */
/* 80451B20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80451B24  C0 89 42 60 */	lfs f4, lit_472@l(r9)  /* 0x80644260@l */
/* 80451B28  EC 20 08 28 */	fsubs f1, f0, f1
/* 80451B2C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80451B30  EC 22 00 72 */	fmuls f1, f2, f1
/* 80451B34  EC 23 08 2A */	fadds f1, f3, f1
/* 80451B38  EC 84 08 28 */	fsubs f4, f4, f1
/* 80451B3C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80451B40  40 81 00 68 */	ble lbl_80451BA8
/* 80451B44  FC 20 20 34 */	frsqrte f1, f4
/* 80451B48  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451B4C  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 80451B50  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80451B54  C8 65 00 00 */	lfd f3, 0(r5)
/* 80451B58  FC 01 00 72 */	fmul f0, f1, f1
/* 80451B5C  C8 44 42 54 */	lfd f2, lit_470@l(r4)  /* 0x80644254@l */
/* 80451B60  FC 23 00 72 */	fmul f1, f3, f1
/* 80451B64  FC 04 00 32 */	fmul f0, f4, f0
/* 80451B68  FC 02 00 28 */	fsub f0, f2, f0
/* 80451B6C  FC 21 00 32 */	fmul f1, f1, f0
/* 80451B70  FC 01 00 72 */	fmul f0, f1, f1
/* 80451B74  FC 23 00 72 */	fmul f1, f3, f1
/* 80451B78  FC 04 00 32 */	fmul f0, f4, f0
/* 80451B7C  FC 02 00 28 */	fsub f0, f2, f0
/* 80451B80  FC 21 00 32 */	fmul f1, f1, f0
/* 80451B84  FC 01 00 72 */	fmul f0, f1, f1
/* 80451B88  FC 23 00 72 */	fmul f1, f3, f1
/* 80451B8C  FC 04 00 32 */	fmul f0, f4, f0
/* 80451B90  FC 02 00 28 */	fsub f0, f2, f0
/* 80451B94  FC 01 00 32 */	fmul f0, f1, f0
/* 80451B98  FC 04 00 32 */	fmul f0, f4, f0
/* 80451B9C  FC 00 00 18 */	frsp f0, f0
/* 80451BA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80451BA4  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80451BA8:
/* 80451BA8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80451BAC  3C 00 43 30 */	lis r0, 0x4330
/* 80451BB0  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 80451BB4  3C E0 80 64 */	lis r7, lit_557@ha /* 0x80644280@ha */
/* 80451BB8  80 C5 00 00 */	lwz r6, 0(r5)
/* 80451BBC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80451BC0  38 A4 42 8C */	addi r5, r4, lit_570@l /* 0x8064428C@l */
/* 80451BC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80451BC8  A8 86 1B 5E */	lha r4, 0x1b5e(r6)
/* 80451BCC  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 80451BD0  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 80451BD4  3D 00 80 64 */	lis r8, lit_588@ha /* 0x80644298@ha */
/* 80451BD8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80451BDC  C8 45 00 00 */	lfd f2, 0(r5)
/* 80451BE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80451BE4  7C 64 1B 78 */	mr r4, r3
/* 80451BE8  C0 67 42 80 */	lfs f3, lit_557@l(r7)  /* 0x80644280@l */
/* 80451BEC  EC 21 20 28 */	fsubs f1, f1, f4
/* 80451BF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80451BF4  38 7F 06 14 */	addi r3, r31, 0x614
/* 80451BF8  38 C0 00 2D */	li r6, 0x2d
/* 80451BFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80451C00  C0 48 42 98 */	lfs f2, lit_588@l(r8)  /* 0x80644298@l */
/* 80451C04  EC 03 00 2A */	fadds f0, f3, f0
/* 80451C08  EC 02 00 32 */	fmuls f0, f2, f0
/* 80451C0C  FC 00 00 1E */	fctiwz f0, f0
/* 80451C10  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80451C14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80451C18  7C 00 07 34 */	extsh r0, r0
/* 80451C1C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80451C20  7C 05 07 34 */	extsh r5, r0
/* 80451C24  4B F6 96 ED */	bl add_calc_short_angle2
/* 80451C28  3C 60 80 45 */	lis r3, mfish_unagi_normal_to_reverse@ha /* 0x80451C48@ha */
/* 80451C2C  38 03 1C 48 */	addi r0, r3, mfish_unagi_normal_to_reverse@l /* 0x80451C48@l */
/* 80451C30  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80451C34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80451C38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80451C3C  7C 08 03 A6 */	mtlr r0
/* 80451C40  38 21 00 30 */	addi r1, r1, 0x30
/* 80451C44  4E 80 00 20 */	blr 
