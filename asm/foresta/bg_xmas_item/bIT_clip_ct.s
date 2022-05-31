lbl_804C61E8:
/* 804C61E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C61EC  7C 08 02 A6 */	mflr r0
/* 804C61F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C61F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804C61F8  4B BD 4C D1 */	bl func_8009AEC8
/* 804C61FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804C6200  7C 7E 1B 78 */	mr r30, r3
/* 804C6204  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804C6208  3F E3 00 02 */	addis r31, r3, 2
/* 804C620C  80 1F 60 80 */	lwz r0, 0x6080(r31)
/* 804C6210  28 00 00 00 */	cmplwi r0, 0
/* 804C6214  40 82 01 20 */	bne lbl_804C6334
/* 804C6218  38 60 00 54 */	li r3, 0x54
/* 804C621C  4B EF 62 41 */	bl zelda_malloc
/* 804C6220  3C 80 80 4C */	lis r4, bIT_draw_shadow@ha /* 0x804C6074@ha */
/* 804C6224  90 7F 60 80 */	stw r3, 0x6080(r31)
/* 804C6228  38 04 60 74 */	addi r0, r4, bIT_draw_shadow@l /* 0x804C6074@l */
/* 804C622C  3C C0 80 4D */	lis r6, bit_cmn_single_draw@ha /* 0x804CA9F0@ha */
/* 804C6230  90 03 00 04 */	stw r0, 4(r3)
/* 804C6234  3C A0 80 4D */	lis r5, bIT_actor_player_drop_entry@ha /* 0x804C8F90@ha */
/* 804C6238  3C 60 80 4D */	lis r3, BIT_actor_tree_cutcount_check@ha /* 0x804C86A8@ha */
/* 804C623C  3F 80 80 4D */	lis r28, bIT_actor_dig_hole_effect_entry@ha /* 0x804C88F4@ha */
/* 804C6240  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804C6244  38 06 A9 F0 */	addi r0, r6, bit_cmn_single_draw@l /* 0x804CA9F0@l */
/* 804C6248  3F 60 80 4D */	lis r27, bIT_actor_bury_hole_effect_entry@ha /* 0x804C89BC@ha */
/* 804C624C  3D 80 80 4D */	lis r12, bIT_actor_fly_entry@ha /* 0x804C92B8@ha */
/* 804C6250  90 04 00 08 */	stw r0, 8(r4)
/* 804C6254  3D 60 80 4D */	lis r11, bIT_drop_entry_v1@ha /* 0x804C9174@ha */
/* 804C6258  3D 40 80 4D */	lis r10, bg_item_tree_fruit_drop@ha /* 0x804C8778@ha */
/* 804C625C  3D 20 80 4D */	lis r9, bIT_actor_pit_fall@ha /* 0x804CC660@ha */
/* 804C6260  80 9F 60 80 */	lwz r4, 0x6080(r31)
/* 804C6264  38 05 8F 90 */	addi r0, r5, bIT_actor_player_drop_entry@l /* 0x804C8F90@l */
/* 804C6268  3D 00 80 4D */	lis r8, bIT_actor_pit_fall_stop@ha /* 0x804CC738@ha */
/* 804C626C  3C E0 80 4D */	lis r7, bIT_actor_pit_exit@ha /* 0x804CC804@ha */
/* 804C6270  90 04 00 3C */	stw r0, 0x3c(r4)
/* 804C6274  3C C0 80 4C */	lis r6, bIT_actor_rand_pos_get@ha /* 0x804C7244@ha */
/* 804C6278  3C A0 80 4C */	lis r5, bg_item_ten_coin_entry_ex@ha /* 0x804C6C54@ha */
/* 804C627C  3C 80 80 4D */	lis r4, bIT_fruit_set@ha /* 0x804C8490@ha */
/* 804C6280  83 BF 60 80 */	lwz r29, 0x6080(r31)
/* 804C6284  3B 43 86 A8 */	addi r26, r3, BIT_actor_tree_cutcount_check@l /* 0x804C86A8@l */
/* 804C6288  3C 60 80 4C */	lis r3, bIT_actor_fade_entry@ha /* 0x804C65CC@ha */
/* 804C628C  38 1C 88 F4 */	addi r0, r28, bIT_actor_dig_hole_effect_entry@l /* 0x804C88F4@l */
/* 804C6290  93 5D 00 0C */	stw r26, 0xc(r29)
/* 804C6294  3B 7B 89 BC */	addi r27, r27, bIT_actor_bury_hole_effect_entry@l /* 0x804C89BC@l */
/* 804C6298  3B AC 92 B8 */	addi r29, r12, bIT_actor_fly_entry@l /* 0x804C92B8@l */
/* 804C629C  39 8B 91 74 */	addi r12, r11, bIT_drop_entry_v1@l /* 0x804C9174@l */
/* 804C62A0  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804C62A4  39 6A 87 78 */	addi r11, r10, bg_item_tree_fruit_drop@l /* 0x804C8778@l */
/* 804C62A8  39 49 C6 60 */	addi r10, r9, bIT_actor_pit_fall@l /* 0x804CC660@l */
/* 804C62AC  39 28 C7 38 */	addi r9, r8, bIT_actor_pit_fall_stop@l /* 0x804CC738@l */
/* 804C62B0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 804C62B4  39 07 C8 04 */	addi r8, r7, bIT_actor_pit_exit@l /* 0x804CC804@l */
/* 804C62B8  38 E6 72 44 */	addi r7, r6, bIT_actor_rand_pos_get@l /* 0x804C7244@l */
/* 804C62BC  38 C5 6C 54 */	addi r6, r5, bg_item_ten_coin_entry_ex@l /* 0x804C6C54@l */
/* 804C62C0  83 9F 60 80 */	lwz r28, 0x6080(r31)
/* 804C62C4  38 A4 84 90 */	addi r5, r4, bIT_fruit_set@l /* 0x804C8490@l */
/* 804C62C8  38 83 65 CC */	addi r4, r3, bIT_actor_fade_entry@l /* 0x804C65CC@l */
/* 804C62CC  38 1E 15 6C */	addi r0, r30, 0x156c
/* 804C62D0  93 7C 00 14 */	stw r27, 0x14(r28)
/* 804C62D4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C62D8  93 A3 00 34 */	stw r29, 0x34(r3)
/* 804C62DC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C62E0  91 83 00 40 */	stw r12, 0x40(r3)
/* 804C62E4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C62E8  91 63 00 38 */	stw r11, 0x38(r3)
/* 804C62EC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C62F0  91 43 00 18 */	stw r10, 0x18(r3)
/* 804C62F4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C62F8  91 23 00 1C */	stw r9, 0x1c(r3)
/* 804C62FC  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6300  91 03 00 20 */	stw r8, 0x20(r3)
/* 804C6304  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6308  90 E3 00 28 */	stw r7, 0x28(r3)
/* 804C630C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6310  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 804C6314  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6318  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804C631C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6320  90 83 00 50 */	stw r4, 0x50(r3)
/* 804C6324  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6328  90 03 00 00 */	stw r0, 0(r3)
/* 804C632C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C6330  93 C3 00 4C */	stw r30, 0x4c(r3)
lbl_804C6334:
/* 804C6334  39 61 00 20 */	addi r11, r1, 0x20
/* 804C6338  4B BD 4B DD */	bl func_8009AF14
/* 804C633C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C6340  7C 08 03 A6 */	mtlr r0
/* 804C6344  38 21 00 20 */	addi r1, r1, 0x20
/* 804C6348  4E 80 00 20 */	blr 
