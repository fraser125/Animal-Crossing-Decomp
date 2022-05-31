lbl_804B323C:
/* 804B323C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804B3240  7C 08 02 A6 */	mflr r0
/* 804B3244  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804B3248  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804B324C  4B BE 7C 7D */	bl func_8009AEC8
/* 804B3250  B0 81 00 22 */	sth r4, 0x22(r1)
/* 804B3254  3B C1 00 28 */	addi r30, r1, 0x28
/* 804B3258  7C 7D 1B 78 */	mr r29, r3
/* 804B325C  7C DA 33 78 */	mr r26, r6
/* 804B3260  7C FB 3B 78 */	mr r27, r7
/* 804B3264  7D 1C 43 78 */	mr r28, r8
/* 804B3268  7F C3 F3 78 */	mr r3, r30
/* 804B326C  7C A4 2B 78 */	mr r4, r5
/* 804B3270  4B F0 7C 4D */	bl xyz_t_move
/* 804B3274  3B E1 00 34 */	addi r31, r1, 0x34
/* 804B3278  7F 44 D3 78 */	mr r4, r26
/* 804B327C  7F E3 FB 78 */	mr r3, r31
/* 804B3280  4B F0 7C 3D */	bl xyz_t_move
/* 804B3284  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646030@ha */
/* 804B3288  57 60 06 31 */	rlwinm. r0, r27, 0, 0x18, 0x18
/* 804B328C  C0 03 60 30 */	lfs f0, lit_1188@l(r3)  /* 0x80646030@l */
/* 804B3290  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804B3294  B3 61 00 80 */	sth r27, 0x80(r1)
/* 804B3298  B3 81 00 A6 */	sth r28, 0xa6(r1)
/* 804B329C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804B32A0  41 82 00 10 */	beq lbl_804B32B0
/* 804B32A4  38 00 00 2E */	li r0, 0x2e
/* 804B32A8  B0 01 00 94 */	sth r0, 0x94(r1)
/* 804B32AC  48 00 00 0C */	b lbl_804B32B8
lbl_804B32B0:
/* 804B32B0  38 00 00 00 */	li r0, 0
/* 804B32B4  B0 01 00 94 */	sth r0, 0x94(r1)
lbl_804B32B8:
/* 804B32B8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804B32BC  41 82 00 24 */	beq lbl_804B32E0
/* 804B32C0  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646034@ha */
/* 804B32C4  38 80 00 1A */	li r4, 0x1a
/* 804B32C8  C0 03 60 34 */	lfs f0, lit_1311@l(r3)  /* 0x80646034@l */
/* 804B32CC  38 00 00 00 */	li r0, 0
/* 804B32D0  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804B32D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804B32D8  B0 01 00 82 */	sth r0, 0x82(r1)
/* 804B32DC  48 00 00 20 */	b lbl_804B32FC
lbl_804B32E0:
/* 804B32E0  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B32E4  38 80 00 0E */	li r4, 0xe
/* 804B32E8  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B32EC  38 00 00 01 */	li r0, 1
/* 804B32F0  B0 81 00 64 */	sth r4, 0x64(r1)
/* 804B32F4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804B32F8  B0 01 00 82 */	sth r0, 0x82(r1)
lbl_804B32FC:
/* 804B32FC  A0 61 00 22 */	lhz r3, 0x22(r1)
/* 804B3300  38 00 00 00 */	li r0, 0
/* 804B3304  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 804B3308  28 03 00 08 */	cmplwi r3, 8
/* 804B330C  41 80 00 0C */	blt lbl_804B3318
/* 804B3310  28 03 00 0A */	cmplwi r3, 0xa
/* 804B3314  40 81 00 14 */	ble lbl_804B3328
lbl_804B3318:
/* 804B3318  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B331C  41 80 00 24 */	blt lbl_804B3340
/* 804B3320  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B3324  41 81 00 1C */	bgt lbl_804B3340
lbl_804B3328:
/* 804B3328  7F E5 FB 78 */	mr r5, r31
/* 804B332C  38 81 00 08 */	addi r4, r1, 8
/* 804B3330  4B FF DB A1 */	bl bIT_actor_rand_pos_get_plus
/* 804B3334  7F E3 FB 78 */	mr r3, r31
/* 804B3338  38 81 00 08 */	addi r4, r1, 8
/* 804B333C  4B F0 7B 81 */	bl xyz_t_move
lbl_804B3340:
/* 804B3340  7F E3 FB 78 */	mr r3, r31
/* 804B3344  7F C4 F3 78 */	mr r4, r30
/* 804B3348  4B F0 7D 45 */	bl search_position_distanceXZ
/* 804B334C  A8 81 00 64 */	lha r4, 0x64(r1)
/* 804B3350  3C 00 43 30 */	lis r0, 0x4330
/* 804B3354  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B3358  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 804B335C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B3360  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 804B3364  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804B3368  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B336C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804B3370  38 61 00 74 */	addi r3, r1, 0x74
/* 804B3374  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B3378  38 81 00 78 */	addi r4, r1, 0x78
/* 804B337C  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804B3380  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B3384  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 804B3388  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B338C  4B FF E5 95 */	bl func_calc_spec_drop_time
/* 804B3390  7F A3 EB 78 */	mr r3, r29
/* 804B3394  38 81 00 14 */	addi r4, r1, 0x14
/* 804B3398  4B FF E5 D1 */	bl bIT_actor_drop_entry_main
/* 804B339C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804B33A0  4B BE 7B 75 */	bl func_8009AF14
/* 804B33A4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804B33A8  7C 08 03 A6 */	mtlr r0
/* 804B33AC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804B33B0  4E 80 00 20 */	blr 
