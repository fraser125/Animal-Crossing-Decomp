lbl_803BB724:
/* 803BB724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BB728  7C 08 02 A6 */	mflr r0
/* 803BB72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BB730  39 61 00 20 */	addi r11, r1, 0x20
/* 803BB734  4B CD F7 A1 */	bl func_8009AED4
/* 803BB738  7C 7D 1B 78 */	mr r29, r3
/* 803BB73C  7C 9E 23 78 */	mr r30, r4
/* 803BB740  7C BF 2B 78 */	mr r31, r5
/* 803BB744  38 80 00 00 */	li r4, 0
/* 803BB748  38 7D 20 0C */	addi r3, r29, 0x200c
/* 803BB74C  48 05 0B 4D */	bl Matrix_mult
/* 803BB750  7F C3 F3 78 */	mr r3, r30
/* 803BB754  7F E4 FB 78 */	mr r4, r31
/* 803BB758  48 05 1C AD */	bl Matrix_Position
/* 803BB75C  C0 7D 20 18 */	lfs f3, 0x2018(r29)
/* 803BB760  3C 60 80 64 */	lis r3, lit_1000@ha /* 0x80642588@ha */
/* 803BB764  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803BB768  38 83 25 88 */	addi r4, r3, lit_1000@l /* 0x80642588@l */
/* 803BB76C  C0 3D 20 28 */	lfs f1, 0x2028(r29)
/* 803BB770  3C 60 80 64 */	lis r3, lit_1001@ha /* 0x8064258C@ha */
/* 803BB774  C0 1E 00 04 */	lfs f0, 4(r30)
/* 803BB778  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803BB77C  C0 7D 20 38 */	lfs f3, 0x2038(r29)
/* 803BB780  39 61 00 20 */	addi r11, r1, 0x20
/* 803BB784  EC 21 00 32 */	fmuls f1, f1, f0
/* 803BB788  C0 1E 00 08 */	lfs f0, 8(r30)
/* 803BB78C  C0 BD 20 48 */	lfs f5, 0x2048(r29)
/* 803BB790  EC 83 00 32 */	fmuls f4, f3, f0
/* 803BB794  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803BB798  EC 62 08 2A */	fadds f3, f2, f1
/* 803BB79C  C0 44 00 00 */	lfs f2, 0(r4)
/* 803BB7A0  C0 23 25 8C */	lfs f1, lit_1001@l(r3)  /* 0x8064258C@l */
/* 803BB7A4  EC 64 18 2A */	fadds f3, f4, f3
/* 803BB7A8  EC 65 18 2A */	fadds f3, f5, f3
/* 803BB7AC  EC 00 18 24 */	fdivs f0, f0, f3
/* 803BB7B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803BB7B4  EC 02 00 2A */	fadds f0, f2, f0
/* 803BB7B8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803BB7BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803BB7C0  EC 00 18 24 */	fdivs f0, f0, f3
/* 803BB7C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803BB7C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BB7CC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803BB7D0  4B CD F7 51 */	bl func_8009AF20
/* 803BB7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BB7D8  7C 08 03 A6 */	mtlr r0
/* 803BB7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BB7E0  4E 80 00 20 */	blr 
