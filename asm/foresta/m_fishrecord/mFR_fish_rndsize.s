lbl_803AB948:
/* 803AB948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AB94C  7C 08 02 A6 */	mflr r0
/* 803AB950  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AB954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AB958  7C 7F 1B 78 */	mr r31, r3
/* 803AB95C  4B CB 13 99 */	bl fqrand
/* 803AB960  2C 1F 00 02 */	cmpwi r31, 2
/* 803AB964  41 82 00 14 */	beq lbl_803AB978
/* 803AB968  40 80 00 84 */	bge lbl_803AB9EC
/* 803AB96C  2C 1F 00 01 */	cmpwi r31, 1
/* 803AB970  40 80 00 44 */	bge lbl_803AB9B4
/* 803AB974  48 00 00 78 */	b lbl_803AB9EC
lbl_803AB978:
/* 803AB978  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80641F80@ha */
/* 803AB97C  3C A0 80 64 */	lis r5, data_80641F7C@ha /* 0x80641F7C@ha */
/* 803AB980  38 83 1F 80 */	addi r4, r3, lit_508@l /* 0x80641F80@l */
/* 803AB984  C0 65 1F 7C */	lfs f3, data_80641F7C@l(r5)  /* 0x80641F7C@l */
/* 803AB988  C0 04 00 00 */	lfs f0, 0(r4)
/* 803AB98C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80641F84@ha */
/* 803AB990  EC 40 00 72 */	fmuls f2, f0, f1
/* 803AB994  C0 03 1F 84 */	lfs f0, lit_509@l(r3)  /* 0x80641F84@l */
/* 803AB998  EC 22 00 72 */	fmuls f1, f2, f1
/* 803AB99C  EC 23 08 2A */	fadds f1, f3, f1
/* 803AB9A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 803AB9A4  FC 00 00 1E */	fctiwz f0, f0
/* 803AB9A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 803AB9AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AB9B0  48 00 00 74 */	b lbl_803ABA24
lbl_803AB9B4:
/* 803AB9B4  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80641F80@ha */
/* 803AB9B8  3C A0 80 64 */	lis r5, lit_510@ha /* 0x80641F88@ha */
/* 803AB9BC  38 83 1F 80 */	addi r4, r3, lit_508@l /* 0x80641F80@l */
/* 803AB9C0  C0 45 1F 88 */	lfs f2, lit_510@l(r5)  /* 0x80641F88@l */
/* 803AB9C4  C0 04 00 00 */	lfs f0, 0(r4)
/* 803AB9C8  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80641F84@ha */
/* 803AB9CC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803AB9D0  C0 03 1F 84 */	lfs f0, lit_509@l(r3)  /* 0x80641F84@l */
/* 803AB9D4  EC 22 08 2A */	fadds f1, f2, f1
/* 803AB9D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 803AB9DC  FC 00 00 1E */	fctiwz f0, f0
/* 803AB9E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 803AB9E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AB9E8  48 00 00 3C */	b lbl_803ABA24
lbl_803AB9EC:
/* 803AB9EC  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80641F80@ha */
/* 803AB9F0  3C A0 80 64 */	lis r5, lit_510@ha /* 0x80641F88@ha */
/* 803AB9F4  38 83 1F 80 */	addi r4, r3, lit_508@l /* 0x80641F80@l */
/* 803AB9F8  C0 65 1F 88 */	lfs f3, lit_510@l(r5)  /* 0x80641F88@l */
/* 803AB9FC  C0 04 00 00 */	lfs f0, 0(r4)
/* 803ABA00  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80641F84@ha */
/* 803ABA04  EC 40 00 72 */	fmuls f2, f0, f1
/* 803ABA08  C0 03 1F 84 */	lfs f0, lit_509@l(r3)  /* 0x80641F84@l */
/* 803ABA0C  EC 22 00 72 */	fmuls f1, f2, f1
/* 803ABA10  EC 23 08 28 */	fsubs f1, f3, f1
/* 803ABA14  EC 01 00 24 */	fdivs f0, f1, f0
/* 803ABA18  FC 00 00 1E */	fctiwz f0, f0
/* 803ABA1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803ABA20  80 61 00 0C */	lwz r3, 0xc(r1)
lbl_803ABA24:
/* 803ABA24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ABA28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803ABA2C  7C 08 03 A6 */	mtlr r0
/* 803ABA30  38 21 00 20 */	addi r1, r1, 0x20
/* 803ABA34  4E 80 00 20 */	blr 
