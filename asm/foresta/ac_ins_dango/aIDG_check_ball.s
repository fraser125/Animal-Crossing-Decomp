lbl_80597804:
/* 80597804  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80597808  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8059780C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80597810  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80597814  3C A5 00 03 */	addis r5, r5, 3
/* 80597818  3C 80 80 65 */	lis r4, lit_463@ha /* 0x80649E7C@ha */
/* 8059781C  C0 65 88 6C */	lfs f3, -0x7794(r5)
/* 80597820  38 00 00 00 */	li r0, 0
/* 80597824  C0 45 88 74 */	lfs f2, -0x778c(r5)
/* 80597828  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059782C  C0 04 9E 7C */	lfs f0, lit_463@l(r4)  /* 0x80649E7C@l */
/* 80597830  EC 22 08 28 */	fsubs f1, f2, f1
/* 80597834  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80597838  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059783C  EC 22 08 2A */	fadds f1, f2, f1
/* 80597840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597844  40 80 00 08 */	bge lbl_8059784C
/* 80597848  38 00 00 01 */	li r0, 1
lbl_8059784C:
/* 8059784C  7C 03 03 78 */	mr r3, r0
/* 80597850  4E 80 00 20 */	blr 