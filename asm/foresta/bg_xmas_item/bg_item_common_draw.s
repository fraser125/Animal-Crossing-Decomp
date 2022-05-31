lbl_804CCE48:
/* 804CCE48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CCE4C  7C 08 02 A6 */	mflr r0
/* 804CCE50  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CCE54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CCE58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CCE5C  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCE60  4B BC E0 69 */	bl func_8009AEC8
/* 804CCE64  83 C3 00 00 */	lwz r30, 0(r3)
/* 804CCE68  7C 7F 1B 78 */	mr r31, r3
/* 804CCE6C  7C 9A 23 78 */	mr r26, r4
/* 804CCE70  7C BB 2B 78 */	mr r27, r5
/* 804CCE74  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 804CCE78  4B F1 83 95 */	bl texture_z_light_fog_prim_bb_pal_opa
/* 804CCE7C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804CCE80  80 7E 02 E0 */	lwz r3, 0x2e0(r30)
/* 804CCE84  4B F1 83 C1 */	bl texture_z_light_fog_prim_bb_pal_xlu
/* 804CCE88  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 804CCE8C  80 7E 03 00 */	lwz r3, 0x300(r30)
/* 804CCE90  4B F1 83 ED */	bl texture_z_fog_lod_alpha_shadow
/* 804CCE94  90 7E 03 00 */	stw r3, 0x300(r30)
/* 804CCE98  7F E3 FB 78 */	mr r3, r31
/* 804CCE9C  4B FF 94 F9 */	bl func_804C6394
/* 804CCEA0  C3 FF 1D 80 */	lfs f31, 0x1d80(r31)
/* 804CCEA4  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCEA8  88 1F 1D 84 */	lbz r0, 0x1d84(r31)
/* 804CCEAC  38 61 00 0C */	addi r3, r1, 0xc
/* 804CCEB0  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804CCEB4  98 01 00 13 */	stb r0, 0x13(r1)
/* 804CCEB8  88 1F 1D 6A */	lbz r0, 0x1d6a(r31)
/* 804CCEBC  98 01 00 10 */	stb r0, 0x10(r1)
/* 804CCEC0  88 1F 1D 6B */	lbz r0, 0x1d6b(r31)
/* 804CCEC4  98 01 00 11 */	stb r0, 0x11(r1)
/* 804CCEC8  88 1F 1D 6C */	lbz r0, 0x1d6c(r31)
/* 804CCECC  98 01 00 12 */	stb r0, 0x12(r1)
/* 804CCED0  83 DF 00 00 */	lwz r30, 0(r31)
/* 804CCED4  80 1E 02 D0 */	lwz r0, 0x2d0(r30)
/* 804CCED8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CCEDC  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 804CCEE0  90 01 00 08 */	stw r0, 8(r1)
/* 804CCEE4  4B FF A2 09 */	bl bg_item_common_palload
/* 804CCEE8  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCEEC  38 61 00 08 */	addi r3, r1, 8
/* 804CCEF0  38 84 25 A4 */	addi r4, r4, 0x25a4
/* 804CCEF4  4B FF A1 F9 */	bl bg_item_common_palload
/* 804CCEF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804CCEFC  7F 5C D3 78 */	mr r28, r26
/* 804CCF00  3B A0 00 00 */	li r29, 0
/* 804CCF04  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 804CCF08  80 01 00 08 */	lwz r0, 8(r1)
/* 804CCF0C  90 1E 02 E0 */	stw r0, 0x2e0(r30)
lbl_804CCF10:
/* 804CCF10  A8 1C 48 50 */	lha r0, 0x4850(r28)
/* 804CCF14  2C 00 00 01 */	cmpwi r0, 1
/* 804CCF18  40 82 00 1C */	bne lbl_804CCF34
/* 804CCF1C  FC 20 F8 90 */	fmr f1, f31
/* 804CCF20  7F E3 FB 78 */	mr r3, r31
/* 804CCF24  7F 84 E3 78 */	mr r4, r28
/* 804CCF28  7F 66 DB 78 */	mr r6, r27
/* 804CCF2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804CCF30  4B FF FC E1 */	bl bg_item_common_draw_item
lbl_804CCF34:
/* 804CCF34  3B BD 00 01 */	addi r29, r29, 1
/* 804CCF38  3B 9C 48 54 */	addi r28, r28, 0x4854
/* 804CCF3C  2C 1D 00 04 */	cmpwi r29, 4
/* 804CCF40  41 80 FF D0 */	blt lbl_804CCF10
/* 804CCF44  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCF48  7F E3 FB 78 */	mr r3, r31
/* 804CCF4C  7C 85 23 78 */	mr r5, r4
/* 804CCF50  38 A5 25 CC */	addi r5, r5, 0x25cc
/* 804CCF54  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCF58  4B FF D1 C5 */	bl bIT_actor_drop_draw
/* 804CCF5C  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCF60  7F E3 FB 78 */	mr r3, r31
/* 804CCF64  7C 85 23 78 */	mr r5, r4
/* 804CCF68  38 A5 25 D4 */	addi r5, r5, 0x25d4
/* 804CCF6C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCF70  4B FF D1 AD */	bl bIT_actor_drop_draw
/* 804CCF74  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCF78  7F E3 FB 78 */	mr r3, r31
/* 804CCF7C  7C 85 23 78 */	mr r5, r4
/* 804CCF80  38 A5 37 B0 */	addi r5, r5, 0x37b0
/* 804CCF84  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCF88  4B FF BF 91 */	bl bIT_actor_hole_effect_draw
/* 804CCF8C  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCF90  7F E3 FB 78 */	mr r3, r31
/* 804CCF94  7C 85 23 78 */	mr r5, r4
/* 804CCF98  38 A5 25 DC */	addi r5, r5, 0x25dc
/* 804CCF9C  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCFA0  4B FF FE 29 */	bl bIT_actor_pit_draw
/* 804CCFA4  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCFA8  FC 20 F8 90 */	fmr f1, f31
/* 804CCFAC  7C 85 23 78 */	mr r5, r4
/* 804CCFB0  7F E3 FB 78 */	mr r3, r31
/* 804CCFB4  38 C1 00 10 */	addi r6, r1, 0x10
/* 804CCFB8  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCFBC  38 A5 37 E4 */	addi r5, r5, 0x37e4
/* 804CCFC0  4B FF 9E A5 */	bl bIT_actor_ten_coin_draw
/* 804CCFC4  3C 9A 00 01 */	addis r4, r26, 1
/* 804CCFC8  7F E3 FB 78 */	mr r3, r31
/* 804CCFCC  7C 85 23 78 */	mr r5, r4
/* 804CCFD0  38 A5 39 9C */	addi r5, r5, 0x399c
/* 804CCFD4  38 84 25 98 */	addi r4, r4, 0x2598
/* 804CCFD8  4B FF 97 75 */	bl bIT_actor_fade_draw
/* 804CCFDC  7F E3 FB 78 */	mr r3, r31
/* 804CCFE0  4B FF 94 05 */	bl bit_draw_ta_clr
/* 804CCFE4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CCFE8  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCFEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CCFF0  4B BC DF 25 */	bl func_8009AF14
/* 804CCFF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CCFF8  7C 08 03 A6 */	mtlr r0
/* 804CCFFC  38 21 00 40 */	addi r1, r1, 0x40
/* 804CD000  4E 80 00 20 */	blr 
