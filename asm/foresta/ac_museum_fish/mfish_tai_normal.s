lbl_80444A70:
/* 80444A70  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80444A74  7C 08 02 A6 */	mflr r0
/* 80444A78  90 01 00 84 */	stw r0, 0x84(r1)
/* 80444A7C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80444A80  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80444A84  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80444A88  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80444A8C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80444A90  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80444A94  39 61 00 50 */	addi r11, r1, 0x50
/* 80444A98  4B C5 64 3D */	bl func_8009AED4
/* 80444A9C  7C 7E 1B 78 */	mr r30, r3
/* 80444AA0  7C 9F 23 78 */	mr r31, r4
/* 80444AA4  A8 63 06 22 */	lha r3, 0x622(r3)
/* 80444AA8  7C 60 07 35 */	extsh. r0, r3
/* 80444AAC  7D 03 00 D0 */	neg r8, r3
/* 80444AB0  41 80 00 08 */	blt lbl_80444AB8
/* 80444AB4  7C 68 1B 78 */	mr r8, r3
lbl_80444AB8:
/* 80444AB8  A8 1E 00 30 */	lha r0, 0x30(r30)
/* 80444ABC  3C A0 43 30 */	lis r5, 0x4330
/* 80444AC0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80444AC4  3C E0 80 64 */	lis r7, lit_792@ha /* 0x806442C0@ha */
/* 80444AC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80444ACC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80444AD0  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80444AD4  3C 60 80 64 */	lis r3, lit_3228@ha /* 0x806443B0@ha */
/* 80444AD8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80444ADC  38 83 43 B0 */	addi r4, r3, lit_3228@l /* 0x806443B0@l */
/* 80444AE0  C8 66 00 00 */	lfd f3, 0(r6)
/* 80444AE4  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 80444AE8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80444AEC  38 60 03 8E */	li r3, 0x38e
/* 80444AF0  C0 47 42 C0 */	lfs f2, lit_792@l(r7)  /* 0x806442C0@l */
/* 80444AF4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80444AF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80444AFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80444B00  EC 42 00 32 */	fmuls f2, f2, f0
/* 80444B04  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80444B08  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80444B0C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80444B10  EC 00 18 28 */	fsubs f0, f0, f3
/* 80444B14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80444B18  FC 00 00 1E */	fctiwz f0, f0
/* 80444B1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80444B20  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80444B24  7C 80 07 34 */	extsh r0, r4
/* 80444B28  2C 00 03 8E */	cmpwi r0, 0x38e
/* 80444B2C  40 81 00 08 */	ble lbl_80444B34
/* 80444B30  7C 03 03 78 */	mr r3, r0
lbl_80444B34:
/* 80444B34  2C 03 11 C7 */	cmpwi r3, 0x11c7
/* 80444B38  40 81 00 0C */	ble lbl_80444B44
/* 80444B3C  38 C0 11 C7 */	li r6, 0x11c7
/* 80444B40  48 00 00 18 */	b lbl_80444B58
lbl_80444B44:
/* 80444B44  7C 80 07 34 */	extsh r0, r4
/* 80444B48  38 C0 03 8E */	li r6, 0x38e
/* 80444B4C  2C 00 03 8E */	cmpwi r0, 0x38e
/* 80444B50  40 81 00 08 */	ble lbl_80444B58
/* 80444B54  7C 06 03 78 */	mr r6, r0
lbl_80444B58:
/* 80444B58  3C 60 80 64 */	lis r3, lit_1680@ha /* 0x8064435C@ha */
/* 80444B5C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80444B60  38 A3 43 5C */	addi r5, r3, lit_1680@l /* 0x8064435C@l */
/* 80444B64  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80444B68  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80444B6C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80444B70  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80444B74  7C DD 07 34 */	extsh r29, r6
/* 80444B78  FC 60 30 34 */	frsqrte f3, f6
/* 80444B7C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444B80  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80444B84  C8 85 00 00 */	lfd f4, 0(r5)
/* 80444B88  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80444B8C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80444B90  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444B94  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80444B98  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444B9C  FC 26 00 72 */	fmul f1, f6, f1
/* 80444BA0  FC 24 08 28 */	fsub f1, f4, f1
/* 80444BA4  FC 63 00 72 */	fmul f3, f3, f1
/* 80444BA8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444BAC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444BB0  FC 26 00 72 */	fmul f1, f6, f1
/* 80444BB4  FC 24 08 28 */	fsub f1, f4, f1
/* 80444BB8  FC 63 00 72 */	fmul f3, f3, f1
/* 80444BBC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444BC0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444BC4  FC 26 00 72 */	fmul f1, f6, f1
/* 80444BC8  FC 24 08 28 */	fsub f1, f4, f1
/* 80444BCC  FC 23 00 72 */	fmul f1, f3, f1
/* 80444BD0  FC 26 00 72 */	fmul f1, f6, f1
/* 80444BD4  FC 20 08 18 */	frsp f1, f1
/* 80444BD8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80444BDC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80444BE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80444BE4  EF E2 08 28 */	fsubs f31, f2, f1
/* 80444BE8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80444BEC  40 81 00 54 */	ble lbl_80444C40
/* 80444BF0  FC 20 F8 34 */	frsqrte f1, f31
/* 80444BF4  FC 01 00 72 */	fmul f0, f1, f1
/* 80444BF8  FC 25 00 72 */	fmul f1, f5, f1
/* 80444BFC  FC 1F 00 32 */	fmul f0, f31, f0
/* 80444C00  FC 04 00 28 */	fsub f0, f4, f0
/* 80444C04  FC 21 00 32 */	fmul f1, f1, f0
/* 80444C08  FC 01 00 72 */	fmul f0, f1, f1
/* 80444C0C  FC 25 00 72 */	fmul f1, f5, f1
/* 80444C10  FC 1F 00 32 */	fmul f0, f31, f0
/* 80444C14  FC 04 00 28 */	fsub f0, f4, f0
/* 80444C18  FC 21 00 32 */	fmul f1, f1, f0
/* 80444C1C  FC 01 00 72 */	fmul f0, f1, f1
/* 80444C20  FC 25 00 72 */	fmul f1, f5, f1
/* 80444C24  FC 1F 00 32 */	fmul f0, f31, f0
/* 80444C28  FC 04 00 28 */	fsub f0, f4, f0
/* 80444C2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80444C30  FC 1F 00 32 */	fmul f0, f31, f0
/* 80444C34  FC 00 00 18 */	frsp f0, f0
/* 80444C38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80444C3C  C3 E1 00 1C */	lfs f31, 0x1c(r1)
lbl_80444C40:
/* 80444C40  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 80444C44  4B F7 5E AD */	bl sin_s
/* 80444C48  A8 1E 06 32 */	lha r0, 0x632(r30)
/* 80444C4C  3C A0 43 30 */	lis r5, 0x4330
/* 80444C50  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 80444C54  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80444C58  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80444C5C  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 80444C60  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80444C64  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444C68  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80444C6C  7F A0 0E 70 */	srawi r0, r29, 1
/* 80444C70  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80444C74  7C 00 07 34 */	extsh r0, r0
/* 80444C78  7C 00 0E 70 */	srawi r0, r0, 1
/* 80444C7C  38 7E 06 0E */	addi r3, r30, 0x60e
/* 80444C80  EC 40 10 28 */	fsubs f2, f0, f2
/* 80444C84  7C 05 07 34 */	extsh r5, r0
/* 80444C88  C0 04 00 00 */	lfs f0, 0(r4)
/* 80444C8C  38 C0 00 16 */	li r6, 0x16
/* 80444C90  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80444C94  EC 42 00 72 */	fmuls f2, f2, f1
/* 80444C98  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80444C9C  FC 00 10 1E */	fctiwz f0, f2
/* 80444CA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80444CA4  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80444CA8  7C 00 22 14 */	add r0, r0, r4
/* 80444CAC  7C 04 07 34 */	extsh r4, r0
/* 80444CB0  4B F7 66 61 */	bl add_calc_short_angle2
/* 80444CB4  3C 80 80 64 */	lis r4, lit_2906@ha /* 0x8064439C@ha */
/* 80444CB8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80444CBC  38 C4 43 9C */	addi r6, r4, lit_2906@l /* 0x8064439C@l */
/* 80444CC0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80444CC4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80444CC8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80444CCC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80444CD0  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 80444CD4  FC 60 30 34 */	frsqrte f3, f6
/* 80444CD8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80444CDC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80444CE0  C8 86 00 00 */	lfd f4, 0(r6)
/* 80444CE4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80444CE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80444CEC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444CF0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80444CF4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444CF8  FC 26 00 72 */	fmul f1, f6, f1
/* 80444CFC  FC 24 08 28 */	fsub f1, f4, f1
/* 80444D00  FC 63 00 72 */	fmul f3, f3, f1
/* 80444D04  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444D08  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444D0C  FC 26 00 72 */	fmul f1, f6, f1
/* 80444D10  FC 24 08 28 */	fsub f1, f4, f1
/* 80444D14  FC 63 00 72 */	fmul f3, f3, f1
/* 80444D18  FC 23 00 F2 */	fmul f1, f3, f3
/* 80444D1C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80444D20  FC 26 00 72 */	fmul f1, f6, f1
/* 80444D24  FC 24 08 28 */	fsub f1, f4, f1
/* 80444D28  FC 23 00 72 */	fmul f1, f3, f1
/* 80444D2C  FC 26 00 72 */	fmul f1, f6, f1
/* 80444D30  FC 20 08 18 */	frsp f1, f1
/* 80444D34  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80444D38  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80444D3C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80444D40  EC 42 08 28 */	fsubs f2, f2, f1
/* 80444D44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80444D48  40 81 00 54 */	ble lbl_80444D9C
/* 80444D4C  FC 20 10 34 */	frsqrte f1, f2
/* 80444D50  FC 01 00 72 */	fmul f0, f1, f1
/* 80444D54  FC 25 00 72 */	fmul f1, f5, f1
/* 80444D58  FC 02 00 32 */	fmul f0, f2, f0
/* 80444D5C  FC 04 00 28 */	fsub f0, f4, f0
/* 80444D60  FC 21 00 32 */	fmul f1, f1, f0
/* 80444D64  FC 01 00 72 */	fmul f0, f1, f1
/* 80444D68  FC 25 00 72 */	fmul f1, f5, f1
/* 80444D6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80444D70  FC 04 00 28 */	fsub f0, f4, f0
/* 80444D74  FC 21 00 32 */	fmul f1, f1, f0
/* 80444D78  FC 01 00 72 */	fmul f0, f1, f1
/* 80444D7C  FC 25 00 72 */	fmul f1, f5, f1
/* 80444D80  FC 02 00 32 */	fmul f0, f2, f0
/* 80444D84  FC 04 00 28 */	fsub f0, f4, f0
/* 80444D88  FC 01 00 32 */	fmul f0, f1, f0
/* 80444D8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80444D90  FC 00 00 18 */	frsp f0, f0
/* 80444D94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80444D98  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_80444D9C:
/* 80444D9C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444DA0  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 80444DA4  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80444DA8  38 7E 06 1C */	addi r3, r30, 0x61c
/* 80444DAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80444DB0  38 A0 00 E3 */	li r5, 0xe3
/* 80444DB4  38 C0 00 16 */	li r6, 0x16
/* 80444DB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80444DBC  4B F7 65 55 */	bl add_calc_short_angle2
/* 80444DC0  80 9E 05 98 */	lwz r4, 0x598(r30)
/* 80444DC4  28 04 00 00 */	cmplwi r4, 0
/* 80444DC8  41 82 01 74 */	beq lbl_80444F3C
/* 80444DCC  C3 E4 05 A8 */	lfs f31, 0x5a8(r4)
/* 80444DD0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80444DD4  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80444DD8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80444DDC  EC 7F 08 28 */	fsubs f3, f31, f1
/* 80444DE0  C0 44 00 08 */	lfs f2, 8(r4)
/* 80444DE4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80444DE8  C0 84 05 A4 */	lfs f4, 0x5a4(r4)
/* 80444DEC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80444DF0  EF C2 08 2A */	fadds f30, f2, f1
/* 80444DF4  4C 41 13 82 */	cror 2, 1, 2
/* 80444DF8  40 82 00 0C */	bne lbl_80444E04
/* 80444DFC  FC 00 18 90 */	fmr f0, f3
/* 80444E00  48 00 00 08 */	b lbl_80444E08
lbl_80444E04:
/* 80444E04  FC 00 18 50 */	fneg f0, f3
lbl_80444E08:
/* 80444E08  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80444E0C  EC 3E 00 28 */	fsubs f1, f30, f0
/* 80444E10  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80444E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80444E18  40 81 00 20 */	ble lbl_80444E38
/* 80444E1C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80444E20  4C 41 13 82 */	cror 2, 1, 2
/* 80444E24  40 82 00 08 */	bne lbl_80444E2C
/* 80444E28  48 00 00 08 */	b lbl_80444E30
lbl_80444E2C:
/* 80444E2C  FC 60 18 50 */	fneg f3, f3
lbl_80444E30:
/* 80444E30  EF BE 18 28 */	fsubs f29, f30, f3
/* 80444E34  48 00 00 08 */	b lbl_80444E3C
lbl_80444E38:
/* 80444E38  FF A0 00 90 */	fmr f29, f0
lbl_80444E3C:
/* 80444E3C  EF BD F0 24 */	fdivs f29, f29, f30
/* 80444E40  80 04 05 9C */	lwz r0, 0x59c(r4)
/* 80444E44  2C 00 00 23 */	cmpwi r0, 0x23
/* 80444E48  41 82 00 9C */	beq lbl_80444EE4
/* 80444E4C  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 80444E50  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 80444E54  40 80 00 4C */	bge lbl_80444EA0
/* 80444E58  C0 24 00 04 */	lfs f1, 4(r4)
/* 80444E5C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80444E60  EC 01 00 2A */	fadds f0, f1, f0
/* 80444E64  EC 64 00 2A */	fadds f3, f4, f0
/* 80444E68  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80444E6C  40 80 00 78 */	bge lbl_80444EE4
/* 80444E70  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80444E74  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80444E78  38 A4 42 44 */	addi r5, r4, data_80644244@l /* 0x80644244@l */
/* 80444E7C  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80444E80  C0 25 00 00 */	lfs f1, 0(r5)
/* 80444E84  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80444E88  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80444E8C  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80444E90  EC 21 18 2A */	fadds f1, f1, f3
/* 80444E94  EC 60 07 72 */	fmuls f3, f0, f29
/* 80444E98  4B F7 63 FD */	bl add_calc2
/* 80444E9C  48 00 00 48 */	b lbl_80444EE4
lbl_80444EA0:
/* 80444EA0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80444EA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80444EA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80444EAC  EC 64 00 28 */	fsubs f3, f4, f0
/* 80444EB0  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80444EB4  40 81 00 30 */	ble lbl_80444EE4
/* 80444EB8  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80444EBC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80444EC0  38 A4 42 44 */	addi r5, r4, data_80644244@l /* 0x80644244@l */
/* 80444EC4  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80444EC8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80444ECC  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80444ED0  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80444ED4  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80444ED8  EC 23 08 28 */	fsubs f1, f3, f1
/* 80444EDC  EC 60 07 72 */	fmuls f3, f0, f29
/* 80444EE0  4B F7 63 B5 */	bl add_calc2
lbl_80444EE4:
/* 80444EE4  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 80444EE8  C0 1E 05 A8 */	lfs f0, 0x5a8(r30)
/* 80444EEC  C0 23 05 A8 */	lfs f1, 0x5a8(r3)
/* 80444EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80444EF4  40 80 00 28 */	bge lbl_80444F1C
/* 80444EF8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80444EFC  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 80444F00  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80444F04  EC 3F F0 2A */	fadds f1, f31, f30
/* 80444F08  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 80444F0C  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80444F10  EC 60 07 72 */	fmuls f3, f0, f29
/* 80444F14  4B F7 63 81 */	bl add_calc2
/* 80444F18  48 00 00 24 */	b lbl_80444F3C
lbl_80444F1C:
/* 80444F1C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80444F20  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 80444F24  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80444F28  EC 3F F0 28 */	fsubs f1, f31, f30
/* 80444F2C  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 80444F30  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80444F34  EC 60 07 72 */	fmuls f3, f0, f29
/* 80444F38  4B F7 63 5D */	bl add_calc2
lbl_80444F3C:
/* 80444F3C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80444F40  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80444F44  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 80444F48  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80444F4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80444F50  C0 7E 05 FC */	lfs f3, 0x5fc(r30)
/* 80444F54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80444F58  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80444F5C  40 80 00 F0 */	bge lbl_8044504C
/* 80444F60  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80444F64  2C 00 00 00 */	cmpwi r0, 0
/* 80444F68  40 80 00 58 */	bge lbl_80444FC0
/* 80444F6C  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 80444F70  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80444F74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80444F78  40 81 00 14 */	ble lbl_80444F8C
/* 80444F7C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80444F80  38 03 C0 00 */	addi r0, r3, -16384
/* 80444F84  7C 00 07 34 */	extsh r0, r0
/* 80444F88  48 00 00 10 */	b lbl_80444F98
lbl_80444F8C:
/* 80444F8C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80444F90  38 03 40 00 */	addi r0, r3, 0x4000
/* 80444F94  7C 00 07 34 */	extsh r0, r0
lbl_80444F98:
/* 80444F98  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80444F9C  4B C1 7D 59 */	bl fqrand
/* 80444FA0  3C 80 80 64 */	lis r4, lit_4470@ha /* 0x806443F0@ha */
/* 80444FA4  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80444FA8  C0 44 43 F0 */	lfs f2, lit_4470@l(r4)  /* 0x806443F0@l */
/* 80444FAC  C0 03 42 84 */	lfs f0, lit_568@l(r3)  /* 0x80644284@l */
/* 80444FB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80444FB4  EC 00 08 2A */	fadds f0, f0, f1
/* 80444FB8  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 80444FBC  48 00 04 BC */	b lbl_80445478
lbl_80444FC0:
/* 80444FC0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80444FC4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80444FC8  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 80444FCC  C8 64 42 54 */	lfd f3, lit_470@l(r4)  /* 0x80644254@l */
/* 80444FD0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80444FD4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444FD8  C8 85 00 00 */	lfd f4, 0(r5)
/* 80444FDC  38 80 40 00 */	li r4, 0x4000
/* 80444FE0  FC 40 28 34 */	frsqrte f2, f5
/* 80444FE4  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80444FE8  38 7E 06 14 */	addi r3, r30, 0x614
/* 80444FEC  38 A0 05 55 */	li r5, 0x555
/* 80444FF0  38 C0 00 5B */	li r6, 0x5b
/* 80444FF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 80444FF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80444FFC  FC 25 00 72 */	fmul f1, f5, f1
/* 80445000  FC 23 08 28 */	fsub f1, f3, f1
/* 80445004  FC 42 00 72 */	fmul f2, f2, f1
/* 80445008  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044500C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445010  FC 25 00 72 */	fmul f1, f5, f1
/* 80445014  FC 23 08 28 */	fsub f1, f3, f1
/* 80445018  FC 42 00 72 */	fmul f2, f2, f1
/* 8044501C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445020  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445024  FC 25 00 72 */	fmul f1, f5, f1
/* 80445028  FC 23 08 28 */	fsub f1, f3, f1
/* 8044502C  FC 22 00 72 */	fmul f1, f2, f1
/* 80445030  FC 25 00 72 */	fmul f1, f5, f1
/* 80445034  FC 20 08 18 */	frsp f1, f1
/* 80445038  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044503C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80445040  EC 20 08 28 */	fsubs f1, f0, f1
/* 80445044  4B F7 62 CD */	bl add_calc_short_angle2
/* 80445048  48 00 04 30 */	b lbl_80445478
lbl_8044504C:
/* 8044504C  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80445050  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80445054  40 80 00 F0 */	bge lbl_80445144
/* 80445058  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044505C  2C 00 00 00 */	cmpwi r0, 0
/* 80445060  40 81 00 58 */	ble lbl_804450B8
/* 80445064  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 80445068  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 8044506C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80445070  40 81 00 14 */	ble lbl_80445084
/* 80445074  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445078  38 03 40 00 */	addi r0, r3, 0x4000
/* 8044507C  7C 00 07 34 */	extsh r0, r0
/* 80445080  48 00 00 10 */	b lbl_80445090
lbl_80445084:
/* 80445084  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445088  38 03 C0 00 */	addi r0, r3, -16384
/* 8044508C  7C 00 07 34 */	extsh r0, r0
lbl_80445090:
/* 80445090  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80445094  4B C1 7C 61 */	bl fqrand
/* 80445098  3C 80 80 64 */	lis r4, lit_4470@ha /* 0x806443F0@ha */
/* 8044509C  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 804450A0  C0 44 43 F0 */	lfs f2, lit_4470@l(r4)  /* 0x806443F0@l */
/* 804450A4  C0 03 42 84 */	lfs f0, lit_568@l(r3)  /* 0x80644284@l */
/* 804450A8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804450AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804450B0  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 804450B4  48 00 03 C4 */	b lbl_80445478
lbl_804450B8:
/* 804450B8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 804450BC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804450C0  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 804450C4  C8 64 42 54 */	lfd f3, lit_470@l(r4)  /* 0x80644254@l */
/* 804450C8  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804450CC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804450D0  C8 85 00 00 */	lfd f4, 0(r5)
/* 804450D4  38 80 C0 00 */	li r4, -16384
/* 804450D8  FC 40 28 34 */	frsqrte f2, f5
/* 804450DC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 804450E0  38 7E 06 14 */	addi r3, r30, 0x614
/* 804450E4  38 A0 05 55 */	li r5, 0x555
/* 804450E8  38 C0 00 5B */	li r6, 0x5b
/* 804450EC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804450F0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804450F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804450F8  FC 23 08 28 */	fsub f1, f3, f1
/* 804450FC  FC 42 00 72 */	fmul f2, f2, f1
/* 80445100  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445104  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445108  FC 25 00 72 */	fmul f1, f5, f1
/* 8044510C  FC 23 08 28 */	fsub f1, f3, f1
/* 80445110  FC 42 00 72 */	fmul f2, f2, f1
/* 80445114  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445118  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044511C  FC 25 00 72 */	fmul f1, f5, f1
/* 80445120  FC 23 08 28 */	fsub f1, f3, f1
/* 80445124  FC 22 00 72 */	fmul f1, f2, f1
/* 80445128  FC 25 00 72 */	fmul f1, f5, f1
/* 8044512C  FC 20 08 18 */	frsp f1, f1
/* 80445130  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80445134  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80445138  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044513C  4B F7 61 D5 */	bl add_calc_short_angle2
/* 80445140  48 00 03 38 */	b lbl_80445478
lbl_80445144:
/* 80445144  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 80445148  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8044514C  41 82 00 64 */	beq lbl_804451B0
/* 80445150  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80445154  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80445158  C0 03 42 AC */	lfs f0, lit_666@l(r3)  /* 0x806442AC@l */
/* 8044515C  EC 01 00 2A */	fadds f0, f1, f0
/* 80445160  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80445164  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 80445168  38 64 80 00 */	addi r3, r4, -32768
/* 8044516C  7C 60 07 35 */	extsh. r0, r3
/* 80445170  7C 60 07 34 */	extsh r0, r3
/* 80445174  7C 60 00 D0 */	neg r3, r0
/* 80445178  41 80 00 08 */	blt lbl_80445180
/* 8044517C  7C 03 03 78 */	mr r3, r0
lbl_80445180:
/* 80445180  2C 03 4E 38 */	cmpwi r3, 0x4e38
/* 80445184  40 80 02 F4 */	bge lbl_80445478
/* 80445188  7C 80 07 35 */	extsh. r0, r4
/* 8044518C  40 81 00 14 */	ble lbl_804451A0
/* 80445190  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 80445194  38 03 FE EF */	addi r0, r3, -273
/* 80445198  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044519C  48 00 02 DC */	b lbl_80445478
lbl_804451A0:
/* 804451A0  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 804451A4  38 03 01 11 */	addi r0, r3, 0x111
/* 804451A8  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 804451AC  48 00 02 CC */	b lbl_80445478
lbl_804451B0:
/* 804451B0  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 804451B4  41 82 00 14 */	beq lbl_804451C8
/* 804451B8  7F C3 F3 78 */	mr r3, r30
/* 804451BC  7F E4 FB 78 */	mr r4, r31
/* 804451C0  48 00 02 E9 */	bl mfish_tai_turn_init
/* 804451C4  48 00 02 B4 */	b lbl_80445478
lbl_804451C8:
/* 804451C8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804451CC  41 82 00 CC */	beq lbl_80445298
/* 804451D0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804451D4  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 804451D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804451DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804451E0  40 81 00 B8 */	ble lbl_80445298
/* 804451E4  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 804451E8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 804451EC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 804451F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804451F4  40 80 02 84 */	bge lbl_80445478
/* 804451F8  7F C3 F3 78 */	mr r3, r30
/* 804451FC  7F E4 FB 78 */	mr r4, r31
/* 80445200  4B FF 2E A5 */	bl mfish_get_escape_angle
/* 80445204  3C 80 80 64 */	lis r4, lit_1066@ha /* 0x806442FC@ha */
/* 80445208  38 A4 42 FC */	addi r5, r4, lit_1066@l /* 0x806442FC@l */
/* 8044520C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80445210  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80445214  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 80445218  3C A0 80 64 */	lis r5, lit_470@ha /* 0x80644254@ha */
/* 8044521C  FC 40 28 34 */	frsqrte f2, f5
/* 80445220  C8 86 00 00 */	lfd f4, 0(r6)
/* 80445224  C8 65 42 54 */	lfd f3, lit_470@l(r5)  /* 0x80644254@l */
/* 80445228  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044522C  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 80445230  7C 64 1B 78 */	mr r4, r3
/* 80445234  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445238  38 7E 06 14 */	addi r3, r30, 0x614
/* 8044523C  38 A0 01 C7 */	li r5, 0x1c7
/* 80445240  38 C0 00 00 */	li r6, 0
/* 80445244  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445248  FC 25 00 72 */	fmul f1, f5, f1
/* 8044524C  FC 23 08 28 */	fsub f1, f3, f1
/* 80445250  FC 42 00 72 */	fmul f2, f2, f1
/* 80445254  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445258  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044525C  FC 25 00 72 */	fmul f1, f5, f1
/* 80445260  FC 23 08 28 */	fsub f1, f3, f1
/* 80445264  FC 42 00 72 */	fmul f2, f2, f1
/* 80445268  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044526C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445270  FC 25 00 72 */	fmul f1, f5, f1
/* 80445274  FC 23 08 28 */	fsub f1, f3, f1
/* 80445278  FC 22 00 72 */	fmul f1, f2, f1
/* 8044527C  FC 25 00 72 */	fmul f1, f5, f1
/* 80445280  FC 20 08 18 */	frsp f1, f1
/* 80445284  D0 21 00 08 */	stfs f1, 8(r1)
/* 80445288  C0 21 00 08 */	lfs f1, 8(r1)
/* 8044528C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80445290  4B F7 60 81 */	bl add_calc_short_angle2
/* 80445294  48 00 01 E4 */	b lbl_80445478
lbl_80445298:
/* 80445298  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044529C  2C 00 00 00 */	cmpwi r0, 0
/* 804452A0  40 80 01 D8 */	bge lbl_80445478
/* 804452A4  4B C1 7A 51 */	bl fqrand
/* 804452A8  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 804452AC  FF A0 08 90 */	fmr f29, f1
/* 804452B0  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 804452B4  4B C1 7A 41 */	bl fqrand
/* 804452B8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804452BC  3C 00 43 30 */	lis r0, 0x4330
/* 804452C0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804452C4  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 804452C8  80 84 00 00 */	lwz r4, 0(r4)
/* 804452CC  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 804452D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 804452D4  A8 04 1B 4C */	lha r0, 0x1b4c(r4)
/* 804452D8  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 804452DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804452E0  C0 65 42 68 */	lfs f3, lit_527@l(r5)  /* 0x80644268@l */
/* 804452E4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804452E8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804452EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804452F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 804452F4  EC 03 00 2A */	fadds f0, f3, f0
/* 804452F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804452FC  40 80 00 70 */	bge lbl_8044536C
/* 80445300  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80445304  2C 00 00 00 */	cmpwi r0, 0
/* 80445308  40 80 00 34 */	bge lbl_8044533C
/* 8044530C  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 80445310  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80445314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80445318  40 81 00 14 */	ble lbl_8044532C
/* 8044531C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445320  38 03 90 00 */	addi r0, r3, -28672
/* 80445324  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80445328  48 00 00 F0 */	b lbl_80445418
lbl_8044532C:
/* 8044532C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445330  38 03 70 00 */	addi r0, r3, 0x7000
/* 80445334  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80445338  48 00 00 E0 */	b lbl_80445418
lbl_8044533C:
/* 8044533C  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 80445340  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 80445344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80445348  40 81 00 14 */	ble lbl_8044535C
/* 8044534C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445350  38 03 70 00 */	addi r0, r3, 0x7000
/* 80445354  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80445358  48 00 00 C0 */	b lbl_80445418
lbl_8044535C:
/* 8044535C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445360  38 03 90 00 */	addi r0, r3, -28672
/* 80445364  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80445368  48 00 00 B0 */	b lbl_80445418
lbl_8044536C:
/* 8044536C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445370  4B F7 57 2D */	bl cos_s
/* 80445374  C0 7E 06 08 */	lfs f3, 0x608(r30)
/* 80445378  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044537C  C0 5E 06 04 */	lfs f2, 0x604(r30)
/* 80445380  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80445384  EC 43 10 28 */	fsubs f2, f3, f2
/* 80445388  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044538C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80445390  40 80 00 48 */	bge lbl_804453D8
/* 80445394  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 80445398  3C 00 43 30 */	lis r0, 0x4330
/* 8044539C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804453A0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 804453A4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804453A8  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 804453AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804453B0  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 804453B4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804453B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804453BC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 804453C0  FC 00 00 1E */	fctiwz f0, f0
/* 804453C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804453C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804453CC  7C 04 02 14 */	add r0, r4, r0
/* 804453D0  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 804453D4  48 00 00 44 */	b lbl_80445418
lbl_804453D8:
/* 804453D8  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 804453DC  3C 00 43 30 */	lis r0, 0x4330
/* 804453E0  90 01 00 38 */	stw r0, 0x38(r1)
/* 804453E4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 804453E8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804453EC  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 804453F0  90 61 00 3C */	stw r3, 0x3c(r1)
/* 804453F4  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 804453F8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804453FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80445400  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80445404  FC 00 00 1E */	fctiwz f0, f0
/* 80445408  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044540C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80445410  7C 03 00 50 */	subf r0, r3, r0
/* 80445414  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_80445418:
/* 80445418  4B C1 78 DD */	bl fqrand
/* 8044541C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80445420  3C 00 43 30 */	lis r0, 0x4330
/* 80445424  90 01 00 38 */	stw r0, 0x38(r1)
/* 80445428  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044542C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80445430  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80445434  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80445438  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044543C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80445440  EC 00 10 28 */	fsubs f0, f0, f2
/* 80445444  EC 00 00 72 */	fmuls f0, f0, f1
/* 80445448  FC 00 00 1E */	fctiwz f0, f0
/* 8044544C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80445450  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80445454  7C 00 1A 14 */	add r0, r0, r3
/* 80445458  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044545C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80445460  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80445464  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80445468  4B FE C1 81 */	bl func_804315E8
/* 8044546C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80445470  EC 00 08 2A */	fadds f0, f0, f1
/* 80445474  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_80445478:
/* 80445478  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8044547C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80445480  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80445484  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80445488  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8044548C  39 61 00 50 */	addi r11, r1, 0x50
/* 80445490  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80445494  4B C5 5A 8D */	bl func_8009AF20
/* 80445498  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8044549C  7C 08 03 A6 */	mtlr r0
/* 804454A0  38 21 00 80 */	addi r1, r1, 0x80
/* 804454A4  4E 80 00 20 */	blr 