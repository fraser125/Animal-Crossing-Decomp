lbl_8038A668:
/* 8038A668  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8038A66C  7C 08 02 A6 */	mflr r0
/* 8038A670  90 01 00 74 */	stw r0, 0x74(r1)
/* 8038A674  39 61 00 70 */	addi r11, r1, 0x70
/* 8038A678  4B D1 08 4D */	bl func_8009AEC4
/* 8038A67C  3D 20 80 64 */	lis r9, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A680  7C DD 33 78 */	mr r29, r6
/* 8038A684  C0 09 19 A4 */	lfs f0, data_806419A4@l(r9)  /* 0x806419A4@l */
/* 8038A688  7C BF 2B 78 */	mr r31, r5
/* 8038A68C  7C 9E 23 78 */	mr r30, r4
/* 8038A690  7C FB 3B 78 */	mr r27, r7
/* 8038A694  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038A698  7C 79 1B 78 */	mr r25, r3
/* 8038A69C  7D 1A 43 78 */	mr r26, r8
/* 8038A6A0  7F C3 F3 78 */	mr r3, r30
/* 8038A6A4  D0 19 00 04 */	stfs f0, 4(r25)
/* 8038A6A8  7F E4 FB 78 */	mr r4, r31
/* 8038A6AC  7F A5 EB 78 */	mr r5, r29
/* 8038A6B0  38 C1 00 14 */	addi r6, r1, 0x14
/* 8038A6B4  D0 19 00 08 */	stfs f0, 8(r25)
/* 8038A6B8  38 E1 00 10 */	addi r7, r1, 0x10
/* 8038A6BC  39 01 00 0C */	addi r8, r1, 0xc
/* 8038A6C0  39 21 00 08 */	addi r9, r1, 8
/* 8038A6C4  48 07 E9 E9 */	bl Math3DPlane
/* 8038A6C8  C0 FB 00 00 */	lfs f7, 0(r27)
/* 8038A6CC  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 8038A6D0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038A6D4  C0 7B 00 04 */	lfs f3, 4(r27)
/* 8038A6D8  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8038A6DC  ED 27 08 28 */	fsubs f9, f7, f1
/* 8038A6E0  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 8038A6E4  ED 43 00 28 */	fsubs f10, f3, f0
/* 8038A6E8  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8038A6EC  EC 24 02 72 */	fmuls f1, f4, f9
/* 8038A6F0  C0 BB 00 08 */	lfs f5, 8(r27)
/* 8038A6F4  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8038A6F8  EC 84 01 F2 */	fmuls f4, f4, f7
/* 8038A6FC  EC 06 02 B2 */	fmuls f0, f6, f10
/* 8038A700  C1 01 00 0C */	lfs f8, 0xc(r1)
/* 8038A704  ED 65 10 28 */	fsubs f11, f5, f2
/* 8038A708  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8038A70C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8038A710  EC 21 00 2A */	fadds f1, f1, f0
/* 8038A714  EC 48 02 F2 */	fmuls f2, f8, f11
/* 8038A718  C0 03 19 A8 */	lfs f0, lit_448@l(r3)  /* 0x806419A8@l */
/* 8038A71C  EC 64 18 2A */	fadds f3, f4, f3
/* 8038A720  EC A8 01 72 */	fmuls f5, f8, f5
/* 8038A724  EC 82 08 2A */	fadds f4, f2, f1
/* 8038A728  EC 25 18 2A */	fadds f1, f5, f3
/* 8038A72C  FC 40 22 10 */	fabs f2, f4
/* 8038A730  EC 66 08 2A */	fadds f3, f6, f1
/* 8038A734  FC 20 10 18 */	frsp f1, f2
/* 8038A738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038A73C  41 80 00 C4 */	blt lbl_8038A800
/* 8038A740  EC 03 20 24 */	fdivs f0, f3, f4
/* 8038A744  FC 00 00 50 */	fneg f0, f0
/* 8038A748  EC 49 00 32 */	fmuls f2, f9, f0
/* 8038A74C  EC 2A 00 32 */	fmuls f1, f10, f0
/* 8038A750  EC 0B 00 32 */	fmuls f0, f11, f0
/* 8038A754  EC 47 10 2A */	fadds f2, f7, f2
/* 8038A758  D0 59 00 00 */	stfs f2, 0(r25)
/* 8038A75C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8038A760  EC 22 08 2A */	fadds f1, f2, f1
/* 8038A764  D0 39 00 04 */	stfs f1, 4(r25)
/* 8038A768  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8038A76C  EC 01 00 2A */	fadds f0, f1, f0
/* 8038A770  D0 19 00 08 */	stfs f0, 8(r25)
/* 8038A774  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8038A778  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8038A77C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8038A780  4B FF FE 51 */	bl mCoBG_GetDimension2Idx
/* 8038A784  80 99 00 00 */	lwz r4, 0(r25)
/* 8038A788  7C 67 1B 78 */	mr r7, r3
/* 8038A78C  80 19 00 04 */	lwz r0, 4(r25)
/* 8038A790  38 61 00 3C */	addi r3, r1, 0x3c
/* 8038A794  83 7D 00 00 */	lwz r27, 0(r29)
/* 8038A798  38 A1 00 24 */	addi r5, r1, 0x24
/* 8038A79C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8038A7A0  38 81 00 30 */	addi r4, r1, 0x30
/* 8038A7A4  83 9D 00 04 */	lwz r28, 4(r29)
/* 8038A7A8  38 C1 00 18 */	addi r6, r1, 0x18
/* 8038A7AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8038A7B0  83 BD 00 08 */	lwz r29, 8(r29)
/* 8038A7B4  83 59 00 08 */	lwz r26, 8(r25)
/* 8038A7B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8038A7BC  81 7F 00 04 */	lwz r11, 4(r31)
/* 8038A7C0  81 5F 00 08 */	lwz r10, 8(r31)
/* 8038A7C4  81 3E 00 00 */	lwz r9, 0(r30)
/* 8038A7C8  81 1E 00 04 */	lwz r8, 4(r30)
/* 8038A7CC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038A7D0  93 41 00 20 */	stw r26, 0x20(r1)
/* 8038A7D4  93 61 00 24 */	stw r27, 0x24(r1)
/* 8038A7D8  93 81 00 28 */	stw r28, 0x28(r1)
/* 8038A7DC  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8038A7E0  91 81 00 30 */	stw r12, 0x30(r1)
/* 8038A7E4  91 61 00 34 */	stw r11, 0x34(r1)
/* 8038A7E8  91 41 00 38 */	stw r10, 0x38(r1)
/* 8038A7EC  91 21 00 3C */	stw r9, 0x3c(r1)
/* 8038A7F0  91 01 00 40 */	stw r8, 0x40(r1)
/* 8038A7F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038A7F8  4B FF FB B5 */	bl mCoBG_JudgeCrossTriangleAndLine2D
/* 8038A7FC  48 00 00 08 */	b lbl_8038A804
lbl_8038A800:
/* 8038A800  38 60 00 00 */	li r3, 0
lbl_8038A804:
/* 8038A804  39 61 00 70 */	addi r11, r1, 0x70
/* 8038A808  4B D1 07 09 */	bl func_8009AF10
/* 8038A80C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8038A810  7C 08 03 A6 */	mtlr r0
/* 8038A814  38 21 00 70 */	addi r1, r1, 0x70
/* 8038A818  4E 80 00 20 */	blr 
