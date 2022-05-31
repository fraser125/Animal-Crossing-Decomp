lbl_804A7C68:
/* 804A7C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7C6C  7C 08 02 A6 */	mflr r0
/* 804A7C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7C74  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7C78  4B BF 32 5D */	bl func_8009AED4
/* 804A7C7C  7C 7D 1B 78 */	mr r29, r3
/* 804A7C80  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7C84  2C 00 00 01 */	cmpwi r0, 1
/* 804A7C88  40 82 00 6C */	bne lbl_804A7CF4
/* 804A7C8C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7C90  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7C94  4B F6 45 C5 */	bl Matrix_put
/* 804A7C98  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A7C9C  4B F6 58 21 */	bl Matrix_Position_Zero
/* 804A7CA0  38 00 00 00 */	li r0, 0
/* 804A7CA4  7F E3 FB 78 */	mr r3, r31
/* 804A7CA8  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A7CAC  4B F3 D4 FD */	bl _texture_z_light_fog_prim_npc
/* 804A7CB0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7CB4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7CB8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7CBC  7F E3 FB 78 */	mr r3, r31
/* 804A7CC0  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7CC4  7F DD F3 78 */	mr r29, r30
/* 804A7CC8  3B DE 00 08 */	addi r30, r30, 8
/* 804A7CCC  4B F6 57 09 */	bl _Matrix_to_Mtx_new
/* 804A7CD0  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7CD4  7F C4 F3 78 */	mr r4, r30
/* 804A7CD8  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7CDC  3C 60 80 C1 */	lis r3, crw_biscus2_body_model@ha /* 0x80C0EF90@ha */
/* 804A7CE0  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7CE4  38 03 EF 90 */	addi r0, r3, crw_biscus2_body_model@l /* 0x80C0EF90@l */
/* 804A7CE8  3B DE 00 08 */	addi r30, r30, 8
/* 804A7CEC  90 04 00 04 */	stw r0, 4(r4)
/* 804A7CF0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A7CF4:
/* 804A7CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7CF8  4B BF 32 29 */	bl func_8009AF20
/* 804A7CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7D00  7C 08 03 A6 */	mtlr r0
/* 804A7D04  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7D08  4E 80 00 20 */	blr 
