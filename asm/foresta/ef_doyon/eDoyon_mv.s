lbl_8060ABC8:
/* 8060ABC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060ABCC  7C 08 02 A6 */	mflr r0
/* 8060ABD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060ABD4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8060ABD8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8060ABDC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8060ABE0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8060ABE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060ABE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060ABEC  3C C0 80 65 */	lis r6, lit_419@ha /* 0x8064BEDC@ha */
/* 8060ABF0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060ABF4  3C A0 80 65 */	lis r5, lit_420@ha /* 0x8064BEE0@ha */
/* 8060ABF8  3C 84 00 02 */	addis r4, r4, 2
/* 8060ABFC  7C 7F 1B 78 */	mr r31, r3
/* 8060AC00  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8060AC04  38 E6 BE DC */	addi r7, r6, lit_419@l /* 0x8064BEDC@l */
/* 8060AC08  38 C5 BE E0 */	addi r6, r5, lit_420@l /* 0x8064BEE0@l */
/* 8060AC0C  A8 63 00 00 */	lha r3, 0(r3)
/* 8060AC10  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8060AC14  38 80 00 00 */	li r4, 0
/* 8060AC18  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060AC1C  38 A0 00 3C */	li r5, 0x3c
/* 8060AC20  C0 46 00 00 */	lfs f2, 0(r6)
/* 8060AC24  7D 89 03 A6 */	mtctr r12
/* 8060AC28  4E 80 04 21 */	bctrl 
/* 8060AC2C  FF E0 08 90 */	fmr f31, f1
/* 8060AC30  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060AC34  7C 65 1B 78 */	mr r5, r3
/* 8060AC38  38 9F 00 28 */	addi r4, r31, 0x28
/* 8060AC3C  4B DB 03 09 */	bl xyz_t_add
/* 8060AC40  38 7F 00 10 */	addi r3, r31, 0x10
/* 8060AC44  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8060AC48  7C 65 1B 78 */	mr r5, r3
/* 8060AC4C  4B DB 02 F9 */	bl xyz_t_add
/* 8060AC50  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064BEE4@ha */
/* 8060AC54  3C 80 80 65 */	lis r4, lit_422@ha /* 0x8064BEEC@ha */
/* 8060AC58  38 A3 BE E4 */	addi r5, r3, lit_421@l /* 0x8064BEE4@l */
/* 8060AC5C  C8 C4 BE EC */	lfd f6, lit_422@l(r4)  /* 0x8064BEEC@l */
/* 8060AC60  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8060AC64  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064BEF4@ha */
/* 8060AC68  A8 BF 00 4C */	lha r5, 0x4c(r31)
/* 8060AC6C  FC 60 38 34 */	frsqrte f3, f7
/* 8060AC70  C8 A3 BE F4 */	lfd f5, lit_423@l(r3)  /* 0x8064BEF4@l */
/* 8060AC74  FD 00 38 34 */	frsqrte f8, f7
/* 8060AC78  38 05 04 00 */	addi r0, r5, 0x400
/* 8060AC7C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060AC80  FC 23 00 F2 */	fmul f1, f3, f3
/* 8060AC84  A8 9F 00 4E */	lha r4, 0x4e(r31)
/* 8060AC88  FC 08 02 32 */	fmul f0, f8, f8
/* 8060AC8C  38 04 04 00 */	addi r0, r4, 0x400
/* 8060AC90  FC 27 00 72 */	fmul f1, f7, f1
/* 8060AC94  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060AC98  FC 86 00 F2 */	fmul f4, f6, f3
/* 8060AC9C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8060ACA0  FC 65 08 28 */	fsub f3, f5, f1
/* 8060ACA4  FC 07 00 32 */	fmul f0, f7, f0
/* 8060ACA8  FC 84 00 F2 */	fmul f4, f4, f3
/* 8060ACAC  FC 26 02 32 */	fmul f1, f6, f8
/* 8060ACB0  FC 05 00 28 */	fsub f0, f5, f0
/* 8060ACB4  FC 64 01 32 */	fmul f3, f4, f4
/* 8060ACB8  FD 01 00 32 */	fmul f8, f1, f0
/* 8060ACBC  FC 27 00 F2 */	fmul f1, f7, f3
/* 8060ACC0  FC 08 02 32 */	fmul f0, f8, f8
/* 8060ACC4  FC 66 01 32 */	fmul f3, f6, f4
/* 8060ACC8  FC 25 08 28 */	fsub f1, f5, f1
/* 8060ACCC  FC 07 00 32 */	fmul f0, f7, f0
/* 8060ACD0  FC 83 00 72 */	fmul f4, f3, f1
/* 8060ACD4  FC 26 02 32 */	fmul f1, f6, f8
/* 8060ACD8  FC 64 01 32 */	fmul f3, f4, f4
/* 8060ACDC  FC 05 00 28 */	fsub f0, f5, f0
/* 8060ACE0  FC 86 01 32 */	fmul f4, f6, f4
/* 8060ACE4  FD 01 00 32 */	fmul f8, f1, f0
/* 8060ACE8  FC 27 00 F2 */	fmul f1, f7, f3
/* 8060ACEC  FC 08 02 32 */	fmul f0, f8, f8
/* 8060ACF0  FC 65 08 28 */	fsub f3, f5, f1
/* 8060ACF4  FC 26 02 32 */	fmul f1, f6, f8
/* 8060ACF8  FC 64 00 F2 */	fmul f3, f4, f3
/* 8060ACFC  FC 07 00 32 */	fmul f0, f7, f0
/* 8060AD00  FC 67 00 F2 */	fmul f3, f7, f3
/* 8060AD04  FC 05 00 28 */	fsub f0, f5, f0
/* 8060AD08  FC 60 18 18 */	frsp f3, f3
/* 8060AD0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8060AD10  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8060AD14  FC 07 00 32 */	fmul f0, f7, f0
/* 8060AD18  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8060AD1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060AD20  FC 00 00 18 */	frsp f0, f0
/* 8060AD24  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8060AD28  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060AD2C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8060AD30  C0 21 00 08 */	lfs f1, 8(r1)
/* 8060AD34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060AD38  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8060AD3C  A8 1F 00 00 */	lha r0, 0(r31)
/* 8060AD40  2C 00 00 32 */	cmpwi r0, 0x32
/* 8060AD44  40 81 00 8C */	ble lbl_8060ADD0
/* 8060AD48  20 60 00 3C */	subfic r3, r0, 0x3c
/* 8060AD4C  3C 00 43 30 */	lis r0, 0x4330
/* 8060AD50  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8060AD54  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064BED4@ha */
/* 8060AD58  90 61 00 14 */	stw r3, 0x14(r1)
/* 8060AD5C  38 64 BE D4 */	addi r3, r4, lit_389@l /* 0x8064BED4@l */
/* 8060AD60  C8 23 00 00 */	lfd f1, 0(r3)
/* 8060AD64  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064BEFC@ha */
/* 8060AD68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060AD6C  C0 44 BE FC */	lfs f2, lit_424@l(r4)  /* 0x8064BEFC@l */
/* 8060AD70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8060AD74  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 8060AD78  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060AD7C  EF C2 00 32 */	fmuls f30, f2, f0
/* 8060AD80  4B DA FD 1D */	bl cos_s
/* 8060AD84  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064BF04@ha */
/* 8060AD88  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064BF00@ha */
/* 8060AD8C  C0 44 BF 04 */	lfs f2, lit_426@l(r4)  /* 0x8064BF04@l */
/* 8060AD90  C0 03 BF 00 */	lfs f0, lit_425@l(r3)  /* 0x8064BF00@l */
/* 8060AD94  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060AD98  EC 00 08 2A */	fadds f0, f0, f1
/* 8060AD9C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8060ADA0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8060ADA4  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 8060ADA8  4B DA FD 49 */	bl sin_s
/* 8060ADAC  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064BF04@ha */
/* 8060ADB0  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064BF00@ha */
/* 8060ADB4  C0 44 BF 04 */	lfs f2, lit_426@l(r4)  /* 0x8064BF04@l */
/* 8060ADB8  C0 03 BF 00 */	lfs f0, lit_425@l(r3)  /* 0x8064BF00@l */
/* 8060ADBC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060ADC0  EC 00 08 2A */	fadds f0, f0, f1
/* 8060ADC4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8060ADC8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8060ADCC  48 00 00 6C */	b lbl_8060AE38
lbl_8060ADD0:
/* 8060ADD0  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 8060ADD4  4B DA FC C9 */	bl cos_s
/* 8060ADD8  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064BF04@ha */
/* 8060ADDC  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064BF00@ha */
/* 8060ADE0  38 A3 BF 04 */	addi r5, r3, lit_426@l /* 0x8064BF04@l */
/* 8060ADE4  C0 44 BF 00 */	lfs f2, lit_425@l(r4)  /* 0x8064BF00@l */
/* 8060ADE8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060ADEC  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BF08@ha */
/* 8060ADF0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060ADF4  C0 03 BF 08 */	lfs f0, lit_427@l(r3)  /* 0x8064BF08@l */
/* 8060ADF8  EC 22 08 2A */	fadds f1, f2, f1
/* 8060ADFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060AE00  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8060AE04  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 8060AE08  4B DA FC E9 */	bl sin_s
/* 8060AE0C  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064BF04@ha */
/* 8060AE10  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064BF00@ha */
/* 8060AE14  38 A3 BF 04 */	addi r5, r3, lit_426@l /* 0x8064BF04@l */
/* 8060AE18  C0 44 BF 00 */	lfs f2, lit_425@l(r4)  /* 0x8064BF00@l */
/* 8060AE1C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060AE20  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BF08@ha */
/* 8060AE24  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060AE28  C0 03 BF 08 */	lfs f0, lit_427@l(r3)  /* 0x8064BF08@l */
/* 8060AE2C  EC 22 08 2A */	fadds f1, f2, f1
/* 8060AE30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060AE34  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_8060AE38:
/* 8060AE38  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060AE3C  4B DA FC 61 */	bl cos_s
/* 8060AE40  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8060AE44  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060AE48  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060AE4C  4B DA FC A5 */	bl sin_s
/* 8060AE50  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8060AE54  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060AE58  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8060AE5C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8060AE60  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8060AE64  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8060AE68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060AE6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060AE70  7C 08 03 A6 */	mtlr r0
/* 8060AE74  38 21 00 40 */	addi r1, r1, 0x40
/* 8060AE78  4E 80 00 20 */	blr 
