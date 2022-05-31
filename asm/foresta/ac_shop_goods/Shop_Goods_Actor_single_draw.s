lbl_8049DE6C:
/* 8049DE6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049DE70  7C 08 02 A6 */	mflr r0
/* 8049DE74  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049DE78  39 61 00 38 */	addi r11, r1, 0x38
/* 8049DE7C  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 8049DE80  4B BF D0 4D */	bl func_8009AECC
/* 8049DE84  FF E0 08 90 */	fmr f31, f1
/* 8049DE88  7C 7B 1B 78 */	mr r27, r3
/* 8049DE8C  7C 9C 23 78 */	mr r28, r4
/* 8049DE90  7C BD 2B 78 */	mr r29, r5
/* 8049DE94  7C DE 33 78 */	mr r30, r6
/* 8049DE98  7C FF 3B 78 */	mr r31, r7
/* 8049DE9C  4B FF F5 E9 */	bl Shop_Goods_draw_ta_set
/* 8049DEA0  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8049DEA4  7F 63 DB 78 */	mr r3, r27
/* 8049DEA8  7F 84 E3 78 */	mr r4, r28
/* 8049DEAC  7F A5 EB 78 */	mr r5, r29
/* 8049DEB0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8049DEB4  7F C7 F3 78 */	mr r7, r30
/* 8049DEB8  7F E8 FB 78 */	mr r8, r31
/* 8049DEBC  38 C1 00 08 */	addi r6, r1, 8
/* 8049DEC0  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8049DEC4  4B FF FD 4D */	bl Shop_Goods_Actor_single_drawR
/* 8049DEC8  7F 63 DB 78 */	mr r3, r27
/* 8049DECC  4B FF F5 F5 */	bl Shop_Goods_draw_ta_clr
/* 8049DED0  39 61 00 38 */	addi r11, r1, 0x38
/* 8049DED4  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8049DED8  4B BF D0 41 */	bl func_8009AF18
/* 8049DEDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049DEE0  7C 08 03 A6 */	mtlr r0
/* 8049DEE4  38 21 00 40 */	addi r1, r1, 0x40
/* 8049DEE8  4E 80 00 20 */	blr 
