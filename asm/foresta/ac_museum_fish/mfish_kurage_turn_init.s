lbl_80457E70:
/* 80457E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80457E74  7C 08 02 A6 */	mflr r0
/* 80457E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80457E7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80457E80  7C 7F 1B 78 */	mr r31, r3
/* 80457E84  A8 63 06 2C */	lha r3, 0x62c(r3)
/* 80457E88  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80457E8C  A8 9F 06 0C */	lha r4, 0x60c(r31)
/* 80457E90  7C 03 00 50 */	subf r0, r3, r0
/* 80457E94  7C 00 07 34 */	extsh r0, r0
/* 80457E98  7C 04 01 D7 */	mullw. r0, r4, r0
/* 80457E9C  40 81 00 10 */	ble lbl_80457EAC
/* 80457EA0  38 03 60 00 */	addi r0, r3, 0x6000
/* 80457EA4  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80457EA8  48 00 00 0C */	b lbl_80457EB4
lbl_80457EAC:
/* 80457EAC  38 03 A0 00 */	addi r0, r3, -24576
/* 80457EB0  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80457EB4:
/* 80457EB4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80457EB8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80457EBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80457EC0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80457EC4  4B C0 4E 31 */	bl fqrand
/* 80457EC8  A8 BF 00 2E */	lha r5, 0x2e(r31)
/* 80457ECC  3C 00 43 30 */	lis r0, 0x4330
/* 80457ED0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80457ED4  90 01 00 08 */	stw r0, 8(r1)
/* 80457ED8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80457EDC  3C 60 80 45 */	lis r3, mfish_kurage_turn@ha /* 0x80457F34@ha */
/* 80457EE0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80457EE4  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80457EE8  C8 46 00 00 */	lfd f2, 0(r6)
/* 80457EEC  38 03 7F 34 */	addi r0, r3, mfish_kurage_turn@l /* 0x80457F34@l */
/* 80457EF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80457EF4  A8 9F 00 2C */	lha r4, 0x2c(r31)
/* 80457EF8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80457EFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80457F00  FC 00 00 1E */	fctiwz f0, f0
/* 80457F04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80457F08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80457F0C  7C 64 1A 14 */	add r3, r4, r3
/* 80457F10  B0 7F 06 26 */	sth r3, 0x626(r31)
/* 80457F14  A8 7F 06 26 */	lha r3, 0x626(r31)
/* 80457F18  B0 7F 06 28 */	sth r3, 0x628(r31)
/* 80457F1C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80457F20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80457F24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80457F28  7C 08 03 A6 */	mtlr r0
/* 80457F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80457F30  4E 80 00 20 */	blr 
