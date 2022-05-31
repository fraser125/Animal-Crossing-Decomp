lbl_8044C378:
/* 8044C378  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8044C37C  7C 08 02 A6 */	mflr r0
/* 8044C380  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044C384  39 61 00 40 */	addi r11, r1, 0x40
/* 8044C388  4B C4 EB 4D */	bl func_8009AED4
/* 8044C38C  7C 7E 1B 78 */	mr r30, r3
/* 8044C390  7C 9F 23 78 */	mr r31, r4
/* 8044C394  4B C1 09 39 */	bl func_8005CCCC
/* 8044C398  7C 7D 07 34 */	extsh r29, r3
/* 8044C39C  7F C3 F3 78 */	mr r3, r30
/* 8044C3A0  7F E4 FB 78 */	mr r4, r31
/* 8044C3A4  4B FE 81 65 */	bl mfish_onefish_ct
/* 8044C3A8  4B C1 09 4D */	bl fqrand
/* 8044C3AC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8044C3B0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044C3B4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044C3B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8044C3BC  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8044C3C0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044C3C4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044C3C8  B3 BE 06 0E */	sth r29, 0x60e(r30)
/* 8044C3CC  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8044C3D0  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044C3D4  4B C1 09 59 */	bl fqrand2
/* 8044C3D8  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 8044C3DC  3C 00 43 30 */	lis r0, 0x4330
/* 8044C3E0  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044C3E4  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 8044C3E8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8044C3EC  90 01 00 08 */	stw r0, 8(r1)
/* 8044C3F0  38 E6 42 44 */	addi r7, r6, data_80644244@l /* 0x80644244@l */
/* 8044C3F4  C8 45 42 8C */	lfd f2, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044C3F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8044C3FC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044C400  38 83 42 98 */	addi r4, r3, lit_588@l /* 0x80644298@l */
/* 8044C404  C0 87 00 00 */	lfs f4, 0(r7)
/* 8044C408  C8 01 00 08 */	lfd f0, 8(r1)
/* 8044C40C  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8044C410  38 C3 42 70 */	addi r6, r3, lit_529@l /* 0x80644270@l */
/* 8044C414  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044C418  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044C41C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044C420  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 8044C424  C0 46 00 00 */	lfs f2, 0(r6)
/* 8044C428  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8044C42C  EC 84 00 32 */	fmuls f4, f4, f0
/* 8044C430  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044C434  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 8044C438  EC 24 00 72 */	fmuls f1, f4, f1
/* 8044C43C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044C440  FC 20 08 1E */	fctiwz f1, f1
/* 8044C444  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8044C448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044C44C  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 8044C450  A8 1E 06 0C */	lha r0, 0x60c(r30)
/* 8044C454  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044C458  D0 5E 05 F4 */	stfs f2, 0x5f4(r30)
/* 8044C45C  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8044C460  80 64 00 00 */	lwz r3, 0(r4)
/* 8044C464  80 04 00 04 */	lwz r0, 4(r4)
/* 8044C468  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 8044C46C  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 8044C470  80 04 00 08 */	lwz r0, 8(r4)
/* 8044C474  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8044C478  4B C1 08 55 */	bl func_8005CCCC
/* 8044C47C  B0 7E 06 38 */	sth r3, 0x638(r30)
/* 8044C480  38 00 00 00 */	li r0, 0
/* 8044C484  B0 1E 06 22 */	sth r0, 0x622(r30)
/* 8044C488  4B C1 08 6D */	bl fqrand
/* 8044C48C  A8 9E 00 2E */	lha r4, 0x2e(r30)
/* 8044C490  3C 00 43 30 */	lis r0, 0x4330
/* 8044C494  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044C498  90 01 00 18 */	stw r0, 0x18(r1)
/* 8044C49C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8044C4A0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044C4A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8044C4A8  38 C5 42 8C */	addi r6, r5, lit_570@l /* 0x8064428C@l */
/* 8044C4AC  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044C4B0  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 8044C4B4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8044C4B8  38 00 00 06 */	li r0, 6
/* 8044C4BC  A8 DE 00 2C */	lha r6, 0x2c(r30)
/* 8044C4C0  7F C3 F3 78 */	mr r3, r30
/* 8044C4C4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044C4C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044C4CC  7F E4 FB 78 */	mr r4, r31
/* 8044C4D0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044C4D4  FC 20 08 1E */	fctiwz f1, f1
/* 8044C4D8  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8044C4DC  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8044C4E0  7C A6 2A 14 */	add r5, r6, r5
/* 8044C4E4  B0 BE 06 26 */	sth r5, 0x626(r30)
/* 8044C4E8  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8044C4EC  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 8044C4F0  48 00 00 1D */	bl mfish_dojou_normal_init
/* 8044C4F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8044C4F8  4B C4 EA 29 */	bl func_8009AF20
/* 8044C4FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044C500  7C 08 03 A6 */	mtlr r0
/* 8044C504  38 21 00 40 */	addi r1, r1, 0x40
/* 8044C508  4E 80 00 20 */	blr 
