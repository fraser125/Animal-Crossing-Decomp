lbl_804CC4D4:
/* 804CC4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CC4D8  7C 08 02 A6 */	mflr r0
/* 804CC4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CC4E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CC4E4  4B BC E9 E9 */	bl func_8009AECC
/* 804CC4E8  7C BD 2B 78 */	mr r29, r5
/* 804CC4EC  7C 7B 1B 78 */	mr r27, r3
/* 804CC4F0  3C 7D 00 01 */	addis r3, r29, 1
/* 804CC4F4  7C 9C 23 78 */	mr r28, r4
/* 804CC4F8  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804CC4FC  4B FF D1 4D */	bl bIT_actor_drop_move
/* 804CC500  3C 7D 00 01 */	addis r3, r29, 1
/* 804CC504  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804CC508  4B FF D1 41 */	bl bIT_actor_drop_move
/* 804CC50C  3C 7D 00 01 */	addis r3, r29, 1
/* 804CC510  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804CC514  4B FF C8 35 */	bl bIT_actor_hole_effect_move
/* 804CC518  3C 9D 00 01 */	addis r4, r29, 1
/* 804CC51C  7F 63 DB 78 */	mr r3, r27
/* 804CC520  38 84 37 D4 */	addi r4, r4, 0x37d4
/* 804CC524  4B FF AF 55 */	bl bIT_actor_shin_effect_move
/* 804CC528  3C 9D 00 01 */	addis r4, r29, 1
/* 804CC52C  7F 63 DB 78 */	mr r3, r27
/* 804CC530  38 84 25 DC */	addi r4, r4, 0x25dc
/* 804CC534  4B FF ED 0D */	bl bIT_actor_pit_move
/* 804CC538  3C 9D 00 01 */	addis r4, r29, 1
/* 804CC53C  7F 63 DB 78 */	mr r3, r27
/* 804CC540  38 84 37 E4 */	addi r4, r4, 0x37e4
/* 804CC544  4B FF A7 55 */	bl bIT_actor_ten_coin_move
/* 804CC548  3C 9D 00 01 */	addis r4, r29, 1
/* 804CC54C  7F 63 DB 78 */	mr r3, r27
/* 804CC550  38 84 39 9C */	addi r4, r4, 0x399c
/* 804CC554  4B FF A1 AD */	bl bIT_actor_fade_move
/* 804CC558  3B E0 00 00 */	li r31, 0
/* 804CC55C  4B ED B9 51 */	bl mFI_ItemisBorn
/* 804CC560  2C 03 00 01 */	cmpwi r3, 1
/* 804CC564  41 82 00 14 */	beq lbl_804CC578
/* 804CC568  38 60 00 03 */	li r3, 3
/* 804CC56C  4B ED C5 D1 */	bl mFI_CheckPlayerWade
/* 804CC570  2C 03 00 00 */	cmpwi r3, 0
/* 804CC574  41 82 00 08 */	beq lbl_804CC57C
lbl_804CC578:
/* 804CC578  63 FF 00 02 */	ori r31, r31, 2
lbl_804CC57C:
/* 804CC57C  4B ED B8 75 */	bl mFI_FGisUpDate
/* 804CC580  2C 03 00 01 */	cmpwi r3, 1
/* 804CC584  40 82 00 08 */	bne lbl_804CC58C
/* 804CC588  63 FF 00 01 */	ori r31, r31, 1
lbl_804CC58C:
/* 804CC58C  2C 1F 00 00 */	cmpwi r31, 0
/* 804CC590  41 82 00 14 */	beq lbl_804CC5A4
/* 804CC594  7F 63 DB 78 */	mr r3, r27
/* 804CC598  7F A4 EB 78 */	mr r4, r29
/* 804CC59C  7F E5 FB 78 */	mr r5, r31
/* 804CC5A0  4B FF FB 59 */	bl bg_item_common_renew_draw_and_crs_data_perfect
lbl_804CC5A4:
/* 804CC5A4  7F BE EB 78 */	mr r30, r29
/* 804CC5A8  3B E0 00 00 */	li r31, 0
lbl_804CC5AC:
/* 804CC5AC  A8 1E 48 50 */	lha r0, 0x4850(r30)
/* 804CC5B0  2C 00 00 01 */	cmpwi r0, 1
/* 804CC5B4  40 82 00 18 */	bne lbl_804CC5CC
/* 804CC5B8  7F 63 DB 78 */	mr r3, r27
/* 804CC5BC  7F A4 EB 78 */	mr r4, r29
/* 804CC5C0  7F 85 E3 78 */	mr r5, r28
/* 804CC5C4  7F C6 F3 78 */	mr r6, r30
/* 804CC5C8  4B FF FE 65 */	bl bg_item_common_draw_check
lbl_804CC5CC:
/* 804CC5CC  3B FF 00 01 */	addi r31, r31, 1
/* 804CC5D0  3B DE 48 54 */	addi r30, r30, 0x4854
/* 804CC5D4  2C 1F 00 04 */	cmpwi r31, 4
/* 804CC5D8  41 80 FF D4 */	blt lbl_804CC5AC
/* 804CC5DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CC5E0  4B BC E9 39 */	bl func_8009AF18
/* 804CC5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CC5E8  7C 08 03 A6 */	mtlr r0
/* 804CC5EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804CC5F0  4E 80 00 20 */	blr 
