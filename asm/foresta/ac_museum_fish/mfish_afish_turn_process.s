lbl_80439784:
/* 80439784  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80439788  7C 08 02 A6 */	mflr r0
/* 8043978C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80439790  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80439794  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80439798  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043979C  7C 7F 1B 78 */	mr r31, r3
/* 804397A0  A8 63 06 22 */	lha r3, 0x622(r3)
/* 804397A4  7C 60 07 35 */	extsh. r0, r3
/* 804397A8  7C 03 00 D0 */	neg r0, r3
/* 804397AC  41 80 00 08 */	blt lbl_804397B4
/* 804397B0  7C 60 1B 78 */	mr r0, r3
lbl_804397B4:
/* 804397B4  2C 00 15 55 */	cmpwi r0, 0x1555
/* 804397B8  40 81 00 D4 */	ble lbl_8043988C
/* 804397BC  3C 60 80 64 */	lis r3, lit_1100@ha /* 0x80644320@ha */
/* 804397C0  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 804397C4  38 A3 43 20 */	addi r5, r3, lit_1100@l /* 0x80644320@l */
/* 804397C8  C0 64 42 68 */	lfs f3, lit_527@l(r4)  /* 0x80644268@l */
/* 804397CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804397D0  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 804397D4  FC 40 08 90 */	fmr f2, f1
/* 804397D8  4B F8 1A BD */	bl add_calc2
/* 804397DC  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 804397E0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804397E4  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 804397E8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804397EC  C9 45 00 00 */	lfd f10, 0(r5)
/* 804397F0  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 804397F4  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 804397F8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804397FC  FC 20 50 34 */	frsqrte f1, f10
/* 80439800  C9 25 00 00 */	lfd f9, 0(r5)
/* 80439804  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80439808  38 C4 42 60 */	addi r6, r4, lit_472@l /* 0x80644260@l */
/* 8043980C  38 A3 42 5C */	addi r5, r3, lit_471@l /* 0x8064425C@l */
/* 80439810  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80439814  FC 01 00 72 */	fmul f0, f1, f1
/* 80439818  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 8043981C  C8 E7 00 00 */	lfd f7, 0(r7)
/* 80439820  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80439824  FD 09 00 72 */	fmul f8, f9, f1
/* 80439828  C0 A6 00 00 */	lfs f5, 0(r6)
/* 8043982C  FC CA 00 32 */	fmul f6, f10, f0
/* 80439830  C0 45 00 00 */	lfs f2, 0(r5)
/* 80439834  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 80439838  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043983C  EC 62 00 32 */	fmuls f3, f2, f0
/* 80439840  C0 84 00 00 */	lfs f4, 0(r4)
/* 80439844  FC 07 30 28 */	fsub f0, f7, f6
/* 80439848  FC 48 00 32 */	fmul f2, f8, f0
/* 8043984C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80439850  FC 49 00 B2 */	fmul f2, f9, f2
/* 80439854  FC 0A 00 32 */	fmul f0, f10, f0
/* 80439858  FC 07 00 28 */	fsub f0, f7, f0
/* 8043985C  FC 42 00 32 */	fmul f2, f2, f0
/* 80439860  FC 02 00 B2 */	fmul f0, f2, f2
/* 80439864  FC 49 00 B2 */	fmul f2, f9, f2
/* 80439868  FC 0A 00 32 */	fmul f0, f10, f0
/* 8043986C  FC 07 00 28 */	fsub f0, f7, f0
/* 80439870  FC 02 00 32 */	fmul f0, f2, f0
/* 80439874  FC 0A 00 32 */	fmul f0, f10, f0
/* 80439878  FC 00 00 18 */	frsp f0, f0
/* 8043987C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80439880  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80439884  EC 45 00 28 */	fsubs f2, f5, f0
/* 80439888  4B F8 19 29 */	bl add_calc
lbl_8043988C:
/* 8043988C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439890  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80439894  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80439898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043989C  40 81 00 08 */	ble lbl_804398A4
/* 804398A0  48 00 00 08 */	b lbl_804398A8
lbl_804398A4:
/* 804398A4  FC 20 00 90 */	fmr f1, f0
lbl_804398A8:
/* 804398A8  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 804398AC  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 804398B0  C0 63 42 D4 */	lfs f3, lit_839@l(r3)  /* 0x806442D4@l */
/* 804398B4  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 804398B8  C0 44 43 20 */	lfs f2, lit_1100@l(r4)  /* 0x80644320@l */
/* 804398BC  4B F8 19 D9 */	bl add_calc2
/* 804398C0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 804398C4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804398C8  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 804398CC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804398D0  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 804398D4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804398D8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804398DC  FC 60 30 34 */	frsqrte f3, f6
/* 804398E0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 804398E4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804398E8  C8 85 00 00 */	lfd f4, 0(r5)
/* 804398EC  C0 44 00 00 */	lfs f2, 0(r4)
/* 804398F0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804398F4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804398F8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804398FC  FC 26 00 72 */	fmul f1, f6, f1
/* 80439900  FC 24 08 28 */	fsub f1, f4, f1
/* 80439904  FC 63 00 72 */	fmul f3, f3, f1
/* 80439908  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043990C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439910  FC 26 00 72 */	fmul f1, f6, f1
/* 80439914  FC 24 08 28 */	fsub f1, f4, f1
/* 80439918  FC 63 00 72 */	fmul f3, f3, f1
/* 8043991C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439920  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439924  FC 26 00 72 */	fmul f1, f6, f1
/* 80439928  FC 24 08 28 */	fsub f1, f4, f1
/* 8043992C  FC 23 00 72 */	fmul f1, f3, f1
/* 80439930  FC 26 00 72 */	fmul f1, f6, f1
/* 80439934  FC 20 08 18 */	frsp f1, f1
/* 80439938  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8043993C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80439940  EC 22 08 28 */	fsubs f1, f2, f1
/* 80439944  EC 42 08 28 */	fsubs f2, f2, f1
/* 80439948  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043994C  40 81 00 54 */	ble lbl_804399A0
/* 80439950  FC 20 10 34 */	frsqrte f1, f2
/* 80439954  FC 01 00 72 */	fmul f0, f1, f1
/* 80439958  FC 25 00 72 */	fmul f1, f5, f1
/* 8043995C  FC 02 00 32 */	fmul f0, f2, f0
/* 80439960  FC 04 00 28 */	fsub f0, f4, f0
/* 80439964  FC 21 00 32 */	fmul f1, f1, f0
/* 80439968  FC 01 00 72 */	fmul f0, f1, f1
/* 8043996C  FC 25 00 72 */	fmul f1, f5, f1
/* 80439970  FC 02 00 32 */	fmul f0, f2, f0
/* 80439974  FC 04 00 28 */	fsub f0, f4, f0
/* 80439978  FC 21 00 32 */	fmul f1, f1, f0
/* 8043997C  FC 01 00 72 */	fmul f0, f1, f1
/* 80439980  FC 25 00 72 */	fmul f1, f5, f1
/* 80439984  FC 02 00 32 */	fmul f0, f2, f0
/* 80439988  FC 04 00 28 */	fsub f0, f4, f0
/* 8043998C  FC 01 00 32 */	fmul f0, f1, f0
/* 80439990  FC 02 00 32 */	fmul f0, f2, f0
/* 80439994  FC 00 00 18 */	frsp f0, f0
/* 80439998  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8043999C  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_804399A0:
/* 804399A0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804399A4  38 7F 06 32 */	addi r3, r31, 0x632
/* 804399A8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 804399AC  38 80 00 00 */	li r4, 0
/* 804399B0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804399B4  38 A0 01 C7 */	li r5, 0x1c7
/* 804399B8  38 C0 00 2D */	li r6, 0x2d
/* 804399BC  EC 20 10 28 */	fsubs f1, f0, f2
/* 804399C0  4B F8 19 51 */	bl add_calc_short_angle2
/* 804399C4  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 804399C8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804399CC  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 804399D0  C8 64 42 4C */	lfd f3, lit_469@l(r4)  /* 0x8064424C@l */
/* 804399D4  C8 85 00 00 */	lfd f4, 0(r5)
/* 804399D8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804399DC  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 804399E0  FC 20 20 34 */	frsqrte f1, f4
/* 804399E4  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 804399E8  FC 01 00 72 */	fmul f0, f1, f1
/* 804399EC  FC 23 00 72 */	fmul f1, f3, f1
/* 804399F0  FC 04 00 32 */	fmul f0, f4, f0
/* 804399F4  FC 02 00 28 */	fsub f0, f2, f0
/* 804399F8  FC 21 00 32 */	fmul f1, f1, f0
/* 804399FC  FC 01 00 72 */	fmul f0, f1, f1
/* 80439A00  FC 23 00 72 */	fmul f1, f3, f1
/* 80439A04  FC 04 00 32 */	fmul f0, f4, f0
/* 80439A08  FC 02 00 28 */	fsub f0, f2, f0
/* 80439A0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80439A10  FC 01 00 72 */	fmul f0, f1, f1
/* 80439A14  FC 23 00 72 */	fmul f1, f3, f1
/* 80439A18  FC 04 00 32 */	fmul f0, f4, f0
/* 80439A1C  FC 02 00 28 */	fsub f0, f2, f0
/* 80439A20  FC 01 00 32 */	fmul f0, f1, f0
/* 80439A24  FC 04 00 32 */	fmul f0, f4, f0
/* 80439A28  FC 00 00 18 */	frsp f0, f0
/* 80439A2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80439A30  C3 E1 00 10 */	lfs f31, 0x10(r1)
/* 80439A34  4B F8 10 BD */	bl sin_s
/* 80439A38  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 80439A3C  3C A0 43 30 */	lis r5, 0x4330
/* 80439A40  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 80439A44  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80439A48  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80439A4C  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 80439A50  90 81 00 24 */	stw r4, 0x24(r1)
/* 80439A54  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439A58  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80439A5C  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 80439A60  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80439A64  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80439A68  7C 00 0E 70 */	srawi r0, r0, 1
/* 80439A6C  38 C0 00 2D */	li r6, 0x2d
/* 80439A70  EC 40 10 28 */	fsubs f2, f0, f2
/* 80439A74  7C 05 07 34 */	extsh r5, r0
/* 80439A78  C0 04 00 00 */	lfs f0, 0(r4)
/* 80439A7C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80439A80  EC 42 00 72 */	fmuls f2, f2, f1
/* 80439A84  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80439A88  FC 00 10 1E */	fctiwz f0, f2
/* 80439A8C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80439A90  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80439A94  7C 00 22 14 */	add r0, r0, r4
/* 80439A98  7C 04 07 34 */	extsh r4, r0
/* 80439A9C  4B F8 18 75 */	bl add_calc_short_angle2
/* 80439AA0  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 80439AA4  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80439AA8  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 80439AAC  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80439AB0  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80439AB4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80439AB8  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80439ABC  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 80439AC0  FC 60 30 34 */	frsqrte f3, f6
/* 80439AC4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80439AC8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80439ACC  C8 86 00 00 */	lfd f4, 0(r6)
/* 80439AD0  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80439AD4  C0 45 00 00 */	lfs f2, 0(r5)
/* 80439AD8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439ADC  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80439AE0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439AE4  FC 26 00 72 */	fmul f1, f6, f1
/* 80439AE8  FC 24 08 28 */	fsub f1, f4, f1
/* 80439AEC  FC 63 00 72 */	fmul f3, f3, f1
/* 80439AF0  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439AF4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439AF8  FC 26 00 72 */	fmul f1, f6, f1
/* 80439AFC  FC 24 08 28 */	fsub f1, f4, f1
/* 80439B00  FC 63 00 72 */	fmul f3, f3, f1
/* 80439B04  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439B08  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439B0C  FC 26 00 72 */	fmul f1, f6, f1
/* 80439B10  FC 24 08 28 */	fsub f1, f4, f1
/* 80439B14  FC 23 00 72 */	fmul f1, f3, f1
/* 80439B18  FC 26 00 72 */	fmul f1, f6, f1
/* 80439B1C  FC 20 08 18 */	frsp f1, f1
/* 80439B20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80439B24  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80439B28  EC 22 08 28 */	fsubs f1, f2, f1
/* 80439B2C  EC 42 08 28 */	fsubs f2, f2, f1
/* 80439B30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80439B34  40 81 00 54 */	ble lbl_80439B88
/* 80439B38  FC 20 10 34 */	frsqrte f1, f2
/* 80439B3C  FC 01 00 72 */	fmul f0, f1, f1
/* 80439B40  FC 25 00 72 */	fmul f1, f5, f1
/* 80439B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80439B48  FC 04 00 28 */	fsub f0, f4, f0
/* 80439B4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80439B50  FC 01 00 72 */	fmul f0, f1, f1
/* 80439B54  FC 25 00 72 */	fmul f1, f5, f1
/* 80439B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80439B5C  FC 04 00 28 */	fsub f0, f4, f0
/* 80439B60  FC 21 00 32 */	fmul f1, f1, f0
/* 80439B64  FC 01 00 72 */	fmul f0, f1, f1
/* 80439B68  FC 25 00 72 */	fmul f1, f5, f1
/* 80439B6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80439B70  FC 04 00 28 */	fsub f0, f4, f0
/* 80439B74  FC 01 00 32 */	fmul f0, f1, f0
/* 80439B78  FC 02 00 32 */	fmul f0, f2, f0
/* 80439B7C  FC 00 00 18 */	frsp f0, f0
/* 80439B80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80439B84  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80439B88:
/* 80439B88  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439B8C  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 80439B90  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80439B94  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80439B98  C0 05 00 00 */	lfs f0, 0(r5)
/* 80439B9C  38 A0 01 C7 */	li r5, 0x1c7
/* 80439BA0  38 C0 00 2D */	li r6, 0x2d
/* 80439BA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80439BA8  4B F8 17 69 */	bl add_calc_short_angle2
/* 80439BAC  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80439BB0  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80439BB4  7C 63 00 50 */	subf r3, r3, r0
/* 80439BB8  7C 60 07 34 */	extsh r0, r3
/* 80439BBC  7C 63 07 35 */	extsh. r3, r3
/* 80439BC0  7C 60 00 D0 */	neg r3, r0
/* 80439BC4  41 80 00 08 */	blt lbl_80439BCC
/* 80439BC8  7C 03 03 78 */	mr r3, r0
lbl_80439BCC:
/* 80439BCC  2C 03 01 6C */	cmpwi r3, 0x16c
/* 80439BD0  40 80 00 70 */	bge lbl_80439C40
/* 80439BD4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80439BD8  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 80439BDC  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80439BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80439BE4  40 80 00 5C */	bge lbl_80439C40
/* 80439BE8  A8 1F 06 3E */	lha r0, 0x63e(r31)
/* 80439BEC  2C 00 00 00 */	cmpwi r0, 0
/* 80439BF0  40 81 00 48 */	ble lbl_80439C38
/* 80439BF4  7F E3 FB 78 */	mr r3, r31
/* 80439BF8  4B FF 7F F5 */	bl mfish_WallCheck
/* 80439BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80439C00  41 82 00 18 */	beq lbl_80439C18
/* 80439C04  38 00 00 0A */	li r0, 0xa
/* 80439C08  7F E3 FB 78 */	mr r3, r31
/* 80439C0C  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 80439C10  4B FF F9 5D */	bl mfish_afish_turn_process_init
/* 80439C14  48 00 00 14 */	b lbl_80439C28
lbl_80439C18:
/* 80439C18  38 00 00 0A */	li r0, 0xa
/* 80439C1C  7F E3 FB 78 */	mr r3, r31
/* 80439C20  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 80439C24  4B FF F1 3D */	bl mfish_afish_normal_process_init
lbl_80439C28:
/* 80439C28  A8 7F 06 3E */	lha r3, 0x63e(r31)
/* 80439C2C  38 03 FF FF */	addi r0, r3, -1
/* 80439C30  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 80439C34  48 00 00 0C */	b lbl_80439C40
lbl_80439C38:
/* 80439C38  7F E3 FB 78 */	mr r3, r31
/* 80439C3C  4B FF EC 8D */	bl mfish_afish_dummy_process_init
lbl_80439C40:
/* 80439C40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80439C44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80439C48  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80439C4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80439C50  7C 08 03 A6 */	mtlr r0
/* 80439C54  38 21 00 50 */	addi r1, r1, 0x50
/* 80439C58  4E 80 00 20 */	blr 
