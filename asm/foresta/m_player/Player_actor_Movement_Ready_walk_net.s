lbl_804F256C:
/* 804F256C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F2570  7C 08 02 A6 */	mflr r0
/* 804F2574  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F2578  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804F257C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804F2580  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804F2584  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804F2588  39 61 00 20 */	addi r11, r1, 0x20
/* 804F258C  4B BA 89 49 */	bl func_8009AED4
/* 804F2590  7C 7D 1B 78 */	mr r29, r3
/* 804F2594  7C 9E 23 78 */	mr r30, r4
/* 804F2598  7C BF 2B 78 */	mr r31, r5
/* 804F259C  4B FE 24 ED */	bl Player_actor_GetController_move_percentR
/* 804F25A0  FF E0 08 90 */	fmr f31, f1
/* 804F25A4  7F C3 F3 78 */	mr r3, r30
/* 804F25A8  4B FE 4D 2D */	bl Player_actor_Get_ControllerAngle
/* 804F25AC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804F25B0  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804F25B4  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804F25B8  B0 01 00 08 */	sth r0, 8(r1)
/* 804F25BC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F25C0  4C 41 13 82 */	cror 2, 1, 2
/* 804F25C4  40 82 00 10 */	bne lbl_804F25D4
/* 804F25C8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F25CC  C0 44 6C 4C */	lfs f2, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F25D0  48 00 00 40 */	b lbl_804F2610
lbl_804F25D4:
/* 804F25D4  3C 80 80 65 */	lis r4, lit_7851@ha /* 0x80648368@ha */
/* 804F25D8  C0 04 83 68 */	lfs f0, lit_7851@l(r4)  /* 0x80648368@l */
/* 804F25DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F25E0  4C 40 13 82 */	cror 2, 0, 2
/* 804F25E4  40 82 00 10 */	bne lbl_804F25F4
/* 804F25E8  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804F25EC  C0 44 66 68 */	lfs f2, lit_790@l(r4)  /* 0x80646668@l */
/* 804F25F0  48 00 00 20 */	b lbl_804F2610
lbl_804F25F4:
/* 804F25F4  3C 80 80 65 */	lis r4, lit_7852@ha /* 0x8064836C@ha */
/* 804F25F8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804F25FC  C0 24 83 6C */	lfs f1, lit_7852@l(r4)  /* 0x8064836C@l */
/* 804F2600  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804F2604  C0 45 66 68 */	lfs f2, lit_790@l(r5)  /* 0x80646668@l */
/* 804F2608  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F260C  EC 42 00 2A */	fadds f2, f2, f0
lbl_804F2610:
/* 804F2610  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F2614  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F2618  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804F261C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804F2620  EC 81 10 28 */	fsubs f4, f1, f2
/* 804F2624  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804F2628  40 81 00 68 */	ble lbl_804F2690
/* 804F262C  FC 20 20 34 */	frsqrte f1, f4
/* 804F2630  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804F2634  38 A4 69 F4 */	addi r5, r4, lit_1027@l /* 0x806469F4@l */
/* 804F2638  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804F263C  C8 65 00 00 */	lfd f3, 0(r5)
/* 804F2640  FC 01 00 72 */	fmul f0, f1, f1
/* 804F2644  C8 44 69 FC */	lfd f2, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804F2648  FC 23 00 72 */	fmul f1, f3, f1
/* 804F264C  FC 04 00 32 */	fmul f0, f4, f0
/* 804F2650  FC 02 00 28 */	fsub f0, f2, f0
/* 804F2654  FC 21 00 32 */	fmul f1, f1, f0
/* 804F2658  FC 01 00 72 */	fmul f0, f1, f1
/* 804F265C  FC 23 00 72 */	fmul f1, f3, f1
/* 804F2660  FC 04 00 32 */	fmul f0, f4, f0
/* 804F2664  FC 02 00 28 */	fsub f0, f2, f0
/* 804F2668  FC 21 00 32 */	fmul f1, f1, f0
/* 804F266C  FC 01 00 72 */	fmul f0, f1, f1
/* 804F2670  FC 23 00 72 */	fmul f1, f3, f1
/* 804F2674  FC 04 00 32 */	fmul f0, f4, f0
/* 804F2678  FC 02 00 28 */	fsub f0, f2, f0
/* 804F267C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F2680  FC 04 00 32 */	fmul f0, f4, f0
/* 804F2684  FC 00 00 18 */	frsp f0, f0
/* 804F2688  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804F268C  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_804F2690:
/* 804F2690  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F2694  7C 64 1B 78 */	mr r4, r3
/* 804F2698  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804F269C  38 61 00 08 */	addi r3, r1, 8
/* 804F26A0  38 A0 09 C4 */	li r5, 0x9c4
/* 804F26A4  38 C0 00 32 */	li r6, 0x32
/* 804F26A8  EC 20 20 28 */	fsubs f1, f0, f4
/* 804F26AC  4B EC 8C 65 */	bl add_calc_short_angle2
/* 804F26B0  A8 01 00 08 */	lha r0, 8(r1)
/* 804F26B4  7F A3 EB 78 */	mr r3, r29
/* 804F26B8  38 9D 00 28 */	addi r4, r29, 0x28
/* 804F26BC  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 804F26C0  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804F26C4  4B FE 48 11 */	bl Player_actor_Culc_over_speed_normalize_NoneZero
/* 804F26C8  3C 60 80 65 */	lis r3, lit_10847@ha /* 0x806484FC@ha */
/* 804F26CC  FF C0 08 90 */	fmr f30, f1
/* 804F26D0  38 83 84 FC */	addi r4, r3, lit_10847@l /* 0x806484FC@l */
/* 804F26D4  7F C3 F3 78 */	mr r3, r30
/* 804F26D8  C0 04 00 00 */	lfs f0, 0(r4)
/* 804F26DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804F26E0  EF E0 F0 24 */	fdivs f31, f0, f30
/* 804F26E4  4B FE 4B F1 */	bl Player_actor_Get_ControllerAngle
/* 804F26E8  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 804F26EC  7C 00 18 50 */	subf r0, r0, r3
/* 804F26F0  7C 00 07 35 */	extsh. r0, r0
/* 804F26F4  7C 80 00 D0 */	neg r4, r0
/* 804F26F8  41 80 00 08 */	blt lbl_804F2700
/* 804F26FC  7C 04 03 78 */	mr r4, r0
lbl_804F2700:
/* 804F2700  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804F2704  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804F2708  7C 04 00 00 */	cmpw r4, r0
/* 804F270C  40 81 00 08 */	ble lbl_804F2714
/* 804F2710  7C 84 18 50 */	subf r4, r4, r3
lbl_804F2714:
/* 804F2714  7C 83 07 34 */	extsh r3, r4
/* 804F2718  4B EC 83 85 */	bl cos_s
/* 804F271C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2720  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2728  4C 40 13 82 */	cror 2, 0, 2
/* 804F272C  40 82 00 0C */	bne lbl_804F2738
/* 804F2730  FF E0 00 90 */	fmr f31, f0
/* 804F2734  48 00 00 08 */	b lbl_804F273C
lbl_804F2738:
/* 804F2738  EF FF 00 72 */	fmuls f31, f31, f1
lbl_804F273C:
/* 804F273C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804F2740  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 804F2744  41 82 00 48 */	beq lbl_804F278C
/* 804F2748  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804F274C  40 80 00 20 */	bge lbl_804F276C
/* 804F2750  3C 60 80 65 */	lis r3, lit_7854@ha /* 0x80648374@ha */
/* 804F2754  C0 03 83 74 */	lfs f0, lit_7854@l(r3)  /* 0x80648374@l */
/* 804F2758  EC 21 00 2A */	fadds f1, f1, f0
/* 804F275C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804F2760  40 81 00 28 */	ble lbl_804F2788
/* 804F2764  FC 20 F8 90 */	fmr f1, f31
/* 804F2768  48 00 00 20 */	b lbl_804F2788
lbl_804F276C:
/* 804F276C  40 81 00 1C */	ble lbl_804F2788
/* 804F2770  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 804F2774  C0 03 69 F0 */	lfs f0, lit_1011@l(r3)  /* 0x806469F0@l */
/* 804F2778  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F277C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804F2780  40 80 00 08 */	bge lbl_804F2788
/* 804F2784  FC 20 F8 90 */	fmr f1, f31
lbl_804F2788:
/* 804F2788  D0 3D 00 74 */	stfs f1, 0x74(r29)
lbl_804F278C:
/* 804F278C  D3 DF 00 00 */	stfs f30, 0(r31)
/* 804F2790  7F A3 EB 78 */	mr r3, r29
/* 804F2794  4B FE 31 89 */	bl Player_actor_Movement_Base
/* 804F2798  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804F279C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804F27A0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804F27A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F27A8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804F27AC  4B BA 87 75 */	bl func_8009AF20
/* 804F27B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F27B4  7C 08 03 A6 */	mtlr r0
/* 804F27B8  38 21 00 40 */	addi r1, r1, 0x40
/* 804F27BC  4E 80 00 20 */	blr 
