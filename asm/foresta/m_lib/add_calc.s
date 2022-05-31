lbl_803BB1B0:
/* 803BB1B0  C0 A3 00 00 */	lfs f5, 0(r3)
/* 803BB1B4  FC 05 08 00 */	fcmpu cr0, f5, f1
/* 803BB1B8  41 82 00 D0 */	beq lbl_803BB288
/* 803BB1BC  EC 01 28 28 */	fsubs f0, f1, f5
/* 803BB1C0  FC C0 20 50 */	fneg f6, f4
/* 803BB1C4  EC E2 00 32 */	fmuls f7, f2, f0
/* 803BB1C8  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 803BB1CC  4C 40 13 82 */	cror 2, 0, 2
/* 803BB1D0  41 82 00 10 */	beq lbl_803BB1E0
/* 803BB1D4  FC 04 38 40 */	fcmpo cr0, f4, f7
/* 803BB1D8  4C 40 13 82 */	cror 2, 0, 2
/* 803BB1DC  40 82 00 68 */	bne lbl_803BB244
lbl_803BB1E0:
/* 803BB1E0  FC 07 18 40 */	fcmpo cr0, f7, f3
/* 803BB1E4  40 81 00 0C */	ble lbl_803BB1F0
/* 803BB1E8  FC E0 18 90 */	fmr f7, f3
/* 803BB1EC  48 00 00 14 */	b lbl_803BB200
lbl_803BB1F0:
/* 803BB1F0  FC 00 18 50 */	fneg f0, f3
/* 803BB1F4  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 803BB1F8  40 80 00 08 */	bge lbl_803BB200
/* 803BB1FC  FC E0 00 90 */	fmr f7, f0
lbl_803BB200:
/* 803BB200  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB204  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80642564@ha */
/* 803BB208  EC 40 38 2A */	fadds f2, f0, f7
/* 803BB20C  C0 04 25 64 */	lfs f0, lit_450@l(r4)  /* 0x80642564@l */
/* 803BB210  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 803BB214  D0 43 00 00 */	stfs f2, 0(r3)
/* 803BB218  40 81 00 18 */	ble lbl_803BB230
/* 803BB21C  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB220  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BB224  40 81 00 64 */	ble lbl_803BB288
/* 803BB228  D0 23 00 00 */	stfs f1, 0(r3)
/* 803BB22C  48 00 00 5C */	b lbl_803BB288
lbl_803BB230:
/* 803BB230  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB234  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BB238  40 80 00 50 */	bge lbl_803BB288
/* 803BB23C  D0 23 00 00 */	stfs f1, 0(r3)
/* 803BB240  48 00 00 48 */	b lbl_803BB288
lbl_803BB244:
/* 803BB244  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80642564@ha */
/* 803BB248  C0 04 25 64 */	lfs f0, lit_450@l(r4)  /* 0x80642564@l */
/* 803BB24C  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 803BB250  40 81 00 20 */	ble lbl_803BB270
/* 803BB254  EC 05 20 2A */	fadds f0, f5, f4
/* 803BB258  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BB25C  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB260  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BB264  40 81 00 24 */	ble lbl_803BB288
/* 803BB268  D0 23 00 00 */	stfs f1, 0(r3)
/* 803BB26C  48 00 00 1C */	b lbl_803BB288
lbl_803BB270:
/* 803BB270  EC 05 30 2A */	fadds f0, f5, f6
/* 803BB274  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BB278  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB27C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BB280  40 80 00 08 */	bge lbl_803BB288
/* 803BB284  D0 23 00 00 */	stfs f1, 0(r3)
lbl_803BB288:
/* 803BB288  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB28C  EC 21 00 28 */	fsubs f1, f1, f0
/* 803BB290  4E 80 00 20 */	blr 
