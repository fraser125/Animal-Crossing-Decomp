lbl_805887E4:
/* 805887E4  89 23 09 94 */	lbz r9, 0x994(r3)
/* 805887E8  3C A0 80 6C */	lis r5, aTS0_startRatio@ha /* 0x806C1E48@ha */
/* 805887EC  81 03 09 A4 */	lwz r8, 0x9a4(r3)
/* 805887F0  38 A5 1E 48 */	addi r5, r5, aTS0_startRatio@l /* 0x806C1E48@l */
/* 805887F4  7D 29 07 74 */	extsb r9, r9
/* 805887F8  C0 23 09 9C */	lfs f1, 0x99c(r3)
/* 805887FC  55 20 10 3A */	slwi r0, r9, 2
/* 80588800  C0 03 09 A8 */	lfs f0, 0x9a8(r3)
/* 80588804  7C E5 00 2E */	lwzx r7, r5, r0
/* 80588808  3C 80 80 6C */	lis r4, aTS0_ratioLength@ha /* 0x806C1EC0@ha */
/* 8058880C  55 06 10 3A */	slwi r6, r8, 2
/* 80588810  EC 21 00 28 */	fsubs f1, f1, f0
/* 80588814  7C 07 34 2E */	lfsx f0, r7, r6
/* 80588818  55 25 18 38 */	slwi r5, r9, 3
/* 8058881C  C0 63 01 A8 */	lfs f3, 0x1a8(r3)
/* 80588820  38 04 1E C0 */	addi r0, r4, aTS0_ratioLength@l /* 0x806C1EC0@l */
/* 80588824  C0 43 01 AC */	lfs f2, 0x1ac(r3)
/* 80588828  EC 21 00 28 */	fsubs f1, f1, f0
/* 8058882C  7C 80 2A 14 */	add r4, r0, r5
/* 80588830  EC 42 18 28 */	fsubs f2, f2, f3
/* 80588834  55 00 17 7A */	rlwinm r0, r8, 2, 0x1d, 0x1d
/* 80588838  7C 04 04 2E */	lfsx f0, r4, r0
/* 8058883C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80588840  EC 01 00 24 */	fdivs f0, f1, f0
/* 80588844  EC 03 00 2A */	fadds f0, f3, f0
/* 80588848  D0 03 01 B8 */	stfs f0, 0x1b8(r3)
/* 8058884C  4E 80 00 20 */	blr 
