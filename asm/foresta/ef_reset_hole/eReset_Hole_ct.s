lbl_8061AE50:
/* 8061AE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061AE54  38 00 00 10 */	li r0, 0x10
/* 8061AE58  B0 03 00 00 */	sth r0, 0(r3)
/* 8061AE5C  A8 03 00 06 */	lha r0, 6(r3)
/* 8061AE60  2C 00 00 01 */	cmpwi r0, 1
/* 8061AE64  40 82 00 84 */	bne lbl_8061AEE8
/* 8061AE68  A8 03 00 08 */	lha r0, 8(r3)
/* 8061AE6C  2C 00 00 00 */	cmpwi r0, 0
/* 8061AE70  40 82 00 1C */	bne lbl_8061AE8C
/* 8061AE74  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064CA20@ha */
/* 8061AE78  C0 04 CA 20 */	lfs f0, lit_391@l(r4)  /* 0x8064CA20@l */
/* 8061AE7C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8061AE80  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8061AE84  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8061AE88  48 00 00 80 */	b lbl_8061AF08
lbl_8061AE8C:
/* 8061AE8C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8061AE90  3C 00 43 30 */	lis r0, 0x4330
/* 8061AE94  38 C4 61 38 */	addi r6, r4, debug_mode@l /* 0x81166138@l */
/* 8061AE98  3D 00 80 65 */	lis r8, lit_391@ha /* 0x8064CA20@ha */
/* 8061AE9C  80 C6 00 00 */	lwz r6, 0(r6)
/* 8061AEA0  3C 80 80 65 */	lis r4, lit_394@ha /* 0x8064CA2C@ha */
/* 8061AEA4  3C E0 80 65 */	lis r7, lit_392@ha /* 0x8064CA24@ha */
/* 8061AEA8  90 01 00 08 */	stw r0, 8(r1)
/* 8061AEAC  A8 C6 1B 78 */	lha r6, 0x1b78(r6)
/* 8061AEB0  C8 24 CA 2C */	lfd f1, lit_394@l(r4)  /* 0x8064CA2C@l */
/* 8061AEB4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8061AEB8  C0 68 CA 20 */	lfs f3, lit_391@l(r8)  /* 0x8064CA20@l */
/* 8061AEBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061AEC0  C0 47 CA 24 */	lfs f2, lit_392@l(r7)  /* 0x8064CA24@l */
/* 8061AEC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061AEC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061AECC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061AED0  EC 02 00 2A */	fadds f0, f2, f0
/* 8061AED4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061AED8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8061AEDC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8061AEE0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8061AEE4  48 00 00 24 */	b lbl_8061AF08
lbl_8061AEE8:
/* 8061AEE8  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8061AEEC  38 C4 F0 50 */	addi r6, r4, data_8065F050@l /* 0x8065F050@l */
/* 8061AEF0  80 86 00 00 */	lwz r4, 0(r6)
/* 8061AEF4  80 06 00 04 */	lwz r0, 4(r6)
/* 8061AEF8  90 83 00 34 */	stw r4, 0x34(r3)
/* 8061AEFC  90 03 00 38 */	stw r0, 0x38(r3)
/* 8061AF00  80 06 00 08 */	lwz r0, 8(r6)
/* 8061AF04  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_8061AF08:
/* 8061AF08  A8 05 00 00 */	lha r0, 0(r5)
/* 8061AF0C  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8061AF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8061AF14  4E 80 00 20 */	blr 
