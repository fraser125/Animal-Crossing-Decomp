lbl_80441278:
/* 80441278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044127C  7C 08 02 A6 */	mflr r0
/* 80441280  90 01 00 24 */	stw r0, 0x24(r1)
/* 80441284  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80441288  7C 7F 1B 78 */	mr r31, r3
/* 8044128C  4B FF 0A 7D */	bl mfish_get_hide_camera_angle
/* 80441290  B0 7F 06 34 */	sth r3, 0x634(r31)
/* 80441294  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80441298  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8044129C  41 82 00 30 */	beq lbl_804412CC
/* 804412A0  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 804412A4  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 804412A8  7C 03 00 50 */	subf r0, r3, r0
/* 804412AC  7C 00 07 35 */	extsh. r0, r0
/* 804412B0  40 81 00 10 */	ble lbl_804412C0
/* 804412B4  38 03 40 00 */	addi r0, r3, 0x4000
/* 804412B8  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 804412BC  48 00 00 98 */	b lbl_80441354
lbl_804412C0:
/* 804412C0  38 03 C0 00 */	addi r0, r3, -16384
/* 804412C4  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 804412C8  48 00 00 8C */	b lbl_80441354
lbl_804412CC:
/* 804412CC  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 804412D0  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804412D4  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 804412D8  C8 64 42 54 */	lfd f3, lit_470@l(r4)  /* 0x80644254@l */
/* 804412DC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804412E0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804412E4  C8 85 00 00 */	lfd f4, 0(r5)
/* 804412E8  38 A0 10 00 */	li r5, 0x1000
/* 804412EC  FC 40 28 34 */	frsqrte f2, f5
/* 804412F0  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 804412F4  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 804412F8  38 7F 06 34 */	addi r3, r31, 0x634
/* 804412FC  38 C0 00 5B */	li r6, 0x5b
/* 80441300  FC 22 00 B2 */	fmul f1, f2, f2
/* 80441304  FC 44 00 B2 */	fmul f2, f4, f2
/* 80441308  FC 25 00 72 */	fmul f1, f5, f1
/* 8044130C  FC 23 08 28 */	fsub f1, f3, f1
/* 80441310  FC 42 00 72 */	fmul f2, f2, f1
/* 80441314  FC 22 00 B2 */	fmul f1, f2, f2
/* 80441318  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044131C  FC 25 00 72 */	fmul f1, f5, f1
/* 80441320  FC 23 08 28 */	fsub f1, f3, f1
/* 80441324  FC 42 00 72 */	fmul f2, f2, f1
/* 80441328  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044132C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80441330  FC 25 00 72 */	fmul f1, f5, f1
/* 80441334  FC 23 08 28 */	fsub f1, f3, f1
/* 80441338  FC 22 00 72 */	fmul f1, f2, f1
/* 8044133C  FC 25 00 72 */	fmul f1, f5, f1
/* 80441340  FC 20 08 18 */	frsp f1, f1
/* 80441344  D0 21 00 08 */	stfs f1, 8(r1)
/* 80441348  C0 21 00 08 */	lfs f1, 8(r1)
/* 8044134C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80441350  4B F7 9F C1 */	bl add_calc_short_angle2
lbl_80441354:
/* 80441354  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80441358  3C 60 80 44 */	lis r3, mfish_bass_dummy_process@ha /* 0x80441380@ha */
/* 8044135C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80441360  38 03 13 80 */	addi r0, r3, mfish_bass_dummy_process@l /* 0x80441380@l */
/* 80441364  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80441368  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8044136C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80441370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80441374  7C 08 03 A6 */	mtlr r0
/* 80441378  38 21 00 20 */	addi r1, r1, 0x20
/* 8044137C  4E 80 00 20 */	blr 
