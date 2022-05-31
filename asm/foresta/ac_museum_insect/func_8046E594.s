lbl_8046E594:
/* 8046E594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046E598  7C 08 02 A6 */	mflr r0
/* 8046E59C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046E5A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046E5A4  7C 7F 1B 78 */	mr r31, r3
/* 8046E5A8  4B BE E7 25 */	bl func_8005CCCC
/* 8046E5AC  3C A0 80 64 */	lis r5, lit_949@ha /* 0x806446CC@ha */
/* 8046E5B0  B0 7F 00 72 */	sth r3, 0x72(r31)
/* 8046E5B4  C0 05 46 CC */	lfs f0, lit_949@l(r5)  /* 0x806446CC@l */
/* 8046E5B8  3C 80 80 68 */	lis r4, init_pos_4940@ha /* 0x80686E00@ha */
/* 8046E5BC  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8046E5C0  84 64 6E 00 */	lwzu r3, init_pos_4940@l(r4)  /* 0x80686E00@l */
/* 8046E5C4  80 04 00 04 */	lwz r0, 4(r4)
/* 8046E5C8  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8046E5CC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8046E5D0  80 04 00 08 */	lwz r0, 8(r4)
/* 8046E5D4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8046E5D8  4B BE E7 55 */	bl fqrand2
/* 8046E5DC  3C 60 80 64 */	lis r3, lit_936@ha /* 0x806446C8@ha */
/* 8046E5E0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8046E5E4  C0 43 46 C8 */	lfs f2, lit_936@l(r3)  /* 0x806446C8@l */
/* 8046E5E8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046E5EC  EC 00 08 2A */	fadds f0, f0, f1
/* 8046E5F0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8046E5F4  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046E5F8  4B F4 C4 F9 */	bl sin_s
/* 8046E5FC  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8046E600  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8046E604  C0 43 46 34 */	lfs f2, lit_586@l(r3)  /* 0x80644634@l */
/* 8046E608  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046E60C  EC 00 08 2A */	fadds f0, f0, f1
/* 8046E610  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8046E614  4B BE E7 19 */	bl fqrand2
/* 8046E618  3C 60 80 64 */	lis r3, lit_4942@ha /* 0x80644938@ha */
/* 8046E61C  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 8046E620  38 83 49 38 */	addi r4, r3, lit_4942@l /* 0x80644938@l */
/* 8046E624  C0 04 00 00 */	lfs f0, 0(r4)
/* 8046E628  3C 60 80 64 */	lis r3, lit_1525@ha /* 0x80644750@ha */
/* 8046E62C  38 A3 47 50 */	addi r5, r3, lit_1525@l /* 0x80644750@l */
/* 8046E630  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8046E634  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046E638  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8046E63C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046E640  C0 45 00 00 */	lfs f2, 0(r5)
/* 8046E644  EC 60 08 2A */	fadds f3, f0, f1
/* 8046E648  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046E64C  C0 24 46 0C */	lfs f1, lit_511@l(r4)  /* 0x8064460C@l */
/* 8046E650  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8046E654  84 66 F0 50 */	lwzu r3, data_8065F050@l(r6)  /* 0x8065F050@l */
/* 8046E658  80 06 00 04 */	lwz r0, 4(r6)
/* 8046E65C  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8046E660  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8046E664  80 06 00 08 */	lwz r0, 8(r6)
/* 8046E668  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8046E66C  D0 5F 00 40 */	stfs f2, 0x40(r31)
/* 8046E670  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8046E674  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8046E678  4B BE E6 55 */	bl func_8005CCCC
/* 8046E67C  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E680  4B BE E6 4D */	bl func_8005CCCC
/* 8046E684  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8046E688  B0 7F 00 6A */	sth r3, 0x6a(r31)
/* 8046E68C  38 A4 F0 50 */	addi r5, r4, data_8065F050@l /* 0x8065F050@l */
/* 8046E690  38 00 00 00 */	li r0, 0
/* 8046E694  80 85 00 00 */	lwz r4, 0(r5)
/* 8046E698  80 65 00 04 */	lwz r3, 4(r5)
/* 8046E69C  90 9F 00 44 */	stw r4, 0x44(r31)
/* 8046E6A0  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8046E6A4  80 65 00 08 */	lwz r3, 8(r5)
/* 8046E6A8  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8046E6AC  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8046E6B0  4B BE E6 45 */	bl fqrand
/* 8046E6B4  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046E6B8  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046E6BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046E6C0  FC 00 00 1E */	fctiwz f0, f0
/* 8046E6C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046E6C8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046E6CC  38 03 02 58 */	addi r0, r3, 0x258
/* 8046E6D0  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046E6D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046E6D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046E6DC  7C 08 03 A6 */	mtlr r0
/* 8046E6E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8046E6E4  4E 80 00 20 */	blr 
