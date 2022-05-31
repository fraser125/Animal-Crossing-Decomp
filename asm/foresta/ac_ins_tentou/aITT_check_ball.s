lbl_8059FAEC:
/* 8059FAEC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8059FAF0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8059FAF4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8059FAF8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8059FAFC  3C A5 00 03 */	addis r5, r5, 3
/* 8059FB00  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064A260@ha */
/* 8059FB04  C0 65 88 6C */	lfs f3, -0x7794(r5)
/* 8059FB08  38 00 00 00 */	li r0, 0
/* 8059FB0C  C0 45 88 74 */	lfs f2, -0x778c(r5)
/* 8059FB10  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059FB14  C0 04 A2 60 */	lfs f0, lit_420@l(r4)  /* 0x8064A260@l */
/* 8059FB18  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059FB1C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059FB20  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059FB24  EC 22 08 2A */	fadds f1, f2, f1
/* 8059FB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FB2C  40 80 00 08 */	bge lbl_8059FB34
/* 8059FB30  38 00 00 01 */	li r0, 1
lbl_8059FB34:
/* 8059FB34  7C 03 03 78 */	mr r3, r0
/* 8059FB38  4E 80 00 20 */	blr 
