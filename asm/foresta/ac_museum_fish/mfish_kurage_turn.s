lbl_80457F34:
/* 80457F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80457F38  7C 08 02 A6 */	mflr r0
/* 80457F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80457F40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80457F44  7C 7F 1B 78 */	mr r31, r3
/* 80457F48  A8 A3 06 0C */	lha r5, 0x60c(r3)
/* 80457F4C  A8 03 06 12 */	lha r0, 0x612(r3)
/* 80457F50  7C 05 00 50 */	subf r0, r5, r0
/* 80457F54  7C 00 07 35 */	extsh. r0, r0
/* 80457F58  40 82 00 20 */	bne lbl_80457F78
/* 80457F5C  A8 BF 06 0E */	lha r5, 0x60e(r31)
/* 80457F60  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80457F64  7C 05 00 50 */	subf r0, r5, r0
/* 80457F68  7C 00 07 35 */	extsh. r0, r0
/* 80457F6C  40 82 00 0C */	bne lbl_80457F78
/* 80457F70  4B FF FB 5D */	bl mfish_kurage_normal_init
/* 80457F74  48 00 00 6C */	b lbl_80457FE0
lbl_80457F78:
/* 80457F78  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 80457F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80457F80  40 80 00 60 */	bge lbl_80457FE0
/* 80457F84  4B C0 4D 71 */	bl fqrand
/* 80457F88  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 80457F8C  3C 00 43 30 */	lis r0, 0x4330
/* 80457F90  90 01 00 08 */	stw r0, 8(r1)
/* 80457F94  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80457F98  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80457F9C  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80457FA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80457FA4  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 80457FA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80457FAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80457FB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80457FB4  FC 00 00 1E */	fctiwz f0, f0
/* 80457FB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80457FBC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80457FC0  7C 00 1A 14 */	add r0, r0, r3
/* 80457FC4  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 80457FC8  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 80457FCC  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 80457FD0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80457FD4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80457FD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80457FDC  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_80457FE0:
/* 80457FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80457FE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80457FE8  7C 08 03 A6 */	mtlr r0
/* 80457FEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80457FF0  4E 80 00 20 */	blr 
