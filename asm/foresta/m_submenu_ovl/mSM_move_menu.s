lbl_805EF1A8:
/* 805EF1A8  A8 05 00 00 */	lha r0, 0(r5)
/* 805EF1AC  2C 00 00 00 */	cmpwi r0, 0
/* 805EF1B0  40 82 00 6C */	bne lbl_805EF21C
/* 805EF1B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 805EF1B8  3C C0 80 65 */	lis r6, lit_512@ha /* 0x8064B7AC@ha */
/* 805EF1BC  EC 40 10 28 */	fsubs f2, f0, f2
/* 805EF1C0  C0 06 B7 AC */	lfs f0, lit_512@l(r6)  /* 0x8064B7AC@l */
/* 805EF1C4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 805EF1C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EF1CC  4C 41 13 82 */	cror 2, 1, 2
/* 805EF1D0  40 82 00 40 */	bne lbl_805EF210
/* 805EF1D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805EF1D8  3C C0 80 65 */	lis r6, lit_507@ha /* 0x8064B798@ha */
/* 805EF1DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 805EF1E0  C0 06 B7 98 */	lfs f0, lit_507@l(r6)  /* 0x8064B798@l */
/* 805EF1E4  D0 24 00 00 */	stfs f1, 0(r4)
/* 805EF1E8  C0 24 00 00 */	lfs f1, 0(r4)
/* 805EF1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF1F0  40 80 00 0C */	bge lbl_805EF1FC
/* 805EF1F4  D0 04 00 00 */	stfs f0, 0(r4)
/* 805EF1F8  48 00 00 18 */	b lbl_805EF210
lbl_805EF1FC:
/* 805EF1FC  3C C0 80 65 */	lis r6, lit_1023@ha /* 0x8064B810@ha */
/* 805EF200  C0 06 B8 10 */	lfs f0, lit_1023@l(r6)  /* 0x8064B810@l */
/* 805EF204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF208  40 81 00 08 */	ble lbl_805EF210
/* 805EF20C  D0 04 00 00 */	stfs f0, 0(r4)
lbl_805EF210:
/* 805EF210  38 00 00 01 */	li r0, 1
/* 805EF214  B0 05 00 00 */	sth r0, 0(r5)
/* 805EF218  48 00 00 0C */	b lbl_805EF224
lbl_805EF21C:
/* 805EF21C  38 00 00 00 */	li r0, 0
/* 805EF220  B0 05 00 00 */	sth r0, 0(r5)
lbl_805EF224:
/* 805EF224  C0 04 00 00 */	lfs f0, 0(r4)
/* 805EF228  3C 80 80 65 */	lis r4, lit_965@ha /* 0x8064B804@ha */
/* 805EF22C  38 C4 B8 04 */	addi r6, r4, lit_965@l /* 0x8064B804@l */
/* 805EF230  C0 A3 00 00 */	lfs f5, 0(r3)
/* 805EF234  EC 20 01 32 */	fmuls f1, f0, f4
/* 805EF238  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EF23C  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064B7AC@ha */
/* 805EF240  C0 04 B7 AC */	lfs f0, lit_512@l(r4)  /* 0x8064B7AC@l */
/* 805EF244  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EF248  EC 25 08 2A */	fadds f1, f5, f1
/* 805EF24C  D0 23 00 00 */	stfs f1, 0(r3)
/* 805EF250  C0 23 00 00 */	lfs f1, 0(r3)
/* 805EF254  EC 21 18 28 */	fsubs f1, f1, f3
/* 805EF258  EC 24 00 72 */	fmuls f1, f4, f1
/* 805EF25C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF260  40 81 00 18 */	ble lbl_805EF278
/* 805EF264  38 00 00 00 */	li r0, 0
/* 805EF268  B0 05 00 00 */	sth r0, 0(r5)
/* 805EF26C  D0 63 00 00 */	stfs f3, 0(r3)
/* 805EF270  38 60 00 01 */	li r3, 1
/* 805EF274  4E 80 00 20 */	blr 
lbl_805EF278:
/* 805EF278  38 60 00 00 */	li r3, 0
/* 805EF27C  4E 80 00 20 */	blr 
