lbl_8060C1B0:
/* 8060C1B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060C1B4  7C 08 02 A6 */	mflr r0
/* 8060C1B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060C1BC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8060C1C0  7C 7F 1B 78 */	mr r31, r3
/* 8060C1C4  4B A5 0B 09 */	bl func_8005CCCC
/* 8060C1C8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060C1CC  3C E0 43 30 */	lis r7, 0x4330
/* 8060C1D0  39 23 61 38 */	addi r9, r3, debug_mode@l /* 0x81166138@l */
/* 8060C1D4  3C A0 80 65 */	lis r5, data_8064BFF4@ha /* 0x8064BFF4@ha */
/* 8060C1D8  80 89 00 00 */	lwz r4, 0(r9)
/* 8060C1DC  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C004@ha */
/* 8060C1E0  39 03 C0 04 */	addi r8, r3, lit_387@l /* 0x8064C004@l */
/* 8060C1E4  39 45 BF F4 */	addi r10, r5, data_8064BFF4@l /* 0x8064BFF4@l */
/* 8060C1E8  A8 04 1B 7C */	lha r0, 0x1b7c(r4)
/* 8060C1EC  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064BFFC@ha */
/* 8060C1F0  38 A3 BF FC */	addi r5, r3, lit_384@l /* 0x8064BFFC@l */
/* 8060C1F4  90 E1 00 08 */	stw r7, 8(r1)
/* 8060C1F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8060C1FC  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064BFF8@ha */
/* 8060C200  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060C204  38 C3 BF F8 */	addi r6, r3, lit_383@l /* 0x8064BFF8@l */
/* 8060C208  C8 88 00 00 */	lfd f4, 0(r8)
/* 8060C20C  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064C000@ha */
/* 8060C210  C8 01 00 08 */	lfd f0, 8(r1)
/* 8060C214  38 00 00 2C */	li r0, 0x2c
/* 8060C218  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060C21C  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8060C220  EC 00 20 28 */	fsubs f0, f0, f4
/* 8060C224  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 8060C228  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8060C22C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8060C230  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C234  C0 23 C0 00 */	lfs f1, lit_385@l(r3)  /* 0x8064C000@l */
/* 8060C238  C0 66 00 00 */	lfs f3, 0(r6)
/* 8060C23C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8060C240  EC 05 00 2A */	fadds f0, f5, f0
/* 8060C244  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8060C248  80 69 00 00 */	lwz r3, 0(r9)
/* 8060C24C  A8 63 1B 82 */	lha r3, 0x1b82(r3)
/* 8060C250  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8060C254  90 61 00 14 */	stw r3, 0x14(r1)
/* 8060C258  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8060C25C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8060C260  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C264  EC 03 00 2A */	fadds f0, f3, f0
/* 8060C268  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8060C26C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8060C270  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8060C274  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060C278  84 64 F0 50 */	lwzu r3, data_8065F050@l(r4)  /* 0x8065F050@l */
/* 8060C27C  80 04 00 04 */	lwz r0, 4(r4)
/* 8060C280  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8060C284  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8060C288  80 04 00 08 */	lwz r0, 8(r4)
/* 8060C28C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8060C290  80 69 00 00 */	lwz r3, 0(r9)
/* 8060C294  A8 03 1B 78 */	lha r0, 0x1b78(r3)
/* 8060C298  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8060C29C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060C2A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8060C2A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8060C2A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8060C2AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C2B0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8060C2B4  80 64 00 00 */	lwz r3, 0(r4)
/* 8060C2B8  80 04 00 04 */	lwz r0, 4(r4)
/* 8060C2BC  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8060C2C0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8060C2C4  80 04 00 08 */	lwz r0, 8(r4)
/* 8060C2C8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8060C2CC  4B A5 0A 61 */	bl fqrand2
/* 8060C2D0  A8 9F 00 06 */	lha r4, 6(r31)
/* 8060C2D4  3C 00 43 30 */	lis r0, 0x4330
/* 8060C2D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060C2DC  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C004@ha */
/* 8060C2E0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060C2E4  C8 63 C0 04 */	lfd f3, lit_387@l(r3)  /* 0x8064C004@l */
/* 8060C2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060C2EC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8060C2F0  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8060C2F4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8060C2F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060C2FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8060C300  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8060C304  4B A5 0A 29 */	bl fqrand2
/* 8060C308  A8 9F 00 06 */	lha r4, 6(r31)
/* 8060C30C  3C 00 43 30 */	lis r0, 0x4330
/* 8060C310  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060C314  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C004@ha */
/* 8060C318  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060C31C  C8 63 C0 04 */	lfd f3, lit_387@l(r3)  /* 0x8064C004@l */
/* 8060C320  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060C324  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8060C328  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8060C32C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8060C330  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060C334  EC 00 08 2A */	fadds f0, f0, f1
/* 8060C338  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8060C33C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060C340  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8060C344  7C 08 03 A6 */	mtlr r0
/* 8060C348  38 21 00 40 */	addi r1, r1, 0x40
/* 8060C34C  4E 80 00 20 */	blr 
