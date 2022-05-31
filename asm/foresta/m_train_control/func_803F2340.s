lbl_803F2340:
/* 803F2340  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F2344  7C 08 02 A6 */	mflr r0
/* 803F2348  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F234C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F2350  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803F2354  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803F2358  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 803F235C  39 61 00 30 */	addi r11, r1, 0x30
/* 803F2360  4B CA 8B 75 */	bl func_8009AED4
/* 803F2364  7C 9F 23 78 */	mr r31, r4
/* 803F2368  4B FE 72 D9 */	bl get_player_actor_withoutCheck
/* 803F236C  3C 80 80 64 */	lis r4, lit_390@ha /* 0x80643268@ha */
/* 803F2370  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F2374  7C 7E 1B 78 */	mr r30, r3
/* 803F2378  C0 24 32 68 */	lfs f1, lit_390@l(r4)  /* 0x80643268@l */
/* 803F237C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803F2380  3F A3 00 03 */	addis r29, r3, 3
/* 803F2384  48 01 65 69 */	bl cosf_table
/* 803F2388  3C 80 80 64 */	lis r4, data_80643264@ha /* 0x80643264@ha */
/* 803F238C  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80643268@ha */
/* 803F2390  C0 04 32 64 */	lfs f0, data_80643264@l(r4)  /* 0x80643264@l */
/* 803F2394  EF E0 00 72 */	fmuls f31, f0, f1
/* 803F2398  C0 23 32 68 */	lfs f1, lit_390@l(r3)  /* 0x80643268@l */
/* 803F239C  48 01 64 E1 */	bl sinf_table
/* 803F23A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F23A4  3C 80 80 64 */	lis r4, data_80643264@ha /* 0x80643264@ha */
/* 803F23A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F23AC  C0 04 32 64 */	lfs f0, data_80643264@l(r4)  /* 0x80643264@l */
/* 803F23B0  3C 63 00 02 */	addis r3, r3, 2
/* 803F23B4  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 803F23B8  EF C0 00 72 */	fmuls f30, f0, f1
/* 803F23BC  28 00 00 00 */	cmplwi r0, 0
/* 803F23C0  41 82 00 14 */	beq lbl_803F23D4
/* 803F23C4  38 61 00 08 */	addi r3, r1, 8
/* 803F23C8  38 9D 85 4C */	addi r4, r29, -31412
/* 803F23CC  4B FC 8B 0D */	bl xyz_t_move_s_xyz
/* 803F23D0  48 00 00 2C */	b lbl_803F23FC
lbl_803F23D4:
/* 803F23D4  28 1E 00 00 */	cmplwi r30, 0
/* 803F23D8  41 82 00 14 */	beq lbl_803F23EC
/* 803F23DC  38 61 00 08 */	addi r3, r1, 8
/* 803F23E0  38 9E 00 28 */	addi r4, r30, 0x28
/* 803F23E4  4B FC 8A D9 */	bl xyz_t_move
/* 803F23E8  48 00 00 14 */	b lbl_803F23FC
lbl_803F23EC:
/* 803F23EC  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 803F23F0  38 61 00 08 */	addi r3, r1, 8
/* 803F23F4  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 803F23F8  4B FC 8A C5 */	bl xyz_t_move
lbl_803F23FC:
/* 803F23FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F2400  3C 60 80 64 */	lis r3, lit_391@ha /* 0x8064326C@ha */
/* 803F2404  C0 23 32 6C */	lfs f1, lit_391@l(r3)  /* 0x8064326C@l */
/* 803F2408  EC 00 F0 2A */	fadds f0, f0, f30
/* 803F240C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803F2410  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F2414  EC 01 00 2A */	fadds f0, f1, f0
/* 803F2418  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803F241C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803F2420  EC 00 F8 2A */	fadds f0, f0, f31
/* 803F2424  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803F2428  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803F242C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F2430  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 803F2434  39 61 00 30 */	addi r11, r1, 0x30
/* 803F2438  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803F243C  4B CA 8A E5 */	bl func_8009AF20
/* 803F2440  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F2444  7C 08 03 A6 */	mtlr r0
/* 803F2448  38 21 00 50 */	addi r1, r1, 0x50
/* 803F244C  4E 80 00 20 */	blr 
