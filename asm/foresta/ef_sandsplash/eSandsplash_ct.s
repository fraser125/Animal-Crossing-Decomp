lbl_8061B43C:
/* 8061B43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B440  7C 08 02 A6 */	mflr r0
/* 8061B444  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064CA44@ha */
/* 8061B448  3C C0 80 65 */	lis r6, lit_396@ha /* 0x8064CA48@ha */
/* 8061B44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B450  38 E4 CA 44 */	addi r7, r4, lit_395@l /* 0x8064CA44@l */
/* 8061B454  3C 80 80 65 */	lis r4, lit_397@ha /* 0x8064CA4C@ha */
/* 8061B458  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061B45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061B460  7C 7F 1B 78 */	mr r31, r3
/* 8061B464  C0 26 CA 48 */	lfs f1, lit_396@l(r6)  /* 0x8064CA48@l */
/* 8061B468  93 C1 00 08 */	stw r30, 8(r1)
/* 8061B46C  7C BE 2B 78 */	mr r30, r5
/* 8061B470  C0 04 CA 4C */	lfs f0, lit_397@l(r4)  /* 0x8064CA4C@l */
/* 8061B474  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8061B478  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8061B47C  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 8061B480  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 8061B484  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8061B488  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 8061B48C  A8 1F 00 06 */	lha r0, 6(r31)
/* 8061B490  2C 00 00 02 */	cmpwi r0, 2
/* 8061B494  40 82 00 5C */	bne lbl_8061B4F0
/* 8061B498  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B49C  4B D9 F6 55 */	bl sin_s
/* 8061B4A0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8061B4A4  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B4A8  4B D9 F5 F5 */	bl cos_s
/* 8061B4AC  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8061B4B0  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8061B4B4  38 C3 F0 50 */	addi r6, r3, data_8065F050@l /* 0x8065F050@l */
/* 8061B4B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8061B4BC  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064CA50@ha */
/* 8061B4C0  80 06 00 04 */	lwz r0, 4(r6)
/* 8061B4C4  38 83 CA 50 */	addi r4, r3, lit_398@l /* 0x8064CA50@l */
/* 8061B4C8  3C 60 80 65 */	lis r3, lit_399@ha /* 0x8064CA54@ha */
/* 8061B4CC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061B4D0  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8061B4D4  C0 03 CA 54 */	lfs f0, lit_399@l(r3)  /* 0x8064CA54@l */
/* 8061B4D8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8061B4DC  80 06 00 08 */	lwz r0, 8(r6)
/* 8061B4E0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8061B4E4  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8061B4E8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8061B4EC  48 00 01 14 */	b lbl_8061B600
lbl_8061B4F0:
/* 8061B4F0  2C 00 00 01 */	cmpwi r0, 1
/* 8061B4F4  40 82 00 6C */	bne lbl_8061B560
/* 8061B4F8  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B4FC  4B D9 F5 F5 */	bl sin_s
/* 8061B500  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8061B504  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B508  4B D9 F5 95 */	bl cos_s
/* 8061B50C  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8061B510  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8061B514  38 E3 F0 50 */	addi r7, r3, data_8065F050@l /* 0x8065F050@l */
/* 8061B518  80 C7 00 00 */	lwz r6, 0(r7)
/* 8061B51C  3C 60 80 65 */	lis r3, lit_400@ha /* 0x8064CA58@ha */
/* 8061B520  80 07 00 04 */	lwz r0, 4(r7)
/* 8061B524  38 A3 CA 58 */	addi r5, r3, lit_400@l /* 0x8064CA58@l */
/* 8061B528  3C 60 80 65 */	lis r3, lit_401@ha /* 0x8064CA5C@ha */
/* 8061B52C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061B530  90 DF 00 28 */	stw r6, 0x28(r31)
/* 8061B534  38 83 CA 5C */	addi r4, r3, lit_401@l /* 0x8064CA5C@l */
/* 8061B538  3C 60 80 65 */	lis r3, lit_402@ha /* 0x8064CA60@ha */
/* 8061B53C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061B540  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8061B544  C0 03 CA 60 */	lfs f0, lit_402@l(r3)  /* 0x8064CA60@l */
/* 8061B548  80 07 00 08 */	lwz r0, 8(r7)
/* 8061B54C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8061B550  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 8061B554  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8061B558  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8061B55C  48 00 00 A4 */	b lbl_8061B600
lbl_8061B560:
/* 8061B560  2C 00 00 03 */	cmpwi r0, 3
/* 8061B564  40 82 00 84 */	bne lbl_8061B5E8
/* 8061B568  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B56C  4B D9 F5 85 */	bl sin_s
/* 8061B570  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064CA64@ha */
/* 8061B574  C0 03 CA 64 */	lfs f0, lit_403@l(r3)  /* 0x8064CA64@l */
/* 8061B578  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061B57C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8061B580  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061B584  4B D9 F5 19 */	bl cos_s
/* 8061B588  3C 60 80 65 */	lis r3, lit_395@ha /* 0x8064CA44@ha */
/* 8061B58C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8061B590  38 83 CA 44 */	addi r4, r3, lit_395@l /* 0x8064CA44@l */
/* 8061B594  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 8061B598  C0 04 00 00 */	lfs f0, 0(r4)
/* 8061B59C  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064CA68@ha */
/* 8061B5A0  38 A3 CA 68 */	addi r5, r3, lit_404@l /* 0x8064CA68@l */
/* 8061B5A4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8061B5A8  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064CA6C@ha */
/* 8061B5AC  38 83 CA 6C */	addi r4, r3, lit_405@l /* 0x8064CA6C@l */
/* 8061B5B0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061B5B4  84 A6 F0 50 */	lwzu r5, data_8065F050@l(r6)  /* 0x8065F050@l */
/* 8061B5B8  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064CA70@ha */
/* 8061B5BC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8061B5C0  80 06 00 04 */	lwz r0, 4(r6)
/* 8061B5C4  C0 03 CA 70 */	lfs f0, lit_406@l(r3)  /* 0x8064CA70@l */
/* 8061B5C8  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8061B5CC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8061B5D0  80 06 00 08 */	lwz r0, 8(r6)
/* 8061B5D4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8061B5D8  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 8061B5DC  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8061B5E0  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8061B5E4  48 00 00 1C */	b lbl_8061B600
lbl_8061B5E8:
/* 8061B5E8  3C 80 80 65 */	lis r4, lit_398@ha /* 0x8064CA50@ha */
/* 8061B5EC  3C 60 80 65 */	lis r3, lit_399@ha /* 0x8064CA54@ha */
/* 8061B5F0  C0 24 CA 50 */	lfs f1, lit_398@l(r4)  /* 0x8064CA50@l */
/* 8061B5F4  C0 03 CA 54 */	lfs f0, lit_399@l(r3)  /* 0x8064CA54@l */
/* 8061B5F8  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8061B5FC  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_8061B600:
/* 8061B600  38 00 00 10 */	li r0, 0x10
/* 8061B604  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061B608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061B610  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061B614  7C 08 03 A6 */	mtlr r0
/* 8061B618  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B61C  4E 80 00 20 */	blr 
