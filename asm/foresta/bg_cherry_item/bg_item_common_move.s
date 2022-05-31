lbl_804B6240:
/* 804B6240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B6244  7C 08 02 A6 */	mflr r0
/* 804B6248  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B624C  39 61 00 20 */	addi r11, r1, 0x20
/* 804B6250  4B BE 4C 7D */	bl func_8009AECC
/* 804B6254  7C BD 2B 78 */	mr r29, r5
/* 804B6258  7C 7B 1B 78 */	mr r27, r3
/* 804B625C  3C 7D 00 01 */	addis r3, r29, 1
/* 804B6260  7C 9C 23 78 */	mr r28, r4
/* 804B6264  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B6268  4B FF D1 4D */	bl bIT_actor_drop_move
/* 804B626C  3C 7D 00 01 */	addis r3, r29, 1
/* 804B6270  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B6274  4B FF D1 41 */	bl bIT_actor_drop_move
/* 804B6278  3C 7D 00 01 */	addis r3, r29, 1
/* 804B627C  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804B6280  4B FF C8 35 */	bl bIT_actor_hole_effect_move
/* 804B6284  3C 9D 00 01 */	addis r4, r29, 1
/* 804B6288  7F 63 DB 78 */	mr r3, r27
/* 804B628C  38 84 37 D4 */	addi r4, r4, 0x37d4
/* 804B6290  4B FF AF 55 */	bl bIT_actor_shin_effect_move
/* 804B6294  3C 9D 00 01 */	addis r4, r29, 1
/* 804B6298  7F 63 DB 78 */	mr r3, r27
/* 804B629C  38 84 25 DC */	addi r4, r4, 0x25dc
/* 804B62A0  4B FF ED 0D */	bl bIT_actor_pit_move
/* 804B62A4  3C 9D 00 01 */	addis r4, r29, 1
/* 804B62A8  7F 63 DB 78 */	mr r3, r27
/* 804B62AC  38 84 37 E4 */	addi r4, r4, 0x37e4
/* 804B62B0  4B FF A7 55 */	bl bIT_actor_ten_coin_move
/* 804B62B4  3C 9D 00 01 */	addis r4, r29, 1
/* 804B62B8  7F 63 DB 78 */	mr r3, r27
/* 804B62BC  38 84 39 9C */	addi r4, r4, 0x399c
/* 804B62C0  4B FF A1 AD */	bl bIT_actor_fade_move
/* 804B62C4  3B E0 00 00 */	li r31, 0
/* 804B62C8  4B EF 1B E5 */	bl mFI_ItemisBorn
/* 804B62CC  2C 03 00 01 */	cmpwi r3, 1
/* 804B62D0  41 82 00 14 */	beq lbl_804B62E4
/* 804B62D4  38 60 00 03 */	li r3, 3
/* 804B62D8  4B EF 28 65 */	bl mFI_CheckPlayerWade
/* 804B62DC  2C 03 00 00 */	cmpwi r3, 0
/* 804B62E0  41 82 00 08 */	beq lbl_804B62E8
lbl_804B62E4:
/* 804B62E4  63 FF 00 02 */	ori r31, r31, 2
lbl_804B62E8:
/* 804B62E8  4B EF 1B 09 */	bl mFI_FGisUpDate
/* 804B62EC  2C 03 00 01 */	cmpwi r3, 1
/* 804B62F0  40 82 00 08 */	bne lbl_804B62F8
/* 804B62F4  63 FF 00 01 */	ori r31, r31, 1
lbl_804B62F8:
/* 804B62F8  2C 1F 00 00 */	cmpwi r31, 0
/* 804B62FC  41 82 00 14 */	beq lbl_804B6310
/* 804B6300  7F 63 DB 78 */	mr r3, r27
/* 804B6304  7F A4 EB 78 */	mr r4, r29
/* 804B6308  7F E5 FB 78 */	mr r5, r31
/* 804B630C  4B FF FB 59 */	bl bg_item_common_renew_draw_and_crs_data_perfect
lbl_804B6310:
/* 804B6310  7F BE EB 78 */	mr r30, r29
/* 804B6314  3B E0 00 00 */	li r31, 0
lbl_804B6318:
/* 804B6318  A8 1E 48 50 */	lha r0, 0x4850(r30)
/* 804B631C  2C 00 00 01 */	cmpwi r0, 1
/* 804B6320  40 82 00 18 */	bne lbl_804B6338
/* 804B6324  7F 63 DB 78 */	mr r3, r27
/* 804B6328  7F A4 EB 78 */	mr r4, r29
/* 804B632C  7F 85 E3 78 */	mr r5, r28
/* 804B6330  7F C6 F3 78 */	mr r6, r30
/* 804B6334  4B FF FE 65 */	bl bg_item_common_draw_check
lbl_804B6338:
/* 804B6338  3B FF 00 01 */	addi r31, r31, 1
/* 804B633C  3B DE 48 54 */	addi r30, r30, 0x4854
/* 804B6340  2C 1F 00 04 */	cmpwi r31, 4
/* 804B6344  41 80 FF D4 */	blt lbl_804B6318
/* 804B6348  39 61 00 20 */	addi r11, r1, 0x20
/* 804B634C  4B BE 4B CD */	bl func_8009AF18
/* 804B6350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B6354  7C 08 03 A6 */	mtlr r0
/* 804B6358  38 21 00 20 */	addi r1, r1, 0x20
/* 804B635C  4E 80 00 20 */	blr 
