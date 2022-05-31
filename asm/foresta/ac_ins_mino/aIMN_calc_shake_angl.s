lbl_8059E0A4:
/* 8059E0A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059E0A8  7C 08 02 A6 */	mflr r0
/* 8059E0AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059E0B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059E0B4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059E0B8  7C 7E 1B 78 */	mr r30, r3
/* 8059E0BC  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8059E0C0  AB E3 00 DE */	lha r31, 0xde(r3)
/* 8059E0C4  B0 01 00 08 */	sth r0, 8(r1)
/* 8059E0C8  80 03 02 40 */	lwz r0, 0x240(r3)
/* 8059E0CC  7C 04 07 34 */	extsh r4, r0
/* 8059E0D0  7C 04 F9 D7 */	mullw. r0, r4, r31
/* 8059E0D4  40 80 00 78 */	bge lbl_8059E14C
/* 8059E0D8  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8059E0DC  3C 00 43 30 */	lis r0, 0x4330
/* 8059E0E0  3C 80 80 65 */	lis r4, lit_476@ha /* 0x8064A19C@ha */
/* 8059E0E4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8059E0E8  38 64 A1 9C */	addi r3, r4, lit_476@l /* 0x8064A19C@l */
/* 8059E0EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059E0F0  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064A194@ha */
/* 8059E0F4  C8 23 00 00 */	lfd f1, 0(r3)
/* 8059E0F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8059E0FC  C0 44 A1 94 */	lfs f2, lit_462@l(r4)  /* 0x8064A194@l */
/* 8059E100  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059E104  EC 02 00 32 */	fmuls f0, f2, f0
/* 8059E108  FC 00 00 50 */	fneg f0, f0
/* 8059E10C  FC 00 00 1E */	fctiwz f0, f0
/* 8059E110  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8059E114  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8059E118  7C 83 07 35 */	extsh. r3, r4
/* 8059E11C  7C 80 07 34 */	extsh r0, r4
/* 8059E120  7C 60 00 D0 */	neg r3, r0
/* 8059E124  41 80 00 08 */	blt lbl_8059E12C
/* 8059E128  7C 03 03 78 */	mr r3, r0
lbl_8059E12C:
/* 8059E12C  2C 03 00 10 */	cmpwi r3, 0x10
/* 8059E130  40 80 00 14 */	bge lbl_8059E144
/* 8059E134  38 00 00 00 */	li r0, 0
/* 8059E138  38 80 00 00 */	li r4, 0
/* 8059E13C  B0 01 00 08 */	sth r0, 8(r1)
/* 8059E140  3B E0 80 00 */	li r31, -32768
lbl_8059E144:
/* 8059E144  7C 80 07 34 */	extsh r0, r4
/* 8059E148  90 1E 02 40 */	stw r0, 0x240(r30)
lbl_8059E14C:
/* 8059E14C  38 61 00 08 */	addi r3, r1, 8
/* 8059E150  7C 84 07 34 */	extsh r4, r4
/* 8059E154  38 A0 00 10 */	li r5, 0x10
/* 8059E158  4B E1 C9 ED */	bl chase_angle
/* 8059E15C  A8 A1 00 08 */	lha r5, 8(r1)
/* 8059E160  3C 60 80 65 */	lis r3, lit_476@ha /* 0x8064A19C@ha */
/* 8059E164  3C 00 43 30 */	lis r0, 0x4330
/* 8059E168  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064A194@ha */
/* 8059E16C  90 BE 02 34 */	stw r5, 0x234(r30)
/* 8059E170  C8 23 A1 9C */	lfd f1, lit_476@l(r3)  /* 0x8064A19C@l */
/* 8059E174  A8 61 00 08 */	lha r3, 8(r1)
/* 8059E178  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059E17C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8059E180  C0 44 A1 94 */	lfs f2, lit_462@l(r4)  /* 0x8064A194@l */
/* 8059E184  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059E188  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8059E18C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059E190  EC 02 00 32 */	fmuls f0, f2, f0
/* 8059E194  FC 00 00 1E */	fctiwz f0, f0
/* 8059E198  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059E19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E1A0  7F FF 02 14 */	add r31, r31, r0
/* 8059E1A4  B3 FE 00 DE */	sth r31, 0xde(r30)
/* 8059E1A8  7F E3 FB 78 */	mr r3, r31
/* 8059E1AC  4B E1 C9 45 */	bl sin_s
/* 8059E1B0  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A198@ha */
/* 8059E1B4  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 8059E1B8  38 83 A1 98 */	addi r4, r3, lit_474@l /* 0x8064A198@l */
/* 8059E1BC  7F E3 FB 78 */	mr r3, r31
/* 8059E1C0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8059E1C4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059E1C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059E1CC  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8059E1D0  4B E1 C8 CD */	bl cos_s
/* 8059E1D4  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A198@ha */
/* 8059E1D8  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 8059E1DC  C0 43 A1 98 */	lfs f2, lit_474@l(r3)  /* 0x8064A198@l */
/* 8059E1E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059E1E4  EC 02 00 2A */	fadds f0, f2, f0
/* 8059E1E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8059E1EC  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8059E1F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059E1F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059E1F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059E1FC  7C 08 03 A6 */	mtlr r0
/* 8059E200  38 21 00 30 */	addi r1, r1, 0x30
/* 8059E204  4E 80 00 20 */	blr 
