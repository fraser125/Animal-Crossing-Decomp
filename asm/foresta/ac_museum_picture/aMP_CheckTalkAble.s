lbl_8042F240:
/* 8042F240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042F244  7C 08 02 A6 */	mflr r0
/* 8042F248  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042F24C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8042F250  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8042F254  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042F258  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042F25C  FF E0 08 90 */	fmr f31, f1
/* 8042F260  7C 7E 1B 78 */	mr r30, r3
/* 8042F264  7C 9F 23 78 */	mr r31, r4
/* 8042F268  7C A3 2B 78 */	mr r3, r5
/* 8042F26C  4B FA A3 D5 */	bl get_player_actor_withoutCheck
/* 8042F270  A8 03 00 DE */	lha r0, 0xde(r3)
/* 8042F274  3C 80 80 68 */	lis r4, direct_table@ha /* 0x80684E10@ha */
/* 8042F278  38 84 4E 10 */	addi r4, r4, direct_table@l /* 0x80684E10@l */
/* 8042F27C  57 E5 07 BE */	clrlwi r5, r31, 0x1e
/* 8042F280  54 00 B6 BA */	rlwinm r0, r0, 0x16, 0x1a, 0x1d
/* 8042F284  7C 04 00 2E */	lwzx r0, r4, r0
/* 8042F288  7C 05 00 00 */	cmpw r5, r0
/* 8042F28C  40 82 00 B8 */	bne lbl_8042F344
/* 8042F290  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8042F294  3C 80 80 64 */	lis r4, lit_513@ha /* 0x80644204@ha */
/* 8042F298  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8042F29C  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8042F2A0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8042F2A4  EC 63 00 28 */	fsubs f3, f3, f0
/* 8042F2A8  C0 04 42 04 */	lfs f0, lit_513@l(r4)  /* 0x80644204@l */
/* 8042F2AC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8042F2B0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8042F2B4  EC 21 00 72 */	fmuls f1, f1, f1
/* 8042F2B8  EC 82 08 2A */	fadds f4, f2, f1
/* 8042F2BC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8042F2C0  40 81 00 68 */	ble lbl_8042F328
/* 8042F2C4  FC 20 20 34 */	frsqrte f1, f4
/* 8042F2C8  3C 60 80 64 */	lis r3, lit_514@ha /* 0x8064420C@ha */
/* 8042F2CC  38 83 42 0C */	addi r4, r3, lit_514@l /* 0x8064420C@l */
/* 8042F2D0  3C 60 80 64 */	lis r3, lit_515@ha /* 0x80644214@ha */
/* 8042F2D4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8042F2D8  FC 01 00 72 */	fmul f0, f1, f1
/* 8042F2DC  C8 43 42 14 */	lfd f2, lit_515@l(r3)  /* 0x80644214@l */
/* 8042F2E0  FC 23 00 72 */	fmul f1, f3, f1
/* 8042F2E4  FC 04 00 32 */	fmul f0, f4, f0
/* 8042F2E8  FC 02 00 28 */	fsub f0, f2, f0
/* 8042F2EC  FC 21 00 32 */	fmul f1, f1, f0
/* 8042F2F0  FC 01 00 72 */	fmul f0, f1, f1
/* 8042F2F4  FC 23 00 72 */	fmul f1, f3, f1
/* 8042F2F8  FC 04 00 32 */	fmul f0, f4, f0
/* 8042F2FC  FC 02 00 28 */	fsub f0, f2, f0
/* 8042F300  FC 21 00 32 */	fmul f1, f1, f0
/* 8042F304  FC 01 00 72 */	fmul f0, f1, f1
/* 8042F308  FC 23 00 72 */	fmul f1, f3, f1
/* 8042F30C  FC 04 00 32 */	fmul f0, f4, f0
/* 8042F310  FC 02 00 28 */	fsub f0, f2, f0
/* 8042F314  FC 01 00 32 */	fmul f0, f1, f0
/* 8042F318  FC 04 00 32 */	fmul f0, f4, f0
/* 8042F31C  FC 00 00 18 */	frsp f0, f0
/* 8042F320  D0 01 00 08 */	stfs f0, 8(r1)
/* 8042F324  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8042F328:
/* 8042F328  FC 04 F8 40 */	fcmpo cr0, f4, f31
/* 8042F32C  4C 40 13 82 */	cror 2, 0, 2
/* 8042F330  40 82 00 0C */	bne lbl_8042F33C
/* 8042F334  38 60 00 01 */	li r3, 1
/* 8042F338  48 00 00 10 */	b lbl_8042F348
lbl_8042F33C:
/* 8042F33C  38 60 00 00 */	li r3, 0
/* 8042F340  48 00 00 08 */	b lbl_8042F348
lbl_8042F344:
/* 8042F344  38 60 00 00 */	li r3, 0
lbl_8042F348:
/* 8042F348  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8042F34C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042F350  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8042F354  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042F358  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042F35C  7C 08 03 A6 */	mtlr r0
/* 8042F360  38 21 00 30 */	addi r1, r1, 0x30
/* 8042F364  4E 80 00 20 */	blr 
