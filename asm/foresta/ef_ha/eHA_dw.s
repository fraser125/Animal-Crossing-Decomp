lbl_8060D11C:
/* 8060D11C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8060D120  7C 08 02 A6 */	mflr r0
/* 8060D124  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060D128  39 61 00 50 */	addi r11, r1, 0x50
/* 8060D12C  4B A8 DD A1 */	bl func_8009AECC
/* 8060D130  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060D134  7C 7B 1B 78 */	mr r27, r3
/* 8060D138  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8060D13C  A8 1B 00 00 */	lha r0, 0(r27)
/* 8060D140  3C 63 00 02 */	addis r3, r3, 2
/* 8060D144  3C C0 80 65 */	lis r6, lit_419@ha /* 0x8064C0BC@ha */
/* 8060D148  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 8060D14C  3C A0 80 65 */	lis r5, lit_420@ha /* 0x8064C0C0@ha */
/* 8060D150  20 00 00 38 */	subfic r0, r0, 0x38
/* 8060D154  38 E6 C0 BC */	addi r7, r6, lit_419@l /* 0x8064C0BC@l */
/* 8060D158  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060D15C  38 C5 C0 C0 */	addi r6, r5, lit_420@l /* 0x8064C0C0@l */
/* 8060D160  7C 9C 23 78 */	mr r28, r4
/* 8060D164  7C 03 07 34 */	extsh r3, r0
/* 8060D168  AB DB 00 4C */	lha r30, 0x4c(r27)
/* 8060D16C  38 80 00 18 */	li r4, 0x18
/* 8060D170  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060D174  38 A0 00 38 */	li r5, 0x38
/* 8060D178  C0 46 00 00 */	lfs f2, 0(r6)
/* 8060D17C  7D 89 03 A6 */	mtctr r12
/* 8060D180  4E 80 04 21 */	bctrl 
/* 8060D184  FC 00 08 1E */	fctiwz f0, f1
/* 8060D188  83 FC 00 00 */	lwz r31, 0(r28)
/* 8060D18C  7F E3 FB 78 */	mr r3, r31
/* 8060D190  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060D194  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060D198  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8060D19C  4B DD 7F BD */	bl _texture_z_light_fog_prim_xlu
/* 8060D1A0  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 8060D1A4  38 60 00 00 */	li r3, 0
/* 8060D1A8  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 8060D1AC  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 8060D1B0  4B DF F1 51 */	bl Matrix_translate
/* 8060D1B4  38 7C 20 4C */	addi r3, r28, 0x204c
/* 8060D1B8  38 80 00 01 */	li r4, 1
/* 8060D1BC  4B DF F0 DD */	bl Matrix_mult
/* 8060D1C0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060D1C4  3C A0 43 30 */	lis r5, 0x4330
/* 8060D1C8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060D1CC  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064C0CC@ha */
/* 8060D1D0  81 04 00 00 */	lwz r8, 0(r4)
/* 8060D1D4  38 E3 C0 CC */	addi r7, r3, lit_425@l /* 0x8064C0CC@l */
/* 8060D1D8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8060D1DC  38 60 00 01 */	li r3, 1
/* 8060D1E0  A8 C8 19 04 */	lha r6, 0x1904(r8)
/* 8060D1E4  A8 88 19 06 */	lha r4, 0x1906(r8)
/* 8060D1E8  A8 08 19 08 */	lha r0, 0x1908(r8)
/* 8060D1EC  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8060D1F0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8060D1F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8060D1F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8060D1FC  C8 A7 00 00 */	lfd f5, 0(r7)
/* 8060D200  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8060D204  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8060D208  EC 20 28 28 */	fsubs f1, f0, f5
/* 8060D20C  C0 5B 00 40 */	lfs f2, 0x40(r27)
/* 8060D210  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8060D214  C0 9B 00 44 */	lfs f4, 0x44(r27)
/* 8060D218  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8060D21C  EC 22 08 2A */	fadds f1, f2, f1
/* 8060D220  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060D224  EC 40 28 28 */	fsubs f2, f0, f5
/* 8060D228  C0 7B 00 48 */	lfs f3, 0x48(r27)
/* 8060D22C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8060D230  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8060D234  EC 44 10 2A */	fadds f2, f4, f2
/* 8060D238  EC 00 28 28 */	fsubs f0, f0, f5
/* 8060D23C  EC 63 00 2A */	fadds f3, f3, f0
/* 8060D240  4B DF F0 C1 */	bl Matrix_translate
/* 8060D244  3C 60 80 6D */	lis r3, eHA_angle_z_data@ha /* 0x806D24F8@ha */
/* 8060D248  57 C0 08 3C */	slwi r0, r30, 1
/* 8060D24C  38 63 24 F8 */	addi r3, r3, eHA_angle_z_data@l /* 0x806D24F8@l */
/* 8060D250  38 80 00 01 */	li r4, 1
/* 8060D254  7C 63 02 AE */	lhax r3, r3, r0
/* 8060D258  4B DF F5 99 */	bl Matrix_RotateZ
/* 8060D25C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060D260  3C 00 43 30 */	lis r0, 0x4330
/* 8060D264  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060D268  3C A0 80 65 */	lis r5, lit_422@ha /* 0x8064C0C8@ha */
/* 8060D26C  80 84 00 00 */	lwz r4, 0(r4)
/* 8060D270  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064C0CC@ha */
/* 8060D274  C8 23 C0 CC */	lfd f1, lit_425@l(r3)  /* 0x8064C0CC@l */
/* 8060D278  3C C0 80 65 */	lis r6, lit_421@ha /* 0x8064C0C4@ha */
/* 8060D27C  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060D280  38 60 00 01 */	li r3, 1
/* 8060D284  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060D288  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060D28C  C0 85 C0 C8 */	lfs f4, lit_422@l(r5)  /* 0x8064C0C8@l */
/* 8060D290  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060D294  C0 A6 C0 C4 */	lfs f5, lit_421@l(r6)  /* 0x8064C0C4@l */
/* 8060D298  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8060D29C  C0 5B 00 38 */	lfs f2, 0x38(r27)
/* 8060D2A0  EC 60 08 28 */	fsubs f3, f0, f1
/* 8060D2A4  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 8060D2A8  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 8060D2AC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8060D2B0  EC 65 18 2A */	fadds f3, f5, f3
/* 8060D2B4  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8060D2B8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8060D2BC  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8060D2C0  4B DF F1 2D */	bl Matrix_scale
/* 8060D2C4  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 8060D2C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060D2CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060D2D0  38 7B 00 08 */	addi r3, r27, 8
/* 8060D2D4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060D2D8  90 1B 00 00 */	stw r0, 0(r27)
/* 8060D2DC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8060D2E0  4B E0 00 F5 */	bl _Matrix_to_Mtx_new
/* 8060D2E4  90 7B 00 04 */	stw r3, 4(r27)
/* 8060D2E8  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000080@ha */
/* 8060D2EC  67 A7 FF FF */	oris r7, r29, 0xffff
/* 8060D2F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8060D2F4  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 8060D2F8  3C 60 80 CB */	lis r3, ef_ha01_00_modelT@ha /* 0x80CB3200@ha */
/* 8060D2FC  39 05 00 80 */	addi r8, r5, 0x0080 /* 0xFA000080@l */
/* 8060D300  60 E7 FF 00 */	ori r7, r7, 0xff00
/* 8060D304  38 09 00 08 */	addi r0, r9, 8
/* 8060D308  3C C0 FB 00 */	lis r6, 0xfb00
/* 8060D30C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 8060D310  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8060D314  3C 80 DE 00 */	lis r4, 0xde00
/* 8060D318  38 03 32 00 */	addi r0, r3, ef_ha01_00_modelT@l /* 0x80CB3200@l */
/* 8060D31C  91 09 00 00 */	stw r8, 0(r9)
/* 8060D320  90 E9 00 04 */	stw r7, 4(r9)
/* 8060D324  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060D328  38 67 00 08 */	addi r3, r7, 8
/* 8060D32C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060D330  90 C7 00 00 */	stw r6, 0(r7)
/* 8060D334  90 A7 00 04 */	stw r5, 4(r7)
/* 8060D338  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060D33C  38 65 00 08 */	addi r3, r5, 8
/* 8060D340  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060D344  90 85 00 00 */	stw r4, 0(r5)
/* 8060D348  90 05 00 04 */	stw r0, 4(r5)
/* 8060D34C  39 61 00 50 */	addi r11, r1, 0x50
/* 8060D350  4B A8 DB C9 */	bl func_8009AF18
/* 8060D354  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8060D358  7C 08 03 A6 */	mtlr r0
/* 8060D35C  38 21 00 50 */	addi r1, r1, 0x50
/* 8060D360  4E 80 00 20 */	blr 
