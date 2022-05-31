lbl_804B6BB4:
/* 804B6BB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B6BB8  7C 08 02 A6 */	mflr r0
/* 804B6BBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B6BC0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804B6BC4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804B6BC8  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6BCC  4B BE 42 FD */	bl func_8009AEC8
/* 804B6BD0  83 C3 00 00 */	lwz r30, 0(r3)
/* 804B6BD4  7C 7F 1B 78 */	mr r31, r3
/* 804B6BD8  7C 9A 23 78 */	mr r26, r4
/* 804B6BDC  7C BB 2B 78 */	mr r27, r5
/* 804B6BE0  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 804B6BE4  4B F2 E6 29 */	bl texture_z_light_fog_prim_bb_pal_opa
/* 804B6BE8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804B6BEC  80 7E 02 E0 */	lwz r3, 0x2e0(r30)
/* 804B6BF0  4B F2 E6 55 */	bl texture_z_light_fog_prim_bb_pal_xlu
/* 804B6BF4  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 804B6BF8  80 7E 03 00 */	lwz r3, 0x300(r30)
/* 804B6BFC  4B F2 E6 81 */	bl texture_z_fog_lod_alpha_shadow
/* 804B6C00  90 7E 03 00 */	stw r3, 0x300(r30)
/* 804B6C04  7F E3 FB 78 */	mr r3, r31
/* 804B6C08  4B FF 94 F9 */	bl func_804B0100
/* 804B6C0C  C3 FF 1D 80 */	lfs f31, 0x1d80(r31)
/* 804B6C10  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6C14  88 1F 1D 84 */	lbz r0, 0x1d84(r31)
/* 804B6C18  38 61 00 0C */	addi r3, r1, 0xc
/* 804B6C1C  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804B6C20  98 01 00 13 */	stb r0, 0x13(r1)
/* 804B6C24  88 1F 1D 6A */	lbz r0, 0x1d6a(r31)
/* 804B6C28  98 01 00 10 */	stb r0, 0x10(r1)
/* 804B6C2C  88 1F 1D 6B */	lbz r0, 0x1d6b(r31)
/* 804B6C30  98 01 00 11 */	stb r0, 0x11(r1)
/* 804B6C34  88 1F 1D 6C */	lbz r0, 0x1d6c(r31)
/* 804B6C38  98 01 00 12 */	stb r0, 0x12(r1)
/* 804B6C3C  83 DF 00 00 */	lwz r30, 0(r31)
/* 804B6C40  80 1E 02 D0 */	lwz r0, 0x2d0(r30)
/* 804B6C44  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B6C48  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 804B6C4C  90 01 00 08 */	stw r0, 8(r1)
/* 804B6C50  4B FF A2 09 */	bl bg_item_common_palload
/* 804B6C54  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6C58  38 61 00 08 */	addi r3, r1, 8
/* 804B6C5C  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804B6C60  4B FF A1 F9 */	bl bg_item_common_palload
/* 804B6C64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804B6C68  7F 5C D3 78 */	mr r28, r26
/* 804B6C6C  3B A0 00 00 */	li r29, 0
/* 804B6C70  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 804B6C74  80 01 00 08 */	lwz r0, 8(r1)
/* 804B6C78  90 1E 02 E0 */	stw r0, 0x2e0(r30)
lbl_804B6C7C:
/* 804B6C7C  A8 1C 48 50 */	lha r0, 0x4850(r28)
/* 804B6C80  2C 00 00 01 */	cmpwi r0, 1
/* 804B6C84  40 82 00 1C */	bne lbl_804B6CA0
/* 804B6C88  FC 20 F8 90 */	fmr f1, f31
/* 804B6C8C  7F E3 FB 78 */	mr r3, r31
/* 804B6C90  7F 84 E3 78 */	mr r4, r28
/* 804B6C94  7F 66 DB 78 */	mr r6, r27
/* 804B6C98  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B6C9C  4B FF FC E1 */	bl bg_item_common_draw_item
lbl_804B6CA0:
/* 804B6CA0  3B BD 00 01 */	addi r29, r29, 1
/* 804B6CA4  3B 9C 48 54 */	addi r28, r28, 0x4854
/* 804B6CA8  2C 1D 00 04 */	cmpwi r29, 4
/* 804B6CAC  41 80 FF D0 */	blt lbl_804B6C7C
/* 804B6CB0  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6CB4  7F E3 FB 78 */	mr r3, r31
/* 804B6CB8  7C 85 23 78 */	mr r5, r4
/* 804B6CBC  38 A5 25 CC */	addi r5, r5, 0x25cc
/* 804B6CC0  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6CC4  4B FF D1 C5 */	bl bIT_actor_drop_draw
/* 804B6CC8  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6CCC  7F E3 FB 78 */	mr r3, r31
/* 804B6CD0  7C 85 23 78 */	mr r5, r4
/* 804B6CD4  38 A5 25 D4 */	addi r5, r5, 0x25d4
/* 804B6CD8  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6CDC  4B FF D1 AD */	bl bIT_actor_drop_draw
/* 804B6CE0  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6CE4  7F E3 FB 78 */	mr r3, r31
/* 804B6CE8  7C 85 23 78 */	mr r5, r4
/* 804B6CEC  38 A5 37 B0 */	addi r5, r5, 0x37b0
/* 804B6CF0  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6CF4  4B FF BF 91 */	bl bIT_actor_hole_effect_draw
/* 804B6CF8  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6CFC  7F E3 FB 78 */	mr r3, r31
/* 804B6D00  7C 85 23 78 */	mr r5, r4
/* 804B6D04  38 A5 25 DC */	addi r5, r5, 0x25dc
/* 804B6D08  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6D0C  4B FF FE 29 */	bl bIT_actor_pit_draw
/* 804B6D10  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6D14  FC 20 F8 90 */	fmr f1, f31
/* 804B6D18  7C 85 23 78 */	mr r5, r4
/* 804B6D1C  7F E3 FB 78 */	mr r3, r31
/* 804B6D20  38 C1 00 10 */	addi r6, r1, 0x10
/* 804B6D24  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6D28  38 A5 37 E4 */	addi r5, r5, 0x37e4
/* 804B6D2C  4B FF 9E A5 */	bl bIT_actor_ten_coin_draw
/* 804B6D30  3C 9A 00 01 */	addis r4, r26, 1
/* 804B6D34  7F E3 FB 78 */	mr r3, r31
/* 804B6D38  7C 85 23 78 */	mr r5, r4
/* 804B6D3C  38 A5 39 9C */	addi r5, r5, 0x399c
/* 804B6D40  38 84 25 98 */	addi r4, r4, 0x2598
/* 804B6D44  4B FF 97 75 */	bl bIT_actor_fade_draw
/* 804B6D48  7F E3 FB 78 */	mr r3, r31
/* 804B6D4C  4B FF 94 05 */	bl bit_draw_ta_clr
/* 804B6D50  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804B6D54  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6D58  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804B6D5C  4B BE 41 B9 */	bl func_8009AF14
/* 804B6D60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B6D64  7C 08 03 A6 */	mtlr r0
/* 804B6D68  38 21 00 40 */	addi r1, r1, 0x40
/* 804B6D6C  4E 80 00 20 */	blr 
