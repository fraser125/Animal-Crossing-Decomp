lbl_8046B484:
/* 8046B484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046B488  7C 08 02 A6 */	mflr r0
/* 8046B48C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046B490  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046B494  7C BF 2B 78 */	mr r31, r5
/* 8046B498  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046B49C  7C 7E 1B 78 */	mr r30, r3
/* 8046B4A0  3C 60 80 64 */	lis r3, genji_mizu_pos@ha /* 0x806448B8@ha */
/* 8046B4A4  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8046B4A8  38 C3 48 B8 */	addi r6, r3, genji_mizu_pos@l /* 0x806448B8@l */
/* 8046B4AC  80 86 00 00 */	lwz r4, 0(r6)
/* 8046B4B0  60 00 00 01 */	ori r0, r0, 1
/* 8046B4B4  80 66 00 04 */	lwz r3, 4(r6)
/* 8046B4B8  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 8046B4BC  80 06 00 08 */	lwz r0, 8(r6)
/* 8046B4C0  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8046B4C4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8046B4C8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8046B4CC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8046B4D0  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8046B4D4  4B BF 18 21 */	bl fqrand
/* 8046B4D8  3C 60 80 64 */	lis r3, lit_582@ha /* 0x80644620@ha */
/* 8046B4DC  3C 80 80 64 */	lis r4, lit_935@ha /* 0x806446C4@ha */
/* 8046B4E0  38 A3 46 20 */	addi r5, r3, lit_582@l /* 0x80644620@l */
/* 8046B4E4  C0 44 46 C4 */	lfs f2, lit_935@l(r4)  /* 0x806446C4@l */
/* 8046B4E8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046B4EC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046B4F0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046B4F4  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046B4F8  EC 22 08 2A */	fadds f1, f2, f1
/* 8046B4FC  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8046B500  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8046B504  4B BF 17 F1 */	bl fqrand
/* 8046B508  3C 60 80 64 */	lis r3, lit_3945@ha /* 0x8064489C@ha */
/* 8046B50C  C0 03 48 9C */	lfs f0, lit_3945@l(r3)  /* 0x8064489C@l */
/* 8046B510  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B514  FC 00 00 1E */	fctiwz f0, f0
/* 8046B518  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046B51C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046B520  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046B524  4B BF 17 A9 */	bl func_8005CCCC
/* 8046B528  B0 7E 00 5C */	sth r3, 0x5c(r30)
/* 8046B52C  4B BF 17 A1 */	bl func_8005CCCC
/* 8046B530  7F E0 07 35 */	extsh. r0, r31
/* 8046B534  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8046B538  41 82 00 10 */	beq lbl_8046B548
/* 8046B53C  4B BF 17 91 */	bl func_8005CCCC
/* 8046B540  B0 7E 00 5E */	sth r3, 0x5e(r30)
/* 8046B544  48 00 00 0C */	b lbl_8046B550
lbl_8046B548:
/* 8046B548  38 00 0E 38 */	li r0, 0xe38
/* 8046B54C  B0 1E 00 5E */	sth r0, 0x5e(r30)
lbl_8046B550:
/* 8046B550  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8046B554  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8046B558  38 A4 F0 50 */	addi r5, r4, data_8065F050@l /* 0x8065F050@l */
/* 8046B55C  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 8046B560  80 85 00 00 */	lwz r4, 0(r5)
/* 8046B564  80 05 00 04 */	lwz r0, 4(r5)
/* 8046B568  90 9E 00 34 */	stw r4, 0x34(r30)
/* 8046B56C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8046B570  80 05 00 08 */	lwz r0, 8(r5)
/* 8046B574  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8046B578  80 65 00 00 */	lwz r3, 0(r5)
/* 8046B57C  80 05 00 04 */	lwz r0, 4(r5)
/* 8046B580  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8046B584  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8046B588  80 05 00 08 */	lwz r0, 8(r5)
/* 8046B58C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8046B590  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046B594  4B BF 17 61 */	bl fqrand
/* 8046B598  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046B59C  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046B5A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B5A4  FC 00 00 1E */	fctiwz f0, f0
/* 8046B5A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046B5AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046B5B0  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046B5B4  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046B5B8  B3 FE 00 78 */	sth r31, 0x78(r30)
/* 8046B5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046B5C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046B5C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046B5C8  7C 08 03 A6 */	mtlr r0
/* 8046B5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8046B5D0  4E 80 00 20 */	blr 
