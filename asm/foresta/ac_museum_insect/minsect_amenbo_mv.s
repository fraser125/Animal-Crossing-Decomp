lbl_8045AD14:
/* 8045AD14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045AD18  7C 08 02 A6 */	mflr r0
/* 8045AD1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045AD20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8045AD24  7C 9F 23 78 */	mr r31, r4
/* 8045AD28  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8045AD2C  7C 7E 1B 78 */	mr r30, r3
/* 8045AD30  48 00 19 49 */	bl get_now_mind_flag
/* 8045AD34  B0 7E 00 8E */	sth r3, 0x8e(r30)
/* 8045AD38  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045AD3C  C0 23 45 BC */	lfs f1, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045AD40  A8 9E 00 6E */	lha r4, 0x6e(r30)
/* 8045AD44  38 04 FF FF */	addi r0, r4, -1
/* 8045AD48  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045AD4C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8045AD50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045AD54  40 81 01 28 */	ble lbl_8045AE7C
/* 8045AD58  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 8045AD5C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045AD60  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8045AD64  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045AD68  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045AD6C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045AD70  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 8045AD74  3C 80 80 64 */	lis r4, lit_512@ha /* 0x80644610@ha */
/* 8045AD78  FC 60 40 34 */	frsqrte f3, f8
/* 8045AD7C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045AD80  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045AD84  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8045AD88  3C 60 80 64 */	lis r3, lit_585@ha /* 0x80644630@ha */
/* 8045AD8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045AD90  FC 43 00 F2 */	fmul f2, f3, f3
/* 8045AD94  C0 83 46 30 */	lfs f4, lit_585@l(r3)  /* 0x80644630@l */
/* 8045AD98  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045AD9C  FC A7 00 F2 */	fmul f5, f7, f3
/* 8045ADA0  C0 64 46 10 */	lfs f3, lit_512@l(r4)  /* 0x80644610@l */
/* 8045ADA4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045ADA8  FC 46 10 28 */	fsub f2, f6, f2
/* 8045ADAC  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045ADB0  FC 45 01 72 */	fmul f2, f5, f5
/* 8045ADB4  FC A7 01 72 */	fmul f5, f7, f5
/* 8045ADB8  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045ADBC  FC 46 10 28 */	fsub f2, f6, f2
/* 8045ADC0  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045ADC4  FC 45 01 72 */	fmul f2, f5, f5
/* 8045ADC8  FC A7 01 72 */	fmul f5, f7, f5
/* 8045ADCC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045ADD0  FC 46 10 28 */	fsub f2, f6, f2
/* 8045ADD4  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045ADD8  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045ADDC  FC 40 10 18 */	frsp f2, f2
/* 8045ADE0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8045ADE4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8045ADE8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045ADEC  4B F6 03 C5 */	bl add_calc
/* 8045ADF0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045ADF4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045ADF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8045ADFC  40 82 00 74 */	bne lbl_8045AE70
/* 8045AE00  4B C0 1F 2D */	bl fqrand2
/* 8045AE04  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8045AE08  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045AE0C  C0 44 46 9C */	lfs f2, lit_823@l(r4)  /* 0x8064469C@l */
/* 8045AE10  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045AE14  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045AE18  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045AE1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045AE20  FC 00 00 1E */	fctiwz f0, f0
/* 8045AE24  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8045AE28  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8045AE2C  7C 63 07 34 */	extsh r3, r3
/* 8045AE30  7C 00 1A 14 */	add r0, r0, r3
/* 8045AE34  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045AE38  4B C0 1E BD */	bl fqrand
/* 8045AE3C  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8045AE40  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8045AE44  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045AE48  FC 00 00 1E */	fctiwz f0, f0
/* 8045AE4C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045AE50  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8045AE54  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045AE58  A8 1E 00 8E */	lha r0, 0x8e(r30)
/* 8045AE5C  2C 00 00 00 */	cmpwi r0, 0
/* 8045AE60  40 82 00 10 */	bne lbl_8045AE70
/* 8045AE64  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8045AE68  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8045AE6C  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8045AE70:
/* 8045AE70  7F C3 F3 78 */	mr r3, r30
/* 8045AE74  4B FF FD 71 */	bl func_8045ABE4
/* 8045AE78  48 00 01 2C */	b lbl_8045AFA4
lbl_8045AE7C:
/* 8045AE7C  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8045AE80  2C 00 00 00 */	cmpwi r0, 0
/* 8045AE84  40 80 01 20 */	bge lbl_8045AFA4
/* 8045AE88  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045AE8C  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045AE90  38 A3 45 FC */	addi r5, r3, lit_509@l /* 0x806445FC@l */
/* 8045AE94  C8 64 46 04 */	lfd f3, lit_510@l(r4)  /* 0x80644604@l */
/* 8045AE98  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8045AE9C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045AEA0  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045AEA4  38 A0 03 8E */	li r5, 0x38e
/* 8045AEA8  FC 40 28 34 */	frsqrte f2, f5
/* 8045AEAC  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8045AEB0  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 8045AEB4  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8045AEB8  38 C0 00 5B */	li r6, 0x5b
/* 8045AEBC  FC 22 00 B2 */	fmul f1, f2, f2
/* 8045AEC0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8045AEC4  FC 25 00 72 */	fmul f1, f5, f1
/* 8045AEC8  FC 23 08 28 */	fsub f1, f3, f1
/* 8045AECC  FC 42 00 72 */	fmul f2, f2, f1
/* 8045AED0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8045AED4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8045AED8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045AEDC  FC 23 08 28 */	fsub f1, f3, f1
/* 8045AEE0  FC 42 00 72 */	fmul f2, f2, f1
/* 8045AEE4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8045AEE8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8045AEEC  FC 25 00 72 */	fmul f1, f5, f1
/* 8045AEF0  FC 23 08 28 */	fsub f1, f3, f1
/* 8045AEF4  FC 22 00 72 */	fmul f1, f2, f1
/* 8045AEF8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045AEFC  FC 20 08 18 */	frsp f1, f1
/* 8045AF00  D0 21 00 08 */	stfs f1, 8(r1)
/* 8045AF04  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045AF08  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045AF0C  4B F6 04 05 */	bl add_calc_short_angle2
/* 8045AF10  7C 60 07 35 */	extsh. r0, r3
/* 8045AF14  40 82 00 90 */	bne lbl_8045AFA4
/* 8045AF18  4B C0 1D DD */	bl fqrand
/* 8045AF1C  3C 60 80 64 */	lis r3, lit_3227@ha /* 0x80644800@ha */
/* 8045AF20  3C 80 80 64 */	lis r4, lit_3226@ha /* 0x806447FC@ha */
/* 8045AF24  38 A3 48 00 */	addi r5, r3, lit_3227@l /* 0x80644800@l */
/* 8045AF28  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045AF2C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045AF30  38 A4 47 FC */	addi r5, r4, lit_3226@l /* 0x806447FC@l */
/* 8045AF34  38 83 45 E8 */	addi r4, r3, lit_506@l /* 0x806445E8@l */
/* 8045AF38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8045AF3C  EC 40 00 72 */	fmuls f2, f0, f1
/* 8045AF40  C0 25 00 00 */	lfs f1, 0(r5)
/* 8045AF44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8045AF48  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045AF4C  3C C3 00 02 */	addis r6, r3, 2
/* 8045AF50  7F E7 FB 78 */	mr r7, r31
/* 8045AF54  EC 21 10 2A */	fadds f1, f1, f2
/* 8045AF58  38 81 00 10 */	addi r4, r1, 0x10
/* 8045AF5C  38 60 00 45 */	li r3, 0x45
/* 8045AF60  38 A0 00 01 */	li r5, 1
/* 8045AF64  39 00 00 00 */	li r8, 0
/* 8045AF68  39 20 00 01 */	li r9, 1
/* 8045AF6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045AF70  39 40 00 00 */	li r10, 0
/* 8045AF74  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045AF78  81 7E 00 1C */	lwz r11, 0x1c(r30)
/* 8045AF7C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8045AF80  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8045AF84  91 61 00 10 */	stw r11, 0x10(r1)
/* 8045AF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045AF8C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8045AF90  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045AF94  81 86 00 00 */	lwz r12, 0(r6)
/* 8045AF98  A8 DE 00 6A */	lha r6, 0x6a(r30)
/* 8045AF9C  7D 89 03 A6 */	mtctr r12
/* 8045AFA0  4E 80 04 21 */	bctrl 
lbl_8045AFA4:
/* 8045AFA4  3C 80 80 68 */	lis r4, amenbo_center_pos@ha /* 0x80686CC0@ha */
/* 8045AFA8  3C 60 80 64 */	lis r3, lit_3228@ha /* 0x80644804@ha */
/* 8045AFAC  C0 44 6C C0 */	lfs f2, amenbo_center_pos@l(r4)  /* 0x80686CC0@l */
/* 8045AFB0  C0 03 48 04 */	lfs f0, lit_3228@l(r3)  /* 0x80644804@l */
/* 8045AFB4  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8045AFB8  EC 22 00 28 */	fsubs f1, f2, f0
/* 8045AFBC  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8045AFC0  40 80 00 2C */	bge lbl_8045AFEC
/* 8045AFC4  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 8045AFC8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045AFCC  38 00 00 00 */	li r0, 0
/* 8045AFD0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045AFD4  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045AFD8  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045AFDC  A8 1E 00 6A */	lha r0, 0x6a(r30)
/* 8045AFE0  7C 00 00 D0 */	neg r0, r0
/* 8045AFE4  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045AFE8  48 00 00 34 */	b lbl_8045B01C
lbl_8045AFEC:
/* 8045AFEC  EC 00 10 2A */	fadds f0, f0, f2
/* 8045AFF0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045AFF4  40 81 00 28 */	ble lbl_8045B01C
/* 8045AFF8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8045AFFC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B000  38 00 00 00 */	li r0, 0
/* 8045B004  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B008  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045B00C  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045B010  A8 1E 00 6A */	lha r0, 0x6a(r30)
/* 8045B014  7C 00 00 D0 */	neg r0, r0
/* 8045B018  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8045B01C:
/* 8045B01C  3C 80 80 68 */	lis r4, amenbo_center_pos@ha /* 0x80686CC0@ha */
/* 8045B020  3C 60 80 64 */	lis r3, lit_3229@ha /* 0x80644808@ha */
/* 8045B024  38 84 6C C0 */	addi r4, r4, amenbo_center_pos@l /* 0x80686CC0@l */
/* 8045B028  C0 03 48 08 */	lfs f0, lit_3229@l(r3)  /* 0x80644808@l */
/* 8045B02C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8045B030  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8045B034  EC 22 00 28 */	fsubs f1, f2, f0
/* 8045B038  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8045B03C  40 80 00 38 */	bge lbl_8045B074
/* 8045B040  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 8045B044  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B048  38 00 00 00 */	li r0, 0
/* 8045B04C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B050  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045B054  38 00 80 00 */	li r0, -32768
/* 8045B058  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045B05C  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045B060  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 8045B064  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045B068  7C 03 00 50 */	subf r0, r3, r0
/* 8045B06C  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045B070  48 00 00 40 */	b lbl_8045B0B0
lbl_8045B074:
/* 8045B074  EC 00 10 2A */	fadds f0, f0, f2
/* 8045B078  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B07C  40 81 00 34 */	ble lbl_8045B0B0
/* 8045B080  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8045B084  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B088  38 00 00 00 */	li r0, 0
/* 8045B08C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B090  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045B094  38 00 80 00 */	li r0, -32768
/* 8045B098  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045B09C  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045B0A0  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 8045B0A4  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045B0A8  7C 03 00 50 */	subf r0, r3, r0
/* 8045B0AC  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8045B0B0:
/* 8045B0B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045B0B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8045B0B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8045B0BC  7C 08 03 A6 */	mtlr r0
/* 8045B0C0  38 21 00 40 */	addi r1, r1, 0x40
/* 8045B0C4  4E 80 00 20 */	blr 
