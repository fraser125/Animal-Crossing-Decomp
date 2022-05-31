lbl_8060B32C:
/* 8060B32C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060B330  7C 08 02 A6 */	mflr r0
/* 8060B334  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060B338  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060B33C  7C 7F 1B 78 */	mr r31, r3
/* 8060B340  A8 63 00 08 */	lha r3, 8(r3)
/* 8060B344  2C 03 00 04 */	cmpwi r3, 4
/* 8060B348  40 82 00 64 */	bne lbl_8060B3AC
/* 8060B34C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060B350  A8 1F 00 00 */	lha r0, 0(r31)
/* 8060B354  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060B358  3C A0 80 65 */	lis r5, lit_480@ha /* 0x8064BF6C@ha */
/* 8060B35C  3C 63 00 02 */	addis r3, r3, 2
/* 8060B360  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064BF54@ha */
/* 8060B364  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 8060B368  20 00 00 12 */	subfic r0, r0, 0x12
/* 8060B36C  38 C5 BF 6C */	addi r6, r5, lit_480@l /* 0x8064BF6C@l */
/* 8060B370  38 A4 BF 54 */	addi r5, r4, lit_431@l /* 0x8064BF54@l */
/* 8060B374  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060B378  7C 03 07 34 */	extsh r3, r0
/* 8060B37C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060B380  38 80 00 00 */	li r4, 0
/* 8060B384  C0 45 00 00 */	lfs f2, 0(r5)
/* 8060B388  38 A0 00 11 */	li r5, 0x11
/* 8060B38C  7D 89 03 A6 */	mtctr r12
/* 8060B390  4E 80 04 21 */	bctrl 
/* 8060B394  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060B398  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060B39C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8060B3A0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060B3A4  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8060B3A8  48 00 01 44 */	b lbl_8060B4EC
lbl_8060B3AC:
/* 8060B3AC  7C 60 07 35 */	extsh. r0, r3
/* 8060B3B0  41 82 00 0C */	beq lbl_8060B3BC
/* 8060B3B4  2C 03 00 09 */	cmpwi r3, 9
/* 8060B3B8  40 82 01 34 */	bne lbl_8060B4EC
lbl_8060B3BC:
/* 8060B3BC  3C 60 80 65 */	lis r3, lit_481@ha /* 0x8064BF74@ha */
/* 8060B3C0  3C 80 80 65 */	lis r4, lit_482@ha /* 0x8064BF7C@ha */
/* 8060B3C4  38 A3 BF 74 */	addi r5, r3, lit_481@l /* 0x8064BF74@l */
/* 8060B3C8  C8 24 BF 7C */	lfd f1, lit_482@l(r4)  /* 0x8064BF7C@l */
/* 8060B3CC  C8 45 00 00 */	lfd f2, 0(r5)
/* 8060B3D0  3C 60 80 65 */	lis r3, lit_483@ha /* 0x8064BF84@ha */
/* 8060B3D4  C8 03 BF 84 */	lfd f0, lit_483@l(r3)  /* 0x8064BF84@l */
/* 8060B3D8  FC C0 10 34 */	frsqrte f6, f2
/* 8060B3DC  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 8060B3E0  FD 00 10 34 */	frsqrte f8, f2
/* 8060B3E4  FD 20 10 34 */	frsqrte f9, f2
/* 8060B3E8  FC 86 01 B2 */	fmul f4, f6, f6
/* 8060B3EC  FC 68 02 32 */	fmul f3, f8, f8
/* 8060B3F0  FC A2 01 32 */	fmul f5, f2, f4
/* 8060B3F4  FC 82 00 F2 */	fmul f4, f2, f3
/* 8060B3F8  FC C1 01 B2 */	fmul f6, f1, f6
/* 8060B3FC  FC A0 28 28 */	fsub f5, f0, f5
/* 8060B400  FC 69 02 72 */	fmul f3, f9, f9
/* 8060B404  FD 46 01 72 */	fmul f10, f6, f5
/* 8060B408  FC A1 02 32 */	fmul f5, f1, f8
/* 8060B40C  FC CA 02 B2 */	fmul f6, f10, f10
/* 8060B410  FC 80 20 28 */	fsub f4, f0, f4
/* 8060B414  FC 62 00 F2 */	fmul f3, f2, f3
/* 8060B418  FD 65 01 32 */	fmul f11, f5, f4
/* 8060B41C  FC C2 01 B2 */	fmul f6, f2, f6
/* 8060B420  FC AB 02 F2 */	fmul f5, f11, f11
/* 8060B424  FC 81 02 72 */	fmul f4, f1, f9
/* 8060B428  FC 60 18 28 */	fsub f3, f0, f3
/* 8060B42C  FD 01 02 B2 */	fmul f8, f1, f10
/* 8060B430  FD 84 00 F2 */	fmul f12, f4, f3
/* 8060B434  FC 80 30 28 */	fsub f4, f0, f6
/* 8060B438  FC A2 01 72 */	fmul f5, f2, f5
/* 8060B43C  FD 28 01 32 */	fmul f9, f8, f4
/* 8060B440  FC 6C 03 32 */	fmul f3, f12, f12
/* 8060B444  FD 09 02 72 */	fmul f8, f9, f9
/* 8060B448  FC 62 00 F2 */	fmul f3, f2, f3
/* 8060B44C  FC C1 02 F2 */	fmul f6, f1, f11
/* 8060B450  FC 80 28 28 */	fsub f4, f0, f5
/* 8060B454  FD 02 02 32 */	fmul f8, f2, f8
/* 8060B458  FD 46 01 32 */	fmul f10, f6, f4
/* 8060B45C  FC 81 03 32 */	fmul f4, f1, f12
/* 8060B460  FC 60 18 28 */	fsub f3, f0, f3
/* 8060B464  FC C1 02 72 */	fmul f6, f1, f9
/* 8060B468  FD 24 00 F2 */	fmul f9, f4, f3
/* 8060B46C  FC AA 02 B2 */	fmul f5, f10, f10
/* 8060B470  FC 60 40 28 */	fsub f3, f0, f8
/* 8060B474  FC 82 01 72 */	fmul f4, f2, f5
/* 8060B478  FC A6 00 F2 */	fmul f5, f6, f3
/* 8060B47C  FC 69 02 72 */	fmul f3, f9, f9
/* 8060B480  FC A2 01 72 */	fmul f5, f2, f5
/* 8060B484  FC 80 20 28 */	fsub f4, f0, f4
/* 8060B488  FC 62 00 F2 */	fmul f3, f2, f3
/* 8060B48C  FC C0 28 18 */	frsp f6, f5
/* 8060B490  FC A1 02 B2 */	fmul f5, f1, f10
/* 8060B494  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8060B498  FC 21 02 72 */	fmul f1, f1, f9
/* 8060B49C  FC 00 18 28 */	fsub f0, f0, f3
/* 8060B4A0  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8060B4A4  FC A5 01 32 */	fmul f5, f5, f4
/* 8060B4A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8060B4AC  FC 62 01 72 */	fmul f3, f2, f5
/* 8060B4B0  EC 87 01 B2 */	fmuls f4, f7, f6
/* 8060B4B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8060B4B8  FC 60 18 18 */	frsp f3, f3
/* 8060B4BC  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 8060B4C0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8060B4C4  FC 00 00 18 */	frsp f0, f0
/* 8060B4C8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8060B4CC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8060B4D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060B4D4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8060B4D8  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8060B4DC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8060B4E0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8060B4E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060B4E8  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8060B4EC:
/* 8060B4EC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060B4F0  38 9F 00 28 */	addi r4, r31, 0x28
/* 8060B4F4  7C 65 1B 78 */	mr r5, r3
/* 8060B4F8  4B DA FA 4D */	bl xyz_t_add
/* 8060B4FC  38 7F 00 10 */	addi r3, r31, 0x10
/* 8060B500  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8060B504  7C 65 1B 78 */	mr r5, r3
/* 8060B508  4B DA FA 3D */	bl xyz_t_add
/* 8060B50C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060B510  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060B514  7C 08 03 A6 */	mtlr r0
/* 8060B518  38 21 00 20 */	addi r1, r1, 0x20
/* 8060B51C  4E 80 00 20 */	blr 
