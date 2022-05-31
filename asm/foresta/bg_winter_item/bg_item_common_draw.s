lbl_804C5A30:
/* 804C5A30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C5A34  7C 08 02 A6 */	mflr r0
/* 804C5A38  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C5A3C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804C5A40  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804C5A44  39 61 00 30 */	addi r11, r1, 0x30
/* 804C5A48  4B BD 54 81 */	bl func_8009AEC8
/* 804C5A4C  83 C3 00 00 */	lwz r30, 0(r3)
/* 804C5A50  7C 7F 1B 78 */	mr r31, r3
/* 804C5A54  7C 9A 23 78 */	mr r26, r4
/* 804C5A58  7C BB 2B 78 */	mr r27, r5
/* 804C5A5C  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 804C5A60  4B F1 F7 AD */	bl texture_z_light_fog_prim_bb_pal_opa
/* 804C5A64  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804C5A68  80 7E 02 E0 */	lwz r3, 0x2e0(r30)
/* 804C5A6C  4B F1 F7 D9 */	bl texture_z_light_fog_prim_bb_pal_xlu
/* 804C5A70  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 804C5A74  80 7E 03 00 */	lwz r3, 0x300(r30)
/* 804C5A78  4B F1 F8 05 */	bl texture_z_fog_lod_alpha_shadow
/* 804C5A7C  90 7E 03 00 */	stw r3, 0x300(r30)
/* 804C5A80  7F E3 FB 78 */	mr r3, r31
/* 804C5A84  4B FF 94 F9 */	bl func_804BEF7C
/* 804C5A88  C3 FF 1D 80 */	lfs f31, 0x1d80(r31)
/* 804C5A8C  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5A90  88 1F 1D 84 */	lbz r0, 0x1d84(r31)
/* 804C5A94  38 61 00 0C */	addi r3, r1, 0xc
/* 804C5A98  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804C5A9C  98 01 00 13 */	stb r0, 0x13(r1)
/* 804C5AA0  88 1F 1D 6A */	lbz r0, 0x1d6a(r31)
/* 804C5AA4  98 01 00 10 */	stb r0, 0x10(r1)
/* 804C5AA8  88 1F 1D 6B */	lbz r0, 0x1d6b(r31)
/* 804C5AAC  98 01 00 11 */	stb r0, 0x11(r1)
/* 804C5AB0  88 1F 1D 6C */	lbz r0, 0x1d6c(r31)
/* 804C5AB4  98 01 00 12 */	stb r0, 0x12(r1)
/* 804C5AB8  83 DF 00 00 */	lwz r30, 0(r31)
/* 804C5ABC  80 1E 02 D0 */	lwz r0, 0x2d0(r30)
/* 804C5AC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C5AC4  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 804C5AC8  90 01 00 08 */	stw r0, 8(r1)
/* 804C5ACC  4B FF A2 09 */	bl bg_item_common_palload
/* 804C5AD0  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5AD4  38 61 00 08 */	addi r3, r1, 8
/* 804C5AD8  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804C5ADC  4B FF A1 F9 */	bl bg_item_common_palload
/* 804C5AE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C5AE4  7F 5C D3 78 */	mr r28, r26
/* 804C5AE8  3B A0 00 00 */	li r29, 0
/* 804C5AEC  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 804C5AF0  80 01 00 08 */	lwz r0, 8(r1)
/* 804C5AF4  90 1E 02 E0 */	stw r0, 0x2e0(r30)
lbl_804C5AF8:
/* 804C5AF8  A8 1C 48 50 */	lha r0, 0x4850(r28)
/* 804C5AFC  2C 00 00 01 */	cmpwi r0, 1
/* 804C5B00  40 82 00 1C */	bne lbl_804C5B1C
/* 804C5B04  FC 20 F8 90 */	fmr f1, f31
/* 804C5B08  7F E3 FB 78 */	mr r3, r31
/* 804C5B0C  7F 84 E3 78 */	mr r4, r28
/* 804C5B10  7F 66 DB 78 */	mr r6, r27
/* 804C5B14  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C5B18  4B FF FC E1 */	bl bg_item_common_draw_item
lbl_804C5B1C:
/* 804C5B1C  3B BD 00 01 */	addi r29, r29, 1
/* 804C5B20  3B 9C 48 54 */	addi r28, r28, 0x4854
/* 804C5B24  2C 1D 00 04 */	cmpwi r29, 4
/* 804C5B28  41 80 FF D0 */	blt lbl_804C5AF8
/* 804C5B2C  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5B30  7F E3 FB 78 */	mr r3, r31
/* 804C5B34  7C 85 23 78 */	mr r5, r4
/* 804C5B38  38 A5 25 CC */	addi r5, r5, 0x25cc
/* 804C5B3C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5B40  4B FF D1 C5 */	bl bIT_actor_drop_draw
/* 804C5B44  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5B48  7F E3 FB 78 */	mr r3, r31
/* 804C5B4C  7C 85 23 78 */	mr r5, r4
/* 804C5B50  38 A5 25 D4 */	addi r5, r5, 0x25d4
/* 804C5B54  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5B58  4B FF D1 AD */	bl bIT_actor_drop_draw
/* 804C5B5C  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5B60  7F E3 FB 78 */	mr r3, r31
/* 804C5B64  7C 85 23 78 */	mr r5, r4
/* 804C5B68  38 A5 37 B0 */	addi r5, r5, 0x37b0
/* 804C5B6C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5B70  4B FF BF 91 */	bl bIT_actor_hole_effect_draw
/* 804C5B74  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5B78  7F E3 FB 78 */	mr r3, r31
/* 804C5B7C  7C 85 23 78 */	mr r5, r4
/* 804C5B80  38 A5 25 DC */	addi r5, r5, 0x25dc
/* 804C5B84  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5B88  4B FF FE 29 */	bl bIT_actor_pit_draw
/* 804C5B8C  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5B90  FC 20 F8 90 */	fmr f1, f31
/* 804C5B94  7C 85 23 78 */	mr r5, r4
/* 804C5B98  7F E3 FB 78 */	mr r3, r31
/* 804C5B9C  38 C1 00 10 */	addi r6, r1, 0x10
/* 804C5BA0  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5BA4  38 A5 37 E4 */	addi r5, r5, 0x37e4
/* 804C5BA8  4B FF 9E A5 */	bl bIT_actor_ten_coin_draw
/* 804C5BAC  3C 9A 00 01 */	addis r4, r26, 1
/* 804C5BB0  7F E3 FB 78 */	mr r3, r31
/* 804C5BB4  7C 85 23 78 */	mr r5, r4
/* 804C5BB8  38 A5 39 9C */	addi r5, r5, 0x399c
/* 804C5BBC  38 84 25 98 */	addi r4, r4, 0x2598
/* 804C5BC0  4B FF 97 75 */	bl bIT_actor_fade_draw
/* 804C5BC4  7F E3 FB 78 */	mr r3, r31
/* 804C5BC8  4B FF 94 05 */	bl bit_draw_ta_clr
/* 804C5BCC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804C5BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 804C5BD4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804C5BD8  4B BD 53 3D */	bl func_8009AF14
/* 804C5BDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C5BE0  7C 08 03 A6 */	mtlr r0
/* 804C5BE4  38 21 00 40 */	addi r1, r1, 0x40
/* 804C5BE8  4E 80 00 20 */	blr 
