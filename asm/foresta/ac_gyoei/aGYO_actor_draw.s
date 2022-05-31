lbl_805A2D04:
/* 805A2D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A2D08  7C 08 02 A6 */	mflr r0
/* 805A2D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A2D10  39 61 00 20 */	addi r11, r1, 0x20
/* 805A2D14  4B AF 81 BD */	bl func_8009AED0
/* 805A2D18  7C 9C 23 78 */	mr r28, r4
/* 805A2D1C  3B E3 01 74 */	addi r31, r3, 0x174
/* 805A2D20  83 C4 00 00 */	lwz r30, 0(r4)
/* 805A2D24  4B E6 94 B1 */	bl Matrix_push
/* 805A2D28  7F C3 F3 78 */	mr r3, r30
/* 805A2D2C  4B E4 23 DD */	bl _texture_z_light_fog_prim
/* 805A2D30  7F C3 F3 78 */	mr r3, r30
/* 805A2D34  4B E4 24 25 */	bl _texture_z_light_fog_prim_xlu
/* 805A2D38  3B A0 00 00 */	li r29, 0
lbl_805A2D3C:
/* 805A2D3C  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805A2D40  2C 00 00 01 */	cmpwi r0, 1
/* 805A2D44  40 82 00 50 */	bne lbl_805A2D94
/* 805A2D48  88 1F 00 B5 */	lbz r0, 0xb5(r31)
/* 805A2D4C  28 00 00 00 */	cmplwi r0, 0
/* 805A2D50  41 82 00 44 */	beq lbl_805A2D94
/* 805A2D54  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 805A2D58  54 00 06 74 */	rlwinm r0, r0, 0, 0x19, 0x1a
/* 805A2D5C  28 00 00 60 */	cmplwi r0, 0x60
/* 805A2D60  40 82 00 34 */	bne lbl_805A2D94
/* 805A2D64  80 1F 01 D4 */	lwz r0, 0x1d4(r31)
/* 805A2D68  2C 00 00 01 */	cmpwi r0, 1
/* 805A2D6C  40 82 00 18 */	bne lbl_805A2D84
/* 805A2D70  7F C3 F3 78 */	mr r3, r30
/* 805A2D74  7F E4 FB 78 */	mr r4, r31
/* 805A2D78  7F 85 E3 78 */	mr r5, r28
/* 805A2D7C  4B FF FA B5 */	bl aGYO_actor_draw_fish
/* 805A2D80  48 00 00 14 */	b lbl_805A2D94
lbl_805A2D84:
/* 805A2D84  7F C3 F3 78 */	mr r3, r30
/* 805A2D88  7F E4 FB 78 */	mr r4, r31
/* 805A2D8C  7F 85 E3 78 */	mr r5, r28
/* 805A2D90  4B FF FD DD */	bl aGYO_actor_draw_gyoei
lbl_805A2D94:
/* 805A2D94  3B BD 00 01 */	addi r29, r29, 1
/* 805A2D98  3B FF 02 50 */	addi r31, r31, 0x250
/* 805A2D9C  2C 1D 00 02 */	cmpwi r29, 2
/* 805A2DA0  41 80 FF 9C */	blt lbl_805A2D3C
/* 805A2DA4  4B E6 94 71 */	bl Matrix_pull
/* 805A2DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 805A2DAC  4B AF 81 71 */	bl func_8009AF1C
/* 805A2DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A2DB4  7C 08 03 A6 */	mtlr r0
/* 805A2DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A2DBC  4E 80 00 20 */	blr 
