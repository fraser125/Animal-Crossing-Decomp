lbl_803B0BE8:
/* 803B0BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0BEC  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0BF0  3C 00 43 30 */	lis r0, 0x4330
/* 803B0BF4  C8 24 20 AC */	lfd f1, lit_635@l(r4)  /* 0x806420AC@l */
/* 803B0BF8  80 C3 00 00 */	lwz r6, 0(r3)
/* 803B0BFC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 803B0C00  90 01 00 08 */	stw r0, 8(r1)
/* 803B0C04  7C A6 2A 14 */	add r5, r6, r5
/* 803B0C08  88 85 00 02 */	lbz r4, 2(r5)
/* 803B0C0C  38 04 FF 80 */	addi r0, r4, -128
/* 803B0C10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B0C14  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B0C18  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B0C1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B0C20  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 803B0C24  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803B0C28  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 803B0C2C  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0C30  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 803B0C34  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0C38  4E 80 00 20 */	blr 
