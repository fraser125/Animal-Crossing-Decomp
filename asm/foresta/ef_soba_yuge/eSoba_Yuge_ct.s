lbl_8061E780:
/* 8061E780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061E784  7C 08 02 A6 */	mflr r0
/* 8061E788  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061E78C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8061E790  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8061E794  7C 7E 1B 78 */	mr r30, r3
/* 8061E798  4B A3 E5 35 */	bl func_8005CCCC
/* 8061E79C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8061E7A0  3D 00 43 30 */	lis r8, 0x4330
/* 8061E7A4  39 44 61 38 */	addi r10, r4, debug_mode@l /* 0x81166138@l */
/* 8061E7A8  3C C0 80 65 */	lis r6, data_8064CC04@ha /* 0x8064CC04@ha */
/* 8061E7AC  80 AA 00 00 */	lwz r5, 0(r10)
/* 8061E7B0  3C 80 80 65 */	lis r4, lit_387@ha /* 0x8064CC14@ha */
/* 8061E7B4  39 24 CC 14 */	addi r9, r4, lit_387@l /* 0x8064CC14@l */
/* 8061E7B8  39 66 CC 04 */	addi r11, r6, data_8064CC04@l /* 0x8064CC04@l */
/* 8061E7BC  A8 05 1B 7C */	lha r0, 0x1b7c(r5)
/* 8061E7C0  3C 80 80 65 */	lis r4, lit_384@ha /* 0x8064CC0C@ha */
/* 8061E7C4  38 C4 CC 0C */	addi r6, r4, lit_384@l /* 0x8064CC0C@l */
/* 8061E7C8  7C 7F 07 34 */	extsh r31, r3
/* 8061E7CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061E7D0  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064CC08@ha */
/* 8061E7D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061E7D8  38 E4 CC 08 */	addi r7, r4, lit_383@l /* 0x8064CC08@l */
/* 8061E7DC  C8 89 00 00 */	lfd f4, 0(r9)
/* 8061E7E0  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064CC10@ha */
/* 8061E7E4  91 01 00 08 */	stw r8, 8(r1)
/* 8061E7E8  38 00 00 2C */	li r0, 0x2c
/* 8061E7EC  C0 2B 00 00 */	lfs f1, 0(r11)
/* 8061E7F0  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 8061E7F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061E7F8  7F E3 FB 78 */	mr r3, r31
/* 8061E7FC  C0 BE 00 14 */	lfs f5, 0x14(r30)
/* 8061E800  EC 00 20 28 */	fsubs f0, f0, f4
/* 8061E804  91 01 00 10 */	stw r8, 0x10(r1)
/* 8061E808  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061E80C  C0 67 00 00 */	lfs f3, 0(r7)
/* 8061E810  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E814  C0 24 CC 10 */	lfs f1, lit_385@l(r4)  /* 0x8064CC10@l */
/* 8061E818  91 01 00 18 */	stw r8, 0x18(r1)
/* 8061E81C  EC 05 00 2A */	fadds f0, f5, f0
/* 8061E820  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8061E824  80 8A 00 00 */	lwz r4, 0(r10)
/* 8061E828  A8 84 1B 82 */	lha r4, 0x1b82(r4)
/* 8061E82C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8061E830  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061E834  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8061E838  EC 00 20 28 */	fsubs f0, f0, f4
/* 8061E83C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061E840  EC 03 00 2A */	fadds f0, f3, f0
/* 8061E844  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 8061E848  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 8061E84C  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8061E850  B0 1E 00 00 */	sth r0, 0(r30)
/* 8061E854  84 85 F0 50 */	lwzu r4, data_8065F050@l(r5)  /* 0x8065F050@l */
/* 8061E858  80 05 00 04 */	lwz r0, 4(r5)
/* 8061E85C  90 9E 00 28 */	stw r4, 0x28(r30)
/* 8061E860  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8061E864  80 05 00 08 */	lwz r0, 8(r5)
/* 8061E868  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8061E86C  80 8A 00 00 */	lwz r4, 0(r10)
/* 8061E870  A8 04 1B 78 */	lha r0, 0x1b78(r4)
/* 8061E874  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061E878  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061E87C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8061E880  EC 00 20 28 */	fsubs f0, f0, f4
/* 8061E884  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061E888  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E88C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8061E890  80 85 00 00 */	lwz r4, 0(r5)
/* 8061E894  80 05 00 04 */	lwz r0, 4(r5)
/* 8061E898  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8061E89C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8061E8A0  80 05 00 08 */	lwz r0, 8(r5)
/* 8061E8A4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8061E8A8  4B D9 C2 49 */	bl sin_s
/* 8061E8AC  A8 9E 00 06 */	lha r4, 6(r30)
/* 8061E8B0  3C 00 43 30 */	lis r0, 0x4330
/* 8061E8B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8061E8B8  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061E8BC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061E8C0  C8 63 CC 14 */	lfd f3, lit_387@l(r3)  /* 0x8064CC14@l */
/* 8061E8C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061E8C8  7F E3 FB 78 */	mr r3, r31
/* 8061E8CC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8061E8D0  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8061E8D4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8061E8D8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E8DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E8E0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8061E8E4  4B D9 C1 B9 */	bl cos_s
/* 8061E8E8  A8 9E 00 06 */	lha r4, 6(r30)
/* 8061E8EC  3C 00 43 30 */	lis r0, 0x4330
/* 8061E8F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8061E8F4  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061E8F8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061E8FC  C8 63 CC 14 */	lfd f3, lit_387@l(r3)  /* 0x8064CC14@l */
/* 8061E900  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8061E904  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8061E908  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8061E90C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8061E910  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061E914  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E918  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8061E91C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061E920  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8061E924  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8061E928  7C 08 03 A6 */	mtlr r0
/* 8061E92C  38 21 00 40 */	addi r1, r1, 0x40
/* 8061E930  4E 80 00 20 */	blr 
