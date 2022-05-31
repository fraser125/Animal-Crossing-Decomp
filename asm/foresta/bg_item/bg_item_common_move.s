lbl_804BD5C4:
/* 804BD5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BD5C8  7C 08 02 A6 */	mflr r0
/* 804BD5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BD5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804BD5D4  4B BD D8 F9 */	bl func_8009AECC
/* 804BD5D8  7C BD 2B 78 */	mr r29, r5
/* 804BD5DC  7C 7B 1B 78 */	mr r27, r3
/* 804BD5E0  3C 7D 00 01 */	addis r3, r29, 1
/* 804BD5E4  7C 9C 23 78 */	mr r28, r4
/* 804BD5E8  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BD5EC  4B FF D1 4D */	bl bIT_actor_drop_move
/* 804BD5F0  3C 7D 00 01 */	addis r3, r29, 1
/* 804BD5F4  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804BD5F8  4B FF D1 41 */	bl bIT_actor_drop_move
/* 804BD5FC  3C 7D 00 01 */	addis r3, r29, 1
/* 804BD600  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804BD604  4B FF C8 35 */	bl bIT_actor_hole_effect_move
/* 804BD608  3C 9D 00 01 */	addis r4, r29, 1
/* 804BD60C  7F 63 DB 78 */	mr r3, r27
/* 804BD610  38 84 37 D4 */	addi r4, r4, 0x37d4
/* 804BD614  4B FF AF 55 */	bl bIT_actor_shin_effect_move
/* 804BD618  3C 9D 00 01 */	addis r4, r29, 1
/* 804BD61C  7F 63 DB 78 */	mr r3, r27
/* 804BD620  38 84 25 DC */	addi r4, r4, 0x25dc
/* 804BD624  4B FF ED 0D */	bl bIT_actor_pit_move
/* 804BD628  3C 9D 00 01 */	addis r4, r29, 1
/* 804BD62C  7F 63 DB 78 */	mr r3, r27
/* 804BD630  38 84 37 E4 */	addi r4, r4, 0x37e4
/* 804BD634  4B FF A7 55 */	bl bIT_actor_ten_coin_move
/* 804BD638  3C 9D 00 01 */	addis r4, r29, 1
/* 804BD63C  7F 63 DB 78 */	mr r3, r27
/* 804BD640  38 84 39 9C */	addi r4, r4, 0x399c
/* 804BD644  4B FF A1 AD */	bl bIT_actor_fade_move
/* 804BD648  3B E0 00 00 */	li r31, 0
/* 804BD64C  4B EE A8 61 */	bl mFI_ItemisBorn
/* 804BD650  2C 03 00 01 */	cmpwi r3, 1
/* 804BD654  41 82 00 14 */	beq lbl_804BD668
/* 804BD658  38 60 00 03 */	li r3, 3
/* 804BD65C  4B EE B4 E1 */	bl mFI_CheckPlayerWade
/* 804BD660  2C 03 00 00 */	cmpwi r3, 0
/* 804BD664  41 82 00 08 */	beq lbl_804BD66C
lbl_804BD668:
/* 804BD668  63 FF 00 02 */	ori r31, r31, 2
lbl_804BD66C:
/* 804BD66C  4B EE A7 85 */	bl mFI_FGisUpDate
/* 804BD670  2C 03 00 01 */	cmpwi r3, 1
/* 804BD674  40 82 00 08 */	bne lbl_804BD67C
/* 804BD678  63 FF 00 01 */	ori r31, r31, 1
lbl_804BD67C:
/* 804BD67C  2C 1F 00 00 */	cmpwi r31, 0
/* 804BD680  41 82 00 14 */	beq lbl_804BD694
/* 804BD684  7F 63 DB 78 */	mr r3, r27
/* 804BD688  7F A4 EB 78 */	mr r4, r29
/* 804BD68C  7F E5 FB 78 */	mr r5, r31
/* 804BD690  4B FF FB 59 */	bl bg_item_common_renew_draw_and_crs_data_perfect
lbl_804BD694:
/* 804BD694  7F BE EB 78 */	mr r30, r29
/* 804BD698  3B E0 00 00 */	li r31, 0
lbl_804BD69C:
/* 804BD69C  A8 1E 48 50 */	lha r0, 0x4850(r30)
/* 804BD6A0  2C 00 00 01 */	cmpwi r0, 1
/* 804BD6A4  40 82 00 18 */	bne lbl_804BD6BC
/* 804BD6A8  7F 63 DB 78 */	mr r3, r27
/* 804BD6AC  7F A4 EB 78 */	mr r4, r29
/* 804BD6B0  7F 85 E3 78 */	mr r5, r28
/* 804BD6B4  7F C6 F3 78 */	mr r6, r30
/* 804BD6B8  4B FF FE 65 */	bl bg_item_common_draw_check
lbl_804BD6BC:
/* 804BD6BC  3B FF 00 01 */	addi r31, r31, 1
/* 804BD6C0  3B DE 48 54 */	addi r30, r30, 0x4854
/* 804BD6C4  2C 1F 00 04 */	cmpwi r31, 4
/* 804BD6C8  41 80 FF D4 */	blt lbl_804BD69C
/* 804BD6CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804BD6D0  4B BD D8 49 */	bl func_8009AF18
/* 804BD6D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BD6D8  7C 08 03 A6 */	mtlr r0
/* 804BD6DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804BD6E0  4E 80 00 20 */	blr 
