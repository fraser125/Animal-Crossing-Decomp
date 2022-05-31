lbl_805B24A8:
/* 805B24A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B24AC  7C 08 02 A6 */	mflr r0
/* 805B24B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B24B4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805B24B8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805B24BC  39 61 00 50 */	addi r11, r1, 0x50
/* 805B24C0  4B AE 89 F5 */	bl func_8009AEB4
/* 805B24C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B24C8  7C 97 23 78 */	mr r23, r4
/* 805B24CC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805B24D0  C3 E3 02 C8 */	lfs f31, 0x2c8(r3)
/* 805B24D4  3C 64 00 02 */	addis r3, r4, 2
/* 805B24D8  83 B7 00 00 */	lwz r29, 0(r23)
/* 805B24DC  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805B24E0  38 60 00 43 */	li r3, 0x43
/* 805B24E4  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B24E8  7D 89 03 A6 */	mtctr r12
/* 805B24EC  4E 80 04 21 */	bctrl 
/* 805B24F0  7C 7E 1B 78 */	mr r30, r3
/* 805B24F4  7F A3 EB 78 */	mr r3, r29
/* 805B24F8  4B E5 AE DD */	bl _Matrix_to_Mtx_new
/* 805B24FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B2500  41 82 01 B0 */	beq lbl_805B26B0
/* 805B2504  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A860@ha */
/* 805B2508  C0 03 A8 60 */	lfs f0, lit_436@l(r3)  /* 0x8064A860@l */
/* 805B250C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805B2510  40 81 00 7C */	ble lbl_805B258C
/* 805B2514  3C 60 80 65 */	lis r3, lit_660@ha /* 0x8064A880@ha */
/* 805B2518  3C 80 80 65 */	lis r4, lit_661@ha /* 0x8064A884@ha */
/* 805B251C  38 A3 A8 80 */	addi r5, r3, lit_660@l /* 0x8064A880@l */
/* 805B2520  C0 24 A8 84 */	lfs f1, lit_661@l(r4)  /* 0x8064A884@l */
/* 805B2524  3C 60 80 65 */	lis r3, lit_662@ha /* 0x8064A888@ha */
/* 805B2528  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B252C  C0 03 A8 88 */	lfs f0, lit_662@l(r3)  /* 0x8064A888@l */
/* 805B2530  3C 60 80 65 */	lis r3, lit_659@ha /* 0x8064A87C@ha */
/* 805B2534  EC 42 07 F2 */	fmuls f2, f2, f31
/* 805B2538  C0 63 A8 7C */	lfs f3, lit_659@l(r3)  /* 0x8064A87C@l */
/* 805B253C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 805B2540  3B 40 00 FF */	li r26, 0xff
/* 805B2544  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805B2548  3B 20 00 FF */	li r25, 0xff
/* 805B254C  EC 43 10 2A */	fadds f2, f3, f2
/* 805B2550  3B 00 00 96 */	li r24, 0x96
/* 805B2554  EC 23 08 2A */	fadds f1, f3, f1
/* 805B2558  EC 03 00 2A */	fadds f0, f3, f0
/* 805B255C  FC 40 10 1E */	fctiwz f2, f2
/* 805B2560  FC 20 08 1E */	fctiwz f1, f1
/* 805B2564  FC 00 00 1E */	fctiwz f0, f0
/* 805B2568  D8 41 00 08 */	stfd f2, 8(r1)
/* 805B256C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B2570  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805B2574  7C 16 03 78 */	mr r22, r0
/* 805B2578  7C 15 03 78 */	mr r21, r0
/* 805B257C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B2580  83 81 00 14 */	lwz r28, 0x14(r1)
/* 805B2584  83 61 00 1C */	lwz r27, 0x1c(r1)
/* 805B2588  48 00 00 20 */	b lbl_805B25A8
lbl_805B258C:
/* 805B258C  3A C0 00 00 */	li r22, 0
/* 805B2590  3A A0 00 00 */	li r21, 0
/* 805B2594  3B 80 00 00 */	li r28, 0
/* 805B2598  3B 60 00 00 */	li r27, 0
/* 805B259C  3B 40 00 00 */	li r26, 0
/* 805B25A0  3B 20 00 00 */	li r25, 0
/* 805B25A4  3B 00 00 00 */	li r24, 0
lbl_805B25A8:
/* 805B25A8  7F A3 EB 78 */	mr r3, r29
/* 805B25AC  4B E3 2B FD */	bl _texture_z_light_fog_prim_npc
/* 805B25B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B25B4  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 805B25B8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B25BC  56 A5 82 1E */	rlwinm r5, r21, 0x10, 8, 0xf
/* 805B25C0  90 09 00 00 */	stw r0, 0(r9)
/* 805B25C4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805B25C8  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805B25CC  52 C5 C0 0E */	rlwimi r5, r22, 0x18, 0, 7
/* 805B25D0  93 E9 00 04 */	stw r31, 4(r9)
/* 805B25D4  3D 00 E7 00 */	lis r8, 0xe700
/* 805B25D8  38 E0 00 00 */	li r7, 0
/* 805B25DC  3C C0 FB 00 */	lis r6, 0xfb00
/* 805B25E0  90 09 00 08 */	stw r0, 8(r9)
/* 805B25E4  3C 60 80 B8 */	lis r3, kamakura_DL_model@ha /* 0x80B84AA0@ha */
/* 805B25E8  38 03 4A A0 */	addi r0, r3, kamakura_DL_model@l /* 0x80B84AA0@l */
/* 805B25EC  53 85 44 2E */	rlwimi r5, r28, 8, 0x10, 0x17
/* 805B25F0  93 C9 00 0C */	stw r30, 0xc(r9)
/* 805B25F4  3C 80 DE 00 */	lis r4, 0xde00
/* 805B25F8  7F A3 EB 78 */	mr r3, r29
/* 805B25FC  91 09 00 10 */	stw r8, 0x10(r9)
/* 805B2600  90 E9 00 14 */	stw r7, 0x14(r9)
/* 805B2604  90 C9 00 18 */	stw r6, 0x18(r9)
/* 805B2608  90 A9 00 1C */	stw r5, 0x1c(r9)
/* 805B260C  39 29 00 20 */	addi r9, r9, 0x20
/* 805B2610  7D 25 4B 78 */	mr r5, r9
/* 805B2614  90 89 00 00 */	stw r4, 0(r9)
/* 805B2618  39 29 00 08 */	addi r9, r9, 8
/* 805B261C  90 05 00 04 */	stw r0, 4(r5)
/* 805B2620  91 3D 02 D0 */	stw r9, 0x2d0(r29)
/* 805B2624  4B E3 2B 35 */	bl _texture_z_light_fog_prim_xlu
/* 805B2628  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B262C  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 805B2630  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xDA380003@l */
/* 805B2634  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 805B2638  90 66 00 00 */	stw r3, 0(r6)
/* 805B263C  57 25 82 1E */	rlwinm r5, r25, 0x10, 8, 0xf
/* 805B2640  53 45 C0 0E */	rlwimi r5, r26, 0x18, 0, 7
/* 805B2644  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805B2648  93 E6 00 04 */	stw r31, 4(r6)
/* 805B264C  53 05 44 2E */	rlwimi r5, r24, 8, 0x10, 0x17
/* 805B2650  3C 80 DE 00 */	lis r4, 0xde00
/* 805B2654  3C 60 80 B8 */	lis r3, obj_w_kamakura_window_model@ha /* 0x80B84990@ha */
/* 805B2658  90 06 00 08 */	stw r0, 8(r6)
/* 805B265C  38 03 49 90 */	addi r0, r3, obj_w_kamakura_window_model@l /* 0x80B84990@l */
/* 805B2660  7F A3 EB 78 */	mr r3, r29
/* 805B2664  90 A6 00 0C */	stw r5, 0xc(r6)
/* 805B2668  38 C6 00 10 */	addi r6, r6, 0x10
/* 805B266C  7C C5 33 78 */	mr r5, r6
/* 805B2670  90 86 00 00 */	stw r4, 0(r6)
/* 805B2674  38 C6 00 08 */	addi r6, r6, 8
/* 805B2678  90 05 00 04 */	stw r0, 4(r5)
/* 805B267C  90 DD 02 E0 */	stw r6, 0x2e0(r29)
/* 805B2680  4B E3 2A B1 */	bl _texture_z_light_fog_prim_shadow
/* 805B2684  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B2688  3C C0 80 6C */	lis r6, aKKR_shadow_data@ha /* 0x806C56E0@ha */
/* 805B268C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B2690  3C A4 00 02 */	addis r5, r4, 2
/* 805B2694  7E E3 BB 78 */	mr r3, r23
/* 805B2698  38 86 56 E0 */	addi r4, r6, aKKR_shadow_data@l /* 0x806C56E0@l */
/* 805B269C  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805B26A0  38 A0 00 00 */	li r5, 0
/* 805B26A4  81 86 00 04 */	lwz r12, 4(r6)
/* 805B26A8  7D 89 03 A6 */	mtctr r12
/* 805B26AC  4E 80 04 21 */	bctrl 
lbl_805B26B0:
/* 805B26B0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805B26B4  39 61 00 50 */	addi r11, r1, 0x50
/* 805B26B8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805B26BC  4B AE 88 45 */	bl func_8009AF00
/* 805B26C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B26C4  7C 08 03 A6 */	mtlr r0
/* 805B26C8  38 21 00 60 */	addi r1, r1, 0x60
/* 805B26CC  4E 80 00 20 */	blr 
