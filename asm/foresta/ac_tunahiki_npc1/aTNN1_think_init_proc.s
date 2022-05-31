lbl_8058FAA4:
/* 8058FAA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FAA8  7C 08 02 A6 */	mflr r0
/* 8058FAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FAB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058FAB4  7C 7F 1B 78 */	mr r31, r3
/* 8058FAB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058FABC  7C 9E 23 78 */	mr r30, r4
/* 8058FAC0  A0 83 00 06 */	lhz r4, 6(r3)
/* 8058FAC4  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058FAC8  38 04 2F A0 */	addi r0, r4, 0x2fa0
/* 8058FACC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8058FAD0  40 82 00 1C */	bne lbl_8058FAEC
/* 8058FAD4  38 80 00 01 */	li r4, 1
/* 8058FAD8  38 00 40 00 */	li r0, 0x4000
/* 8058FADC  B0 9F 09 A0 */	sth r4, 0x9a0(r31)
/* 8058FAE0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8058FAE4  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8058FAE8  48 00 00 18 */	b lbl_8058FB00
lbl_8058FAEC:
/* 8058FAEC  38 80 FF FF */	li r4, -1
/* 8058FAF0  38 00 C0 00 */	li r0, -16384
/* 8058FAF4  B0 9F 09 A0 */	sth r4, 0x9a0(r31)
/* 8058FAF8  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8058FAFC  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8058FB00:
/* 8058FB00  A8 9F 09 A0 */	lha r4, 0x9a0(r31)
/* 8058FB04  3C 00 43 30 */	lis r0, 0x4330
/* 8058FB08  3C C0 80 65 */	lis r6, lit_595@ha /* 0x80649C44@ha */
/* 8058FB0C  3C E0 80 65 */	lis r7, lit_624@ha /* 0x80649C4C@ha */
/* 8058FB10  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8058FB14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058FB18  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8058FB1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058FB20  3C 84 00 02 */	addis r4, r4, 2
/* 8058FB24  C8 26 9C 44 */	lfd f1, lit_595@l(r6)  /* 0x80649C44@l */
/* 8058FB28  90 01 00 08 */	stw r0, 8(r1)
/* 8058FB2C  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8058FB30  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058FB34  C0 47 9C 4C */	lfs f2, lit_624@l(r7)  /* 0x80649C4C@l */
/* 8058FB38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058FB3C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8058FB40  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 8058FB44  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058FB48  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8058FB4C  EC 21 00 2A */	fadds f1, f1, f0
/* 8058FB50  7D 89 03 A6 */	mtctr r12
/* 8058FB54  4E 80 04 21 */	bctrl 
/* 8058FB58  A0 7F 00 06 */	lhz r3, 6(r31)
/* 8058FB5C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058FB60  38 63 2F A1 */	addi r3, r3, 0x2fa1
/* 8058FB64  2C 03 00 02 */	cmpwi r3, 2
/* 8058FB68  41 82 00 0C */	beq lbl_8058FB74
/* 8058FB6C  2C 03 00 03 */	cmpwi r3, 3
/* 8058FB70  40 82 00 44 */	bne lbl_8058FBB4
lbl_8058FB74:
/* 8058FB74  A8 7F 09 A0 */	lha r3, 0x9a0(r31)
/* 8058FB78  3C 00 43 30 */	lis r0, 0x4330
/* 8058FB7C  3C 80 80 65 */	lis r4, lit_595@ha /* 0x80649C44@ha */
/* 8058FB80  3C A0 80 65 */	lis r5, lit_625@ha /* 0x80649C50@ha */
/* 8058FB84  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8058FB88  90 01 00 08 */	stw r0, 8(r1)
/* 8058FB8C  C8 24 9C 44 */	lfd f1, lit_595@l(r4)  /* 0x80649C44@l */
/* 8058FB90  90 61 00 0C */	stw r3, 0xc(r1)
/* 8058FB94  C0 45 9C 50 */	lfs f2, lit_625@l(r5)  /* 0x80649C50@l */
/* 8058FB98  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058FB9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058FBA0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8058FBA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058FBA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8058FBAC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8058FBB0  48 00 00 40 */	b lbl_8058FBF0
lbl_8058FBB4:
/* 8058FBB4  A8 7F 09 A0 */	lha r3, 0x9a0(r31)
/* 8058FBB8  3C 00 43 30 */	lis r0, 0x4330
/* 8058FBBC  3C 80 80 65 */	lis r4, lit_595@ha /* 0x80649C44@ha */
/* 8058FBC0  3C A0 80 65 */	lis r5, lit_626@ha /* 0x80649C54@ha */
/* 8058FBC4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8058FBC8  90 01 00 08 */	stw r0, 8(r1)
/* 8058FBCC  C8 24 9C 44 */	lfd f1, lit_595@l(r4)  /* 0x80649C44@l */
/* 8058FBD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8058FBD4  C0 45 9C 54 */	lfs f2, lit_626@l(r5)  /* 0x80649C54@l */
/* 8058FBD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058FBDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058FBE0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8058FBE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058FBE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8058FBEC  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8058FBF0:
/* 8058FBF0  A8 7F 09 A0 */	lha r3, 0x9a0(r31)
/* 8058FBF4  3C 00 43 30 */	lis r0, 0x4330
/* 8058FBF8  90 01 00 08 */	stw r0, 8(r1)
/* 8058FBFC  3C 80 80 65 */	lis r4, lit_595@ha /* 0x80649C44@ha */
/* 8058FC00  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8058FC04  C8 24 9C 44 */	lfd f1, lit_595@l(r4)  /* 0x80649C44@l */
/* 8058FC08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8058FC0C  3C A0 80 65 */	lis r5, lit_592@ha /* 0x80649C38@ha */
/* 8058FC10  C0 45 9C 38 */	lfs f2, lit_592@l(r5)  /* 0x80649C38@l */
/* 8058FC14  38 C0 00 FE */	li r6, 0xfe
/* 8058FC18  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058FC1C  38 00 00 00 */	li r0, 0
/* 8058FC20  7F E3 FB 78 */	mr r3, r31
/* 8058FC24  7F C4 F3 78 */	mr r4, r30
/* 8058FC28  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058FC2C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8058FC30  38 A0 00 00 */	li r5, 0
/* 8058FC34  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058FC38  EC 01 00 2A */	fadds f0, f1, f0
/* 8058FC3C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8058FC40  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8058FC44  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8058FC48  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8058FC4C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8058FC50  98 DF 00 D6 */	stb r6, 0xd6(r31)
/* 8058FC54  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8058FC58  48 00 01 89 */	bl aTNN1_setup_think_proc
/* 8058FC5C  38 00 00 14 */	li r0, 0x14
/* 8058FC60  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058FC64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058FC68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058FC6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058FC70  7C 08 03 A6 */	mtlr r0
/* 8058FC74  38 21 00 20 */	addi r1, r1, 0x20
/* 8058FC78  4E 80 00 20 */	blr 
