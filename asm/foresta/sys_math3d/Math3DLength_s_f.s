lbl_80408F34:
/* 80408F34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80408F38  7C 08 02 A6 */	mflr r0
/* 80408F3C  3C C0 80 64 */	lis r6, lit_573@ha /* 0x8064370C@ha */
/* 80408F40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80408F44  3C 00 43 30 */	lis r0, 0x4330
/* 80408F48  C8 46 37 0C */	lfd f2, lit_573@l(r6)  /* 0x8064370C@l */
/* 80408F4C  A8 A3 00 00 */	lha r5, 0(r3)
/* 80408F50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80408F54  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80408F58  C0 04 00 00 */	lfs f0, 0(r4)
/* 80408F5C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80408F60  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80408F64  90 01 00 20 */	stw r0, 0x20(r1)
/* 80408F68  EC 21 10 28 */	fsubs f1, f1, f2
/* 80408F6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80408F70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80408F74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80408F78  A8 03 00 02 */	lha r0, 2(r3)
/* 80408F7C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80408F80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80408F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80408F88  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80408F8C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80408F90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80408F94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80408F98  A8 03 00 04 */	lha r0, 4(r3)
/* 80408F9C  38 61 00 08 */	addi r3, r1, 8
/* 80408FA0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80408FA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80408FA8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80408FAC  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80408FB0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80408FB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80408FB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80408FBC  4B FF FE 61 */	bl Math3DVecLength
/* 80408FC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80408FC4  7C 08 03 A6 */	mtlr r0
/* 80408FC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80408FCC  4E 80 00 20 */	blr 
