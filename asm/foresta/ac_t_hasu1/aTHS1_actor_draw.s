lbl_804A8A64:
/* 804A8A64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8A68  7C 08 02 A6 */	mflr r0
/* 804A8A6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8A70  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8A74  4B BF 24 61 */	bl func_8009AED4
/* 804A8A78  7C 7D 1B 78 */	mr r29, r3
/* 804A8A7C  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A8A80  2C 00 00 01 */	cmpwi r0, 1
/* 804A8A84  40 82 00 6C */	bne lbl_804A8AF0
/* 804A8A88  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A8A8C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A8A90  4B F6 37 C9 */	bl Matrix_put
/* 804A8A94  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8A98  4B F6 4A 25 */	bl Matrix_Position_Zero
/* 804A8A9C  38 00 00 00 */	li r0, 0
/* 804A8AA0  7F E3 FB 78 */	mr r3, r31
/* 804A8AA4  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A8AA8  4B F3 C7 01 */	bl _texture_z_light_fog_prim_npc
/* 804A8AAC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A8AB0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8AB4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8AB8  7F E3 FB 78 */	mr r3, r31
/* 804A8ABC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8AC0  7F DD F3 78 */	mr r29, r30
/* 804A8AC4  3B DE 00 08 */	addi r30, r30, 8
/* 804A8AC8  4B F6 49 0D */	bl _Matrix_to_Mtx_new
/* 804A8ACC  90 7D 00 04 */	stw r3, 4(r29)
/* 804A8AD0  7F C4 F3 78 */	mr r4, r30
/* 804A8AD4  3C 00 DE 00 */	lis r0, 0xde00
/* 804A8AD8  3C 60 80 C1 */	lis r3, crw_hasu1_body_model@ha /* 0x80C11850@ha */
/* 804A8ADC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8AE0  38 03 18 50 */	addi r0, r3, crw_hasu1_body_model@l /* 0x80C11850@l */
/* 804A8AE4  3B DE 00 08 */	addi r30, r30, 8
/* 804A8AE8  90 04 00 04 */	stw r0, 4(r4)
/* 804A8AEC  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A8AF0:
/* 804A8AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8AF4  4B BF 24 2D */	bl func_8009AF20
/* 804A8AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8AFC  7C 08 03 A6 */	mtlr r0
/* 804A8B00  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8B04  4E 80 00 20 */	blr 
