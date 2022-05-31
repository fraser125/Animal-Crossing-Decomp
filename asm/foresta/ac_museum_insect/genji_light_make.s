lbl_8046B5D4:
/* 8046B5D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046B5D8  7C 08 02 A6 */	mflr r0
/* 8046B5DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046B5E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046B5E4  7C BF 2B 78 */	mr r31, r5
/* 8046B5E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046B5EC  7C 7E 1B 78 */	mr r30, r3
/* 8046B5F0  3C 60 80 64 */	lis r3, genji_mizu_pos@ha /* 0x806448B8@ha */
/* 8046B5F4  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8046B5F8  38 C3 48 B8 */	addi r6, r3, genji_mizu_pos@l /* 0x806448B8@l */
/* 8046B5FC  80 86 00 00 */	lwz r4, 0(r6)
/* 8046B600  60 00 00 01 */	ori r0, r0, 1
/* 8046B604  80 66 00 04 */	lwz r3, 4(r6)
/* 8046B608  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 8046B60C  80 06 00 08 */	lwz r0, 8(r6)
/* 8046B610  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8046B614  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8046B618  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8046B61C  4B BF 17 11 */	bl fqrand2
/* 8046B620  3C 60 80 64 */	lis r3, lit_582@ha /* 0x80644620@ha */
/* 8046B624  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8046B628  C0 43 46 20 */	lfs f2, lit_582@l(r3)  /* 0x80644620@l */
/* 8046B62C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046B630  EC 00 08 2A */	fadds f0, f0, f1
/* 8046B634  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8046B638  4B BF 16 F5 */	bl fqrand2
/* 8046B63C  3C 80 80 64 */	lis r4, lit_4142@ha /* 0x806448C8@ha */
/* 8046B640  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8046B644  C0 64 48 C8 */	lfs f3, lit_4142@l(r4)  /* 0x806448C8@l */
/* 8046B648  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8046B64C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8046B650  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8046B654  EC 22 08 2A */	fadds f1, f2, f1
/* 8046B658  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 8046B65C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8046B660  EC 01 00 2A */	fadds f0, f1, f0
/* 8046B664  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8046B668  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8046B66C  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8046B670  4B BF 16 85 */	bl fqrand
/* 8046B674  3C 60 80 64 */	lis r3, lit_582@ha /* 0x80644620@ha */
/* 8046B678  3C 80 80 64 */	lis r4, lit_935@ha /* 0x806446C4@ha */
/* 8046B67C  38 A3 46 20 */	addi r5, r3, lit_582@l /* 0x80644620@l */
/* 8046B680  C0 44 46 C4 */	lfs f2, lit_935@l(r4)  /* 0x806446C4@l */
/* 8046B684  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046B688  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046B68C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046B690  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046B694  EC 22 08 2A */	fadds f1, f2, f1
/* 8046B698  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8046B69C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8046B6A0  4B BF 16 55 */	bl fqrand
/* 8046B6A4  3C 60 80 64 */	lis r3, lit_3945@ha /* 0x8064489C@ha */
/* 8046B6A8  C0 03 48 9C */	lfs f0, lit_3945@l(r3)  /* 0x8064489C@l */
/* 8046B6AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B6B0  FC 00 00 1E */	fctiwz f0, f0
/* 8046B6B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046B6B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046B6BC  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046B6C0  4B BF 16 0D */	bl func_8005CCCC
/* 8046B6C4  B0 7E 00 5C */	sth r3, 0x5c(r30)
/* 8046B6C8  4B BF 16 05 */	bl func_8005CCCC
/* 8046B6CC  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8046B6D0  4B BF 15 FD */	bl func_8005CCCC
/* 8046B6D4  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8046B6D8  B0 7E 00 5E */	sth r3, 0x5e(r30)
/* 8046B6DC  38 A4 F0 50 */	addi r5, r4, data_8065F050@l /* 0x8065F050@l */
/* 8046B6E0  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8046B6E4  80 85 00 00 */	lwz r4, 0(r5)
/* 8046B6E8  80 05 00 04 */	lwz r0, 4(r5)
/* 8046B6EC  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 8046B6F0  90 9E 00 34 */	stw r4, 0x34(r30)
/* 8046B6F4  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8046B6F8  80 05 00 08 */	lwz r0, 8(r5)
/* 8046B6FC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8046B700  80 65 00 00 */	lwz r3, 0(r5)
/* 8046B704  80 05 00 04 */	lwz r0, 4(r5)
/* 8046B708  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8046B70C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8046B710  80 05 00 08 */	lwz r0, 8(r5)
/* 8046B714  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8046B718  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046B71C  4B BF 15 D9 */	bl fqrand
/* 8046B720  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046B724  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046B728  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B72C  FC 00 00 1E */	fctiwz f0, f0
/* 8046B730  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8046B734  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B738  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046B73C  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046B740  B3 FE 00 78 */	sth r31, 0x78(r30)
/* 8046B744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046B748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046B74C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046B750  7C 08 03 A6 */	mtlr r0
/* 8046B754  38 21 00 20 */	addi r1, r1, 0x20
/* 8046B758  4E 80 00 20 */	blr 
