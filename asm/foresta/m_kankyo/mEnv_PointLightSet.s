lbl_803B926C:
/* 803B926C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803B9270  7C 08 02 A6 */	mflr r0
/* 803B9274  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B9278  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803B927C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803B9280  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803B9284  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803B9288  7C 7E 1B 78 */	mr r30, r3
/* 803B928C  FF E0 08 90 */	fmr f31, f1
/* 803B9290  48 02 03 B1 */	bl get_player_actor_withoutCheck
/* 803B9294  7C 7F 1B 78 */	mr r31, r3
/* 803B9298  38 60 00 47 */	li r3, 0x47
/* 803B929C  38 80 00 0A */	li r4, 0xa
/* 803B92A0  4B FE 4B 2D */	bl mEv_get_save_area
/* 803B92A4  A8 83 00 00 */	lha r4, 0(r3)
/* 803B92A8  3C 00 43 30 */	lis r0, 0x4330
/* 803B92AC  3C A0 80 64 */	lis r5, lit_471@ha /* 0x806423EC@ha */
/* 803B92B0  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B92B4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803B92B8  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B92BC  90 81 00 24 */	stw r4, 0x24(r1)
/* 803B92C0  3C C0 80 64 */	lis r6, lit_1690@ha /* 0x80642538@ha */
/* 803B92C4  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 803B92C8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803B92CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 803B92D0  38 7E 1C E0 */	addi r3, r30, 0x1ce0
/* 803B92D4  C8 45 23 EC */	lfd f2, lit_471@l(r5)  /* 0x806423EC@l */
/* 803B92D8  FC 80 20 1E */	fctiwz f4, f4
/* 803B92DC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 803B92E0  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 803B92E4  38 E0 00 FF */	li r7, 0xff
/* 803B92E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B92EC  C0 46 25 38 */	lfs f2, lit_1690@l(r6)  /* 0x80642538@l */
/* 803B92F0  D8 81 00 08 */	stfd f4, 8(r1)
/* 803B92F4  39 00 00 FF */	li r8, 0xff
/* 803B92F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 803B92FC  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 803B9300  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B9304  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803B9308  FC 60 18 1E */	fctiwz f3, f3
/* 803B930C  39 20 00 DC */	li r9, 0xdc
/* 803B9310  FC 20 10 1E */	fctiwz f1, f2
/* 803B9314  FC 00 00 1E */	fctiwz f0, f0
/* 803B9318  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 803B931C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 803B9320  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803B9324  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803B9328  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 803B932C  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 803B9330  48 00 25 91 */	bl Light_point_ct
/* 803B9334  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9338  38 80 00 FF */	li r4, 0xff
/* 803B933C  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9340  38 00 00 DC */	li r0, 0xdc
/* 803B9344  98 83 00 04 */	stb r4, 4(r3)
/* 803B9348  98 83 00 05 */	stb r4, 5(r3)
/* 803B934C  98 03 00 06 */	stb r0, 6(r3)
/* 803B9350  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803B9354  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B9358  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803B935C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803B9360  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803B9364  7C 08 03 A6 */	mtlr r0
/* 803B9368  38 21 00 50 */	addi r1, r1, 0x50
/* 803B936C  4E 80 00 20 */	blr 
