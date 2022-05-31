lbl_803BAED8:
/* 803BAED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BAEDC  3C 00 43 30 */	lis r0, 0x4330
/* 803BAEE0  3C C0 80 64 */	lis r6, lit_401@ha /* 0x8064255C@ha */
/* 803BAEE4  A8 A4 00 00 */	lha r5, 0(r4)
/* 803BAEE8  90 01 00 08 */	stw r0, 8(r1)
/* 803BAEEC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803BAEF0  C8 26 25 5C */	lfd f1, lit_401@l(r6)  /* 0x8064255C@l */
/* 803BAEF4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803BAEF8  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BAEFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 803BAF00  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BAF04  90 01 00 18 */	stw r0, 0x18(r1)
/* 803BAF08  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BAF0C  A8 04 00 02 */	lha r0, 2(r4)
/* 803BAF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BAF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BAF18  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BAF1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BAF20  D0 03 00 04 */	stfs f0, 4(r3)
/* 803BAF24  A8 04 00 04 */	lha r0, 4(r4)
/* 803BAF28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BAF2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803BAF30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803BAF34  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BAF38  D0 03 00 08 */	stfs f0, 8(r3)
/* 803BAF3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BAF40  4E 80 00 20 */	blr 
