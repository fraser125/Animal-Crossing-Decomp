lbl_80444150:
/* 80444150  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80444154  7C 08 02 A6 */	mflr r0
/* 80444158  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044415C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80444160  7C 9F 23 78 */	mr r31, r4
/* 80444164  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80444168  7C 7E 1B 78 */	mr r30, r3
/* 8044416C  81 83 00 34 */	lwz r12, 0x34(r3)
/* 80444170  7D 89 03 A6 */	mtctr r12
/* 80444174  4E 80 04 21 */	bctrl 
/* 80444178  4B C1 8B 7D */	bl fqrand
/* 8044417C  3C 80 80 64 */	lis r4, lit_840@ha /* 0x806442D8@ha */
/* 80444180  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80444184  C0 64 42 D8 */	lfs f3, lit_840@l(r4)  /* 0x806442D8@l */
/* 80444188  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 8044418C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80444190  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 80444194  A8 1E 06 18 */	lha r0, 0x618(r30)
/* 80444198  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044419C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804441A0  FC 00 00 1E */	fctiwz f0, f0
/* 804441A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804441A8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804441AC  7C 00 1A 14 */	add r0, r0, r3
/* 804441B0  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 804441B4  A8 7E 06 18 */	lha r3, 0x618(r30)
/* 804441B8  4B F7 69 39 */	bl sin_s
/* 804441BC  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 804441C0  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 804441C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804441C8  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 804441CC  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 804441D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804441D4  41 82 00 30 */	beq lbl_80444204
/* 804441D8  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 804441DC  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 804441E0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804441E4  38 A3 43 48 */	addi r5, r3, lit_1558@l /* 0x80644348@l */
/* 804441E8  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 804441EC  C0 45 00 00 */	lfs f2, 0(r5)
/* 804441F0  EC 21 00 2A */	fadds f1, f1, f0
/* 804441F4  C0 64 42 AC */	lfs f3, lit_666@l(r4)  /* 0x806442AC@l */
/* 804441F8  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 804441FC  4B F7 70 99 */	bl add_calc2
/* 80444200  48 00 00 24 */	b lbl_80444224
lbl_80444204:
/* 80444204  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80444208  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8044420C  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 80444210  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80444214  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80444218  FC 60 10 90 */	fmr f3, f2
/* 8044421C  EC 21 00 2A */	fadds f1, f1, f0
/* 80444220  4B F7 70 75 */	bl add_calc2
lbl_80444224:
/* 80444224  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644308@ha */
/* 80444228  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 8044422C  38 A3 43 08 */	addi r5, r3, lit_1068@l /* 0x80644308@l */
/* 80444230  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 80444234  C0 25 00 00 */	lfs f1, 0(r5)
/* 80444238  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8044423C  4B F7 70 9D */	bl add_calc0
/* 80444240  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444244  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80444248  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044424C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80444250  40 80 00 08 */	bge lbl_80444258
/* 80444254  48 00 00 08 */	b lbl_8044425C
lbl_80444258:
/* 80444258  FC 00 08 90 */	fmr f0, f1
lbl_8044425C:
/* 8044425C  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 80444260  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 80444264  7C 80 07 35 */	extsh. r0, r4
/* 80444268  7C 04 00 D0 */	neg r0, r4
/* 8044426C  41 80 00 08 */	blt lbl_80444274
/* 80444270  7C 80 23 78 */	mr r0, r4
lbl_80444274:
/* 80444274  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 80444278  40 81 00 68 */	ble lbl_804442E0
/* 8044427C  7C 80 07 35 */	extsh. r0, r4
/* 80444280  7C 64 00 D0 */	neg r3, r4
/* 80444284  41 80 00 08 */	blt lbl_8044428C
/* 80444288  7C 83 23 78 */	mr r3, r4
lbl_8044428C:
/* 8044428C  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 80444290  7C 80 07 35 */	extsh. r0, r4
/* 80444294  7C 04 00 D0 */	neg r0, r4
/* 80444298  41 80 00 08 */	blt lbl_804442A0
/* 8044429C  7C 80 23 78 */	mr r0, r4
lbl_804442A0:
/* 804442A0  7C 03 00 51 */	subf. r0, r3, r0
/* 804442A4  40 80 00 3C */	bge lbl_804442E0
/* 804442A8  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 804442AC  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 804442B0  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 804442B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804442B8  40 81 00 08 */	ble lbl_804442C0
/* 804442BC  48 00 00 08 */	b lbl_804442C4
lbl_804442C0:
/* 804442C0  FC 20 00 90 */	fmr f1, f0
lbl_804442C4:
/* 804442C4  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 804442C8  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644308@ha */
/* 804442CC  C0 63 43 08 */	lfs f3, lit_1068@l(r3)  /* 0x80644308@l */
/* 804442D0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804442D4  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 804442D8  4B F7 6F BD */	bl add_calc2
/* 804442DC  48 00 00 88 */	b lbl_80444364
lbl_804442E0:
/* 804442E0  A8 7E 06 28 */	lha r3, 0x628(r30)
/* 804442E4  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 804442E8  38 03 FF B0 */	addi r0, r3, -80
/* 804442EC  7C 04 00 00 */	cmpw r4, r0
/* 804442F0  40 80 00 30 */	bge lbl_80444320
/* 804442F4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804442F8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 804442FC  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80444300  3C 60 80 64 */	lis r3, lit_2377@ha /* 0x80644384@ha */
/* 80444304  38 83 43 84 */	addi r4, r3, lit_2377@l /* 0x80644384@l */
/* 80444308  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 8044430C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80444310  C0 64 00 00 */	lfs f3, 0(r4)
/* 80444314  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80444318  4B F7 6F 7D */	bl add_calc2
/* 8044431C  48 00 00 48 */	b lbl_80444364
lbl_80444320:
/* 80444320  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80444324  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80444328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8044432C  40 81 00 20 */	ble lbl_8044434C
/* 80444330  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80444334  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80444338  C0 63 42 C4 */	lfs f3, lit_793@l(r3)  /* 0x806442C4@l */
/* 8044433C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80444340  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80444344  4B F7 6F 51 */	bl add_calc2
/* 80444348  48 00 00 1C */	b lbl_80444364
lbl_8044434C:
/* 8044434C  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80444350  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 80444354  C0 63 43 48 */	lfs f3, lit_1558@l(r3)  /* 0x80644348@l */
/* 80444358  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044435C  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80444360  4B F7 6F 35 */	bl add_calc2
lbl_80444364:
/* 80444364  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80444368  3C 80 43 30 */	lis r4, 0x4330
/* 8044436C  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 80444370  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 80444374  81 25 00 00 */	lwz r9, 0(r5)
/* 80444378  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044437C  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80444380  90 81 00 18 */	stw r4, 0x18(r1)
/* 80444384  A8 A9 1B 3C */	lha r5, 0x1b3c(r9)
/* 80444388  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8044438C  A8 09 1B 3E */	lha r0, 0x1b3e(r9)
/* 80444390  38 E3 42 C4 */	addi r7, r3, lit_793@l /* 0x806442C4@l */
/* 80444394  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80444398  3C 60 80 64 */	lis r3, lit_603@ha /* 0x8064429C@ha */
/* 8044439C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804443A0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804443A4  C8 86 00 00 */	lfd f4, 0(r6)
/* 804443A8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804443AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804443B0  EC 00 20 28 */	fsubs f0, f0, f4
/* 804443B4  C0 A7 00 00 */	lfs f5, 0(r7)
/* 804443B8  90 81 00 20 */	stw r4, 0x20(r1)
/* 804443BC  C0 C8 42 5C */	lfs f6, lit_471@l(r8)  /* 0x8064425C@l */
/* 804443C0  EC 65 00 32 */	fmuls f3, f5, f0
/* 804443C4  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 804443C8  C0 43 42 9C */	lfs f2, lit_603@l(r3)  /* 0x8064429C@l */
/* 804443CC  EC 21 20 28 */	fsubs f1, f1, f4
/* 804443D0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804443D4  EC 66 18 2A */	fadds f3, f6, f3
/* 804443D8  EC 25 00 72 */	fmuls f1, f5, f1
/* 804443DC  EC 66 00 F2 */	fmuls f3, f6, f3
/* 804443E0  EC 22 08 2A */	fadds f1, f2, f1
/* 804443E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804443E8  EC 03 00 2A */	fadds f0, f3, f0
/* 804443EC  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 804443F0  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 804443F4  4B F7 66 FD */	bl sin_s
/* 804443F8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804443FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80444400  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80444404  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80444408  4B F7 66 95 */	bl cos_s
/* 8044440C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80444410  7F C4 F3 78 */	mr r4, r30
/* 80444414  7F E5 FB 78 */	mr r5, r31
/* 80444418  38 61 00 08 */	addi r3, r1, 8
/* 8044441C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80444420  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80444424  4B FF 33 81 */	bl mfish_get_flow_vec
/* 80444428  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 8044442C  7F C3 F3 78 */	mr r3, r30
/* 80444430  C0 01 00 08 */	lfs f0, 8(r1)
/* 80444434  7F E4 FB 78 */	mr r4, r31
/* 80444438  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8044443C  EC 01 00 2A */	fadds f0, f1, f0
/* 80444440  EC 02 00 2A */	fadds f0, f2, f0
/* 80444444  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80444448  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8044444C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80444450  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80444454  EC 01 00 2A */	fadds f0, f1, f0
/* 80444458  EC 02 00 2A */	fadds f0, f2, f0
/* 8044445C  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80444460  4B FF 01 9D */	bl mfish_onefish_mv
/* 80444464  7F C3 F3 78 */	mr r3, r30
/* 80444468  7F E4 FB 78 */	mr r4, r31
/* 8044446C  4B FF 2C 25 */	bl mfish_body_wind_anime_play
/* 80444470  7F C3 F3 78 */	mr r3, r30
/* 80444474  7F E4 FB 78 */	mr r4, r31
/* 80444478  4B FF 18 19 */	bl Museum_Fish_BGCheck
/* 8044447C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80444480  3C 00 43 30 */	lis r0, 0x4330
/* 80444484  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80444488  3C A0 80 64 */	lis r5, lit_1997@ha /* 0x8064437C@ha */
/* 8044448C  80 84 00 00 */	lwz r4, 0(r4)
/* 80444490  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80444494  90 01 00 28 */	stw r0, 0x28(r1)
/* 80444498  A8 04 1B A2 */	lha r0, 0x1ba2(r4)
/* 8044449C  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 804444A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804444A4  C0 65 43 7C */	lfs f3, lit_1997@l(r5)  /* 0x8064437C@l */
/* 804444A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804444AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804444B0  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 804444B4  C0 9E 05 A4 */	lfs f4, 0x5a4(r30)
/* 804444B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 804444BC  EC 23 08 2A */	fadds f1, f3, f1
/* 804444C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804444C4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804444C8  40 80 00 08 */	bge lbl_804444D0
/* 804444CC  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
lbl_804444D0:
/* 804444D0  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 804444D4  38 03 FF FF */	addi r0, r3, -1
/* 804444D8  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 804444DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804444E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804444E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804444E8  7C 08 03 A6 */	mtlr r0
/* 804444EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804444F0  4E 80 00 20 */	blr 
