lbl_8043F74C:
/* 8043F74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043F750  7C 08 02 A6 */	mflr r0
/* 8043F754  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043F758  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043F75C  7C 7F 1B 78 */	mr r31, r3
/* 8043F760  4B C1 D5 95 */	bl fqrand
/* 8043F764  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 8043F768  3C 00 43 30 */	lis r0, 0x4330
/* 8043F76C  90 01 00 08 */	stw r0, 8(r1)
/* 8043F770  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043F774  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043F778  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043F77C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8043F780  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 8043F784  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043F788  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043F78C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043F790  FC 00 00 1E */	fctiwz f0, f0
/* 8043F794  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043F798  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8043F79C  7C 00 1A 14 */	add r0, r0, r3
/* 8043F7A0  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 8043F7A4  4B C1 D5 51 */	bl fqrand
/* 8043F7A8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8043F7AC  3C 60 80 44 */	lis r3, mfish_kaseki_normal@ha /* 0x8043F7DC@ha */
/* 8043F7B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8043F7B4  38 03 F7 DC */	addi r0, r3, mfish_kaseki_normal@l /* 0x8043F7DC@l */
/* 8043F7B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043F7BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8043F7C0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8043F7C4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043F7C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043F7CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043F7D0  7C 08 03 A6 */	mtlr r0
/* 8043F7D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8043F7D8  4E 80 00 20 */	blr 
