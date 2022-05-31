lbl_8045B30C:
/* 8045B30C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045B310  7C 08 02 A6 */	mflr r0
/* 8045B314  3C A0 80 68 */	lis r5, ari_rail_pos@ha /* 0x80686DDC@ha */
/* 8045B318  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045B31C  38 05 6D DC */	addi r0, r5, ari_rail_pos@l /* 0x80686DDC@l */
/* 8045B320  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8045B324  7C 9F 23 78 */	mr r31, r4
/* 8045B328  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8045B32C  7C 7E 1B 78 */	mr r30, r3
/* 8045B330  A8 C3 00 70 */	lha r6, 0x70(r3)
/* 8045B334  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B338  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B33C  1C A6 00 0C */	mulli r5, r6, 0xc
/* 8045B340  7C A0 2A 14 */	add r5, r0, r5
/* 8045B344  80 85 00 00 */	lwz r4, 0(r5)
/* 8045B348  80 65 00 04 */	lwz r3, 4(r5)
/* 8045B34C  80 05 00 08 */	lwz r0, 8(r5)
/* 8045B350  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8045B354  90 61 00 20 */	stw r3, 0x20(r1)
/* 8045B358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B35C  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8045B360  38 03 FF FF */	addi r0, r3, -1
/* 8045B364  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045B368  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8045B36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045B370  40 81 02 E0 */	ble lbl_8045B650
/* 8045B374  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8045B378  3C 80 80 64 */	lis r4, lit_505@ha /* 0x806445E4@ha */
/* 8045B37C  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 8045B380  C0 64 45 E4 */	lfs f3, lit_505@l(r4)  /* 0x806445E4@l */
/* 8045B384  2C 00 00 00 */	cmpwi r0, 0
/* 8045B388  C0 43 46 64 */	lfs f2, lit_762@l(r3)  /* 0x80644664@l */
/* 8045B38C  40 81 00 18 */	ble lbl_8045B3A4
/* 8045B390  3C 60 80 64 */	lis r3, lit_4642@ha /* 0x80644908@ha */
/* 8045B394  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8045B398  C0 23 49 08 */	lfs f1, lit_4642@l(r3)  /* 0x80644908@l */
/* 8045B39C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8045B3A0  48 00 00 14 */	b lbl_8045B3B4
lbl_8045B3A4:
/* 8045B3A4  3C 60 80 64 */	lis r3, lit_4643@ha /* 0x8064490C@ha */
/* 8045B3A8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8045B3AC  C0 03 49 0C */	lfs f0, lit_4643@l(r3)  /* 0x8064490C@l */
/* 8045B3B0  EC 01 00 28 */	fsubs f0, f1, f0
lbl_8045B3B4:
/* 8045B3B4  3C 60 80 64 */	lis r3, lit_1741@ha /* 0x806447A0@ha */
/* 8045B3B8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8045B3BC  C0 03 47 A0 */	lfs f0, lit_1741@l(r3)  /* 0x806447A0@l */
/* 8045B3C0  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045B3C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045B3C8  2C 00 00 01 */	cmpwi r0, 1
/* 8045B3CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8045B3D0  FC 00 00 1E */	fctiwz f0, f0
/* 8045B3D4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045B3D8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8045B3DC  7C 03 07 34 */	extsh r3, r0
/* 8045B3E0  40 82 00 5C */	bne lbl_8045B43C
/* 8045B3E4  4B F5 F7 0D */	bl sin_s
/* 8045B3E8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045B3EC  3C 00 43 30 */	lis r0, 0x4330
/* 8045B3F0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045B3F4  3C A0 80 64 */	lis r5, lit_1584@ha /* 0x8064475C@ha */
/* 8045B3F8  80 84 00 00 */	lwz r4, 0(r4)
/* 8045B3FC  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045B400  3C C0 80 64 */	lis r6, lit_4644@ha /* 0x80644910@ha */
/* 8045B404  90 01 00 28 */	stw r0, 0x28(r1)
/* 8045B408  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 8045B40C  C8 43 46 3C */	lfd f2, lit_589@l(r3)  /* 0x8064463C@l */
/* 8045B410  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8045B414  C0 65 47 5C */	lfs f3, lit_1584@l(r5)  /* 0x8064475C@l */
/* 8045B418  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8045B41C  C0 86 49 10 */	lfs f4, lit_4644@l(r6)  /* 0x80644910@l */
/* 8045B420  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8045B424  EC 00 10 28 */	fsubs f0, f0, f2
/* 8045B428  EC 03 00 32 */	fmuls f0, f3, f0
/* 8045B42C  EC 04 00 28 */	fsubs f0, f4, f0
/* 8045B430  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B434  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8045B438  48 00 00 58 */	b lbl_8045B490
lbl_8045B43C:
/* 8045B43C  4B F5 F6 B5 */	bl sin_s
/* 8045B440  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045B444  3C 00 43 30 */	lis r0, 0x4330
/* 8045B448  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045B44C  3C A0 80 64 */	lis r5, lit_1584@ha /* 0x8064475C@ha */
/* 8045B450  80 84 00 00 */	lwz r4, 0(r4)
/* 8045B454  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045B458  3C C0 80 64 */	lis r6, lit_461@ha /* 0x806445C4@ha */
/* 8045B45C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8045B460  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 8045B464  C8 43 46 3C */	lfd f2, lit_589@l(r3)  /* 0x8064463C@l */
/* 8045B468  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8045B46C  C0 65 47 5C */	lfs f3, lit_1584@l(r5)  /* 0x8064475C@l */
/* 8045B470  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8045B474  C0 86 45 C4 */	lfs f4, lit_461@l(r6)  /* 0x806445C4@l */
/* 8045B478  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8045B47C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8045B480  EC 03 00 32 */	fmuls f0, f3, f0
/* 8045B484  EC 04 00 2A */	fadds f0, f4, f0
/* 8045B488  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B48C  D0 1E 00 58 */	stfs f0, 0x58(r30)
lbl_8045B490:
/* 8045B490  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8045B494  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8045B498  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8045B49C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8045B4A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8045B4A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8045B4A8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8045B4AC  4B F5 F8 31 */	bl chase_xyz_t
/* 8045B4B0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B4B4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B4B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8045B4BC  40 82 00 2C */	bne lbl_8045B4E8
/* 8045B4C0  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 8045B4C4  2C 03 00 01 */	cmpwi r3, 1
/* 8045B4C8  40 82 00 14 */	bne lbl_8045B4DC
/* 8045B4CC  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8045B4D0  7C 03 02 14 */	add r0, r3, r0
/* 8045B4D4  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045B4D8  48 00 00 10 */	b lbl_8045B4E8
lbl_8045B4DC:
/* 8045B4DC  7F C3 F3 78 */	mr r3, r30
/* 8045B4E0  7F E4 FB 78 */	mr r4, r31
/* 8045B4E4  4B FF FE 19 */	bl ari_alone_dt
lbl_8045B4E8:
/* 8045B4E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8045B4EC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8045B4F0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8045B4F4  4B F5 FA 85 */	bl xyz_t_sub
/* 8045B4F8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8045B4FC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045B500  4B FB 0B 01 */	bl atans_table
/* 8045B504  3C 80 80 64 */	lis r4, lit_761@ha /* 0x8064465C@ha */
/* 8045B508  3C A0 80 64 */	lis r5, lit_509@ha /* 0x806445FC@ha */
/* 8045B50C  38 C4 46 5C */	addi r6, r4, lit_761@l /* 0x8064465C@l */
/* 8045B510  C8 A5 45 FC */	lfd f5, lit_509@l(r5)  /* 0x806445FC@l */
/* 8045B514  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8045B518  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045B51C  38 C4 46 04 */	addi r6, r4, lit_510@l /* 0x80644604@l */
/* 8045B520  B0 7E 00 72 */	sth r3, 0x72(r30)
/* 8045B524  FC 60 30 34 */	frsqrte f3, f6
/* 8045B528  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045B52C  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 8045B530  C8 86 00 00 */	lfd f4, 0(r6)
/* 8045B534  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045B538  C0 45 00 00 */	lfs f2, 0(r5)
/* 8045B53C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045B540  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8045B544  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045B548  FC 26 00 72 */	fmul f1, f6, f1
/* 8045B54C  FC 24 08 28 */	fsub f1, f4, f1
/* 8045B550  FC 63 00 72 */	fmul f3, f3, f1
/* 8045B554  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045B558  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045B55C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045B560  FC 24 08 28 */	fsub f1, f4, f1
/* 8045B564  FC 63 00 72 */	fmul f3, f3, f1
/* 8045B568  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045B56C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045B570  FC 26 00 72 */	fmul f1, f6, f1
/* 8045B574  FC 24 08 28 */	fsub f1, f4, f1
/* 8045B578  FC 23 00 72 */	fmul f1, f3, f1
/* 8045B57C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045B580  FC 20 08 18 */	frsp f1, f1
/* 8045B584  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045B588  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045B58C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045B590  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045B594  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045B598  40 81 00 54 */	ble lbl_8045B5EC
/* 8045B59C  FC 20 10 34 */	frsqrte f1, f2
/* 8045B5A0  FC 01 00 72 */	fmul f0, f1, f1
/* 8045B5A4  FC 25 00 72 */	fmul f1, f5, f1
/* 8045B5A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8045B5AC  FC 04 00 28 */	fsub f0, f4, f0
/* 8045B5B0  FC 21 00 32 */	fmul f1, f1, f0
/* 8045B5B4  FC 01 00 72 */	fmul f0, f1, f1
/* 8045B5B8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045B5BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045B5C0  FC 04 00 28 */	fsub f0, f4, f0
/* 8045B5C4  FC 21 00 32 */	fmul f1, f1, f0
/* 8045B5C8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045B5CC  FC 25 00 72 */	fmul f1, f5, f1
/* 8045B5D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8045B5D4  FC 04 00 28 */	fsub f0, f4, f0
/* 8045B5D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8045B5DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045B5E0  FC 00 00 18 */	frsp f0, f0
/* 8045B5E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045B5E8  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8045B5EC:
/* 8045B5EC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045B5F0  A8 9E 00 72 */	lha r4, 0x72(r30)
/* 8045B5F4  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045B5F8  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8045B5FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045B600  38 A0 00 E3 */	li r5, 0xe3
/* 8045B604  38 C0 00 2D */	li r6, 0x2d
/* 8045B608  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045B60C  4B F5 FD 05 */	bl add_calc_short_angle2
/* 8045B610  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8045B614  2C 00 00 00 */	cmpwi r0, 0
/* 8045B618  40 80 00 88 */	bge lbl_8045B6A0
/* 8045B61C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045B620  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045B624  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045B628  4B C0 16 CD */	bl fqrand
/* 8045B62C  3C 60 80 64 */	lis r3, lit_4482@ha /* 0x806448F8@ha */
/* 8045B630  C0 03 48 F8 */	lfs f0, lit_4482@l(r3)  /* 0x806448F8@l */
/* 8045B634  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B638  FC 00 00 1E */	fctiwz f0, f0
/* 8045B63C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045B640  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8045B644  38 03 00 28 */	addi r0, r3, 0x28
/* 8045B648  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045B64C  48 00 00 54 */	b lbl_8045B6A0
lbl_8045B650:
/* 8045B650  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8045B654  2C 00 00 00 */	cmpwi r0, 0
/* 8045B658  40 80 00 48 */	bge lbl_8045B6A0
/* 8045B65C  4B C0 16 99 */	bl fqrand
/* 8045B660  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8045B664  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045B668  C0 44 45 C0 */	lfs f2, lit_460@l(r4)  /* 0x806445C0@l */
/* 8045B66C  C0 03 46 10 */	lfs f0, lit_512@l(r3)  /* 0x80644610@l */
/* 8045B670  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045B674  EC 00 08 2A */	fadds f0, f0, f1
/* 8045B678  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045B67C  4B C0 16 79 */	bl fqrand
/* 8045B680  3C 60 80 64 */	lis r3, lit_4586@ha /* 0x80644904@ha */
/* 8045B684  C0 03 49 04 */	lfs f0, lit_4586@l(r3)  /* 0x80644904@l */
/* 8045B688  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B68C  FC 00 00 1E */	fctiwz f0, f0
/* 8045B690  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045B694  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8045B698  38 03 00 28 */	addi r0, r3, 0x28
/* 8045B69C  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8045B6A0:
/* 8045B6A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045B6A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8045B6A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8045B6AC  7C 08 03 A6 */	mtlr r0
/* 8045B6B0  38 21 00 40 */	addi r1, r1, 0x40
/* 8045B6B4  4E 80 00 20 */	blr 
