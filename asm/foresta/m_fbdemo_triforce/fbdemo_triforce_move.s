lbl_803A0AD8:
/* 803A0AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A0ADC  3C 00 43 30 */	lis r0, 0x4330
/* 803A0AE0  3C C0 80 64 */	lis r6, lit_379@ha /* 0x80641EA4@ha */
/* 803A0AE4  3C 80 80 64 */	lis r4, lit_356@ha /* 0x80641E90@ha */
/* 803A0AE8  80 A3 00 00 */	lwz r5, 0(r3)
/* 803A0AEC  3C E0 80 64 */	lis r7, lit_345@ha /* 0x80641E84@ha */
/* 803A0AF0  90 01 00 08 */	stw r0, 8(r1)
/* 803A0AF4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803A0AF8  88 03 00 09 */	lbz r0, 9(r3)
/* 803A0AFC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803A0B00  C8 46 1E A4 */	lfd f2, lit_379@l(r6)  /* 0x80641EA4@l */
/* 803A0B04  28 00 00 01 */	cmplwi r0, 1
/* 803A0B08  C8 21 00 08 */	lfd f1, 8(r1)
/* 803A0B0C  C0 04 1E 90 */	lfs f0, lit_356@l(r4)  /* 0x80641E90@l */
/* 803A0B10  EC 21 10 28 */	fsubs f1, f1, f2
/* 803A0B14  C0 47 1E 84 */	lfs f2, lit_345@l(r7)  /* 0x80641E84@l */
/* 803A0B18  EC 01 00 24 */	fdivs f0, f1, f0
/* 803A0B1C  EC 42 00 28 */	fsubs f2, f2, f0
/* 803A0B20  41 82 00 0C */	beq lbl_803A0B2C
/* 803A0B24  28 00 00 02 */	cmplwi r0, 2
/* 803A0B28  40 82 00 38 */	bne lbl_803A0B60
lbl_803A0B2C:
/* 803A0B2C  3C 80 80 64 */	lis r4, lit_376@ha /* 0x80641E9C@ha */
/* 803A0B30  3C A0 80 64 */	lis r5, lit_375@ha /* 0x80641E98@ha */
/* 803A0B34  C0 04 1E 9C */	lfs f0, lit_376@l(r4)  /* 0x80641E9C@l */
/* 803A0B38  3C C0 80 64 */	lis r6, lit_374@ha /* 0x80641E94@ha */
/* 803A0B3C  C0 25 1E 98 */	lfs f1, lit_375@l(r5)  /* 0x80641E98@l */
/* 803A0B40  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803A0B44  C0 46 1E 94 */	lfs f2, lit_374@l(r6)  /* 0x80641E94@l */
/* 803A0B48  EC 01 00 2A */	fadds f0, f1, f0
/* 803A0B4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803A0B50  FC 00 00 1E */	fctiwz f0, f0
/* 803A0B54  D8 01 00 08 */	stfd f0, 8(r1)
/* 803A0B58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A0B5C  48 00 00 34 */	b lbl_803A0B90
lbl_803A0B60:
/* 803A0B60  3C 80 80 64 */	lis r4, lit_376@ha /* 0x80641E9C@ha */
/* 803A0B64  3C A0 80 64 */	lis r5, lit_377@ha /* 0x80641EA0@ha */
/* 803A0B68  C0 04 1E 9C */	lfs f0, lit_376@l(r4)  /* 0x80641E9C@l */
/* 803A0B6C  3C C0 80 64 */	lis r6, lit_374@ha /* 0x80641E94@ha */
/* 803A0B70  C0 25 1E A0 */	lfs f1, lit_377@l(r5)  /* 0x80641EA0@l */
/* 803A0B74  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803A0B78  C0 46 1E 94 */	lfs f2, lit_374@l(r6)  /* 0x80641E94@l */
/* 803A0B7C  EC 01 00 2A */	fadds f0, f1, f0
/* 803A0B80  EC 02 00 32 */	fmuls f0, f2, f0
/* 803A0B84  FC 00 00 1E */	fctiwz f0, f0
/* 803A0B88  D8 01 00 08 */	stfd f0, 8(r1)
/* 803A0B8C  80 81 00 0C */	lwz r4, 0xc(r1)
lbl_803A0B90:
/* 803A0B90  88 03 00 08 */	lbz r0, 8(r3)
/* 803A0B94  28 00 00 00 */	cmplwi r0, 0
/* 803A0B98  41 82 00 30 */	beq lbl_803A0BC8
/* 803A0B9C  80 03 00 00 */	lwz r0, 0(r3)
/* 803A0BA0  7C 00 22 14 */	add r0, r0, r4
/* 803A0BA4  90 03 00 00 */	stw r0, 0(r3)
/* 803A0BA8  80 03 00 00 */	lwz r0, 0(r3)
/* 803A0BAC  2C 00 02 24 */	cmpwi r0, 0x224
/* 803A0BB0  41 80 00 40 */	blt lbl_803A0BF0
/* 803A0BB4  38 80 02 24 */	li r4, 0x224
/* 803A0BB8  38 00 00 01 */	li r0, 1
/* 803A0BBC  90 83 00 00 */	stw r4, 0(r3)
/* 803A0BC0  98 03 00 0A */	stb r0, 0xa(r3)
/* 803A0BC4  48 00 00 2C */	b lbl_803A0BF0
lbl_803A0BC8:
/* 803A0BC8  80 03 00 00 */	lwz r0, 0(r3)
/* 803A0BCC  7C 04 00 50 */	subf r0, r4, r0
/* 803A0BD0  90 03 00 00 */	stw r0, 0(r3)
/* 803A0BD4  80 03 00 00 */	lwz r0, 0(r3)
/* 803A0BD8  2C 00 00 00 */	cmpwi r0, 0
/* 803A0BDC  41 81 00 14 */	bgt lbl_803A0BF0
/* 803A0BE0  38 80 00 00 */	li r4, 0
/* 803A0BE4  38 00 00 01 */	li r0, 1
/* 803A0BE8  90 83 00 00 */	stw r4, 0(r3)
/* 803A0BEC  98 03 00 0A */	stb r0, 0xa(r3)
lbl_803A0BF0:
/* 803A0BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A0BF4  4E 80 00 20 */	blr 
