lbl_80385A10:
/* 80385A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80385A14  3C E0 43 30 */	lis r7, 0x4330
/* 80385A18  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80385A1C  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806419DC@ha */
/* 80385A20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80385A24  3D 00 80 64 */	lis r8, lit_789@ha /* 0x806419D0@ha */
/* 80385A28  C8 65 19 DC */	lfd f3, lit_793@l(r5)  /* 0x806419DC@l */
/* 80385A2C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80385A30  90 E1 00 08 */	stw r7, 8(r1)
/* 80385A34  3C A0 80 64 */	lis r5, lit_790@ha /* 0x806419D4@ha */
/* 80385A38  C0 88 19 D0 */	lfs f4, lit_789@l(r8)  /* 0x806419D0@l */
/* 80385A3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80385A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80385A44  EC 00 18 28 */	fsubs f0, f0, f3
/* 80385A48  C0 A4 00 00 */	lfs f5, 0(r4)
/* 80385A4C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80385A50  C0 25 19 D4 */	lfs f1, lit_790@l(r5)  /* 0x806419D4@l */
/* 80385A54  EC 44 00 32 */	fmuls f2, f4, f0
/* 80385A58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80385A5C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80385A60  EC 45 10 28 */	fsubs f2, f5, f2
/* 80385A64  EC 04 00 32 */	fmuls f0, f4, f0
/* 80385A68  D0 43 00 00 */	stfs f2, 0(r3)
/* 80385A6C  C0 44 00 08 */	lfs f2, 8(r4)
/* 80385A70  EC 02 00 28 */	fsubs f0, f2, f0
/* 80385A74  D0 03 00 08 */	stfs f0, 8(r3)
/* 80385A78  C0 03 00 00 */	lfs f0, 0(r3)
/* 80385A7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80385A80  D0 03 00 00 */	stfs f0, 0(r3)
/* 80385A84  C0 03 00 08 */	lfs f0, 8(r3)
/* 80385A88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80385A8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80385A90  38 21 00 20 */	addi r1, r1, 0x20
/* 80385A94  4E 80 00 20 */	blr 