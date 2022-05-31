lbl_804CE0D8:
/* 804CE0D8  7C 86 07 34 */	extsh r6, r4
/* 804CE0DC  7C A0 07 34 */	extsh r0, r5
/* 804CE0E0  7C 06 00 00 */	cmpw r6, r0
/* 804CE0E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CE0E8  40 82 00 08 */	bne lbl_804CE0F0
/* 804CE0EC  48 00 00 70 */	b lbl_804CE15C
lbl_804CE0F0:
/* 804CE0F0  7C 65 07 34 */	extsh r5, r3
/* 804CE0F4  7C 05 30 00 */	cmpw r5, r6
/* 804CE0F8  41 81 00 08 */	bgt lbl_804CE100
/* 804CE0FC  48 00 00 60 */	b lbl_804CE15C
lbl_804CE100:
/* 804CE100  7C 05 00 00 */	cmpw r5, r0
/* 804CE104  41 80 00 0C */	blt lbl_804CE110
/* 804CE108  FC 20 10 90 */	fmr f1, f2
/* 804CE10C  48 00 00 50 */	b lbl_804CE15C
lbl_804CE110:
/* 804CE110  7C 06 00 50 */	subf r0, r6, r0
/* 804CE114  3C 60 43 30 */	lis r3, 0x4330
/* 804CE118  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CE11C  3C 80 80 64 */	lis r4, lit_479@ha /* 0x8064629C@ha */
/* 804CE120  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE124  7C 06 28 50 */	subf r0, r6, r5
/* 804CE128  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CE12C  C8 64 62 9C */	lfd f3, lit_479@l(r4)  /* 0x8064629C@l */
/* 804CE130  90 61 00 10 */	stw r3, 0x10(r1)
/* 804CE134  EC 42 08 28 */	fsubs f2, f2, f1
/* 804CE138  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CE13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CE140  EC 00 18 28 */	fsubs f0, f0, f3
/* 804CE144  90 61 00 08 */	stw r3, 8(r1)
/* 804CE148  EC 02 00 24 */	fdivs f0, f2, f0
/* 804CE14C  C8 41 00 08 */	lfd f2, 8(r1)
/* 804CE150  EC 42 18 28 */	fsubs f2, f2, f3
/* 804CE154  EC 02 00 32 */	fmuls f0, f2, f0
/* 804CE158  EC 21 00 2A */	fadds f1, f1, f0
lbl_804CE15C:
/* 804CE15C  38 21 00 20 */	addi r1, r1, 0x20
/* 804CE160  4E 80 00 20 */	blr 
