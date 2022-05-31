lbl_8045D278:
/* 8045D278  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045D27C  7C 08 02 A6 */	mflr r0
/* 8045D280  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045D284  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045D288  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045D28C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045D290  4B C3 DC 45 */	bl func_8009AED4
/* 8045D294  7C 7D 1B 78 */	mr r29, r3
/* 8045D298  7C 9E 23 78 */	mr r30, r4
/* 8045D29C  80 03 00 00 */	lwz r0, 0(r3)
/* 8045D2A0  2C 00 00 03 */	cmpwi r0, 3
/* 8045D2A4  41 82 00 1C */	beq lbl_8045D2C0
/* 8045D2A8  A8 9D 00 74 */	lha r4, 0x74(r29)
/* 8045D2AC  3C 60 80 68 */	lis r3, flower_pos@ha /* 0x806869AC@ha */
/* 8045D2B0  38 03 69 AC */	addi r0, r3, flower_pos@l /* 0x806869AC@l */
/* 8045D2B4  1C 64 00 0C */	mulli r3, r4, 0xc
/* 8045D2B8  7F E0 1A 14 */	add r31, r0, r3
/* 8045D2BC  48 00 00 10 */	b lbl_8045D2CC
lbl_8045D2C0:
/* 8045D2C0  3C 60 80 68 */	lis r3, ohmurasaki_tree_pos@ha /* 0x80686A0C@ha */
/* 8045D2C4  38 03 6A 0C */	addi r0, r3, ohmurasaki_tree_pos@l /* 0x80686A0C@l */
/* 8045D2C8  7C 1F 03 78 */	mr r31, r0
lbl_8045D2CC:
/* 8045D2CC  A8 7D 00 6E */	lha r3, 0x6e(r29)
/* 8045D2D0  38 03 FF FF */	addi r0, r3, -1
/* 8045D2D4  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045D2D8  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8045D2DC  7C 60 07 35 */	extsh. r0, r3
/* 8045D2E0  7C 03 00 D0 */	neg r0, r3
/* 8045D2E4  41 80 00 08 */	blt lbl_8045D2EC
/* 8045D2E8  7C 60 1B 78 */	mr r0, r3
lbl_8045D2EC:
/* 8045D2EC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8045D2F0  3C 00 43 30 */	lis r0, 0x4330
/* 8045D2F4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8045D2F8  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8045D2FC  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80644644@ha */
/* 8045D300  C8 44 46 3C */	lfd f2, lit_589@l(r4)  /* 0x8064463C@l */
/* 8045D304  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D308  C0 03 46 44 */	lfs f0, lit_674@l(r3)  /* 0x80644644@l */
/* 8045D30C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8045D310  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 8045D314  EC 21 10 28 */	fsubs f1, f1, f2
/* 8045D318  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8045D31C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045D320  EC 22 18 28 */	fsubs f1, f2, f3
/* 8045D324  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045D328  EC 03 00 2A */	fadds f0, f3, f0
/* 8045D32C  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8045D330  80 1D 00 00 */	lwz r0, 0(r29)
/* 8045D334  2C 00 00 03 */	cmpwi r0, 3
/* 8045D338  41 82 00 60 */	beq lbl_8045D398
/* 8045D33C  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8045D340  7C 60 07 35 */	extsh. r0, r3
/* 8045D344  7C 03 00 D0 */	neg r0, r3
/* 8045D348  41 80 00 08 */	blt lbl_8045D350
/* 8045D34C  7C 60 1B 78 */	mr r0, r3
lbl_8045D350:
/* 8045D350  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8045D354  3C 00 43 30 */	lis r0, 0x4330
/* 8045D358  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8045D35C  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8045D360  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80644644@ha */
/* 8045D364  C8 44 46 3C */	lfd f2, lit_589@l(r4)  /* 0x8064463C@l */
/* 8045D368  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D36C  C0 03 46 44 */	lfs f0, lit_674@l(r3)  /* 0x80644644@l */
/* 8045D370  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8045D374  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 8045D378  EC 21 10 28 */	fsubs f1, f1, f2
/* 8045D37C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8045D380  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045D384  EC 22 18 28 */	fsubs f1, f2, f3
/* 8045D388  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045D38C  EC 03 00 2A */	fadds f0, f3, f0
/* 8045D390  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8045D394  48 00 00 68 */	b lbl_8045D3FC
lbl_8045D398:
/* 8045D398  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8045D39C  7C 60 07 35 */	extsh. r0, r3
/* 8045D3A0  7C 03 00 D0 */	neg r0, r3
/* 8045D3A4  41 80 00 08 */	blt lbl_8045D3AC
/* 8045D3A8  7C 60 1B 78 */	mr r0, r3
lbl_8045D3AC:
/* 8045D3AC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8045D3B0  3C 00 43 30 */	lis r0, 0x4330
/* 8045D3B4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8045D3B8  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8045D3BC  C8 44 46 3C */	lfd f2, lit_589@l(r4)  /* 0x8064463C@l */
/* 8045D3C0  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80644644@ha */
/* 8045D3C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D3C8  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 8045D3CC  C0 03 46 44 */	lfs f0, lit_674@l(r3)  /* 0x80644644@l */
/* 8045D3D0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8045D3D4  C0 9D 00 30 */	lfs f4, 0x30(r29)
/* 8045D3D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8045D3DC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8045D3E0  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 8045D3E4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045D3E8  EC 23 20 28 */	fsubs f1, f3, f4
/* 8045D3EC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8045D3F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045D3F4  EC 04 00 2A */	fadds f0, f4, f0
/* 8045D3F8  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_8045D3FC:
/* 8045D3FC  C3 FD 00 2C */	lfs f31, 0x2c(r29)
/* 8045D400  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8045D404  4B F5 D6 99 */	bl cos_s
/* 8045D408  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045D40C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045D410  C0 64 46 0C */	lfs f3, lit_511@l(r4)  /* 0x8064460C@l */
/* 8045D414  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8045D418  EC 23 08 28 */	fsubs f1, f3, f1
/* 8045D41C  C0 43 45 E8 */	lfs f2, lit_506@l(r3)  /* 0x806445E8@l */
/* 8045D420  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8045D424  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045D428  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045D42C  EC 1F 00 2A */	fadds f0, f31, f0
/* 8045D430  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8045D434  A8 9D 00 76 */	lha r4, 0x76(r29)
/* 8045D438  2C 04 00 00 */	cmpwi r4, 0
/* 8045D43C  41 80 00 20 */	blt lbl_8045D45C
/* 8045D440  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D444  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8045D448  80 63 00 00 */	lwz r3, 0(r3)
/* 8045D44C  A8 03 1B 66 */	lha r0, 0x1b66(r3)
/* 8045D450  7C 60 22 14 */	add r3, r0, r4
/* 8045D454  38 03 04 00 */	addi r0, r3, 0x400
/* 8045D458  B0 1D 00 76 */	sth r0, 0x76(r29)
lbl_8045D45C:
/* 8045D45C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D460  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8045D464  C0 23 45 BC */	lfs f1, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D468  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045D46C  40 81 00 74 */	ble lbl_8045D4E0
/* 8045D470  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8045D474  FC 00 00 1E */	fctiwz f0, f0
/* 8045D478  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8045D47C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045D480  2C 00 00 01 */	cmpwi r0, 1
/* 8045D484  40 82 00 AC */	bne lbl_8045D530
/* 8045D488  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 8045D48C  2C 00 00 00 */	cmpwi r0, 0
/* 8045D490  40 80 00 A0 */	bge lbl_8045D530
/* 8045D494  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 8045D498  4B BF F8 5D */	bl fqrand
/* 8045D49C  3C 80 80 64 */	lis r4, lit_676@ha /* 0x8064464C@ha */
/* 8045D4A0  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8045D4A4  C0 44 46 4C */	lfs f2, lit_676@l(r4)  /* 0x8064464C@l */
/* 8045D4A8  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8045D4AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045D4B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8045D4B4  FC 00 00 1E */	fctiwz f0, f0
/* 8045D4B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8045D4BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045D4C0  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045D4C4  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 8045D4C8  2C 00 00 00 */	cmpwi r0, 0
/* 8045D4CC  40 82 00 64 */	bne lbl_8045D530
/* 8045D4D0  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 8045D4D4  1C 00 00 05 */	mulli r0, r0, 5
/* 8045D4D8  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045D4DC  48 00 00 54 */	b lbl_8045D530
lbl_8045D4E0:
/* 8045D4E0  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 8045D4E4  2C 00 00 00 */	cmpwi r0, 0
/* 8045D4E8  40 80 00 48 */	bge lbl_8045D530
/* 8045D4EC  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 8045D4F0  2C 00 00 01 */	cmpwi r0, 1
/* 8045D4F4  40 82 00 28 */	bne lbl_8045D51C
/* 8045D4F8  4B BF F7 FD */	bl fqrand
/* 8045D4FC  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8045D500  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 8045D504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045D508  40 81 00 14 */	ble lbl_8045D51C
/* 8045D50C  7F A3 EB 78 */	mr r3, r29
/* 8045D510  7F C4 F3 78 */	mr r4, r30
/* 8045D514  48 00 04 01 */	bl minsect_chou_fly_process_init
/* 8045D518  48 00 00 18 */	b lbl_8045D530
lbl_8045D51C:
/* 8045D51C  3C 60 80 64 */	lis r3, lit_460@ha /* 0x806445C0@ha */
/* 8045D520  38 00 00 10 */	li r0, 0x10
/* 8045D524  C0 03 45 C0 */	lfs f0, lit_460@l(r3)  /* 0x806445C0@l */
/* 8045D528  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8045D52C  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_8045D530:
/* 8045D530  80 1D 00 00 */	lwz r0, 0(r29)
/* 8045D534  2C 00 00 03 */	cmpwi r0, 3
/* 8045D538  40 82 03 BC */	bne lbl_8045D8F4
/* 8045D53C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D540  3C 00 43 30 */	lis r0, 0x4330
/* 8045D544  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045D548  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 8045D54C  80 84 00 00 */	lwz r4, 0(r4)
/* 8045D550  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045D554  38 A3 46 3C */	addi r5, r3, lit_589@l /* 0x8064463C@l */
/* 8045D558  3C E0 80 64 */	lis r7, lit_677@ha /* 0x80644650@ha */
/* 8045D55C  A8 64 1B 68 */	lha r3, 0x1b68(r4)
/* 8045D560  3D 00 80 64 */	lis r8, lit_511@ha /* 0x8064460C@ha */
/* 8045D564  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D568  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8045D56C  C8 25 00 00 */	lfd f1, 0(r5)
/* 8045D570  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8045D574  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D578  C0 46 46 54 */	lfs f2, lit_678@l(r6)  /* 0x80644654@l */
/* 8045D57C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8045D580  C0 67 46 50 */	lfs f3, lit_677@l(r7)  /* 0x80644650@l */
/* 8045D584  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045D588  C0 88 46 0C */	lfs f4, lit_511@l(r8)  /* 0x8064460C@l */
/* 8045D58C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D590  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045D594  EC 23 08 2A */	fadds f1, f3, f1
/* 8045D598  EC 84 08 28 */	fsubs f4, f4, f1
/* 8045D59C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045D5A0  40 81 00 68 */	ble lbl_8045D608
/* 8045D5A4  FC 20 20 34 */	frsqrte f1, f4
/* 8045D5A8  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045D5AC  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045D5B0  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045D5B4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045D5B8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D5BC  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045D5C0  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D5C4  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D5C8  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D5CC  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D5D0  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D5D4  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D5D8  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D5DC  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D5E0  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D5E4  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D5E8  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D5EC  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D5F0  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D5F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8045D5F8  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D5FC  FC 00 00 18 */	frsp f0, f0
/* 8045D600  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045D604  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_8045D608:
/* 8045D608  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045D60C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D610  C0 44 46 0C */	lfs f2, lit_511@l(r4)  /* 0x8064460C@l */
/* 8045D614  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D618  EC 22 20 28 */	fsubs f1, f2, f4
/* 8045D61C  EC 82 08 28 */	fsubs f4, f2, f1
/* 8045D620  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045D624  40 81 00 68 */	ble lbl_8045D68C
/* 8045D628  FC 20 20 34 */	frsqrte f1, f4
/* 8045D62C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045D630  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045D634  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045D638  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045D63C  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D640  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045D644  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D648  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D64C  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D650  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D654  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D658  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D65C  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D660  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D664  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D668  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D66C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D670  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D674  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D678  FC 01 00 32 */	fmul f0, f1, f0
/* 8045D67C  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D680  FC 00 00 18 */	frsp f0, f0
/* 8045D684  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045D688  C0 81 00 10 */	lfs f4, 0x10(r1)
lbl_8045D68C:
/* 8045D68C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D690  3C 00 43 30 */	lis r0, 0x4330
/* 8045D694  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045D698  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D69C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8045D6A0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045D6A4  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8045D6A8  3C C0 80 64 */	lis r6, lit_586@ha /* 0x80644634@ha */
/* 8045D6AC  A8 65 1B 6C */	lha r3, 0x1b6c(r5)
/* 8045D6B0  38 A6 46 34 */	addi r5, r6, lit_586@l /* 0x80644634@l */
/* 8045D6B4  C8 44 00 00 */	lfd f2, 0(r4)
/* 8045D6B8  3C C0 80 64 */	lis r6, lit_511@ha /* 0x8064460C@ha */
/* 8045D6BC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8045D6C0  C0 26 46 0C */	lfs f1, lit_511@l(r6)  /* 0x8064460C@l */
/* 8045D6C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8045D6C8  3C E0 80 64 */	lis r7, lit_505@ha /* 0x806445E4@ha */
/* 8045D6CC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045D6D0  EC 21 20 28 */	fsubs f1, f1, f4
/* 8045D6D4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8045D6D8  38 7D 00 72 */	addi r3, r29, 0x72
/* 8045D6DC  38 80 80 00 */	li r4, -32768
/* 8045D6E0  38 C0 00 2D */	li r6, 0x2d
/* 8045D6E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8045D6E8  C0 47 45 E4 */	lfs f2, lit_505@l(r7)  /* 0x806445E4@l */
/* 8045D6EC  EC 03 00 2A */	fadds f0, f3, f0
/* 8045D6F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8045D6F4  FC 00 00 1E */	fctiwz f0, f0
/* 8045D6F8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8045D6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045D700  7C 00 07 34 */	extsh r0, r0
/* 8045D704  7C 00 0E 70 */	srawi r0, r0, 1
/* 8045D708  7C 00 07 34 */	extsh r0, r0
/* 8045D70C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8045D710  7C 05 07 34 */	extsh r5, r0
/* 8045D714  4B F5 DB FD */	bl add_calc_short_angle2
/* 8045D718  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D71C  3C 00 43 30 */	lis r0, 0x4330
/* 8045D720  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045D724  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 8045D728  80 84 00 00 */	lwz r4, 0(r4)
/* 8045D72C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045D730  38 A3 46 3C */	addi r5, r3, lit_589@l /* 0x8064463C@l */
/* 8045D734  3C E0 80 64 */	lis r7, lit_677@ha /* 0x80644650@ha */
/* 8045D738  A8 64 1B 6A */	lha r3, 0x1b6a(r4)
/* 8045D73C  3D 00 80 64 */	lis r8, lit_511@ha /* 0x8064460C@ha */
/* 8045D740  90 01 00 28 */	stw r0, 0x28(r1)
/* 8045D744  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8045D748  C8 25 00 00 */	lfd f1, 0(r5)
/* 8045D74C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8045D750  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D754  C0 46 46 54 */	lfs f2, lit_678@l(r6)  /* 0x80644654@l */
/* 8045D758  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8045D75C  C0 67 46 50 */	lfs f3, lit_677@l(r7)  /* 0x80644650@l */
/* 8045D760  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045D764  C0 88 46 0C */	lfs f4, lit_511@l(r8)  /* 0x8064460C@l */
/* 8045D768  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D76C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045D770  EC 23 08 2A */	fadds f1, f3, f1
/* 8045D774  EC 84 08 28 */	fsubs f4, f4, f1
/* 8045D778  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045D77C  40 81 00 68 */	ble lbl_8045D7E4
/* 8045D780  FC 20 20 34 */	frsqrte f1, f4
/* 8045D784  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045D788  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045D78C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045D790  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045D794  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D798  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045D79C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D7A0  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D7A4  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D7A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D7AC  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D7B0  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D7B4  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D7B8  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D7BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D7C0  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D7C4  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D7C8  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D7CC  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D7D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8045D7D4  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D7D8  FC 00 00 18 */	frsp f0, f0
/* 8045D7DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8045D7E0  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_8045D7E4:
/* 8045D7E4  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045D7E8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D7EC  C0 44 46 0C */	lfs f2, lit_511@l(r4)  /* 0x8064460C@l */
/* 8045D7F0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D7F4  EC 22 20 28 */	fsubs f1, f2, f4
/* 8045D7F8  EC 82 08 28 */	fsubs f4, f2, f1
/* 8045D7FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045D800  40 81 00 68 */	ble lbl_8045D868
/* 8045D804  FC 20 20 34 */	frsqrte f1, f4
/* 8045D808  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045D80C  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045D810  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045D814  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045D818  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D81C  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045D820  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D824  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D828  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D82C  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D830  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D834  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D838  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D83C  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D840  FC 21 00 32 */	fmul f1, f1, f0
/* 8045D844  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D848  FC 23 00 72 */	fmul f1, f3, f1
/* 8045D84C  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D850  FC 02 00 28 */	fsub f0, f2, f0
/* 8045D854  FC 01 00 32 */	fmul f0, f1, f0
/* 8045D858  FC 04 00 32 */	fmul f0, f4, f0
/* 8045D85C  FC 00 00 18 */	frsp f0, f0
/* 8045D860  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045D864  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8045D868:
/* 8045D868  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D86C  3C 00 43 30 */	lis r0, 0x4330
/* 8045D870  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045D874  90 01 00 28 */	stw r0, 0x28(r1)
/* 8045D878  80 A4 00 00 */	lwz r5, 0(r4)
/* 8045D87C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045D880  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8045D884  3C C0 80 64 */	lis r6, lit_586@ha /* 0x80644634@ha */
/* 8045D888  A8 65 1B 6E */	lha r3, 0x1b6e(r5)
/* 8045D88C  38 A6 46 34 */	addi r5, r6, lit_586@l /* 0x80644634@l */
/* 8045D890  C8 44 00 00 */	lfd f2, 0(r4)
/* 8045D894  3C C0 80 64 */	lis r6, lit_511@ha /* 0x8064460C@ha */
/* 8045D898  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8045D89C  C0 26 46 0C */	lfs f1, lit_511@l(r6)  /* 0x8064460C@l */
/* 8045D8A0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8045D8A4  3C E0 80 64 */	lis r7, lit_505@ha /* 0x806445E4@ha */
/* 8045D8A8  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045D8AC  EC 21 20 28 */	fsubs f1, f1, f4
/* 8045D8B0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8045D8B4  38 7D 00 68 */	addi r3, r29, 0x68
/* 8045D8B8  38 80 C0 00 */	li r4, -16384
/* 8045D8BC  38 C0 00 2D */	li r6, 0x2d
/* 8045D8C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8045D8C4  C0 47 45 E4 */	lfs f2, lit_505@l(r7)  /* 0x806445E4@l */
/* 8045D8C8  EC 03 00 2A */	fadds f0, f3, f0
/* 8045D8CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8045D8D0  FC 00 00 1E */	fctiwz f0, f0
/* 8045D8D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8045D8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045D8DC  7C 00 07 34 */	extsh r0, r0
/* 8045D8E0  7C 00 0E 70 */	srawi r0, r0, 1
/* 8045D8E4  7C 00 07 34 */	extsh r0, r0
/* 8045D8E8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8045D8EC  7C 05 07 34 */	extsh r5, r0
/* 8045D8F0  4B F5 DA 21 */	bl add_calc_short_angle2
lbl_8045D8F4:
/* 8045D8F4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045D8F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8045D8FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045D900  4B C3 D6 21 */	bl func_8009AF20
/* 8045D904  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045D908  7C 08 03 A6 */	mtlr r0
/* 8045D90C  38 21 00 50 */	addi r1, r1, 0x50
/* 8045D910  4E 80 00 20 */	blr 
