lbl_803B0C84:
/* 803B0C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0C88  3C 00 43 30 */	lis r0, 0x4330
/* 803B0C8C  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0C90  3D 00 80 64 */	lis r8, lit_804@ha /* 0x806420D4@ha */
/* 803B0C94  80 E3 00 00 */	lwz r7, 0(r3)
/* 803B0C98  38 A4 20 AC */	addi r5, r4, lit_635@l /* 0x806420AC@l */
/* 803B0C9C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 803B0CA0  3C 80 80 64 */	lis r4, lit_632@ha /* 0x806420A0@ha */
/* 803B0CA4  90 01 00 08 */	stw r0, 8(r1)
/* 803B0CA8  7C C7 32 14 */	add r6, r7, r6
/* 803B0CAC  C8 45 00 00 */	lfd f2, 0(r5)
/* 803B0CB0  88 C6 00 02 */	lbz r6, 2(r6)
/* 803B0CB4  C0 68 20 D4 */	lfs f3, lit_804@l(r8)  /* 0x806420D4@l */
/* 803B0CB8  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 803B0CBC  C0 04 20 A0 */	lfs f0, lit_632@l(r4)  /* 0x806420A0@l */
/* 803B0CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B0CC4  C8 21 00 08 */	lfd f1, 8(r1)
/* 803B0CC8  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B0CCC  EC 23 00 72 */	fmuls f1, f3, f1
/* 803B0CD0  EC 00 08 24 */	fdivs f0, f0, f1
/* 803B0CD4  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 803B0CD8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 803B0CDC  88 03 00 51 */	lbz r0, 0x51(r3)
/* 803B0CE0  60 00 00 08 */	ori r0, r0, 8
/* 803B0CE4  98 03 00 51 */	stb r0, 0x51(r3)
/* 803B0CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0CEC  4E 80 00 20 */	blr 
