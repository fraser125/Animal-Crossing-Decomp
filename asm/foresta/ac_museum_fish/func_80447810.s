lbl_80447810:
/* 80447810  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80447814  7C 08 02 A6 */	mflr r0
/* 80447818  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044781C  39 61 00 40 */	addi r11, r1, 0x40
/* 80447820  4B C5 36 B5 */	bl func_8009AED4
/* 80447824  7C 7E 1B 78 */	mr r30, r3
/* 80447828  7C 9F 23 78 */	mr r31, r4
/* 8044782C  4B C1 54 A1 */	bl func_8005CCCC
/* 80447830  7C 7D 07 34 */	extsh r29, r3
/* 80447834  7F C3 F3 78 */	mr r3, r30
/* 80447838  7F E4 FB 78 */	mr r4, r31
/* 8044783C  4B FE CC CD */	bl mfish_onefish_ct
/* 80447840  4B C1 54 B5 */	bl fqrand
/* 80447844  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80447848  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044784C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80447850  EC 00 08 2A */	fadds f0, f0, f1
/* 80447854  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80447858  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044785C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80447860  B3 BE 06 0E */	sth r29, 0x60e(r30)
/* 80447864  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 80447868  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044786C  4B C1 54 C1 */	bl fqrand2
/* 80447870  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 80447874  3C 00 43 30 */	lis r0, 0x4330
/* 80447878  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044787C  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 80447880  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80447884  90 01 00 08 */	stw r0, 8(r1)
/* 80447888  38 E6 42 44 */	addi r7, r6, data_80644244@l /* 0x80644244@l */
/* 8044788C  C8 45 42 8C */	lfd f2, lit_570@l(r5)  /* 0x8064428C@l */
/* 80447890  90 81 00 0C */	stw r4, 0xc(r1)
/* 80447894  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80447898  38 83 42 98 */	addi r4, r3, lit_588@l /* 0x80644298@l */
/* 8044789C  C0 87 00 00 */	lfs f4, 0(r7)
/* 804478A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804478A4  3C 60 80 64 */	lis r3, lit_4929@ha /* 0x80644400@ha */
/* 804478A8  38 C3 44 00 */	addi r6, r3, lit_4929@l /* 0x80644400@l */
/* 804478AC  C0 64 00 00 */	lfs f3, 0(r4)
/* 804478B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804478B4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804478B8  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 804478BC  C0 46 00 00 */	lfs f2, 0(r6)
/* 804478C0  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804478C4  EC 84 00 32 */	fmuls f4, f4, f0
/* 804478C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804478CC  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804478D0  EC 24 00 72 */	fmuls f1, f4, f1
/* 804478D4  EC 23 00 72 */	fmuls f1, f3, f1
/* 804478D8  FC 20 08 1E */	fctiwz f1, f1
/* 804478DC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 804478E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804478E4  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 804478E8  A8 1E 06 0C */	lha r0, 0x60c(r30)
/* 804478EC  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 804478F0  D0 5E 05 F4 */	stfs f2, 0x5f4(r30)
/* 804478F4  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 804478F8  80 64 00 00 */	lwz r3, 0(r4)
/* 804478FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80447900  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80447904  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80447908  80 04 00 08 */	lwz r0, 8(r4)
/* 8044790C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80447910  4B C1 53 BD */	bl func_8005CCCC
/* 80447914  B0 7E 06 38 */	sth r3, 0x638(r30)
/* 80447918  38 00 00 00 */	li r0, 0
/* 8044791C  B0 1E 06 22 */	sth r0, 0x622(r30)
/* 80447920  4B C1 53 D5 */	bl fqrand
/* 80447924  A8 9E 00 2E */	lha r4, 0x2e(r30)
/* 80447928  3C 00 43 30 */	lis r0, 0x4330
/* 8044792C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80447930  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80447934  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80447938  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044793C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80447940  38 00 00 06 */	li r0, 6
/* 80447944  A8 BE 00 2C */	lha r5, 0x2c(r30)
/* 80447948  7F C3 F3 78 */	mr r3, r30
/* 8044794C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80447950  7F E4 FB 78 */	mr r4, r31
/* 80447954  EC 00 10 28 */	fsubs f0, f0, f2
/* 80447958  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044795C  FC 00 00 1E */	fctiwz f0, f0
/* 80447960  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80447964  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80447968  7C A5 32 14 */	add r5, r5, r6
/* 8044796C  B0 BE 06 26 */	sth r5, 0x626(r30)
/* 80447970  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80447974  48 00 00 1D */	bl mfish_gupi_normal_init
/* 80447978  39 61 00 40 */	addi r11, r1, 0x40
/* 8044797C  4B C5 35 A5 */	bl func_8009AF20
/* 80447980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80447984  7C 08 03 A6 */	mtlr r0
/* 80447988  38 21 00 40 */	addi r1, r1, 0x40
/* 8044798C  4E 80 00 20 */	blr 
