lbl_8044ACCC:
/* 8044ACCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8044ACD0  7C 08 02 A6 */	mflr r0
/* 8044ACD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044ACD8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8044ACDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8044ACE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8044ACE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8044ACE8  38 C0 00 00 */	li r6, 0
/* 8044ACEC  3C 00 43 30 */	lis r0, 0x4330
/* 8044ACF0  B0 C3 06 32 */	sth r6, 0x632(r3)
/* 8044ACF4  7C 7E 1B 78 */	mr r30, r3
/* 8044ACF8  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 8044ACFC  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 8044AD00  B0 DE 06 36 */	sth r6, 0x636(r30)
/* 8044AD04  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044AD08  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8044AD0C  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 8044AD10  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044AD14  80 65 61 38 */	lwz r3, debug_mode@l(r5)  /* 0x81166138@l */
/* 8044AD18  90 01 00 18 */	stw r0, 0x18(r1)
/* 8044AD1C  7C 9F 23 78 */	mr r31, r4
/* 8044AD20  A8 A3 1B 42 */	lha r5, 0x1b42(r3)
/* 8044AD24  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044AD28  C8 26 00 00 */	lfd f1, 0(r6)
/* 8044AD2C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044AD30  C0 47 42 C4 */	lfs f2, lit_793@l(r7)  /* 0x806442C4@l */
/* 8044AD34  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8044AD38  C0 68 42 5C */	lfs f3, lit_471@l(r8)  /* 0x8064425C@l */
/* 8044AD3C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8044AD40  C0 89 42 60 */	lfs f4, lit_472@l(r9)  /* 0x80644260@l */
/* 8044AD44  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044AD48  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044AD4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044AD50  EC 23 08 2A */	fadds f1, f3, f1
/* 8044AD54  EC 84 08 28 */	fsubs f4, f4, f1
/* 8044AD58  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8044AD5C  40 81 00 68 */	ble lbl_8044ADC4
/* 8044AD60  FC 20 20 34 */	frsqrte f1, f4
/* 8044AD64  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044AD68  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044AD6C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044AD70  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044AD74  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AD78  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044AD7C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AD80  FC 04 00 32 */	fmul f0, f4, f0
/* 8044AD84  FC 02 00 28 */	fsub f0, f2, f0
/* 8044AD88  FC 21 00 32 */	fmul f1, f1, f0
/* 8044AD8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AD90  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AD94  FC 04 00 32 */	fmul f0, f4, f0
/* 8044AD98  FC 02 00 28 */	fsub f0, f2, f0
/* 8044AD9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044ADA0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044ADA4  FC 23 00 72 */	fmul f1, f3, f1
/* 8044ADA8  FC 04 00 32 */	fmul f0, f4, f0
/* 8044ADAC  FC 02 00 28 */	fsub f0, f2, f0
/* 8044ADB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8044ADB4  FC 04 00 32 */	fmul f0, f4, f0
/* 8044ADB8  FC 00 00 18 */	frsp f0, f0
/* 8044ADBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044ADC0  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_8044ADC4:
/* 8044ADC4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044ADC8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044ADCC  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8044ADD0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044ADD4  EC 22 20 28 */	fsubs f1, f2, f4
/* 8044ADD8  EF E2 08 28 */	fsubs f31, f2, f1
/* 8044ADDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8044ADE0  40 81 00 68 */	ble lbl_8044AE48
/* 8044ADE4  FC 20 F8 34 */	frsqrte f1, f31
/* 8044ADE8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044ADEC  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044ADF0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044ADF4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044ADF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044ADFC  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044AE00  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AE04  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044AE08  FC 02 00 28 */	fsub f0, f2, f0
/* 8044AE0C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044AE10  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AE14  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AE18  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044AE1C  FC 02 00 28 */	fsub f0, f2, f0
/* 8044AE20  FC 21 00 32 */	fmul f1, f1, f0
/* 8044AE24  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AE28  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AE2C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044AE30  FC 02 00 28 */	fsub f0, f2, f0
/* 8044AE34  FC 01 00 32 */	fmul f0, f1, f0
/* 8044AE38  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044AE3C  FC 00 00 18 */	frsp f0, f0
/* 8044AE40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8044AE44  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_8044AE48:
/* 8044AE48  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044AE4C  4B F6 FC A5 */	bl sin_s
/* 8044AE50  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8044AE54  3C 00 43 30 */	lis r0, 0x4330
/* 8044AE58  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044AE5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8044AE60  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044AE64  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044AE68  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8044AE6C  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8044AE70  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044AE74  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044AE78  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8044AE7C  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044AE80  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044AE84  38 A0 05 55 */	li r5, 0x555
/* 8044AE88  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044AE8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044AE90  38 C0 00 2D */	li r6, 0x2d
/* 8044AE94  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044AE98  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044AE9C  FC 00 10 1E */	fctiwz f0, f2
/* 8044AEA0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044AEA4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8044AEA8  7C 00 22 14 */	add r0, r0, r4
/* 8044AEAC  7C 04 07 34 */	extsh r4, r0
/* 8044AEB0  4B F7 04 61 */	bl add_calc_short_angle2
/* 8044AEB4  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 8044AEB8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044AEBC  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 8044AEC0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044AEC4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044AEC8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044AECC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044AED0  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044AED4  FC 60 30 34 */	frsqrte f3, f6
/* 8044AED8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044AEDC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044AEE0  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044AEE4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044AEE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044AEEC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044AEF0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044AEF4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044AEF8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044AEFC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044AF00  FC 63 00 72 */	fmul f3, f3, f1
/* 8044AF04  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044AF08  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044AF0C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044AF10  FC 24 08 28 */	fsub f1, f4, f1
/* 8044AF14  FC 63 00 72 */	fmul f3, f3, f1
/* 8044AF18  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044AF1C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044AF20  FC 26 00 72 */	fmul f1, f6, f1
/* 8044AF24  FC 24 08 28 */	fsub f1, f4, f1
/* 8044AF28  FC 23 00 72 */	fmul f1, f3, f1
/* 8044AF2C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044AF30  FC 20 08 18 */	frsp f1, f1
/* 8044AF34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8044AF38  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8044AF3C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044AF40  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044AF44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044AF48  40 81 00 54 */	ble lbl_8044AF9C
/* 8044AF4C  FC 20 10 34 */	frsqrte f1, f2
/* 8044AF50  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AF54  FC 25 00 72 */	fmul f1, f5, f1
/* 8044AF58  FC 02 00 32 */	fmul f0, f2, f0
/* 8044AF5C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044AF60  FC 21 00 32 */	fmul f1, f1, f0
/* 8044AF64  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AF68  FC 25 00 72 */	fmul f1, f5, f1
/* 8044AF6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044AF70  FC 04 00 28 */	fsub f0, f4, f0
/* 8044AF74  FC 21 00 32 */	fmul f1, f1, f0
/* 8044AF78  FC 01 00 72 */	fmul f0, f1, f1
/* 8044AF7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044AF80  FC 02 00 32 */	fmul f0, f2, f0
/* 8044AF84  FC 04 00 28 */	fsub f0, f4, f0
/* 8044AF88  FC 01 00 32 */	fmul f0, f1, f0
/* 8044AF8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044AF90  FC 00 00 18 */	frsp f0, f0
/* 8044AF94  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044AF98  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8044AF9C:
/* 8044AF9C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044AFA0  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044AFA4  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044AFA8  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044AFAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044AFB0  38 A0 03 8E */	li r5, 0x38e
/* 8044AFB4  38 C0 00 2D */	li r6, 0x2d
/* 8044AFB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044AFBC  4B F7 03 55 */	bl add_calc_short_angle2
/* 8044AFC0  A8 7E 06 22 */	lha r3, 0x622(r30)
/* 8044AFC4  7C 60 07 35 */	extsh. r0, r3
/* 8044AFC8  7C 03 00 D0 */	neg r0, r3
/* 8044AFCC  41 80 00 08 */	blt lbl_8044AFD4
/* 8044AFD0  7C 60 1B 78 */	mr r0, r3
lbl_8044AFD4:
/* 8044AFD4  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 8044AFD8  40 80 00 10 */	bge lbl_8044AFE8
/* 8044AFDC  7F C3 F3 78 */	mr r3, r30
/* 8044AFE0  7F E4 FB 78 */	mr r4, r31
/* 8044AFE4  4B FF F5 BD */	bl mfish_kingyo_normal_init
lbl_8044AFE8:
/* 8044AFE8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8044AFEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044AFF0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8044AFF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8044AFF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8044AFFC  7C 08 03 A6 */	mtlr r0
/* 8044B000  38 21 00 40 */	addi r1, r1, 0x40
/* 8044B004  4E 80 00 20 */	blr 
