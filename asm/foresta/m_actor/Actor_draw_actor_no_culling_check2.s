lbl_803749AC:
/* 803749AC  C0 43 01 40 */	lfs f2, 0x140(r3)
/* 803749B0  38 00 00 00 */	li r0, 0
/* 803749B4  C0 64 00 08 */	lfs f3, 8(r4)
/* 803749B8  FC 00 10 50 */	fneg f0, f2
/* 803749BC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 803749C0  40 80 00 8C */	bge lbl_80374A4C
/* 803749C4  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 803749C8  EC 00 10 2A */	fadds f0, f0, f2
/* 803749CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803749D0  40 80 00 7C */	bge lbl_80374A4C
/* 803749D4  3C A0 80 64 */	lis r5, data_806411FC@ha /* 0x806411FC@ha */
/* 803749D8  C0 65 11 FC */	lfs f3, data_806411FC@l(r5)  /* 0x806411FC@l */
/* 803749DC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803749E0  40 80 00 08 */	bge lbl_803749E8
/* 803749E4  48 00 00 08 */	b lbl_803749EC
lbl_803749E8:
/* 803749E8  EC 63 08 24 */	fdivs f3, f3, f1
lbl_803749EC:
/* 803749EC  C0 24 00 00 */	lfs f1, 0(r4)
/* 803749F0  3C A0 80 64 */	lis r5, data_806411FC@ha /* 0x806411FC@ha */
/* 803749F4  C0 03 01 34 */	lfs f0, 0x134(r3)
/* 803749F8  FC 20 0A 10 */	fabs f1, f1
/* 803749FC  C0 45 11 FC */	lfs f2, data_806411FC@l(r5)  /* 0x806411FC@l */
/* 80374A00  FC 20 08 18 */	frsp f1, f1
/* 80374A04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80374A08  EC 03 00 32 */	fmuls f0, f3, f0
/* 80374A0C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80374A10  40 80 00 3C */	bge lbl_80374A4C
/* 80374A14  C0 84 00 04 */	lfs f4, 4(r4)
/* 80374A18  3C 80 80 64 */	lis r4, lit_624@ha /* 0x80641224@ha */
/* 80374A1C  C0 23 01 38 */	lfs f1, 0x138(r3)
/* 80374A20  C0 04 12 24 */	lfs f0, lit_624@l(r4)  /* 0x80641224@l */
/* 80374A24  EC 24 08 2A */	fadds f1, f4, f1
/* 80374A28  EC 23 00 72 */	fmuls f1, f3, f1
/* 80374A2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80374A30  40 81 00 1C */	ble lbl_80374A4C
/* 80374A34  C0 03 01 40 */	lfs f0, 0x140(r3)
/* 80374A38  EC 04 00 28 */	fsubs f0, f4, f0
/* 80374A3C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80374A40  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80374A44  40 80 00 08 */	bge lbl_80374A4C
/* 80374A48  38 00 00 01 */	li r0, 1
lbl_80374A4C:
/* 80374A4C  7C 03 03 78 */	mr r3, r0
/* 80374A50  4E 80 00 20 */	blr 
