lbl_8046D064:
/* 8046D064  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046D068  7C 08 02 A6 */	mflr r0
/* 8046D06C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046D070  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8046D074  7C 9F 23 78 */	mr r31, r4
/* 8046D078  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046D07C  7C 7E 1B 78 */	mr r30, r3
/* 8046D080  4B BE FC 75 */	bl fqrand
/* 8046D084  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8046D088  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8046D08C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046D090  FC 00 00 1E */	fctiwz f0, f0
/* 8046D094  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046D098  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046D09C  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046D0A0  4B BE FC 8D */	bl fqrand2
/* 8046D0A4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046D0A8  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046D0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046D0B0  40 81 00 10 */	ble lbl_8046D0C0
/* 8046D0B4  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046D0B8  2C 00 00 05 */	cmpwi r0, 5
/* 8046D0BC  41 80 00 10 */	blt lbl_8046D0CC
lbl_8046D0C0:
/* 8046D0C0  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046D0C4  2C 00 00 00 */	cmpwi r0, 0
/* 8046D0C8  40 82 00 18 */	bne lbl_8046D0E0
lbl_8046D0CC:
/* 8046D0CC  38 60 00 01 */	li r3, 1
/* 8046D0D0  38 00 01 C7 */	li r0, 0x1c7
/* 8046D0D4  B0 7E 00 76 */	sth r3, 0x76(r30)
/* 8046D0D8  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8046D0DC  48 00 00 14 */	b lbl_8046D0F0
lbl_8046D0E0:
/* 8046D0E0  38 60 FF FF */	li r3, -1
/* 8046D0E4  38 00 FE 39 */	li r0, -455
/* 8046D0E8  B0 7E 00 76 */	sth r3, 0x76(r30)
/* 8046D0EC  B0 1E 00 78 */	sth r0, 0x78(r30)
lbl_8046D0F0:
/* 8046D0F0  A8 DE 00 70 */	lha r6, 0x70(r30)
/* 8046D0F4  3C 60 80 68 */	lis r3, rail_pos@ha /* 0x80686D68@ha */
/* 8046D0F8  A8 1E 00 76 */	lha r0, 0x76(r30)
/* 8046D0FC  38 E3 6D 68 */	addi r7, r3, rail_pos@l /* 0x80686D68@l */
/* 8046D100  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8046D104  38 A1 00 08 */	addi r5, r1, 8
/* 8046D108  7C 06 02 14 */	add r0, r6, r0
/* 8046D10C  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8046D110  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046D114  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8046D118  7C C7 02 14 */	add r6, r7, r0
/* 8046D11C  80 66 00 00 */	lwz r3, 0(r6)
/* 8046D120  80 06 00 04 */	lwz r0, 4(r6)
/* 8046D124  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8046D128  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046D12C  80 06 00 08 */	lwz r0, 8(r6)
/* 8046D130  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8046D134  A8 1E 00 72 */	lha r0, 0x72(r30)
/* 8046D138  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8046D13C  7C 67 02 14 */	add r3, r7, r0
/* 8046D140  4B F4 DE 39 */	bl xyz_t_sub
/* 8046D144  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8046D148  C0 41 00 08 */	lfs f2, 8(r1)
/* 8046D14C  4B F9 EE B5 */	bl atans_table
/* 8046D150  B0 7E 00 74 */	sth r3, 0x74(r30)
/* 8046D154  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8046D158  4B BE FB 9D */	bl fqrand
/* 8046D15C  3C 80 80 64 */	lis r4, lit_1584@ha /* 0x8064475C@ha */
/* 8046D160  3C 60 80 64 */	lis r3, lit_4481@ha /* 0x806448F4@ha */
/* 8046D164  C0 44 47 5C */	lfs f2, lit_1584@l(r4)  /* 0x8064475C@l */
/* 8046D168  C0 03 48 F4 */	lfs f0, lit_4481@l(r3)  /* 0x806448F4@l */
/* 8046D16C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046D170  EC 00 08 2A */	fadds f0, f0, f1
/* 8046D174  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046D178  4B BE FB 7D */	bl fqrand
/* 8046D17C  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806446C8@ha */
/* 8046D180  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8046D184  38 A4 46 C8 */	addi r5, r4, lit_936@l /* 0x806446C8@l */
/* 8046D188  38 00 00 00 */	li r0, 0
/* 8046D18C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046D190  38 A3 45 DC */	addi r5, r3, lit_503@l /* 0x806445DC@l */
/* 8046D194  C0 45 00 00 */	lfs f2, 0(r5)
/* 8046D198  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8046D19C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046D1A0  39 04 F0 50 */	addi r8, r4, data_8065F050@l /* 0x8065F050@l */
/* 8046D1A4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046D1A8  7F E5 FB 78 */	mr r5, r31
/* 8046D1AC  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046D1B0  7F C3 F3 78 */	mr r3, r30
/* 8046D1B4  EC 22 08 2A */	fadds f1, f2, f1
/* 8046D1B8  38 80 00 00 */	li r4, 0
/* 8046D1BC  FC 20 08 1E */	fctiwz f1, f1
/* 8046D1C0  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8046D1C4  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8046D1C8  B0 DE 00 6E */	sth r6, 0x6e(r30)
/* 8046D1CC  80 E8 00 00 */	lwz r7, 0(r8)
/* 8046D1D0  80 C8 00 04 */	lwz r6, 4(r8)
/* 8046D1D4  90 FE 00 44 */	stw r7, 0x44(r30)
/* 8046D1D8  90 DE 00 48 */	stw r6, 0x48(r30)
/* 8046D1DC  80 C8 00 08 */	lwz r6, 8(r8)
/* 8046D1E0  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 8046D1E4  80 E8 00 00 */	lwz r7, 0(r8)
/* 8046D1E8  80 C8 00 04 */	lwz r6, 4(r8)
/* 8046D1EC  90 FE 00 34 */	stw r7, 0x34(r30)
/* 8046D1F0  90 DE 00 38 */	stw r6, 0x38(r30)
/* 8046D1F4  80 C8 00 08 */	lwz r6, 8(r8)
/* 8046D1F8  90 DE 00 3C */	stw r6, 0x3c(r30)
/* 8046D1FC  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8046D200  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046D204  4B FF FE 19 */	bl mi_dango_setupAction
/* 8046D208  38 00 FF FF */	li r0, -1
/* 8046D20C  B0 1E 00 7E */	sth r0, 0x7e(r30)
/* 8046D210  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046D214  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8046D218  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8046D21C  7C 08 03 A6 */	mtlr r0
/* 8046D220  38 21 00 30 */	addi r1, r1, 0x30
/* 8046D224  4E 80 00 20 */	blr 
