lbl_804A8E60:
/* 804A8E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8E64  7C 08 02 A6 */	mflr r0
/* 804A8E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8E70  4B BF 20 65 */	bl func_8009AED4
/* 804A8E74  7C 7D 1B 78 */	mr r29, r3
/* 804A8E78  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A8E7C  2C 00 00 01 */	cmpwi r0, 1
/* 804A8E80  40 82 00 6C */	bne lbl_804A8EEC
/* 804A8E84  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A8E88  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A8E8C  4B F6 33 CD */	bl Matrix_put
/* 804A8E90  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8E94  4B F6 46 29 */	bl Matrix_Position_Zero
/* 804A8E98  38 00 00 00 */	li r0, 0
/* 804A8E9C  7F E3 FB 78 */	mr r3, r31
/* 804A8EA0  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A8EA4  4B F3 C3 05 */	bl _texture_z_light_fog_prim_npc
/* 804A8EA8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A8EAC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8EB0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8EB4  7F E3 FB 78 */	mr r3, r31
/* 804A8EB8  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8EBC  7F DD F3 78 */	mr r29, r30
/* 804A8EC0  3B DE 00 08 */	addi r30, r30, 8
/* 804A8EC4  4B F6 45 11 */	bl _Matrix_to_Mtx_new
/* 804A8EC8  90 7D 00 04 */	stw r3, 4(r29)
/* 804A8ECC  7F C4 F3 78 */	mr r4, r30
/* 804A8ED0  3C 00 DE 00 */	lis r0, 0xde00
/* 804A8ED4  3C 60 80 C1 */	lis r3, crw_hat3_body_model@ha /* 0x80C12B90@ha */
/* 804A8ED8  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8EDC  38 03 2B 90 */	addi r0, r3, crw_hat3_body_model@l /* 0x80C12B90@l */
/* 804A8EE0  3B DE 00 08 */	addi r30, r30, 8
/* 804A8EE4  90 04 00 04 */	stw r0, 4(r4)
/* 804A8EE8  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A8EEC:
/* 804A8EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8EF0  4B BF 20 31 */	bl func_8009AF20
/* 804A8EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8EF8  7C 08 03 A6 */	mtlr r0
/* 804A8EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8F00  4E 80 00 20 */	blr 
