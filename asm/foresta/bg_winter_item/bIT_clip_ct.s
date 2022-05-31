lbl_804BEDD0:
/* 804BEDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BEDD4  7C 08 02 A6 */	mflr r0
/* 804BEDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BEDDC  39 61 00 20 */	addi r11, r1, 0x20
/* 804BEDE0  4B BD C0 E9 */	bl func_8009AEC8
/* 804BEDE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804BEDE8  7C 7E 1B 78 */	mr r30, r3
/* 804BEDEC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804BEDF0  3F E3 00 02 */	addis r31, r3, 2
/* 804BEDF4  80 1F 60 80 */	lwz r0, 0x6080(r31)
/* 804BEDF8  28 00 00 00 */	cmplwi r0, 0
/* 804BEDFC  40 82 01 20 */	bne lbl_804BEF1C
/* 804BEE00  38 60 00 54 */	li r3, 0x54
/* 804BEE04  4B EF D6 59 */	bl zelda_malloc
/* 804BEE08  3C 80 80 4C */	lis r4, bIT_draw_shadow@ha /* 0x804BEC5C@ha */
/* 804BEE0C  90 7F 60 80 */	stw r3, 0x6080(r31)
/* 804BEE10  38 04 EC 5C */	addi r0, r4, bIT_draw_shadow@l /* 0x804BEC5C@l */
/* 804BEE14  3C C0 80 4C */	lis r6, bit_cmn_single_draw@ha /* 0x804C35D8@ha */
/* 804BEE18  90 03 00 04 */	stw r0, 4(r3)
/* 804BEE1C  3C A0 80 4C */	lis r5, bIT_actor_player_drop_entry@ha /* 0x804C1B78@ha */
/* 804BEE20  3C 60 80 4C */	lis r3, BIT_actor_tree_cutcount_check@ha /* 0x804C1290@ha */
/* 804BEE24  3F 80 80 4C */	lis r28, bIT_actor_dig_hole_effect_entry@ha /* 0x804C14DC@ha */
/* 804BEE28  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804BEE2C  38 06 35 D8 */	addi r0, r6, bit_cmn_single_draw@l /* 0x804C35D8@l */
/* 804BEE30  3F 60 80 4C */	lis r27, bIT_actor_bury_hole_effect_entry@ha /* 0x804C15A4@ha */
/* 804BEE34  3D 80 80 4C */	lis r12, bIT_actor_fly_entry@ha /* 0x804C1EA0@ha */
/* 804BEE38  90 04 00 08 */	stw r0, 8(r4)
/* 804BEE3C  3D 60 80 4C */	lis r11, bIT_drop_entry_v1@ha /* 0x804C1D5C@ha */
/* 804BEE40  3D 40 80 4C */	lis r10, bg_item_tree_fruit_drop@ha /* 0x804C1360@ha */
/* 804BEE44  3D 20 80 4C */	lis r9, bIT_actor_pit_fall@ha /* 0x804C5248@ha */
/* 804BEE48  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804BEE4C  38 05 1B 78 */	addi r0, r5, bIT_actor_player_drop_entry@l /* 0x804C1B78@l */
/* 804BEE50  3D 00 80 4C */	lis r8, bIT_actor_pit_fall_stop@ha /* 0x804C5320@ha */
/* 804BEE54  3C E0 80 4C */	lis r7, bIT_actor_pit_exit@ha /* 0x804C53EC@ha */
/* 804BEE58  90 04 00 3C */	stw r0, 0x3c(r4)
/* 804BEE5C  3C C0 80 4C */	lis r6, bIT_actor_rand_pos_get@ha /* 0x804BFE2C@ha */
/* 804BEE60  3C A0 80 4C */	lis r5, bg_item_ten_coin_entry_ex@ha /* 0x804BF83C@ha */
/* 804BEE64  3C 80 80 4C */	lis r4, bIT_fruit_set@ha /* 0x804C1078@ha */
/* 804BEE68  83 BF 60 80 */	lwz r29, 0x6080(r31)
/* 804BEE6C  3B 43 12 90 */	addi r26, r3, BIT_actor_tree_cutcount_check@l /* 0x804C1290@l */
/* 804BEE70  3C 60 80 4C */	lis r3, bIT_actor_fade_entry@ha /* 0x804BF1B4@ha */
/* 804BEE74  38 1C 14 DC */	addi r0, r28, bIT_actor_dig_hole_effect_entry@l /* 0x804C14DC@l */
/* 804BEE78  93 5D 00 0C */	stw r26, 0xc(r29)
/* 804BEE7C  3B 7B 15 A4 */	addi r27, r27, bIT_actor_bury_hole_effect_entry@l /* 0x804C15A4@l */
/* 804BEE80  3B AC 1E A0 */	addi r29, r12, bIT_actor_fly_entry@l /* 0x804C1EA0@l */
/* 804BEE84  39 8B 1D 5C */	addi r12, r11, bIT_drop_entry_v1@l /* 0x804C1D5C@l */
/* 804BEE88  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804BEE8C  39 6A 13 60 */	addi r11, r10, bg_item_tree_fruit_drop@l /* 0x804C1360@l */
/* 804BEE90  39 49 52 48 */	addi r10, r9, bIT_actor_pit_fall@l /* 0x804C5248@l */
/* 804BEE94  39 28 53 20 */	addi r9, r8, bIT_actor_pit_fall_stop@l /* 0x804C5320@l */
/* 804BEE98  90 1C 00 10 */	stw r0, 0x10(r28)
/* 804BEE9C  39 07 53 EC */	addi r8, r7, bIT_actor_pit_exit@l /* 0x804C53EC@l */
/* 804BEEA0  38 E6 FE 2C */	addi r7, r6, bIT_actor_rand_pos_get@l /* 0x804BFE2C@l */
/* 804BEEA4  38 C5 F8 3C */	addi r6, r5, bg_item_ten_coin_entry_ex@l /* 0x804BF83C@l */
/* 804BEEA8  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804BEEAC  38 A4 10 78 */	addi r5, r4, bIT_fruit_set@l /* 0x804C1078@l */
/* 804BEEB0  38 83 F1 B4 */	addi r4, r3, bIT_actor_fade_entry@l /* 0x804BF1B4@l */
/* 804BEEB4  38 1E 01 74 */	addi r0, r30, 0x174
/* 804BEEB8  93 7C 00 14 */	stw r27, 0x14(r28)
/* 804BEEBC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEC0  93 A3 00 34 */	stw r29, 0x34(r3)
/* 804BEEC4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEC8  91 83 00 40 */	stw r12, 0x40(r3)
/* 804BEECC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEED0  91 63 00 38 */	stw r11, 0x38(r3)
/* 804BEED4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEED8  91 43 00 18 */	stw r10, 0x18(r3)
/* 804BEEDC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEE0  91 23 00 1C */	stw r9, 0x1c(r3)
/* 804BEEE4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEE8  91 03 00 20 */	stw r8, 0x20(r3)
/* 804BEEEC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEF0  90 E3 00 28 */	stw r7, 0x28(r3)
/* 804BEEF4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEEF8  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 804BEEFC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEF00  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804BEF04  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEF08  90 83 00 50 */	stw r4, 0x50(r3)
/* 804BEF0C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEF10  90 03 00 00 */	stw r0, 0(r3)
/* 804BEF14  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEF18  93 C3 00 4C */	stw r30, 0x4c(r3)
lbl_804BEF1C:
/* 804BEF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BEF20  4B BD BF F5 */	bl func_8009AF14
/* 804BEF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BEF28  7C 08 03 A6 */	mtlr r0
/* 804BEF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BEF30  4E 80 00 20 */	blr 
