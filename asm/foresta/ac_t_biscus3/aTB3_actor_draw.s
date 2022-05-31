lbl_804A7DBC:
/* 804A7DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7DC0  7C 08 02 A6 */	mflr r0
/* 804A7DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7DCC  4B BF 31 09 */	bl func_8009AED4
/* 804A7DD0  7C 7D 1B 78 */	mr r29, r3
/* 804A7DD4  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7DD8  2C 00 00 01 */	cmpwi r0, 1
/* 804A7DDC  40 82 00 6C */	bne lbl_804A7E48
/* 804A7DE0  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7DE4  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7DE8  4B F6 44 71 */	bl Matrix_put
/* 804A7DEC  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A7DF0  4B F6 56 CD */	bl Matrix_Position_Zero
/* 804A7DF4  38 00 00 00 */	li r0, 0
/* 804A7DF8  7F E3 FB 78 */	mr r3, r31
/* 804A7DFC  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A7E00  4B F3 D3 A9 */	bl _texture_z_light_fog_prim_npc
/* 804A7E04  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7E08  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7E0C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7E10  7F E3 FB 78 */	mr r3, r31
/* 804A7E14  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7E18  7F DD F3 78 */	mr r29, r30
/* 804A7E1C  3B DE 00 08 */	addi r30, r30, 8
/* 804A7E20  4B F6 55 B5 */	bl _Matrix_to_Mtx_new
/* 804A7E24  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7E28  7F C4 F3 78 */	mr r4, r30
/* 804A7E2C  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7E30  3C 60 80 C1 */	lis r3, crw_biscus3_body_model@ha /* 0x80C0F890@ha */
/* 804A7E34  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7E38  38 03 F8 90 */	addi r0, r3, crw_biscus3_body_model@l /* 0x80C0F890@l */
/* 804A7E3C  3B DE 00 08 */	addi r30, r30, 8
/* 804A7E40  90 04 00 04 */	stw r0, 4(r4)
/* 804A7E44  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A7E48:
/* 804A7E48  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7E4C  4B BF 30 D5 */	bl func_8009AF20
/* 804A7E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7E54  7C 08 03 A6 */	mtlr r0
/* 804A7E58  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7E5C  4E 80 00 20 */	blr 
