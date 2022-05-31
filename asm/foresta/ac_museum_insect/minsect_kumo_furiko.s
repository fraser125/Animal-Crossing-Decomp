lbl_80469888:
/* 80469888  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8046988C  7C 08 02 A6 */	mflr r0
/* 80469890  90 01 00 64 */	stw r0, 0x64(r1)
/* 80469894  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80469898  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8046989C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804698A0  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 804698A4  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 804698A8  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 804698AC  7C 7F 1B 78 */	mr r31, r3
/* 804698B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804698B4  41 82 00 A0 */	beq lbl_80469954
/* 804698B8  3C 60 80 64 */	lis r3, lit_1566@ha /* 0x80644754@ha */
/* 804698BC  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 804698C0  38 A3 47 54 */	addi r5, r3, lit_1566@l /* 0x80644754@l */
/* 804698C4  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 804698C8  C9 05 00 00 */	lfd f8, 0(r5)
/* 804698CC  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 804698D0  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 804698D4  3C 80 80 64 */	lis r4, lit_465@ha /* 0x806445D4@ha */
/* 804698D8  FC 60 40 34 */	frsqrte f3, f8
/* 804698DC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804698E0  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 804698E4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804698E8  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 804698EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804698F0  FC 43 00 F2 */	fmul f2, f3, f3
/* 804698F4  C0 83 46 10 */	lfs f4, lit_512@l(r3)  /* 0x80644610@l */
/* 804698F8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 804698FC  FC A7 00 F2 */	fmul f5, f7, f3
/* 80469900  C0 64 45 D4 */	lfs f3, lit_465@l(r4)  /* 0x806445D4@l */
/* 80469904  FC 48 00 B2 */	fmul f2, f8, f2
/* 80469908  FC 46 10 28 */	fsub f2, f6, f2
/* 8046990C  FC A5 00 B2 */	fmul f5, f5, f2
/* 80469910  FC 45 01 72 */	fmul f2, f5, f5
/* 80469914  FC A7 01 72 */	fmul f5, f7, f5
/* 80469918  FC 48 00 B2 */	fmul f2, f8, f2
/* 8046991C  FC 46 10 28 */	fsub f2, f6, f2
/* 80469920  FC A5 00 B2 */	fmul f5, f5, f2
/* 80469924  FC 45 01 72 */	fmul f2, f5, f5
/* 80469928  FC A7 01 72 */	fmul f5, f7, f5
/* 8046992C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80469930  FC 46 10 28 */	fsub f2, f6, f2
/* 80469934  FC 45 00 B2 */	fmul f2, f5, f2
/* 80469938  FC 48 00 B2 */	fmul f2, f8, f2
/* 8046993C  FC 40 10 18 */	frsp f2, f2
/* 80469940  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80469944  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80469948  EC 40 10 28 */	fsubs f2, f0, f2
/* 8046994C  4B F5 18 65 */	bl add_calc
/* 80469950  48 00 00 9C */	b lbl_804699EC
lbl_80469954:
/* 80469954  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 80469958  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046995C  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 80469960  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 80469964  C9 05 00 00 */	lfd f8, 0(r5)
/* 80469968  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046996C  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 80469970  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 80469974  FC 60 40 34 */	frsqrte f3, f8
/* 80469978  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046997C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80469980  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80469984  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80469988  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046998C  FC 43 00 F2 */	fmul f2, f3, f3
/* 80469990  C0 83 46 10 */	lfs f4, lit_512@l(r3)  /* 0x80644610@l */
/* 80469994  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80469998  FC A7 00 F2 */	fmul f5, f7, f3
/* 8046999C  C0 64 45 C0 */	lfs f3, lit_460@l(r4)  /* 0x806445C0@l */
/* 804699A0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804699A4  FC 46 10 28 */	fsub f2, f6, f2
/* 804699A8  FC A5 00 B2 */	fmul f5, f5, f2
/* 804699AC  FC 45 01 72 */	fmul f2, f5, f5
/* 804699B0  FC A7 01 72 */	fmul f5, f7, f5
/* 804699B4  FC 48 00 B2 */	fmul f2, f8, f2
/* 804699B8  FC 46 10 28 */	fsub f2, f6, f2
/* 804699BC  FC A5 00 B2 */	fmul f5, f5, f2
/* 804699C0  FC 45 01 72 */	fmul f2, f5, f5
/* 804699C4  FC A7 01 72 */	fmul f5, f7, f5
/* 804699C8  FC 48 00 B2 */	fmul f2, f8, f2
/* 804699CC  FC 46 10 28 */	fsub f2, f6, f2
/* 804699D0  FC 45 00 B2 */	fmul f2, f5, f2
/* 804699D4  FC 48 00 B2 */	fmul f2, f8, f2
/* 804699D8  FC 40 10 18 */	frsp f2, f2
/* 804699DC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804699E0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804699E4  EC 40 10 28 */	fsubs f2, f0, f2
/* 804699E8  4B F5 17 C9 */	bl add_calc
lbl_804699EC:
/* 804699EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804699F0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804699F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804699F8  40 82 00 10 */	bne lbl_80469A08
/* 804699FC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80469A00  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80469A04  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_80469A08:
/* 80469A08  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 80469A0C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80469A10  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 80469A14  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80469A18  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80469A1C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80469A20  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80469A24  FC 60 30 34 */	frsqrte f3, f6
/* 80469A28  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80469A2C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80469A30  C8 85 00 00 */	lfd f4, 0(r5)
/* 80469A34  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80469A38  C0 44 00 00 */	lfs f2, 0(r4)
/* 80469A3C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80469A40  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80469A44  FC 65 00 F2 */	fmul f3, f5, f3
/* 80469A48  FC 26 00 72 */	fmul f1, f6, f1
/* 80469A4C  FC 24 08 28 */	fsub f1, f4, f1
/* 80469A50  FC 63 00 72 */	fmul f3, f3, f1
/* 80469A54  FC 23 00 F2 */	fmul f1, f3, f3
/* 80469A58  FC 65 00 F2 */	fmul f3, f5, f3
/* 80469A5C  FC 26 00 72 */	fmul f1, f6, f1
/* 80469A60  FC 24 08 28 */	fsub f1, f4, f1
/* 80469A64  FC 63 00 72 */	fmul f3, f3, f1
/* 80469A68  FC 23 00 F2 */	fmul f1, f3, f3
/* 80469A6C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80469A70  FC 26 00 72 */	fmul f1, f6, f1
/* 80469A74  FC 24 08 28 */	fsub f1, f4, f1
/* 80469A78  FC 23 00 72 */	fmul f1, f3, f1
/* 80469A7C  FC 26 00 72 */	fmul f1, f6, f1
/* 80469A80  FC 20 08 18 */	frsp f1, f1
/* 80469A84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80469A88  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80469A8C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80469A90  EC 42 08 28 */	fsubs f2, f2, f1
/* 80469A94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80469A98  40 81 00 54 */	ble lbl_80469AEC
/* 80469A9C  FC 20 10 34 */	frsqrte f1, f2
/* 80469AA0  FC 01 00 72 */	fmul f0, f1, f1
/* 80469AA4  FC 25 00 72 */	fmul f1, f5, f1
/* 80469AA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80469AAC  FC 04 00 28 */	fsub f0, f4, f0
/* 80469AB0  FC 21 00 32 */	fmul f1, f1, f0
/* 80469AB4  FC 01 00 72 */	fmul f0, f1, f1
/* 80469AB8  FC 25 00 72 */	fmul f1, f5, f1
/* 80469ABC  FC 02 00 32 */	fmul f0, f2, f0
/* 80469AC0  FC 04 00 28 */	fsub f0, f4, f0
/* 80469AC4  FC 21 00 32 */	fmul f1, f1, f0
/* 80469AC8  FC 01 00 72 */	fmul f0, f1, f1
/* 80469ACC  FC 25 00 72 */	fmul f1, f5, f1
/* 80469AD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80469AD4  FC 04 00 28 */	fsub f0, f4, f0
/* 80469AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80469ADC  FC 02 00 32 */	fmul f0, f2, f0
/* 80469AE0  FC 00 00 18 */	frsp f0, f0
/* 80469AE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80469AE8  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80469AEC:
/* 80469AEC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80469AF0  A8 9F 00 7E */	lha r4, 0x7e(r31)
/* 80469AF4  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80469AF8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80469AFC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80469B00  38 A0 00 E3 */	li r5, 0xe3
/* 80469B04  38 C0 00 2D */	li r6, 0x2d
/* 80469B08  EC 20 10 28 */	fsubs f1, f0, f2
/* 80469B0C  4B F5 18 05 */	bl add_calc_short_angle2
/* 80469B10  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80469B14  80 A3 61 38 */	lwz r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 80469B18  A8 65 16 B4 */	lha r3, 0x16b4(r5)
/* 80469B1C  7C 60 07 35 */	extsh. r0, r3
/* 80469B20  41 82 00 38 */	beq lbl_80469B58
/* 80469B24  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80469B28  3C 00 43 30 */	lis r0, 0x4330
/* 80469B2C  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80469B30  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80469B34  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80469B38  90 01 00 18 */	stw r0, 0x18(r1)
/* 80469B3C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80469B40  C8 23 00 00 */	lfd f1, 0(r3)
/* 80469B44  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80469B48  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 80469B4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80469B50  EF E2 00 32 */	fmuls f31, f2, f0
/* 80469B54  48 00 00 0C */	b lbl_80469B60
lbl_80469B58:
/* 80469B58  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 80469B5C  C3 E3 46 2C */	lfs f31, lit_584@l(r3)  /* 0x8064462C@l */
lbl_80469B60:
/* 80469B60  A8 65 16 B6 */	lha r3, 0x16b6(r5)
/* 80469B64  7C 60 07 35 */	extsh. r0, r3
/* 80469B68  41 82 00 38 */	beq lbl_80469BA0
/* 80469B6C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80469B70  3C 00 43 30 */	lis r0, 0x4330
/* 80469B74  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80469B78  90 61 00 24 */	stw r3, 0x24(r1)
/* 80469B7C  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80469B80  90 01 00 20 */	stw r0, 0x20(r1)
/* 80469B84  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80469B88  C8 23 00 00 */	lfd f1, 0(r3)
/* 80469B8C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80469B90  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 80469B94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80469B98  EC 62 00 32 */	fmuls f3, f2, f0
/* 80469B9C  48 00 00 0C */	b lbl_80469BA8
lbl_80469BA0:
/* 80469BA0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80469BA4  C0 63 46 0C */	lfs f3, lit_511@l(r3)  /* 0x8064460C@l */
lbl_80469BA8:
/* 80469BA8  3C 60 80 64 */	lis r3, kumo_top_pos@ha /* 0x80644874@ha */
/* 80469BAC  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 80469BB0  38 63 48 74 */	addi r3, r3, kumo_top_pos@l /* 0x80644874@l */
/* 80469BB4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80469BB8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80469BBC  C0 44 46 0C */	lfs f2, lit_511@l(r4)  /* 0x8064460C@l */
/* 80469BC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80469BC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80469BC8  40 81 00 08 */	ble lbl_80469BD0
/* 80469BCC  48 00 00 08 */	b lbl_80469BD4
lbl_80469BD0:
/* 80469BD0  FC 40 00 90 */	fmr f2, f0
lbl_80469BD4:
/* 80469BD4  D0 5F 00 58 */	stfs f2, 0x58(r31)
/* 80469BD8  3C 60 80 64 */	lis r3, lit_3443@ha /* 0x80644840@ha */
/* 80469BDC  C0 43 48 40 */	lfs f2, lit_3443@l(r3)  /* 0x80644840@l */
/* 80469BE0  3C 80 80 64 */	lis r4, lit_3286@ha /* 0x80644834@ha */
/* 80469BE4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80469BE8  3C A0 80 64 */	lis r5, lit_506@ha /* 0x806445E8@ha */
/* 80469BEC  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806445E4@ha */
/* 80469BF0  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 80469BF4  EC 23 00 32 */	fmuls f1, f3, f0
/* 80469BF8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80469BFC  C0 65 45 E8 */	lfs f3, lit_506@l(r5)  /* 0x806445E8@l */
/* 80469C00  EC 22 08 2A */	fadds f1, f2, f1
/* 80469C04  C0 44 48 34 */	lfs f2, lit_3286@l(r4)  /* 0x80644834@l */
/* 80469C08  EC 01 00 24 */	fdivs f0, f1, f0
/* 80469C0C  C0 26 45 E4 */	lfs f1, lit_505@l(r6)  /* 0x806445E4@l */
/* 80469C10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80469C14  EC 03 00 32 */	fmuls f0, f3, f0
/* 80469C18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80469C1C  FC 00 00 1E */	fctiwz f0, f0
/* 80469C20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80469C24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80469C28  7C 00 07 34 */	extsh r0, r0
/* 80469C2C  7C 03 02 14 */	add r0, r3, r0
/* 80469C30  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 80469C34  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 80469C38  4B F5 0E B9 */	bl sin_s
/* 80469C3C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80469C40  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80469C44  C0 43 45 E4 */	lfs f2, lit_505@l(r3)  /* 0x806445E4@l */
/* 80469C48  3C 00 43 30 */	lis r0, 0x4330
/* 80469C4C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80469C50  90 01 00 38 */	stw r0, 0x38(r1)
/* 80469C54  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80469C58  EC 02 00 32 */	fmuls f0, f2, f0
/* 80469C5C  C8 43 46 3C */	lfd f2, lit_589@l(r3)  /* 0x8064463C@l */
/* 80469C60  FC 00 00 1E */	fctiwz f0, f0
/* 80469C64  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80469C68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80469C6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80469C70  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80469C74  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80469C78  EC 00 10 28 */	fsubs f0, f0, f2
/* 80469C7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469C80  FC 00 00 1E */	fctiwz f0, f0
/* 80469C84  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80469C88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80469C8C  B0 1F 00 68 */	sth r0, 0x68(r31)
/* 80469C90  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80469C94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80469C98  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80469C9C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80469CA0  7C 08 03 A6 */	mtlr r0
/* 80469CA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80469CA8  4E 80 00 20 */	blr 
