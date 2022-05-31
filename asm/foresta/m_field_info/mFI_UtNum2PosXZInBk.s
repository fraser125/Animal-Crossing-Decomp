lbl_803A5C14:
/* 803A5C14  1D 05 00 28 */	mulli r8, r5, 0x28
/* 803A5C18  3C E0 80 64 */	lis r7, lit_648@ha /* 0x80641F5C@ha */
/* 803A5C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5C20  3C A0 43 30 */	lis r5, 0x4330
/* 803A5C24  C8 47 1F 5C */	lfd f2, lit_648@l(r7)  /* 0x80641F5C@l */
/* 803A5C28  1C 06 00 28 */	mulli r0, r6, 0x28
/* 803A5C2C  6D 06 80 00 */	xoris r6, r8, 0x8000
/* 803A5C30  90 A1 00 08 */	stw r5, 8(r1)
/* 803A5C34  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803A5C38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A5C3C  C8 21 00 08 */	lfd f1, 8(r1)
/* 803A5C40  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803A5C44  EC 21 10 28 */	fsubs f1, f1, f2
/* 803A5C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5C4C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A5C50  D0 23 00 00 */	stfs f1, 0(r3)
/* 803A5C54  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A5C58  D0 04 00 00 */	stfs f0, 0(r4)
/* 803A5C5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5C60  4E 80 00 20 */	blr 
