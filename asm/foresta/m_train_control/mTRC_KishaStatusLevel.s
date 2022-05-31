lbl_803F2450:
/* 803F2450  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F2454  7C 08 02 A6 */	mflr r0
/* 803F2458  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F245C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803F2460  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 803F2464  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803F2468  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 803F246C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803F2470  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 803F2474  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 803F2478  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 803F247C  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 803F2480  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 803F2484  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F2488  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F248C  FF C0 08 90 */	fmr f30, f1
/* 803F2490  7C 9E 23 78 */	mr r30, r4
/* 803F2494  38 81 00 10 */	addi r4, r1, 0x10
/* 803F2498  4B FF FE A9 */	bl func_803F2340
/* 803F249C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 803F24A0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 803F24A4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 803F24A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803F24AC  EF 63 10 28 */	fsubs f27, f3, f2
/* 803F24B0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 803F24B4  EF A1 00 28 */	fsubs f29, f1, f0
/* 803F24B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 803F24BC  FC 40 D8 90 */	fmr f2, f27
/* 803F24C0  EF 83 00 28 */	fsubs f28, f3, f0
/* 803F24C4  FC 20 E8 90 */	fmr f1, f29
/* 803F24C8  48 01 9B 39 */	bl atans_table
/* 803F24CC  EC 5B 06 F2 */	fmuls f2, f27, f27
/* 803F24D0  3C 80 80 64 */	lis r4, lit_390@ha /* 0x80643268@ha */
/* 803F24D4  EC 3C 07 32 */	fmuls f1, f28, f28
/* 803F24D8  C0 04 32 68 */	lfs f0, lit_390@l(r4)  /* 0x80643268@l */
/* 803F24DC  EC 7D 07 72 */	fmuls f3, f29, f29
/* 803F24E0  EC 22 08 2A */	fadds f1, f2, f1
/* 803F24E4  EF E3 08 2A */	fadds f31, f3, f1
/* 803F24E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803F24EC  40 81 00 68 */	ble lbl_803F2554
/* 803F24F0  FC 20 F8 34 */	frsqrte f1, f31
/* 803F24F4  3C 80 80 64 */	lis r4, lit_420@ha /* 0x80643274@ha */
/* 803F24F8  38 A4 32 74 */	addi r5, r4, lit_420@l /* 0x80643274@l */
/* 803F24FC  3C 80 80 64 */	lis r4, lit_421@ha /* 0x8064327C@ha */
/* 803F2500  C8 65 00 00 */	lfd f3, 0(r5)
/* 803F2504  FC 01 00 72 */	fmul f0, f1, f1
/* 803F2508  C8 44 32 7C */	lfd f2, lit_421@l(r4)  /* 0x8064327C@l */
/* 803F250C  FC 23 00 72 */	fmul f1, f3, f1
/* 803F2510  FC 1F 00 32 */	fmul f0, f31, f0
/* 803F2514  FC 02 00 28 */	fsub f0, f2, f0
/* 803F2518  FC 21 00 32 */	fmul f1, f1, f0
/* 803F251C  FC 01 00 72 */	fmul f0, f1, f1
/* 803F2520  FC 23 00 72 */	fmul f1, f3, f1
/* 803F2524  FC 1F 00 32 */	fmul f0, f31, f0
/* 803F2528  FC 02 00 28 */	fsub f0, f2, f0
/* 803F252C  FC 21 00 32 */	fmul f1, f1, f0
/* 803F2530  FC 01 00 72 */	fmul f0, f1, f1
/* 803F2534  FC 23 00 72 */	fmul f1, f3, f1
/* 803F2538  FC 1F 00 32 */	fmul f0, f31, f0
/* 803F253C  FC 02 00 28 */	fsub f0, f2, f0
/* 803F2540  FC 01 00 32 */	fmul f0, f1, f0
/* 803F2544  FC 1F 00 32 */	fmul f0, f31, f0
/* 803F2548  FC 00 00 18 */	frsp f0, f0
/* 803F254C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F2550  C3 E1 00 0C */	lfs f31, 0xc(r1)
lbl_803F2554:
/* 803F2554  3C 80 80 64 */	lis r4, lit_422@ha /* 0x80643284@ha */
/* 803F2558  7C 60 07 34 */	extsh r0, r3
/* 803F255C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 803F2560  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803F2564  C0 04 32 84 */	lfs f0, lit_422@l(r4)  /* 0x80643284@l */
/* 803F2568  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 803F256C  EC 81 00 28 */	fsubs f4, f1, f0
/* 803F2570  C0 3E 00 08 */	lfs f1, 8(r30)
/* 803F2574  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803F2578  C0 7E 00 04 */	lfs f3, 4(r30)
/* 803F257C  EF A4 10 28 */	fsubs f29, f4, f2
/* 803F2580  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 803F2584  EF 61 00 28 */	fsubs f27, f1, f0
/* 803F2588  EF 83 10 28 */	fsubs f28, f3, f2
/* 803F258C  FC 40 E8 90 */	fmr f2, f29
/* 803F2590  FC 20 D8 90 */	fmr f1, f27
/* 803F2594  48 01 9A 6D */	bl atans_table
/* 803F2598  EC 5D 07 72 */	fmuls f2, f29, f29
/* 803F259C  3C 80 80 64 */	lis r4, lit_390@ha /* 0x80643268@ha */
/* 803F25A0  EC 3C 07 32 */	fmuls f1, f28, f28
/* 803F25A4  C0 04 32 68 */	lfs f0, lit_390@l(r4)  /* 0x80643268@l */
/* 803F25A8  EC 7B 06 F2 */	fmuls f3, f27, f27
/* 803F25AC  EC 22 08 2A */	fadds f1, f2, f1
/* 803F25B0  EC 63 08 2A */	fadds f3, f3, f1
/* 803F25B4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803F25B8  40 81 00 68 */	ble lbl_803F2620
/* 803F25BC  FC 20 18 34 */	frsqrte f1, f3
/* 803F25C0  3C 80 80 64 */	lis r4, lit_420@ha /* 0x80643274@ha */
/* 803F25C4  38 A4 32 74 */	addi r5, r4, lit_420@l /* 0x80643274@l */
/* 803F25C8  3C 80 80 64 */	lis r4, lit_421@ha /* 0x8064327C@ha */
/* 803F25CC  C8 85 00 00 */	lfd f4, 0(r5)
/* 803F25D0  FC 01 00 72 */	fmul f0, f1, f1
/* 803F25D4  C8 44 32 7C */	lfd f2, lit_421@l(r4)  /* 0x8064327C@l */
/* 803F25D8  FC 24 00 72 */	fmul f1, f4, f1
/* 803F25DC  FC 03 00 32 */	fmul f0, f3, f0
/* 803F25E0  FC 02 00 28 */	fsub f0, f2, f0
/* 803F25E4  FC 21 00 32 */	fmul f1, f1, f0
/* 803F25E8  FC 01 00 72 */	fmul f0, f1, f1
/* 803F25EC  FC 24 00 72 */	fmul f1, f4, f1
/* 803F25F0  FC 03 00 32 */	fmul f0, f3, f0
/* 803F25F4  FC 02 00 28 */	fsub f0, f2, f0
/* 803F25F8  FC 21 00 32 */	fmul f1, f1, f0
/* 803F25FC  FC 01 00 72 */	fmul f0, f1, f1
/* 803F2600  FC 24 00 72 */	fmul f1, f4, f1
/* 803F2604  FC 03 00 32 */	fmul f0, f3, f0
/* 803F2608  FC 02 00 28 */	fsub f0, f2, f0
/* 803F260C  FC 01 00 32 */	fmul f0, f1, f0
/* 803F2610  FC 03 00 32 */	fmul f0, f3, f0
/* 803F2614  FC 00 00 18 */	frsp f0, f0
/* 803F2618  D0 01 00 08 */	stfs f0, 8(r1)
/* 803F261C  C0 61 00 08 */	lfs f3, 8(r1)
lbl_803F2620:
/* 803F2620  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F2624  7C 60 07 34 */	extsh r0, r3
/* 803F2628  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803F262C  FC 20 F0 90 */	fmr f1, f30
/* 803F2630  3C 63 00 03 */	addis r3, r3, 3
/* 803F2634  FC 40 F8 90 */	fmr f2, f31
/* 803F2638  7C 65 1B 78 */	mr r5, r3
/* 803F263C  7F E4 FB 78 */	mr r4, r31
/* 803F2640  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 803F2644  38 63 88 3E */	addi r3, r3, -30658
/* 803F2648  38 A5 88 3F */	addi r5, r5, -30657
/* 803F264C  48 23 BD A5 */	bl sAdos_KishaStatusLevel
/* 803F2650  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 803F2654  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 803F2658  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 803F265C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 803F2660  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 803F2664  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 803F2668  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 803F266C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 803F2670  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 803F2674  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 803F2678  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F267C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F2680  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F2684  7C 08 03 A6 */	mtlr r0
/* 803F2688  38 21 00 80 */	addi r1, r1, 0x80
/* 803F268C  4E 80 00 20 */	blr 
