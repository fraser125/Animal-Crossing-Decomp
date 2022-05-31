lbl_804AFF54:
/* 804AFF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AFF58  7C 08 02 A6 */	mflr r0
/* 804AFF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AFF60  39 61 00 20 */	addi r11, r1, 0x20
/* 804AFF64  4B BE AF 65 */	bl func_8009AEC8
/* 804AFF68  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AFF6C  7C 7E 1B 78 */	mr r30, r3
/* 804AFF70  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804AFF74  3F E3 00 02 */	addis r31, r3, 2
/* 804AFF78  80 1F 60 80 */	lwz r0, 0x6080(r31)
/* 804AFF7C  28 00 00 00 */	cmplwi r0, 0
/* 804AFF80  40 82 01 20 */	bne lbl_804B00A0
/* 804AFF84  38 60 00 54 */	li r3, 0x54
/* 804AFF88  4B F0 C4 D5 */	bl zelda_malloc
/* 804AFF8C  3C 80 80 4B */	lis r4, bIT_draw_shadow@ha /* 0x804AFDE0@ha */
/* 804AFF90  90 7F 60 80 */	stw r3, 0x6080(r31)
/* 804AFF94  38 04 FD E0 */	addi r0, r4, bIT_draw_shadow@l /* 0x804AFDE0@l */
/* 804AFF98  3C C0 80 4B */	lis r6, bit_cmn_single_draw@ha /* 0x804B475C@ha */
/* 804AFF9C  90 03 00 04 */	stw r0, 4(r3)
/* 804AFFA0  3C A0 80 4B */	lis r5, bIT_actor_player_drop_entry@ha /* 0x804B2CFC@ha */
/* 804AFFA4  3C 60 80 4B */	lis r3, BIT_actor_tree_cutcount_check@ha /* 0x804B2414@ha */
/* 804AFFA8  3F 80 80 4B */	lis r28, bIT_actor_dig_hole_effect_entry@ha /* 0x804B2660@ha */
/* 804AFFAC  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804AFFB0  38 06 47 5C */	addi r0, r6, bit_cmn_single_draw@l /* 0x804B475C@l */
/* 804AFFB4  3F 60 80 4B */	lis r27, bIT_actor_bury_hole_effect_entry@ha /* 0x804B2728@ha */
/* 804AFFB8  3D 80 80 4B */	lis r12, bIT_actor_fly_entry@ha /* 0x804B3024@ha */
/* 804AFFBC  90 04 00 08 */	stw r0, 8(r4)
/* 804AFFC0  3D 60 80 4B */	lis r11, bIT_drop_entry_v1@ha /* 0x804B2EE0@ha */
/* 804AFFC4  3D 40 80 4B */	lis r10, bg_item_tree_fruit_drop@ha /* 0x804B24E4@ha */
/* 804AFFC8  3D 20 80 4B */	lis r9, bIT_actor_pit_fall@ha /* 0x804B63CC@ha */
/* 804AFFCC  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804AFFD0  38 05 2C FC */	addi r0, r5, bIT_actor_player_drop_entry@l /* 0x804B2CFC@l */
/* 804AFFD4  3D 00 80 4B */	lis r8, bIT_actor_pit_fall_stop@ha /* 0x804B64A4@ha */
/* 804AFFD8  3C E0 80 4B */	lis r7, bIT_actor_pit_exit@ha /* 0x804B6570@ha */
/* 804AFFDC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 804AFFE0  3C C0 80 4B */	lis r6, bIT_actor_rand_pos_get@ha /* 0x804B0FB0@ha */
/* 804AFFE4  3C A0 80 4B */	lis r5, bg_item_ten_coin_entry_ex@ha /* 0x804B09C0@ha */
/* 804AFFE8  3C 80 80 4B */	lis r4, bIT_fruit_set@ha /* 0x804B21FC@ha */
/* 804AFFEC  83 BF 60 80 */	lwz r29, 0x6080(r31)
/* 804AFFF0  3B 43 24 14 */	addi r26, r3, BIT_actor_tree_cutcount_check@l /* 0x804B2414@l */
/* 804AFFF4  3C 60 80 4B */	lis r3, bIT_actor_fade_entry@ha /* 0x804B0338@ha */
/* 804AFFF8  38 1C 26 60 */	addi r0, r28, bIT_actor_dig_hole_effect_entry@l /* 0x804B2660@l */
/* 804AFFFC  93 5D 00 0C */	stw r26, 0xc(r29)
/* 804B0000  3B 7B 27 28 */	addi r27, r27, bIT_actor_bury_hole_effect_entry@l /* 0x804B2728@l */
/* 804B0004  3B AC 30 24 */	addi r29, r12, bIT_actor_fly_entry@l /* 0x804B3024@l */
/* 804B0008  39 8B 2E E0 */	addi r12, r11, bIT_drop_entry_v1@l /* 0x804B2EE0@l */
/* 804B000C  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804B0010  39 6A 24 E4 */	addi r11, r10, bg_item_tree_fruit_drop@l /* 0x804B24E4@l */
/* 804B0014  39 49 63 CC */	addi r10, r9, bIT_actor_pit_fall@l /* 0x804B63CC@l */
/* 804B0018  39 28 64 A4 */	addi r9, r8, bIT_actor_pit_fall_stop@l /* 0x804B64A4@l */
/* 804B001C  90 1C 00 10 */	stw r0, 0x10(r28)
/* 804B0020  39 07 65 70 */	addi r8, r7, bIT_actor_pit_exit@l /* 0x804B6570@l */
/* 804B0024  38 E6 0F B0 */	addi r7, r6, bIT_actor_rand_pos_get@l /* 0x804B0FB0@l */
/* 804B0028  38 C5 09 C0 */	addi r6, r5, bg_item_ten_coin_entry_ex@l /* 0x804B09C0@l */
/* 804B002C  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804B0030  38 A4 21 FC */	addi r5, r4, bIT_fruit_set@l /* 0x804B21FC@l */
/* 804B0034  38 83 03 38 */	addi r4, r3, bIT_actor_fade_entry@l /* 0x804B0338@l */
/* 804B0038  38 1E 01 74 */	addi r0, r30, 0x174
/* 804B003C  93 7C 00 14 */	stw r27, 0x14(r28)
/* 804B0040  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0044  93 A3 00 34 */	stw r29, 0x34(r3)
/* 804B0048  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B004C  91 83 00 40 */	stw r12, 0x40(r3)
/* 804B0050  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0054  91 63 00 38 */	stw r11, 0x38(r3)
/* 804B0058  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B005C  91 43 00 18 */	stw r10, 0x18(r3)
/* 804B0060  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0064  91 23 00 1C */	stw r9, 0x1c(r3)
/* 804B0068  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B006C  91 03 00 20 */	stw r8, 0x20(r3)
/* 804B0070  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0074  90 E3 00 28 */	stw r7, 0x28(r3)
/* 804B0078  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B007C  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 804B0080  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0084  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804B0088  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B008C  90 83 00 50 */	stw r4, 0x50(r3)
/* 804B0090  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B0094  90 03 00 00 */	stw r0, 0(r3)
/* 804B0098  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B009C  93 C3 00 4C */	stw r30, 0x4c(r3)
lbl_804B00A0:
/* 804B00A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804B00A4  4B BE AE 71 */	bl func_8009AF14
/* 804B00A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B00AC  7C 08 03 A6 */	mtlr r0
/* 804B00B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804B00B4  4E 80 00 20 */	blr 
