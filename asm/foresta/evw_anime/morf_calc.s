lbl_80372E98:
/* 80372E98  7C 83 20 50 */	subf r4, r3, r4
/* 80372E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80372EA0  3C 00 43 30 */	lis r0, 0x4330
/* 80372EA4  3C A0 80 64 */	lis r5, data_806411BC@ha /* 0x806411BC@ha */
/* 80372EA8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80372EAC  90 01 00 08 */	stw r0, 8(r1)
/* 80372EB0  C8 45 11 BC */	lfd f2, data_806411BC@l(r5)  /* 0x806411BC@l */
/* 80372EB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80372EB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80372EBC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80372EC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80372EC4  FC 00 00 1E */	fctiwz f0, f0
/* 80372EC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80372ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372ED0  7C 63 02 14 */	add r3, r3, r0
/* 80372ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80372ED8  4E 80 00 20 */	blr 
