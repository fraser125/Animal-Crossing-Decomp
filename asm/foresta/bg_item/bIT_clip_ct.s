lbl_804B72D8:
/* 804B72D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B72DC  7C 08 02 A6 */	mflr r0
/* 804B72E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B72E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804B72E8  4B BE 3B E1 */	bl func_8009AEC8
/* 804B72EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804B72F0  7C 7E 1B 78 */	mr r30, r3
/* 804B72F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804B72F8  3F E3 00 02 */	addis r31, r3, 2
/* 804B72FC  80 1F 60 80 */	lwz r0, 0x6080(r31)
/* 804B7300  28 00 00 00 */	cmplwi r0, 0
/* 804B7304  40 82 01 20 */	bne lbl_804B7424
/* 804B7308  38 60 00 54 */	li r3, 0x54
/* 804B730C  4B F0 51 51 */	bl zelda_malloc
/* 804B7310  3C 80 80 4B */	lis r4, bIT_draw_shadow@ha /* 0x804B7164@ha */
/* 804B7314  90 7F 60 80 */	stw r3, 0x6080(r31)
/* 804B7318  38 04 71 64 */	addi r0, r4, bIT_draw_shadow@l /* 0x804B7164@l */
/* 804B731C  3C C0 80 4C */	lis r6, bit_cmn_single_draw@ha /* 0x804BBAE0@ha */
/* 804B7320  90 03 00 04 */	stw r0, 4(r3)
/* 804B7324  3C A0 80 4C */	lis r5, bIT_actor_player_drop_entry@ha /* 0x804BA080@ha */
/* 804B7328  3C 60 80 4C */	lis r3, BIT_actor_tree_cutcount_check@ha /* 0x804B9798@ha */
/* 804B732C  3F 80 80 4C */	lis r28, bIT_actor_dig_hole_effect_entry@ha /* 0x804B99E4@ha */
/* 804B7330  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804B7334  38 06 BA E0 */	addi r0, r6, bit_cmn_single_draw@l /* 0x804BBAE0@l */
/* 804B7338  3F 60 80 4C */	lis r27, bIT_actor_bury_hole_effect_entry@ha /* 0x804B9AAC@ha */
/* 804B733C  3D 80 80 4C */	lis r12, bIT_actor_fly_entry@ha /* 0x804BA3A8@ha */
/* 804B7340  90 04 00 08 */	stw r0, 8(r4)
/* 804B7344  3D 60 80 4C */	lis r11, bIT_drop_entry_v1@ha /* 0x804BA264@ha */
/* 804B7348  3D 40 80 4C */	lis r10, bg_item_tree_fruit_drop@ha /* 0x804B9868@ha */
/* 804B734C  3D 20 80 4C */	lis r9, bIT_actor_pit_fall@ha /* 0x804BD750@ha */
/* 804B7350  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804B7354  38 05 A0 80 */	addi r0, r5, bIT_actor_player_drop_entry@l /* 0x804BA080@l */
/* 804B7358  3D 00 80 4C */	lis r8, bIT_actor_pit_fall_stop@ha /* 0x804BD828@ha */
/* 804B735C  3C E0 80 4C */	lis r7, bIT_actor_pit_exit@ha /* 0x804BD8F4@ha */
/* 804B7360  90 04 00 3C */	stw r0, 0x3c(r4)
/* 804B7364  3C C0 80 4C */	lis r6, bIT_actor_rand_pos_get@ha /* 0x804B8334@ha */
/* 804B7368  3C A0 80 4B */	lis r5, bg_item_ten_coin_entry_ex@ha /* 0x804B7D44@ha */
/* 804B736C  3C 80 80 4C */	lis r4, bIT_fruit_set@ha /* 0x804B9580@ha */
/* 804B7370  83 BF 60 80 */	lwz r29, 0x6080(r31)
/* 804B7374  3B 43 97 98 */	addi r26, r3, BIT_actor_tree_cutcount_check@l /* 0x804B9798@l */
/* 804B7378  3C 60 80 4B */	lis r3, bIT_actor_fade_entry@ha /* 0x804B76BC@ha */
/* 804B737C  38 1C 99 E4 */	addi r0, r28, bIT_actor_dig_hole_effect_entry@l /* 0x804B99E4@l */
/* 804B7380  93 5D 00 0C */	stw r26, 0xc(r29)
/* 804B7384  3B 7B 9A AC */	addi r27, r27, bIT_actor_bury_hole_effect_entry@l /* 0x804B9AAC@l */
/* 804B7388  3B AC A3 A8 */	addi r29, r12, bIT_actor_fly_entry@l /* 0x804BA3A8@l */
/* 804B738C  39 8B A2 64 */	addi r12, r11, bIT_drop_entry_v1@l /* 0x804BA264@l */
/* 804B7390  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804B7394  39 6A 98 68 */	addi r11, r10, bg_item_tree_fruit_drop@l /* 0x804B9868@l */
/* 804B7398  39 49 D7 50 */	addi r10, r9, bIT_actor_pit_fall@l /* 0x804BD750@l */
/* 804B739C  39 28 D8 28 */	addi r9, r8, bIT_actor_pit_fall_stop@l /* 0x804BD828@l */
/* 804B73A0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 804B73A4  39 07 D8 F4 */	addi r8, r7, bIT_actor_pit_exit@l /* 0x804BD8F4@l */
/* 804B73A8  38 E6 83 34 */	addi r7, r6, bIT_actor_rand_pos_get@l /* 0x804B8334@l */
/* 804B73AC  38 C5 7D 44 */	addi r6, r5, bg_item_ten_coin_entry_ex@l /* 0x804B7D44@l */
/* 804B73B0  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804B73B4  38 A4 95 80 */	addi r5, r4, bIT_fruit_set@l /* 0x804B9580@l */
/* 804B73B8  38 83 76 BC */	addi r4, r3, bIT_actor_fade_entry@l /* 0x804B76BC@l */
/* 804B73BC  38 1E 01 74 */	addi r0, r30, 0x174
/* 804B73C0  93 7C 00 14 */	stw r27, 0x14(r28)
/* 804B73C4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73C8  93 A3 00 34 */	stw r29, 0x34(r3)
/* 804B73CC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73D0  91 83 00 40 */	stw r12, 0x40(r3)
/* 804B73D4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73D8  91 63 00 38 */	stw r11, 0x38(r3)
/* 804B73DC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73E0  91 43 00 18 */	stw r10, 0x18(r3)
/* 804B73E4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73E8  91 23 00 1C */	stw r9, 0x1c(r3)
/* 804B73EC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73F0  91 03 00 20 */	stw r8, 0x20(r3)
/* 804B73F4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B73F8  90 E3 00 28 */	stw r7, 0x28(r3)
/* 804B73FC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B7400  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 804B7404  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B7408  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804B740C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B7410  90 83 00 50 */	stw r4, 0x50(r3)
/* 804B7414  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B7418  90 03 00 00 */	stw r0, 0(r3)
/* 804B741C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B7420  93 C3 00 4C */	stw r30, 0x4c(r3)
lbl_804B7424:
/* 804B7424  39 61 00 20 */	addi r11, r1, 0x20
/* 804B7428  4B BE 3A ED */	bl func_8009AF14
/* 804B742C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B7430  7C 08 03 A6 */	mtlr r0
/* 804B7434  38 21 00 20 */	addi r1, r1, 0x20
/* 804B7438  4E 80 00 20 */	blr 
