lbl_805EACB0:
/* 805EACB0  3C 80 80 65 */	lis r4, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EACB4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805EACB8  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805EACBC  C0 04 B6 BC */	lfs f0, data_8064B6BC@l(r4)  /* 0x8064B6BC@l */
/* 805EACC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 805EACC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EACC8  40 80 00 08 */	bge lbl_805EACD0
/* 805EACCC  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_805EACD0:
/* 805EACD0  3C 80 80 65 */	lis r4, lit_489@ha /* 0x8064B6E4@ha */
/* 805EACD4  C0 04 B6 E4 */	lfs f0, lit_489@l(r4)  /* 0x8064B6E4@l */
/* 805EACD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EACDC  40 81 00 88 */	ble lbl_805EAD64
/* 805EACE0  3C 80 80 65 */	lis r4, lit_490@ha /* 0x8064B6E8@ha */
/* 805EACE4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805EACE8  C0 04 B6 E8 */	lfs f0, lit_490@l(r4)  /* 0x8064B6E8@l */
/* 805EACEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EACF0  40 81 00 34 */	ble lbl_805EAD24
/* 805EACF4  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064B6C8@ha */
/* 805EACF8  3C 80 80 65 */	lis r4, lit_491@ha /* 0x8064B6EC@ha */
/* 805EACFC  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805EAD00  C0 25 B6 C8 */	lfs f1, lit_464@l(r5)  /* 0x8064B6C8@l */
/* 805EAD04  C0 04 B6 EC */	lfs f0, lit_491@l(r4)  /* 0x8064B6EC@l */
/* 805EAD08  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EAD0C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805EAD10  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 805EAD14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EAD18  4C 81 00 20 */	blelr 
/* 805EAD1C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805EAD20  4E 80 00 20 */	blr 
lbl_805EAD24:
/* 805EAD24  3C 80 80 65 */	lis r4, lit_492@ha /* 0x8064B6F0@ha */
/* 805EAD28  C0 04 B6 F0 */	lfs f0, lit_492@l(r4)  /* 0x8064B6F0@l */
/* 805EAD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EAD30  4C 80 00 20 */	bgelr 
/* 805EAD34  3C A0 80 65 */	lis r5, lit_467@ha /* 0x8064B6D4@ha */
/* 805EAD38  3C 80 80 65 */	lis r4, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EAD3C  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805EAD40  C0 25 B6 D4 */	lfs f1, lit_467@l(r5)  /* 0x8064B6D4@l */
/* 805EAD44  C0 04 B6 BC */	lfs f0, data_8064B6BC@l(r4)  /* 0x8064B6BC@l */
/* 805EAD48  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EAD4C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805EAD50  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 805EAD54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EAD58  4C 80 00 20 */	bgelr 
/* 805EAD5C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805EAD60  4E 80 00 20 */	blr 
lbl_805EAD64:
/* 805EAD64  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805EAD68  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805EAD6C  4E 80 00 20 */	blr 
