lbl_8038AC60:
/* 8038AC60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038AC64  3D 20 80 64 */	lis r9, lit_641@ha /* 0x806419C4@ha */
/* 8038AC68  3D 00 80 64 */	lis r8, lit_642@ha /* 0x806419C8@ha */
/* 8038AC6C  C0 A6 00 00 */	lfs f5, 0(r6)
/* 8038AC70  C1 05 00 00 */	lfs f8, 0(r5)
/* 8038AC74  C0 67 00 00 */	lfs f3, 0(r7)
/* 8038AC78  ED 25 01 72 */	fmuls f9, f5, f5
/* 8038AC7C  C0 E7 00 04 */	lfs f7, 4(r7)
/* 8038AC80  EC 45 02 32 */	fmuls f2, f5, f8
/* 8038AC84  EC 05 00 F2 */	fmuls f0, f5, f3
/* 8038AC88  C0 86 00 04 */	lfs f4, 4(r6)
/* 8038AC8C  ED 48 18 28 */	fsubs f10, f8, f3
/* 8038AC90  C0 C5 00 04 */	lfs f6, 4(r5)
/* 8038AC94  ED 04 01 32 */	fmuls f8, f4, f4
/* 8038AC98  EC 02 00 28 */	fsubs f0, f2, f0
/* 8038AC9C  EC 64 01 B2 */	fmuls f3, f4, f6
/* 8038ACA0  C0 A8 19 C8 */	lfs f5, lit_642@l(r8)  /* 0x806419C8@l */
/* 8038ACA4  EC 46 38 28 */	fsubs f2, f6, f7
/* 8038ACA8  3C E0 80 64 */	lis r7, data_806419A4@ha /* 0x806419A4@ha */
/* 8038ACAC  EC 84 01 F2 */	fmuls f4, f4, f7
/* 8038ACB0  EC C3 00 2A */	fadds f6, f3, f0
/* 8038ACB4  EC 09 40 2A */	fadds f0, f9, f8
/* 8038ACB8  C0 E9 19 C4 */	lfs f7, lit_641@l(r9)  /* 0x806419C4@l */
/* 8038ACBC  EC 6A 02 B2 */	fmuls f3, f10, f10
/* 8038ACC0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8038ACC4  EC C6 20 28 */	fsubs f6, f6, f4
/* 8038ACC8  EC A5 00 32 */	fmuls f5, f5, f0
/* 8038ACCC  EC 83 10 2A */	fadds f4, f3, f2
/* 8038ACD0  C0 67 19 A4 */	lfs f3, data_806419A4@l(r7)  /* 0x806419A4@l */
/* 8038ACD4  EC 41 00 72 */	fmuls f2, f1, f1
/* 8038ACD8  EC 27 01 B2 */	fmuls f1, f7, f6
/* 8038ACDC  EC 44 10 28 */	fsubs f2, f4, f2
/* 8038ACE0  EC 81 00 72 */	fmuls f4, f1, f1
/* 8038ACE4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8038ACE8  EC 44 10 28 */	fsubs f2, f4, f2
/* 8038ACEC  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038ACF0  4C 41 13 82 */	cror 2, 1, 2
/* 8038ACF4  40 82 01 FC */	bne lbl_8038AEF0
/* 8038ACF8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038ACFC  40 81 00 6C */	ble lbl_8038AD68
/* 8038AD00  FC 80 10 34 */	frsqrte f4, f2
/* 8038AD04  3C E0 80 64 */	lis r7, lit_587@ha /* 0x806419B4@ha */
/* 8038AD08  39 07 19 B4 */	addi r8, r7, lit_587@l /* 0x806419B4@l */
/* 8038AD0C  3C E0 80 64 */	lis r7, lit_588@ha /* 0x806419BC@ha */
/* 8038AD10  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8038AD14  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AD18  C8 A7 19 BC */	lfd f5, lit_588@l(r7)  /* 0x806419BC@l */
/* 8038AD1C  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AD20  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AD24  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AD28  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038AD2C  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AD30  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AD34  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AD38  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AD3C  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038AD40  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AD44  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AD48  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AD4C  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AD50  FC 64 00 F2 */	fmul f3, f4, f3
/* 8038AD54  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AD58  FC 60 18 18 */	frsp f3, f3
/* 8038AD5C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8038AD60  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8038AD64  48 00 00 08 */	b lbl_8038AD6C
lbl_8038AD68:
/* 8038AD68  FC 80 10 90 */	fmr f4, f2
lbl_8038AD6C:
/* 8038AD6C  3C E0 80 64 */	lis r7, data_806419A4@ha /* 0x806419A4@ha */
/* 8038AD70  C0 67 19 A4 */	lfs f3, data_806419A4@l(r7)  /* 0x806419A4@l */
/* 8038AD74  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8038AD78  4C 41 13 82 */	cror 2, 1, 2
/* 8038AD7C  40 82 00 7C */	bne lbl_8038ADF8
/* 8038AD80  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038AD84  40 81 00 6C */	ble lbl_8038ADF0
/* 8038AD88  FC 80 10 34 */	frsqrte f4, f2
/* 8038AD8C  3C E0 80 64 */	lis r7, lit_587@ha /* 0x806419B4@ha */
/* 8038AD90  39 07 19 B4 */	addi r8, r7, lit_587@l /* 0x806419B4@l */
/* 8038AD94  3C E0 80 64 */	lis r7, lit_588@ha /* 0x806419BC@ha */
/* 8038AD98  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8038AD9C  FC 64 01 32 */	fmul f3, f4, f4
/* 8038ADA0  C8 A7 19 BC */	lfd f5, lit_588@l(r7)  /* 0x806419BC@l */
/* 8038ADA4  FC 86 01 32 */	fmul f4, f6, f4
/* 8038ADA8  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038ADAC  FC 65 18 28 */	fsub f3, f5, f3
/* 8038ADB0  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038ADB4  FC 64 01 32 */	fmul f3, f4, f4
/* 8038ADB8  FC 86 01 32 */	fmul f4, f6, f4
/* 8038ADBC  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038ADC0  FC 65 18 28 */	fsub f3, f5, f3
/* 8038ADC4  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038ADC8  FC 64 01 32 */	fmul f3, f4, f4
/* 8038ADCC  FC 86 01 32 */	fmul f4, f6, f4
/* 8038ADD0  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038ADD4  FC 65 18 28 */	fsub f3, f5, f3
/* 8038ADD8  FC 64 00 F2 */	fmul f3, f4, f3
/* 8038ADDC  FC 42 00 F2 */	fmul f2, f2, f3
/* 8038ADE0  FC 40 10 18 */	frsp f2, f2
/* 8038ADE4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8038ADE8  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8038ADEC  48 00 00 7C */	b lbl_8038AE68
lbl_8038ADF0:
/* 8038ADF0  FC A0 10 90 */	fmr f5, f2
/* 8038ADF4  48 00 00 74 */	b lbl_8038AE68
lbl_8038ADF8:
/* 8038ADF8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038ADFC  40 81 00 68 */	ble lbl_8038AE64
/* 8038AE00  FC 80 10 34 */	frsqrte f4, f2
/* 8038AE04  3C E0 80 64 */	lis r7, lit_587@ha /* 0x806419B4@ha */
/* 8038AE08  39 07 19 B4 */	addi r8, r7, lit_587@l /* 0x806419B4@l */
/* 8038AE0C  3C E0 80 64 */	lis r7, lit_588@ha /* 0x806419BC@ha */
/* 8038AE10  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8038AE14  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AE18  C8 A7 19 BC */	lfd f5, lit_588@l(r7)  /* 0x806419BC@l */
/* 8038AE1C  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AE20  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AE24  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AE28  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038AE2C  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AE30  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AE34  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AE38  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AE3C  FC 84 00 F2 */	fmul f4, f4, f3
/* 8038AE40  FC 64 01 32 */	fmul f3, f4, f4
/* 8038AE44  FC 86 01 32 */	fmul f4, f6, f4
/* 8038AE48  FC 62 00 F2 */	fmul f3, f2, f3
/* 8038AE4C  FC 65 18 28 */	fsub f3, f5, f3
/* 8038AE50  FC 64 00 F2 */	fmul f3, f4, f3
/* 8038AE54  FC 42 00 F2 */	fmul f2, f2, f3
/* 8038AE58  FC 40 10 18 */	frsp f2, f2
/* 8038AE5C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8038AE60  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8038AE64:
/* 8038AE64  FC A0 10 50 */	fneg f5, f2
lbl_8038AE68:
/* 8038AE68  3C E0 80 64 */	lis r7, data_806419A4@ha /* 0x806419A4@ha */
/* 8038AE6C  C0 47 19 A4 */	lfs f2, data_806419A4@l(r7)  /* 0x806419A4@l */
/* 8038AE70  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8038AE74  41 82 00 7C */	beq lbl_8038AEF0
/* 8038AE78  FC C0 08 50 */	fneg f6, f1
/* 8038AE7C  3C E0 80 64 */	lis r7, lit_641@ha /* 0x806419C4@ha */
/* 8038AE80  C0 67 19 C4 */	lfs f3, lit_641@l(r7)  /* 0x806419C4@l */
/* 8038AE84  C0 26 00 00 */	lfs f1, 0(r6)
/* 8038AE88  EC E3 00 32 */	fmuls f7, f3, f0
/* 8038AE8C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8038AE90  EC 86 28 2A */	fadds f4, f6, f5
/* 8038AE94  EC 66 28 28 */	fsubs f3, f6, f5
/* 8038AE98  EC 84 38 24 */	fdivs f4, f4, f7
/* 8038AE9C  EC 04 00 72 */	fmuls f0, f4, f1
/* 8038AEA0  EC 63 38 24 */	fdivs f3, f3, f7
/* 8038AEA4  EC 02 00 2A */	fadds f0, f2, f0
/* 8038AEA8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038AEAC  C0 06 00 04 */	lfs f0, 4(r6)
/* 8038AEB0  C0 25 00 04 */	lfs f1, 4(r5)
/* 8038AEB4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038AEB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8038AEBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038AEC0  38 60 00 01 */	li r3, 1
/* 8038AEC4  C0 06 00 00 */	lfs f0, 0(r6)
/* 8038AEC8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038AECC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038AED0  EC 01 00 2A */	fadds f0, f1, f0
/* 8038AED4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8038AED8  C0 06 00 04 */	lfs f0, 4(r6)
/* 8038AEDC  C0 25 00 04 */	lfs f1, 4(r5)
/* 8038AEE0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038AEE4  EC 01 00 2A */	fadds f0, f1, f0
/* 8038AEE8  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038AEEC  48 00 00 08 */	b lbl_8038AEF4
lbl_8038AEF0:
/* 8038AEF0  38 60 00 00 */	li r3, 0
lbl_8038AEF4:
/* 8038AEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038AEF8  4E 80 00 20 */	blr 
