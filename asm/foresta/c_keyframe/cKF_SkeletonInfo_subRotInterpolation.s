lbl_80370924:
/* 80370924  7C 87 07 34 */	extsh r7, r4
/* 80370928  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037092C  3D 00 43 30 */	lis r8, 0x4330
/* 80370930  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 80370934  6C E9 80 00 */	xoris r9, r7, 0x8000
/* 80370938  7C A0 07 34 */	extsh r0, r5
/* 8037093C  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 80370940  91 21 00 0C */	stw r9, 0xc(r1)
/* 80370944  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80370948  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 8037094C  91 01 00 08 */	stw r8, 8(r1)
/* 80370950  3C 80 80 64 */	lis r4, lit_560@ha /* 0x8064119C@ha */
/* 80370954  C8 45 11 94 */	lfd f2, lit_540@l(r5)  /* 0x80641194@l */
/* 80370958  C8 01 00 08 */	lfd f0, 8(r1)
/* 8037095C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80370960  EC 80 10 28 */	fsubs f4, f0, f2
/* 80370964  C8 64 11 9C */	lfd f3, lit_560@l(r4)  /* 0x8064119C@l */
/* 80370968  91 01 00 10 */	stw r8, 0x10(r1)
/* 8037096C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80370970  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80370974  EC 40 10 28 */	fsubs f2, f0, f2
/* 80370978  91 01 00 18 */	stw r8, 0x18(r1)
/* 8037097C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80370980  EC A2 20 28 */	fsubs f5, f2, f4
/* 80370984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370988  EC C0 18 28 */	fsubs f6, f0, f3
/* 8037098C  91 01 00 20 */	stw r8, 0x20(r1)
/* 80370990  FC 40 2A 10 */	fabs f2, f5
/* 80370994  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80370998  FC 40 10 18 */	frsp f2, f2
/* 8037099C  EC 00 18 28 */	fsubs f0, f0, f3
/* 803709A0  EC 60 30 28 */	fsubs f3, f0, f6
/* 803709A4  FC 00 1A 10 */	fabs f0, f3
/* 803709A8  FC 00 00 18 */	frsp f0, f0
/* 803709AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803709B0  40 80 00 20 */	bge lbl_803709D0
/* 803709B4  EC 05 00 72 */	fmuls f0, f5, f1
/* 803709B8  EC 04 00 2A */	fadds f0, f4, f0
/* 803709BC  FC 00 00 1E */	fctiwz f0, f0
/* 803709C0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803709C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803709C8  B0 03 00 00 */	sth r0, 0(r3)
/* 803709CC  48 00 00 1C */	b lbl_803709E8
lbl_803709D0:
/* 803709D0  EC 03 00 72 */	fmuls f0, f3, f1
/* 803709D4  EC 06 00 2A */	fadds f0, f6, f0
/* 803709D8  FC 00 00 1E */	fctiwz f0, f0
/* 803709DC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803709E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803709E4  B0 03 00 00 */	sth r0, 0(r3)
lbl_803709E8:
/* 803709E8  38 21 00 30 */	addi r1, r1, 0x30
/* 803709EC  4E 80 00 20 */	blr 
