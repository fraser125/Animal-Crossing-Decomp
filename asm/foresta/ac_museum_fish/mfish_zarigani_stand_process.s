lbl_80456A30:
/* 80456A30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80456A34  7C 08 02 A6 */	mflr r0
/* 80456A38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80456A3C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80456A40  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80456A44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80456A48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80456A4C  7C 7E 1B 78 */	mr r30, r3
/* 80456A50  7C 9F 23 78 */	mr r31, r4
/* 80456A54  38 7E 00 38 */	addi r3, r30, 0x38
/* 80456A58  4B F1 A5 BD */	bl cKF_SkeletonInfo_R_play
/* 80456A5C  A8 FE 06 26 */	lha r7, 0x626(r30)
/* 80456A60  2C 07 00 00 */	cmpwi r7, 0
/* 80456A64  40 81 01 9C */	ble lbl_80456C00
/* 80456A68  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80456A6C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80456A70  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80456A74  C9 04 42 4C */	lfd f8, lit_469@l(r4)  /* 0x8064424C@l */
/* 80456A78  C9 25 00 00 */	lfd f9, 0(r5)
/* 80456A7C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80456A80  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 80456A84  39 47 FF FF */	addi r10, r7, -1
/* 80456A88  FC 20 48 34 */	frsqrte f1, f9
/* 80456A8C  C8 E6 00 00 */	lfd f7, 0(r6)
/* 80456A90  3C 00 43 30 */	lis r0, 0x4330
/* 80456A94  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80456A98  38 E3 42 8C */	addi r7, r3, lit_570@l /* 0x8064428C@l */
/* 80456A9C  3C 80 80 64 */	lis r4, lit_8410@ha /* 0x806444B4@ha */
/* 80456AA0  FC 01 00 72 */	fmul f0, f1, f1
/* 80456AA4  39 04 44 B4 */	addi r8, r4, lit_8410@l /* 0x806444B4@l */
/* 80456AA8  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80456AAC  B1 5E 06 26 */	sth r10, 0x626(r30)
/* 80456AB0  39 23 42 98 */	addi r9, r3, lit_588@l /* 0x80644298@l */
/* 80456AB4  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80456AB8  FC 09 00 32 */	fmul f0, f9, f0
/* 80456ABC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80456AC0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80456AC4  80 A5 61 38 */	lwz r5, debug_mode@l(r5)  /* 0x81166138@l */
/* 80456AC8  FC 28 00 72 */	fmul f1, f8, f1
/* 80456ACC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80456AD0  FC 07 00 28 */	fsub f0, f7, f0
/* 80456AD4  A8 05 1B 48 */	lha r0, 0x1b48(r5)
/* 80456AD8  C8 47 00 00 */	lfd f2, 0(r7)
/* 80456ADC  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80456AE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80456AE4  C0 68 00 00 */	lfs f3, 0(r8)
/* 80456AE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80456AEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80456AF0  C0 89 00 00 */	lfs f4, 0(r9)
/* 80456AF4  38 A0 00 5B */	li r5, 0x5b
/* 80456AF8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80456AFC  38 C0 00 09 */	li r6, 9
/* 80456B00  FC A0 00 32 */	fmul f5, f0, f0
/* 80456B04  FC C8 00 32 */	fmul f6, f8, f0
/* 80456B08  C0 04 00 00 */	lfs f0, 0(r4)
/* 80456B0C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80456B10  FC A9 01 72 */	fmul f5, f9, f5
/* 80456B14  EC 23 08 2A */	fadds f1, f3, f1
/* 80456B18  FC 47 28 28 */	fsub f2, f7, f5
/* 80456B1C  EC 24 00 72 */	fmuls f1, f4, f1
/* 80456B20  FC 66 00 B2 */	fmul f3, f6, f2
/* 80456B24  FC 20 08 1E */	fctiwz f1, f1
/* 80456B28  FC 43 00 F2 */	fmul f2, f3, f3
/* 80456B2C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 80456B30  FC 68 00 F2 */	fmul f3, f8, f3
/* 80456B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80456B38  FC 49 00 B2 */	fmul f2, f9, f2
/* 80456B3C  7C 04 07 34 */	extsh r4, r0
/* 80456B40  FC 47 10 28 */	fsub f2, f7, f2
/* 80456B44  FC 23 00 B2 */	fmul f1, f3, f2
/* 80456B48  FC 29 00 72 */	fmul f1, f9, f1
/* 80456B4C  FC 20 08 18 */	frsp f1, f1
/* 80456B50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80456B54  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80456B58  EC 20 08 28 */	fsubs f1, f0, f1
/* 80456B5C  4B F6 47 B5 */	bl add_calc_short_angle2
/* 80456B60  7C 60 07 35 */	extsh. r0, r3
/* 80456B64  40 82 02 3C */	bne lbl_80456DA0
/* 80456B68  3C 60 80 64 */	lis r3, lit_8411@ha /* 0x806444BC@ha */
/* 80456B6C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80456B70  38 A3 44 BC */	addi r5, r3, lit_8411@l /* 0x806444BC@l */
/* 80456B74  38 C0 00 00 */	li r6, 0
/* 80456B78  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80456B7C  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 80456B80  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80456B84  C8 85 00 00 */	lfd f4, 0(r5)
/* 80456B88  FC 40 28 34 */	frsqrte f2, f5
/* 80456B8C  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 80456B90  C8 64 00 00 */	lfd f3, 0(r4)
/* 80456B94  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80456B98  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80456B9C  38 7E 06 44 */	addi r3, r30, 0x644
/* 80456BA0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456BA4  38 80 00 5B */	li r4, 0x5b
/* 80456BA8  38 A0 00 09 */	li r5, 9
/* 80456BAC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456BB0  FC 25 00 72 */	fmul f1, f5, f1
/* 80456BB4  FC 23 08 28 */	fsub f1, f3, f1
/* 80456BB8  FC 42 00 72 */	fmul f2, f2, f1
/* 80456BBC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456BC0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456BC4  FC 25 00 72 */	fmul f1, f5, f1
/* 80456BC8  FC 23 08 28 */	fsub f1, f3, f1
/* 80456BCC  FC 42 00 72 */	fmul f2, f2, f1
/* 80456BD0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456BD4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456BD8  FC 25 00 72 */	fmul f1, f5, f1
/* 80456BDC  FC 23 08 28 */	fsub f1, f3, f1
/* 80456BE0  FC 22 00 72 */	fmul f1, f2, f1
/* 80456BE4  FC 25 00 72 */	fmul f1, f5, f1
/* 80456BE8  FC 20 08 18 */	frsp f1, f1
/* 80456BEC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80456BF0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80456BF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80456BF8  4B F6 47 19 */	bl add_calc_short_angle2
/* 80456BFC  48 00 01 A4 */	b lbl_80456DA0
lbl_80456C00:
/* 80456C00  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 80456C04  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80456C08  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 80456C0C  38 C0 00 09 */	li r6, 9
/* 80456C10  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80456C14  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 80456C18  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80456C1C  C8 85 00 00 */	lfd f4, 0(r5)
/* 80456C20  FC 40 28 34 */	frsqrte f2, f5
/* 80456C24  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 80456C28  C8 64 00 00 */	lfd f3, 0(r4)
/* 80456C2C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80456C30  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80456C34  38 7E 06 0E */	addi r3, r30, 0x60e
/* 80456C38  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456C3C  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 80456C40  38 A0 00 E3 */	li r5, 0xe3
/* 80456C44  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456C48  FC 25 00 72 */	fmul f1, f5, f1
/* 80456C4C  FC 23 08 28 */	fsub f1, f3, f1
/* 80456C50  FC 42 00 72 */	fmul f2, f2, f1
/* 80456C54  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456C58  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456C5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80456C60  FC 23 08 28 */	fsub f1, f3, f1
/* 80456C64  FC 42 00 72 */	fmul f2, f2, f1
/* 80456C68  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456C6C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456C70  FC 25 00 72 */	fmul f1, f5, f1
/* 80456C74  FC 23 08 28 */	fsub f1, f3, f1
/* 80456C78  FC 22 00 72 */	fmul f1, f2, f1
/* 80456C7C  FC 25 00 72 */	fmul f1, f5, f1
/* 80456C80  FC 20 08 18 */	frsp f1, f1
/* 80456C84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80456C88  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80456C8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80456C90  4B F6 46 81 */	bl add_calc_short_angle2
/* 80456C94  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 80456C98  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80456C9C  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 80456CA0  38 C0 00 09 */	li r6, 9
/* 80456CA4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80456CA8  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 80456CAC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80456CB0  C8 85 00 00 */	lfd f4, 0(r5)
/* 80456CB4  FC 40 28 34 */	frsqrte f2, f5
/* 80456CB8  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 80456CBC  C8 64 00 00 */	lfd f3, 0(r4)
/* 80456CC0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80456CC4  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80456CC8  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80456CCC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456CD0  38 80 00 00 */	li r4, 0
/* 80456CD4  38 A0 00 88 */	li r5, 0x88
/* 80456CD8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456CDC  FC 25 00 72 */	fmul f1, f5, f1
/* 80456CE0  FC 23 08 28 */	fsub f1, f3, f1
/* 80456CE4  FC 42 00 72 */	fmul f2, f2, f1
/* 80456CE8  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456CEC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456CF0  FC 25 00 72 */	fmul f1, f5, f1
/* 80456CF4  FC 23 08 28 */	fsub f1, f3, f1
/* 80456CF8  FC 42 00 72 */	fmul f2, f2, f1
/* 80456CFC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80456D00  FC 44 00 B2 */	fmul f2, f4, f2
/* 80456D04  FC 25 00 72 */	fmul f1, f5, f1
/* 80456D08  FC 23 08 28 */	fsub f1, f3, f1
/* 80456D0C  FC 22 00 72 */	fmul f1, f2, f1
/* 80456D10  FC 25 00 72 */	fmul f1, f5, f1
/* 80456D14  FC 20 08 18 */	frsp f1, f1
/* 80456D18  D0 21 00 08 */	stfs f1, 8(r1)
/* 80456D1C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80456D20  EC 20 08 28 */	fsubs f1, f0, f1
/* 80456D24  4B F6 45 ED */	bl add_calc_short_angle2
/* 80456D28  7C 60 07 35 */	extsh. r0, r3
/* 80456D2C  40 82 00 74 */	bne lbl_80456DA0
/* 80456D30  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 80456D34  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 80456D38  80 64 00 00 */	lwz r3, 0(r4)
/* 80456D3C  80 04 00 04 */	lwz r0, 4(r4)
/* 80456D40  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80456D44  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80456D48  80 04 00 08 */	lwz r0, 8(r4)
/* 80456D4C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80456D50  4B C0 5F A5 */	bl fqrand
/* 80456D54  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80456D58  3C 00 43 30 */	lis r0, 0x4330
/* 80456D5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80456D60  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80456D64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80456D68  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80456D6C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80456D70  7F C3 F3 78 */	mr r3, r30
/* 80456D74  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80456D78  7F E4 FB 78 */	mr r4, r31
/* 80456D7C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80456D80  EC 00 10 28 */	fsubs f0, f0, f2
/* 80456D84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80456D88  FC 00 00 1E */	fctiwz f0, f0
/* 80456D8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80456D90  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80456D94  7C 00 2A 14 */	add r0, r0, r5
/* 80456D98  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80456D9C  4B FF F9 B9 */	bl mfish_zarigani_wait_process_init
lbl_80456DA0:
/* 80456DA0  A8 1E 06 0C */	lha r0, 0x60c(r30)
/* 80456DA4  3C E0 43 30 */	lis r7, 0x4330
/* 80456DA8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80456DAC  3C A0 80 64 */	lis r5, lit_1598@ha /* 0x80644350@ha */
/* 80456DB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80456DB4  C8 A4 42 8C */	lfd f5, lit_570@l(r4)  /* 0x8064428C@l */
/* 80456DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80456DBC  3C 60 80 64 */	lis r3, lit_4775@ha /* 0x806443FC@ha */
/* 80456DC0  38 C3 43 FC */	addi r6, r3, lit_4775@l /* 0x806443FC@l */
/* 80456DC4  C0 25 43 50 */	lfs f1, lit_1598@l(r5)  /* 0x80644350@l */
/* 80456DC8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80456DCC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80456DD0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80456DD4  3C A0 80 64 */	lis r5, lit_698@ha /* 0x806442B4@ha */
/* 80456DD8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80456DDC  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80456DE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80456DE4  EC 00 28 28 */	fsubs f0, f0, f5
/* 80456DE8  C0 66 00 00 */	lfs f3, 0(r6)
/* 80456DEC  A8 03 1B 4A */	lha r0, 0x1b4a(r3)
/* 80456DF0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80456DF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80456DF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80456DFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80456E00  C0 24 42 68 */	lfs f1, lit_527@l(r4)  /* 0x80644268@l */
/* 80456E04  FC 80 00 50 */	fneg f4, f0
/* 80456E08  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80456E0C  C0 45 42 B4 */	lfs f2, lit_698@l(r5)  /* 0x806442B4@l */
/* 80456E10  EC 00 28 28 */	fsubs f0, f0, f5
/* 80456E14  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80456E18  EF E4 18 24 */	fdivs f31, f4, f3
/* 80456E1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80456E20  EC 02 00 2A */	fadds f0, f2, f0
/* 80456E24  EF FF 00 32 */	fmuls f31, f31, f0
/* 80456E28  4B F6 3C C9 */	bl sin_s
/* 80456E2C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80456E30  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 80456E34  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80456E38  4B F6 3C 65 */	bl cos_s
/* 80456E3C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80456E40  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80456E44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80456E48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80456E4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80456E50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80456E54  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80456E58  7C 08 03 A6 */	mtlr r0
/* 80456E5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80456E60  4E 80 00 20 */	blr 
