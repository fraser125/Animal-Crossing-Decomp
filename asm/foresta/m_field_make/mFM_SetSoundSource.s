lbl_803A2620:
/* 803A2620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A2624  3D 20 43 30 */	lis r9, 0x4330
/* 803A2628  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 803A262C  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 803A2630  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803A2634  3C E0 80 64 */	lis r7, lit_640@ha /* 0x80641F04@ha */
/* 803A2638  C8 47 1F 04 */	lfd f2, lit_640@l(r7)  /* 0x80641F04@l */
/* 803A263C  3C C0 80 64 */	lis r6, lit_636@ha /* 0x80641EF8@ha */
/* 803A2640  91 21 00 08 */	stw r9, 8(r1)
/* 803A2644  3C E0 80 64 */	lis r7, data_80641EF4@ha /* 0x80641EF4@ha */
/* 803A2648  39 47 1E F4 */	addi r10, r7, data_80641EF4@l /* 0x80641EF4@l */
/* 803A264C  C0 86 1E F8 */	lfs f4, lit_636@l(r6)  /* 0x80641EF8@l */
/* 803A2650  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A2654  3D 00 80 64 */	lis r8, lit_637@ha /* 0x80641EFC@ha */
/* 803A2658  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A265C  3C E0 80 64 */	lis r7, lit_642@ha /* 0x80641F0C@ha */
/* 803A2660  EC 20 10 28 */	fsubs f1, f0, f2
/* 803A2664  C0 AA 00 00 */	lfs f5, 0(r10)
/* 803A2668  91 21 00 10 */	stw r9, 0x10(r1)
/* 803A266C  3C C0 80 64 */	lis r6, lit_638@ha /* 0x80641F00@ha */
/* 803A2670  C0 68 1E FC */	lfs f3, lit_637@l(r8)  /* 0x80641EFC@l */
/* 803A2674  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A2678  EC 24 00 72 */	fmuls f1, f4, f1
/* 803A267C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A2680  C8 47 1F 0C */	lfd f2, lit_642@l(r7)  /* 0x80641F0C@l */
/* 803A2684  EC 04 00 32 */	fmuls f0, f4, f0
/* 803A2688  EC 85 08 2A */	fadds f4, f5, f1
/* 803A268C  C0 26 1F 00 */	lfs f1, lit_638@l(r6)  /* 0x80641F00@l */
/* 803A2690  EC A5 00 2A */	fadds f5, f5, f0
/* 803A2694  7C A9 03 A6 */	mtctr r5
/* 803A2698  2C 05 00 00 */	cmpwi r5, 0
/* 803A269C  41 82 00 6C */	beq lbl_803A2708
lbl_803A26A0:
/* 803A26A0  A8 04 00 00 */	lha r0, 0(r4)
/* 803A26A4  91 21 00 10 */	stw r9, 0x10(r1)
/* 803A26A8  B0 03 00 00 */	sth r0, 0(r3)
/* 803A26AC  88 04 00 02 */	lbz r0, 2(r4)
/* 803A26B0  91 21 00 08 */	stw r9, 8(r1)
/* 803A26B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A26B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A26BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A26C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 803A26C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 803A26C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 803A26CC  EC 00 20 2A */	fadds f0, f0, f4
/* 803A26D0  D0 03 00 04 */	stfs f0, 4(r3)
/* 803A26D4  D0 23 00 08 */	stfs f1, 8(r3)
/* 803A26D8  88 04 00 03 */	lbz r0, 3(r4)
/* 803A26DC  38 84 00 04 */	addi r4, r4, 4
/* 803A26E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A26E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A26E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A26EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 803A26F0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A26F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803A26F8  EC 00 28 2A */	fadds f0, f0, f5
/* 803A26FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A2700  38 63 00 10 */	addi r3, r3, 0x10
/* 803A2704  42 00 FF 9C */	bdnz lbl_803A26A0
lbl_803A2708:
/* 803A2708  38 21 00 20 */	addi r1, r1, 0x20
/* 803A270C  4E 80 00 20 */	blr 
