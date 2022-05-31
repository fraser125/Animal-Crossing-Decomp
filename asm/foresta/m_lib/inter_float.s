lbl_803BADF8:
/* 803BADF8  2C 04 00 00 */	cmpwi r4, 0
/* 803BADFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BAE00  41 81 00 0C */	bgt lbl_803BAE0C
/* 803BAE04  D0 23 00 00 */	stfs f1, 0(r3)
/* 803BAE08  48 00 00 38 */	b lbl_803BAE40
lbl_803BAE0C:
/* 803BAE0C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803BAE10  3C 00 43 30 */	lis r0, 0x4330
/* 803BAE14  90 81 00 0C */	stw r4, 0xc(r1)
/* 803BAE18  3C A0 80 64 */	lis r5, lit_401@ha /* 0x8064255C@ha */
/* 803BAE1C  C0 63 00 00 */	lfs f3, 0(r3)
/* 803BAE20  90 01 00 08 */	stw r0, 8(r1)
/* 803BAE24  C8 45 25 5C */	lfd f2, lit_401@l(r5)  /* 0x8064255C@l */
/* 803BAE28  EC 21 18 28 */	fsubs f1, f1, f3
/* 803BAE2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BAE30  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BAE34  EC 01 00 24 */	fdivs f0, f1, f0
/* 803BAE38  EC 03 00 2A */	fadds f0, f3, f0
/* 803BAE3C  D0 03 00 00 */	stfs f0, 0(r3)
lbl_803BAE40:
/* 803BAE40  38 21 00 10 */	addi r1, r1, 0x10
/* 803BAE44  4E 80 00 20 */	blr 
