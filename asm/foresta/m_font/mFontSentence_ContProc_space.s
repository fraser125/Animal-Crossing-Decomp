lbl_803B0CF0:
/* 803B0CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0CF4  3C 00 43 30 */	lis r0, 0x4330
/* 803B0CF8  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0CFC  80 C3 00 00 */	lwz r6, 0(r3)
/* 803B0D00  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 803B0D04  90 01 00 08 */	stw r0, 8(r1)
/* 803B0D08  7C A6 2A 14 */	add r5, r6, r5
/* 803B0D0C  C8 44 20 AC */	lfd f2, lit_635@l(r4)  /* 0x806420AC@l */
/* 803B0D10  88 05 00 02 */	lbz r0, 2(r5)
/* 803B0D14  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 803B0D18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B0D1C  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 803B0D20  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B0D24  C8 21 00 08 */	lfd f1, 8(r1)
/* 803B0D28  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B0D2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0D30  EC 03 00 2A */	fadds f0, f3, f0
/* 803B0D34  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 803B0D38  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0D3C  4E 80 00 20 */	blr 
