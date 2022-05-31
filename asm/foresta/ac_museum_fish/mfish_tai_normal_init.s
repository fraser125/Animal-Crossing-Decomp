lbl_804449C4:
/* 804449C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804449C8  7C 08 02 A6 */	mflr r0
/* 804449CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804449D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804449D4  7C 7F 1B 78 */	mr r31, r3
/* 804449D8  3C 60 80 44 */	lis r3, mfish_tai_turn@ha /* 0x8044555C@ha */
/* 804449DC  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 804449E0  38 03 55 5C */	addi r0, r3, mfish_tai_turn@l /* 0x8044555C@l */
/* 804449E4  7C 04 00 40 */	cmplw r4, r0
/* 804449E8  40 82 00 68 */	bne lbl_80444A50
/* 804449EC  4B C1 83 09 */	bl fqrand
/* 804449F0  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 804449F4  3C 00 43 30 */	lis r0, 0x4330
/* 804449F8  90 01 00 08 */	stw r0, 8(r1)
/* 804449FC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80444A00  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80444A04  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80444A08  90 61 00 0C */	stw r3, 0xc(r1)
/* 80444A0C  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 80444A10  C8 01 00 08 */	lfd f0, 8(r1)
/* 80444A14  EC 00 10 28 */	fsubs f0, f0, f2
/* 80444A18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80444A1C  FC 00 00 1E */	fctiwz f0, f0
/* 80444A20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80444A24  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80444A28  7C 00 1A 14 */	add r0, r0, r3
/* 80444A2C  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 80444A30  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 80444A34  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 80444A38  4B C1 82 BD */	bl fqrand
/* 80444A3C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80444A40  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80444A44  EC 22 00 72 */	fmuls f1, f2, f1
/* 80444A48  EC 00 08 2A */	fadds f0, f0, f1
/* 80444A4C  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_80444A50:
/* 80444A50  3C 60 80 44 */	lis r3, mfish_tai_normal@ha /* 0x80444A70@ha */
/* 80444A54  38 03 4A 70 */	addi r0, r3, mfish_tai_normal@l /* 0x80444A70@l */
/* 80444A58  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80444A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80444A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80444A64  7C 08 03 A6 */	mtlr r0
/* 80444A68  38 21 00 20 */	addi r1, r1, 0x20
/* 80444A6C  4E 80 00 20 */	blr 
