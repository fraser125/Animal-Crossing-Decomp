lbl_8040A0A8:
/* 8040A0A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040A0AC  7C 08 02 A6 */	mflr r0
/* 8040A0B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040A0B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8040A0B8  4B C9 0E 1D */	bl func_8009AED4
/* 8040A0BC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8040A0C0  3C 00 43 30 */	lis r0, 0x4330
/* 8040A0C4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8040A0C8  3C C0 80 64 */	lis r6, lit_872@ha /* 0x80643714@ha */
/* 8040A0CC  C0 66 37 14 */	lfs f3, lit_872@l(r6)  /* 0x80643714@l */
/* 8040A0D0  3C C0 81 1C */	lis r6, sp_center@ha /* 0x811C76E0@ha */
/* 8040A0D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8040A0D8  3C E0 80 64 */	lis r7, lit_573@ha /* 0x8064370C@ha */
/* 8040A0DC  3D 00 81 1C */	lis r8, tr_center@ha /* 0x811C76D4@ha */
/* 8040A0E0  7C 7D 1B 78 */	mr r29, r3
/* 8040A0E4  90 01 00 08 */	stw r0, 8(r1)
/* 8040A0E8  3B C6 76 E0 */	addi r30, r6, sp_center@l /* 0x811C76E0@l */
/* 8040A0EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8040A0F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040A0F4  C8 27 37 0C */	lfd f1, lit_573@l(r7)  /* 0x8064370C@l */
/* 8040A0F8  7C BF 2B 78 */	mr r31, r5
/* 8040A0FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8040A100  D4 08 76 D4 */	stfsu f0, tr_center@l(r8)  /* 0x811C76D4@l */
/* 8040A104  C0 44 00 04 */	lfs f2, 4(r4)
/* 8040A108  7D 03 43 78 */	mr r3, r8
/* 8040A10C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8040A110  EC 02 00 2A */	fadds f0, f2, f0
/* 8040A114  EC 03 00 32 */	fmuls f0, f3, f0
/* 8040A118  D0 08 00 04 */	stfs f0, 4(r8)
/* 8040A11C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8040A120  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8040A124  7F C4 F3 78 */	mr r4, r30
/* 8040A128  EC 02 00 2A */	fadds f0, f2, f0
/* 8040A12C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8040A130  D0 08 00 08 */	stfs f0, 8(r8)
/* 8040A134  A8 1D 00 00 */	lha r0, 0(r29)
/* 8040A138  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040A140  C8 01 00 08 */	lfd f0, 8(r1)
/* 8040A144  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A148  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8040A14C  A8 1D 00 02 */	lha r0, 2(r29)
/* 8040A150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040A158  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8040A15C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A160  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8040A164  A8 1D 00 04 */	lha r0, 4(r29)
/* 8040A168  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A16C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8040A170  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040A174  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A178  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8040A17C  4B FF ED 99 */	bl Math3DLength
/* 8040A180  FC 40 0A 10 */	fabs f2, f1
/* 8040A184  3C 60 80 64 */	lis r3, data_806436E4@ha /* 0x806436E4@ha */
/* 8040A188  C0 03 36 E4 */	lfs f0, data_806436E4@l(r3)  /* 0x806436E4@l */
/* 8040A18C  FC 40 10 18 */	frsp f2, f2
/* 8040A190  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8040A194  40 80 00 24 */	bge lbl_8040A1B8
/* 8040A198  3C 60 81 1C */	lis r3, sp_center@ha /* 0x811C76E0@ha */
/* 8040A19C  C0 03 76 E0 */	lfs f0, sp_center@l(r3)  /* 0x811C76E0@l */
/* 8040A1A0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8040A1A4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8040A1A8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8040A1AC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8040A1B0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040A1B4  48 00 00 48 */	b lbl_8040A1FC
lbl_8040A1B8:
/* 8040A1B8  A8 7D 00 06 */	lha r3, 6(r29)
/* 8040A1BC  3C 00 43 30 */	lis r0, 0x4330
/* 8040A1C0  3C 80 80 64 */	lis r4, lit_573@ha /* 0x8064370C@ha */
/* 8040A1C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8040A1C8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040A1CC  3C E0 81 1C */	lis r7, sp_center@ha /* 0x811C76E0@ha */
/* 8040A1D0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8040A1D4  38 A4 37 0C */	addi r5, r4, lit_573@l /* 0x8064370C@l */
/* 8040A1D8  C8 45 00 00 */	lfd f2, 0(r5)
/* 8040A1DC  3C C0 81 1C */	lis r6, tr_center@ha /* 0x811C76D4@ha */
/* 8040A1E0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040A1E4  38 67 76 E0 */	addi r3, r7, sp_center@l /* 0x811C76E0@l */
/* 8040A1E8  38 86 76 D4 */	addi r4, r6, tr_center@l /* 0x811C76D4@l */
/* 8040A1EC  7F E5 FB 78 */	mr r5, r31
/* 8040A1F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040A1F4  EC 20 08 24 */	fdivs f1, f0, f1
/* 8040A1F8  4B FF E8 25 */	bl Math3DInDivPos2
lbl_8040A1FC:
/* 8040A1FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8040A200  4B C9 0D 21 */	bl func_8009AF20
/* 8040A204  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040A208  7C 08 03 A6 */	mtlr r0
/* 8040A20C  38 21 00 30 */	addi r1, r1, 0x30
/* 8040A210  4E 80 00 20 */	blr 
