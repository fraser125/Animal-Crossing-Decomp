lbl_804C50BC:
/* 804C50BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C50C0  7C 08 02 A6 */	mflr r0
/* 804C50C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C50C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804C50CC  4B BD 5E 01 */	bl func_8009AECC
/* 804C50D0  7C BD 2B 78 */	mr r29, r5
/* 804C50D4  7C 7B 1B 78 */	mr r27, r3
/* 804C50D8  3C 7D 00 01 */	addis r3, r29, 1
/* 804C50DC  7C 9C 23 78 */	mr r28, r4
/* 804C50E0  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C50E4  4B FF D1 4D */	bl bIT_actor_drop_move
/* 804C50E8  3C 7D 00 01 */	addis r3, r29, 1
/* 804C50EC  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C50F0  4B FF D1 41 */	bl bIT_actor_drop_move
/* 804C50F4  3C 7D 00 01 */	addis r3, r29, 1
/* 804C50F8  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804C50FC  4B FF C8 35 */	bl bIT_actor_hole_effect_move
/* 804C5100  3C 9D 00 01 */	addis r4, r29, 1
/* 804C5104  7F 63 DB 78 */	mr r3, r27
/* 804C5108  38 84 37 D4 */	addi r4, r4, 0x37d4
/* 804C510C  4B FF AF 55 */	bl bIT_actor_shin_effect_move
/* 804C5110  3C 9D 00 01 */	addis r4, r29, 1
/* 804C5114  7F 63 DB 78 */	mr r3, r27
/* 804C5118  38 84 25 DC */	addi r4, r4, 0x25dc
/* 804C511C  4B FF ED 0D */	bl bIT_actor_pit_move
/* 804C5120  3C 9D 00 01 */	addis r4, r29, 1
/* 804C5124  7F 63 DB 78 */	mr r3, r27
/* 804C5128  38 84 37 E4 */	addi r4, r4, 0x37e4
/* 804C512C  4B FF A7 55 */	bl bIT_actor_ten_coin_move
/* 804C5130  3C 9D 00 01 */	addis r4, r29, 1
/* 804C5134  7F 63 DB 78 */	mr r3, r27
/* 804C5138  38 84 39 9C */	addi r4, r4, 0x399c
/* 804C513C  4B FF A1 AD */	bl bIT_actor_fade_move
/* 804C5140  3B E0 00 00 */	li r31, 0
/* 804C5144  4B EE 2D 69 */	bl mFI_ItemisBorn
/* 804C5148  2C 03 00 01 */	cmpwi r3, 1
/* 804C514C  41 82 00 14 */	beq lbl_804C5160
/* 804C5150  38 60 00 03 */	li r3, 3
/* 804C5154  4B EE 39 E9 */	bl mFI_CheckPlayerWade
/* 804C5158  2C 03 00 00 */	cmpwi r3, 0
/* 804C515C  41 82 00 08 */	beq lbl_804C5164
lbl_804C5160:
/* 804C5160  63 FF 00 02 */	ori r31, r31, 2
lbl_804C5164:
/* 804C5164  4B EE 2C 8D */	bl mFI_FGisUpDate
/* 804C5168  2C 03 00 01 */	cmpwi r3, 1
/* 804C516C  40 82 00 08 */	bne lbl_804C5174
/* 804C5170  63 FF 00 01 */	ori r31, r31, 1
lbl_804C5174:
/* 804C5174  2C 1F 00 00 */	cmpwi r31, 0
/* 804C5178  41 82 00 14 */	beq lbl_804C518C
/* 804C517C  7F 63 DB 78 */	mr r3, r27
/* 804C5180  7F A4 EB 78 */	mr r4, r29
/* 804C5184  7F E5 FB 78 */	mr r5, r31
/* 804C5188  4B FF FB 59 */	bl bg_item_common_renew_draw_and_crs_data_perfect
lbl_804C518C:
/* 804C518C  7F BE EB 78 */	mr r30, r29
/* 804C5190  3B E0 00 00 */	li r31, 0
lbl_804C5194:
/* 804C5194  A8 1E 48 50 */	lha r0, 0x4850(r30)
/* 804C5198  2C 00 00 01 */	cmpwi r0, 1
/* 804C519C  40 82 00 18 */	bne lbl_804C51B4
/* 804C51A0  7F 63 DB 78 */	mr r3, r27
/* 804C51A4  7F A4 EB 78 */	mr r4, r29
/* 804C51A8  7F 85 E3 78 */	mr r5, r28
/* 804C51AC  7F C6 F3 78 */	mr r6, r30
/* 804C51B0  4B FF FE 65 */	bl bg_item_common_draw_check
lbl_804C51B4:
/* 804C51B4  3B FF 00 01 */	addi r31, r31, 1
/* 804C51B8  3B DE 48 54 */	addi r30, r30, 0x4854
/* 804C51BC  2C 1F 00 04 */	cmpwi r31, 4
/* 804C51C0  41 80 FF D4 */	blt lbl_804C5194
/* 804C51C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804C51C8  4B BD 5D 51 */	bl func_8009AF18
/* 804C51CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C51D0  7C 08 03 A6 */	mtlr r0
/* 804C51D4  38 21 00 20 */	addi r1, r1, 0x20
/* 804C51D8  4E 80 00 20 */	blr 
