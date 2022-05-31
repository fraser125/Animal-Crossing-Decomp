lbl_803A5A14:
/* 803A5A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5A18  7C 08 02 A6 */	mflr r0
/* 803A5A1C  3C E0 43 30 */	lis r7, 0x4330
/* 803A5A20  3D 00 80 64 */	lis r8, lit_648@ha /* 0x80641F5C@ha */
/* 803A5A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5A28  1C 05 02 80 */	mulli r0, r5, 0x280
/* 803A5A2C  C8 48 1F 5C */	lfd f2, lit_648@l(r8)  /* 0x80641F5C@l */
/* 803A5A30  90 E1 00 08 */	stw r7, 8(r1)
/* 803A5A34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A5A38  C0 24 00 00 */	lfs f1, 0(r4)
/* 803A5A3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A5A40  1C 06 02 80 */	mulli r0, r6, 0x280
/* 803A5A44  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A5A48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A5A4C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A5A50  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A5A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5A58  EC 21 00 2A */	fadds f1, f1, f0
/* 803A5A5C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A5A60  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A5A64  D0 23 00 00 */	stfs f1, 0(r3)
/* 803A5A68  C0 24 00 04 */	lfs f1, 4(r4)
/* 803A5A6C  D0 23 00 04 */	stfs f1, 4(r3)
/* 803A5A70  C0 24 00 08 */	lfs f1, 8(r4)
/* 803A5A74  7C C4 33 78 */	mr r4, r6
/* 803A5A78  EC 01 00 2A */	fadds f0, f1, f0
/* 803A5A7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 803A5A80  7C A3 2B 78 */	mr r3, r5
/* 803A5A84  4B FF F7 85 */	bl mFI_BlockCheck
/* 803A5A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5A8C  7C 08 03 A6 */	mtlr r0
/* 803A5A90  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5A94  4E 80 00 20 */	blr 
