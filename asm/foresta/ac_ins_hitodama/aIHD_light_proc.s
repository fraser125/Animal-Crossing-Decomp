lbl_8059AC78:
/* 8059AC78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059AC7C  7C 08 02 A6 */	mflr r0
/* 8059AC80  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059AC84  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059AC88  7C 9F 23 78 */	mr r31, r4
/* 8059AC8C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8059AC90  7C 7E 1B 78 */	mr r30, r3
/* 8059AC94  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 8059AC98  2C 00 00 01 */	cmpwi r0, 1
/* 8059AC9C  41 82 00 14 */	beq lbl_8059ACB0
/* 8059ACA0  88 1E 02 1E */	lbz r0, 0x21e(r30)
/* 8059ACA4  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8059ACA8  28 00 00 01 */	cmplwi r0, 1
/* 8059ACAC  40 82 02 74 */	bne lbl_8059AF20
lbl_8059ACB0:
/* 8059ACB0  7F E3 FB 78 */	mr r3, r31
/* 8059ACB4  4B E3 E9 BD */	bl mPlib_get_player_actor_main_index
/* 8059ACB8  2C 03 00 30 */	cmpwi r3, 0x30
/* 8059ACBC  40 82 00 3C */	bne lbl_8059ACF8
/* 8059ACC0  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 8059ACC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8059ACC8  40 82 00 38 */	bne lbl_8059AD00
/* 8059ACCC  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 8059ACD0  FC 00 08 1E */	fctiwz f0, f1
/* 8059ACD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059ACD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059ACDC  2C 00 00 00 */	cmpwi r0, 0
/* 8059ACE0  40 81 00 20 */	ble lbl_8059AD00
/* 8059ACE4  3C 60 80 65 */	lis r3, lit_547@ha /* 0x80649FD4@ha */
/* 8059ACE8  C0 03 9F D4 */	lfs f0, lit_547@l(r3)  /* 0x80649FD4@l */
/* 8059ACEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059ACF0  D0 1E 01 E0 */	stfs f0, 0x1e0(r30)
/* 8059ACF4  48 00 00 0C */	b lbl_8059AD00
lbl_8059ACF8:
/* 8059ACF8  38 00 00 00 */	li r0, 0
/* 8059ACFC  B0 1E 02 86 */	sth r0, 0x286(r30)
lbl_8059AD00:
/* 8059AD00  80 1E 02 80 */	lwz r0, 0x280(r30)
/* 8059AD04  2C 00 00 01 */	cmpwi r0, 1
/* 8059AD08  41 82 00 C8 */	beq lbl_8059ADD0
/* 8059AD0C  40 80 00 10 */	bge lbl_8059AD1C
/* 8059AD10  2C 00 00 00 */	cmpwi r0, 0
/* 8059AD14  40 80 00 14 */	bge lbl_8059AD28
/* 8059AD18  48 00 01 58 */	b lbl_8059AE70
lbl_8059AD1C:
/* 8059AD1C  2C 00 00 03 */	cmpwi r0, 3
/* 8059AD20  40 80 01 50 */	bge lbl_8059AE70
/* 8059AD24  48 00 00 C8 */	b lbl_8059ADEC
lbl_8059AD28:
/* 8059AD28  A8 7E 02 84 */	lha r3, 0x284(r30)
/* 8059AD2C  4B E1 FD C5 */	bl sin_s
/* 8059AD30  FC 00 0A 10 */	fabs f0, f1
/* 8059AD34  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80649FE0@ha */
/* 8059AD38  C0 23 9F E0 */	lfs f1, lit_550@l(r3)  /* 0x80649FE0@l */
/* 8059AD3C  3C A0 80 65 */	lis r5, lit_548@ha /* 0x80649FD8@ha */
/* 8059AD40  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8059AD44  3C 80 80 65 */	lis r4, lit_549@ha /* 0x80649FDC@ha */
/* 8059AD48  FC 00 00 18 */	frsp f0, f0
/* 8059AD4C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8059AD50  FC A0 18 1E */	fctiwz f5, f3
/* 8059AD54  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8059AD58  C0 65 9F D8 */	lfs f3, lit_548@l(r5)  /* 0x80649FD8@l */
/* 8059AD5C  FC 40 10 1E */	fctiwz f2, f2
/* 8059AD60  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059AD64  C0 24 9F DC */	lfs f1, lit_549@l(r4)  /* 0x80649FDC@l */
/* 8059AD68  EC 64 18 28 */	fsubs f3, f4, f3
/* 8059AD6C  D8 A1 00 10 */	stfd f5, 0x10(r1)
/* 8059AD70  38 7E 02 6C */	addi r3, r30, 0x26c
/* 8059AD74  38 E0 00 78 */	li r7, 0x78
/* 8059AD78  EC 01 00 2A */	fadds f0, f1, f0
/* 8059AD7C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8059AD80  FC 20 18 1E */	fctiwz f1, f3
/* 8059AD84  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8059AD88  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8059AD8C  39 00 00 FF */	li r8, 0xff
/* 8059AD90  FC 00 00 1E */	fctiwz f0, f0
/* 8059AD94  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8059AD98  39 20 00 B4 */	li r9, 0xb4
/* 8059AD9C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8059ADA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8059ADA4  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 8059ADA8  4B E2 0B 19 */	bl Light_point_ct
/* 8059ADAC  7F E3 FB 78 */	mr r3, r31
/* 8059ADB0  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 8059ADB4  38 BE 02 6C */	addi r5, r30, 0x26c
/* 8059ADB8  4B E2 13 C5 */	bl Global_light_list_new
/* 8059ADBC  90 7E 02 7C */	stw r3, 0x27c(r30)
/* 8059ADC0  80 7E 02 80 */	lwz r3, 0x280(r30)
/* 8059ADC4  38 03 00 01 */	addi r0, r3, 1
/* 8059ADC8  90 1E 02 80 */	stw r0, 0x280(r30)
/* 8059ADCC  48 00 00 A4 */	b lbl_8059AE70
lbl_8059ADD0:
/* 8059ADD0  38 00 00 00 */	li r0, 0
/* 8059ADD4  90 1E 02 28 */	stw r0, 0x228(r30)
/* 8059ADD8  90 1E 02 2C */	stw r0, 0x22c(r30)
/* 8059ADDC  80 7E 02 80 */	lwz r3, 0x280(r30)
/* 8059ADE0  38 03 00 01 */	addi r0, r3, 1
/* 8059ADE4  90 1E 02 80 */	stw r0, 0x280(r30)
/* 8059ADE8  48 00 00 88 */	b lbl_8059AE70
lbl_8059ADEC:
/* 8059ADEC  A8 7E 02 84 */	lha r3, 0x284(r30)
/* 8059ADF0  4B E1 FD 01 */	bl sin_s
/* 8059ADF4  FC 00 0A 10 */	fabs f0, f1
/* 8059ADF8  3C 60 80 65 */	lis r3, lit_550@ha /* 0x80649FE0@ha */
/* 8059ADFC  C0 23 9F E0 */	lfs f1, lit_550@l(r3)  /* 0x80649FE0@l */
/* 8059AE00  3C A0 80 65 */	lis r5, lit_548@ha /* 0x80649FD8@ha */
/* 8059AE04  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8059AE08  3C 80 80 65 */	lis r4, lit_549@ha /* 0x80649FDC@ha */
/* 8059AE0C  FC 00 00 18 */	frsp f0, f0
/* 8059AE10  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8059AE14  FC A0 18 1E */	fctiwz f5, f3
/* 8059AE18  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8059AE1C  C0 65 9F D8 */	lfs f3, lit_548@l(r5)  /* 0x80649FD8@l */
/* 8059AE20  FC 40 10 1E */	fctiwz f2, f2
/* 8059AE24  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059AE28  C0 24 9F DC */	lfs f1, lit_549@l(r4)  /* 0x80649FDC@l */
/* 8059AE2C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8059AE30  D8 A1 00 28 */	stfd f5, 0x28(r1)
/* 8059AE34  38 7E 02 6C */	addi r3, r30, 0x26c
/* 8059AE38  38 E0 00 78 */	li r7, 0x78
/* 8059AE3C  EC 01 00 2A */	fadds f0, f1, f0
/* 8059AE40  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8059AE44  FC 20 18 1E */	fctiwz f1, f3
/* 8059AE48  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8059AE4C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8059AE50  39 00 00 FF */	li r8, 0xff
/* 8059AE54  FC 00 00 1E */	fctiwz f0, f0
/* 8059AE58  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8059AE5C  39 20 00 B4 */	li r9, 0xb4
/* 8059AE60  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8059AE64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059AE68  81 41 00 14 */	lwz r10, 0x14(r1)
/* 8059AE6C  4B E2 0A 55 */	bl Light_point_ct
lbl_8059AE70:
/* 8059AE70  3C 60 80 65 */	lis r3, lit_551@ha /* 0x80649FE4@ha */
/* 8059AE74  3C 80 80 65 */	lis r4, lit_552@ha /* 0x80649FEC@ha */
/* 8059AE78  38 A3 9F E4 */	addi r5, r3, lit_551@l /* 0x80649FE4@l */
/* 8059AE7C  C8 C4 9F EC */	lfd f6, lit_552@l(r4)  /* 0x80649FEC@l */
/* 8059AE80  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8059AE84  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649FF4@ha */
/* 8059AE88  38 C3 9F F4 */	addi r6, r3, lit_553@l /* 0x80649FF4@l */
/* 8059AE8C  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 8059AE90  FC 00 38 34 */	frsqrte f0, f7
/* 8059AE94  3C 60 80 65 */	lis r3, lit_554@ha /* 0x80649FFC@ha */
/* 8059AE98  38 A3 9F FC */	addi r5, r3, lit_554@l /* 0x80649FFC@l */
/* 8059AE9C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8059AEA0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059AEA4  3C 60 80 65 */	lis r3, lit_547@ha /* 0x80649FD4@ha */
/* 8059AEA8  FC 60 00 32 */	fmul f3, f0, f0
/* 8059AEAC  38 83 9F D4 */	addi r4, r3, lit_547@l /* 0x80649FD4@l */
/* 8059AEB0  38 7E 02 84 */	addi r3, r30, 0x284
/* 8059AEB4  38 A0 09 C4 */	li r5, 0x9c4
/* 8059AEB8  FC A6 00 32 */	fmul f5, f6, f0
/* 8059AEBC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059AEC0  FC 67 00 F2 */	fmul f3, f7, f3
/* 8059AEC4  38 C0 00 00 */	li r6, 0
/* 8059AEC8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059AECC  FC 44 18 28 */	fsub f2, f4, f3
/* 8059AED0  FC 20 08 1E */	fctiwz f1, f1
/* 8059AED4  FC 45 00 B2 */	fmul f2, f5, f2
/* 8059AED8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8059AEDC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8059AEE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059AEE4  FC 46 00 B2 */	fmul f2, f6, f2
/* 8059AEE8  FC 27 00 72 */	fmul f1, f7, f1
/* 8059AEEC  FC 24 08 28 */	fsub f1, f4, f1
/* 8059AEF0  FC 42 00 72 */	fmul f2, f2, f1
/* 8059AEF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059AEF8  FC 46 00 B2 */	fmul f2, f6, f2
/* 8059AEFC  FC 27 00 72 */	fmul f1, f7, f1
/* 8059AF00  FC 24 08 28 */	fsub f1, f4, f1
/* 8059AF04  FC 22 00 72 */	fmul f1, f2, f1
/* 8059AF08  FC 27 00 72 */	fmul f1, f7, f1
/* 8059AF0C  FC 20 08 18 */	frsp f1, f1
/* 8059AF10  D0 21 00 08 */	stfs f1, 8(r1)
/* 8059AF14  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059AF18  EC 20 08 28 */	fsubs f1, f0, f1
/* 8059AF1C  4B E2 03 F5 */	bl add_calc_short_angle2
lbl_8059AF20:
/* 8059AF20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059AF24  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059AF28  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8059AF2C  7C 08 03 A6 */	mtlr r0
/* 8059AF30  38 21 00 40 */	addi r1, r1, 0x40
/* 8059AF34  4E 80 00 20 */	blr 
