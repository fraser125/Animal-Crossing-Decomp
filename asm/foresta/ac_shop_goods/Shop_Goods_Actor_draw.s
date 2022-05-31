lbl_8049E5A8:
/* 8049E5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E5AC  7C 08 02 A6 */	mflr r0
/* 8049E5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E5B8  7C 9F 23 78 */	mr r31, r4
/* 8049E5BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8049E5C0  7C 7E 1B 78 */	mr r30, r3
/* 8049E5C4  80 64 00 00 */	lwz r3, 0(r4)
/* 8049E5C8  4B F4 6B 41 */	bl _texture_z_light_fog_prim
/* 8049E5CC  7F E3 FB 78 */	mr r3, r31
/* 8049E5D0  4B FF EE B5 */	bl Shop_Goods_draw_ta_set
/* 8049E5D4  7F C3 F3 78 */	mr r3, r30
/* 8049E5D8  7F E4 FB 78 */	mr r4, r31
/* 8049E5DC  4B FF FE 1D */	bl aSG_DrawGoodsPicture
/* 8049E5E0  7F E3 FB 78 */	mr r3, r31
/* 8049E5E4  4B FF EE DD */	bl Shop_Goods_draw_ta_clr
/* 8049E5E8  7F C3 F3 78 */	mr r3, r30
/* 8049E5EC  7F E4 FB 78 */	mr r4, r31
/* 8049E5F0  4B FF F8 FD */	bl Shop_Goods_Actor_drop_draw
/* 8049E5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E5FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049E600  7C 08 03 A6 */	mtlr r0
/* 8049E604  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E608  4E 80 00 20 */	blr 
