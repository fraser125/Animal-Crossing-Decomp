lbl_8060804C:
/* 8060804C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80608050  7C 08 02 A6 */	mflr r0
/* 80608054  90 01 00 44 */	stw r0, 0x44(r1)
/* 80608058  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8060805C  7C 7F 1B 78 */	mr r31, r3
/* 80608060  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80608064  4B A5 4C 91 */	bl fqrand
/* 80608068  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064BD64@ha */
/* 8060806C  C0 03 BD 64 */	lfs f0, lit_397@l(r3)  /* 0x8064BD64@l */
/* 80608070  EC 00 00 72 */	fmuls f0, f0, f1
/* 80608074  FC 00 00 1E */	fctiwz f0, f0
/* 80608078  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060807C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80608080  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80608084  7C 00 07 34 */	extsh r0, r0
/* 80608088  2C 00 00 01 */	cmpwi r0, 1
/* 8060808C  40 82 00 18 */	bne lbl_806080A4
/* 80608090  4B A5 4C 65 */	bl fqrand
/* 80608094  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064BD68@ha */
/* 80608098  C0 03 BD 68 */	lfs f0, lit_398@l(r3)  /* 0x8064BD68@l */
/* 8060809C  EC 20 00 72 */	fmuls f1, f0, f1
/* 806080A0  48 00 00 18 */	b lbl_806080B8
lbl_806080A4:
/* 806080A4  4B A5 4C 51 */	bl fqrand
/* 806080A8  3C 60 80 65 */	lis r3, lit_399@ha /* 0x8064BD6C@ha */
/* 806080AC  FC 20 08 50 */	fneg f1, f1
/* 806080B0  C0 03 BD 6C */	lfs f0, lit_399@l(r3)  /* 0x8064BD6C@l */
/* 806080B4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806080B8:
/* 806080B8  3C 60 80 65 */	lis r3, lit_400@ha /* 0x8064BD70@ha */
/* 806080BC  FC 60 08 1E */	fctiwz f3, f1
/* 806080C0  38 A3 BD 70 */	addi r5, r3, lit_400@l /* 0x8064BD70@l */
/* 806080C4  3C 80 80 65 */	lis r4, lit_401@ha /* 0x8064BD74@ha */
/* 806080C8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 806080CC  3C 60 80 65 */	lis r3, lit_402@ha /* 0x8064BD78@ha */
/* 806080D0  C0 05 00 00 */	lfs f0, 0(r5)
/* 806080D4  C0 24 BD 74 */	lfs f1, lit_401@l(r4)  /* 0x8064BD74@l */
/* 806080D8  38 00 00 00 */	li r0, 0
/* 806080DC  EC 42 00 2A */	fadds f2, f2, f0
/* 806080E0  C0 03 BD 78 */	lfs f0, lit_402@l(r3)  /* 0x8064BD78@l */
/* 806080E4  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 806080E8  38 60 00 64 */	li r3, 0x64
/* 806080EC  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 806080F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806080F4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806080F8  3C 84 00 01 */	addis r4, r4, 1
/* 806080FC  EC 22 08 2A */	fadds f1, f2, f1
/* 80608100  38 84 89 00 */	addi r4, r4, -30464
/* 80608104  7C 9E 07 34 */	extsh r30, r4
/* 80608108  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8060810C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80608110  EC 01 00 28 */	fsubs f0, f1, f0
/* 80608114  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80608118  B0 7F 00 00 */	sth r3, 0(r31)
/* 8060811C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80608120  4B A5 4B D5 */	bl fqrand
/* 80608124  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064BD7C@ha */
/* 80608128  C0 03 BD 7C */	lfs f0, lit_403@l(r3)  /* 0x8064BD7C@l */
/* 8060812C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80608130  FC 00 00 1E */	fctiwz f0, f0
/* 80608134  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80608138  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8060813C  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80608140  4B A5 4B B5 */	bl fqrand
/* 80608144  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064BD7C@ha */
/* 80608148  C0 03 BD 7C */	lfs f0, lit_403@l(r3)  /* 0x8064BD7C@l */
/* 8060814C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80608150  FC 00 00 1E */	fctiwz f0, f0
/* 80608154  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80608158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060815C  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80608160  4B A5 4B 95 */	bl fqrand
/* 80608164  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064BD7C@ha */
/* 80608168  38 00 00 00 */	li r0, 0
/* 8060816C  38 83 BD 7C */	addi r4, r3, lit_403@l /* 0x8064BD7C@l */
/* 80608170  7F C3 F3 78 */	mr r3, r30
/* 80608174  C0 04 00 00 */	lfs f0, 0(r4)
/* 80608178  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060817C  FC 00 00 1E */	fctiwz f0, f0
/* 80608180  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80608184  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80608188  B0 9F 00 52 */	sth r4, 0x52(r31)
/* 8060818C  B0 1F 00 54 */	sth r0, 0x54(r31)
/* 80608190  4B DB 29 61 */	bl sin_s
/* 80608194  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064BD80@ha */
/* 80608198  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064BD84@ha */
/* 8060819C  38 A3 BD 80 */	addi r5, r3, lit_404@l /* 0x8064BD80@l */
/* 806081A0  C0 04 BD 84 */	lfs f0, lit_405@l(r4)  /* 0x8064BD84@l */
/* 806081A4  C0 45 00 00 */	lfs f2, 0(r5)
/* 806081A8  7F C3 F3 78 */	mr r3, r30
/* 806081AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806081B0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 806081B4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 806081B8  4B DB 28 E5 */	bl cos_s
/* 806081BC  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064BD80@ha */
/* 806081C0  3C 80 80 65 */	lis r4, lit_406@ha /* 0x8064BD88@ha */
/* 806081C4  38 A3 BD 80 */	addi r5, r3, lit_404@l /* 0x8064BD80@l */
/* 806081C8  C0 44 BD 88 */	lfs f2, lit_406@l(r4)  /* 0x8064BD88@l */
/* 806081CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 806081D0  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064BD8C@ha */
/* 806081D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806081D8  C0 03 BD 8C */	lfs f0, lit_407@l(r3)  /* 0x8064BD8C@l */
/* 806081DC  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 806081E0  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 806081E4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 806081E8  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 806081EC  4B FF FE 09 */	bl eCoin_GetFountainHeight
/* 806081F0  3C 60 80 65 */	lis r3, lit_408@ha /* 0x8064BD90@ha */
/* 806081F4  3C 80 80 65 */	lis r4, lit_409@ha /* 0x8064BD94@ha */
/* 806081F8  38 A3 BD 90 */	addi r5, r3, lit_408@l /* 0x8064BD90@l */
/* 806081FC  C0 44 BD 94 */	lfs f2, lit_409@l(r4)  /* 0x8064BD94@l */
/* 80608200  C0 05 00 00 */	lfs f0, 0(r5)
/* 80608204  3C 60 80 65 */	lis r3, lit_410@ha /* 0x8064BD98@ha */
/* 80608208  38 9F 00 10 */	addi r4, r31, 0x10
/* 8060820C  EC 20 08 2A */	fadds f1, f0, f1
/* 80608210  C0 03 BD 98 */	lfs f0, lit_410@l(r3)  /* 0x8064BD98@l */
/* 80608214  38 60 04 66 */	li r3, 0x466
/* 80608218  EC 21 10 28 */	fsubs f1, f1, f2
/* 8060821C  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 80608220  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80608224  EC 01 00 28 */	fsubs f0, f1, f0
/* 80608228  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060822C  48 02 5D 7D */	bl sAdo_OngenTrgStart
/* 80608230  4B A5 4A C5 */	bl fqrand
/* 80608234  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BD9C@ha */
/* 80608238  C0 03 BD 9C */	lfs f0, lit_411@l(r3)  /* 0x8064BD9C@l */
/* 8060823C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80608240  FC 00 00 1E */	fctiwz f0, f0
/* 80608244  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80608248  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060824C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80608250  B0 1F 00 56 */	sth r0, 0x56(r31)
/* 80608254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80608258  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8060825C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80608260  7C 08 03 A6 */	mtlr r0
/* 80608264  38 21 00 40 */	addi r1, r1, 0x40
/* 80608268  4E 80 00 20 */	blr 
