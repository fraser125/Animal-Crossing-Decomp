lbl_80462594:
/* 80462594  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80462598  7C 08 02 A6 */	mflr r0
/* 8046259C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804625A0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804625A4  7C 7F 1B 78 */	mr r31, r3
/* 804625A8  4B BF A7 4D */	bl fqrand
/* 804625AC  3C 60 80 64 */	lis r3, lit_1719@ha /* 0x80644794@ha */
/* 804625B0  3C 00 43 30 */	lis r0, 0x4330
/* 804625B4  38 83 47 94 */	addi r4, r3, lit_1719@l /* 0x80644794@l */
/* 804625B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804625BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 804625C0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 804625C4  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 804625C8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804625CC  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 804625D0  C8 44 00 00 */	lfd f2, 0(r4)
/* 804625D4  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 804625D8  FC 20 08 1E */	fctiwz f1, f1
/* 804625DC  D8 21 00 08 */	stfd f1, 8(r1)
/* 804625E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804625E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804625E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804625EC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804625F0  EC 21 10 28 */	fsubs f1, f1, f2
/* 804625F4  EC 00 08 2A */	fadds f0, f0, f1
/* 804625F8  FC 00 00 1E */	fctiwz f0, f0
/* 804625FC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80462600  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80462604  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80462608  4B BF A6 ED */	bl fqrand
/* 8046260C  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 80462610  3C 00 43 30 */	lis r0, 0x4330
/* 80462614  38 83 45 DC */	addi r4, r3, lit_503@l /* 0x806445DC@l */
/* 80462618  90 01 00 28 */	stw r0, 0x28(r1)
/* 8046261C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80462620  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80462624  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80462628  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046262C  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 80462630  C8 44 00 00 */	lfd f2, 0(r4)
/* 80462634  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 80462638  FC 20 08 1E */	fctiwz f1, f1
/* 8046263C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 80462640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80462644  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80462648  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8046264C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80462650  EC 21 10 28 */	fsubs f1, f1, f2
/* 80462654  EC 00 08 2A */	fadds f0, f0, f1
/* 80462658  FC 00 00 1E */	fctiwz f0, f0
/* 8046265C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80462660  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80462664  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 80462668  A8 1F 00 8E */	lha r0, 0x8e(r31)
/* 8046266C  2C 00 00 00 */	cmpwi r0, 0
/* 80462670  40 82 00 1C */	bne lbl_8046268C
/* 80462674  80 1F 00 00 */	lwz r0, 0(r31)
/* 80462678  2C 00 00 20 */	cmpwi r0, 0x20
/* 8046267C  41 82 00 10 */	beq lbl_8046268C
/* 80462680  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80462684  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80462688  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_8046268C:
/* 8046268C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80462690  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80462694  7C 08 03 A6 */	mtlr r0
/* 80462698  38 21 00 40 */	addi r1, r1, 0x40
/* 8046269C  4E 80 00 20 */	blr 
