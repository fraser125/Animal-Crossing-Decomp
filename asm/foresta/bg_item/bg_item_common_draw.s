lbl_804BDF38:
/* 804BDF38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BDF3C  7C 08 02 A6 */	mflr r0
/* 804BDF40  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BDF44  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804BDF48  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804BDF4C  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDF50  4B BD CF 79 */	bl func_8009AEC8
/* 804BDF54  83 C3 00 00 */	lwz r30, 0(r3)
/* 804BDF58  7C 7F 1B 78 */	mr r31, r3
/* 804BDF5C  7C 9A 23 78 */	mr r26, r4
/* 804BDF60  7C BB 2B 78 */	mr r27, r5
/* 804BDF64  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 804BDF68  4B F2 72 A5 */	bl texture_z_light_fog_prim_bb_pal_opa
/* 804BDF6C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804BDF70  80 7E 02 E0 */	lwz r3, 0x2e0(r30)
/* 804BDF74  4B F2 72 D1 */	bl texture_z_light_fog_prim_bb_pal_xlu
/* 804BDF78  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 804BDF7C  80 7E 03 00 */	lwz r3, 0x300(r30)
/* 804BDF80  4B F2 72 FD */	bl texture_z_fog_lod_alpha_shadow
/* 804BDF84  90 7E 03 00 */	stw r3, 0x300(r30)
/* 804BDF88  7F E3 FB 78 */	mr r3, r31
/* 804BDF8C  4B FF 94 F9 */	bl func_804B7484
/* 804BDF90  C3 FF 1D 80 */	lfs f31, 0x1d80(r31)
/* 804BDF94  3C 9A 00 01 */	addis r4, r26, 1
/* 804BDF98  88 1F 1D 84 */	lbz r0, 0x1d84(r31)
/* 804BDF9C  38 61 00 0C */	addi r3, r1, 0xc
/* 804BDFA0  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804BDFA4  98 01 00 13 */	stb r0, 0x13(r1)
/* 804BDFA8  88 1F 1D 6A */	lbz r0, 0x1d6a(r31)
/* 804BDFAC  98 01 00 10 */	stb r0, 0x10(r1)
/* 804BDFB0  88 1F 1D 6B */	lbz r0, 0x1d6b(r31)
/* 804BDFB4  98 01 00 11 */	stb r0, 0x11(r1)
/* 804BDFB8  88 1F 1D 6C */	lbz r0, 0x1d6c(r31)
/* 804BDFBC  98 01 00 12 */	stb r0, 0x12(r1)
/* 804BDFC0  83 DF 00 00 */	lwz r30, 0(r31)
/* 804BDFC4  80 1E 02 D0 */	lwz r0, 0x2d0(r30)
/* 804BDFC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BDFCC  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 804BDFD0  90 01 00 08 */	stw r0, 8(r1)
/* 804BDFD4  4B FF A2 09 */	bl bg_item_common_palload
/* 804BDFD8  3C 9A 00 01 */	addis r4, r26, 1
/* 804BDFDC  38 61 00 08 */	addi r3, r1, 8
/* 804BDFE0  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804BDFE4  4B FF A1 F9 */	bl bg_item_common_palload
/* 804BDFE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804BDFEC  7F 5C D3 78 */	mr r28, r26
/* 804BDFF0  3B A0 00 00 */	li r29, 0
/* 804BDFF4  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 804BDFF8  80 01 00 08 */	lwz r0, 8(r1)
/* 804BDFFC  90 1E 02 E0 */	stw r0, 0x2e0(r30)
lbl_804BE000:
/* 804BE000  A8 1C 48 50 */	lha r0, 0x4850(r28)
/* 804BE004  2C 00 00 01 */	cmpwi r0, 1
/* 804BE008  40 82 00 1C */	bne lbl_804BE024
/* 804BE00C  FC 20 F8 90 */	fmr f1, f31
/* 804BE010  7F E3 FB 78 */	mr r3, r31
/* 804BE014  7F 84 E3 78 */	mr r4, r28
/* 804BE018  7F 66 DB 78 */	mr r6, r27
/* 804BE01C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804BE020  4B FF FC E1 */	bl bg_item_common_draw_item
lbl_804BE024:
/* 804BE024  3B BD 00 01 */	addi r29, r29, 1
/* 804BE028  3B 9C 48 54 */	addi r28, r28, 0x4854
/* 804BE02C  2C 1D 00 04 */	cmpwi r29, 4
/* 804BE030  41 80 FF D0 */	blt lbl_804BE000
/* 804BE034  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE038  7F E3 FB 78 */	mr r3, r31
/* 804BE03C  7C 85 23 78 */	mr r5, r4
/* 804BE040  38 A5 25 CC */	addi r5, r5, 0x25cc
/* 804BE044  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE048  4B FF D1 C5 */	bl bIT_actor_drop_draw
/* 804BE04C  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE050  7F E3 FB 78 */	mr r3, r31
/* 804BE054  7C 85 23 78 */	mr r5, r4
/* 804BE058  38 A5 25 D4 */	addi r5, r5, 0x25d4
/* 804BE05C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE060  4B FF D1 AD */	bl bIT_actor_drop_draw
/* 804BE064  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE068  7F E3 FB 78 */	mr r3, r31
/* 804BE06C  7C 85 23 78 */	mr r5, r4
/* 804BE070  38 A5 37 B0 */	addi r5, r5, 0x37b0
/* 804BE074  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE078  4B FF BF 91 */	bl bIT_actor_hole_effect_draw
/* 804BE07C  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE080  7F E3 FB 78 */	mr r3, r31
/* 804BE084  7C 85 23 78 */	mr r5, r4
/* 804BE088  38 A5 25 DC */	addi r5, r5, 0x25dc
/* 804BE08C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE090  4B FF FE 29 */	bl bIT_actor_pit_draw
/* 804BE094  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE098  FC 20 F8 90 */	fmr f1, f31
/* 804BE09C  7C 85 23 78 */	mr r5, r4
/* 804BE0A0  7F E3 FB 78 */	mr r3, r31
/* 804BE0A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 804BE0A8  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE0AC  38 A5 37 E4 */	addi r5, r5, 0x37e4
/* 804BE0B0  4B FF 9E A5 */	bl bIT_actor_ten_coin_draw
/* 804BE0B4  3C 9A 00 01 */	addis r4, r26, 1
/* 804BE0B8  7F E3 FB 78 */	mr r3, r31
/* 804BE0BC  7C 85 23 78 */	mr r5, r4
/* 804BE0C0  38 A5 39 9C */	addi r5, r5, 0x399c
/* 804BE0C4  38 84 25 98 */	addi r4, r4, 0x2598
/* 804BE0C8  4B FF 97 75 */	bl bIT_actor_fade_draw
/* 804BE0CC  7F E3 FB 78 */	mr r3, r31
/* 804BE0D0  4B FF 94 05 */	bl bit_draw_ta_clr
/* 804BE0D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804BE0D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804BE0DC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804BE0E0  4B BD CE 35 */	bl func_8009AF14
/* 804BE0E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BE0E8  7C 08 03 A6 */	mtlr r0
/* 804BE0EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804BE0F0  4E 80 00 20 */	blr 
