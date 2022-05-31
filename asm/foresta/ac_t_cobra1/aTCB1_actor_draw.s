lbl_804A8064:
/* 804A8064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8068  7C 08 02 A6 */	mflr r0
/* 804A806C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8070  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8074  4B BF 2E 61 */	bl func_8009AED4
/* 804A8078  7C 7D 1B 78 */	mr r29, r3
/* 804A807C  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A8080  2C 00 00 01 */	cmpwi r0, 1
/* 804A8084  40 82 00 6C */	bne lbl_804A80F0
/* 804A8088  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A808C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A8090  4B F6 41 C9 */	bl Matrix_put
/* 804A8094  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8098  4B F6 54 25 */	bl Matrix_Position_Zero
/* 804A809C  38 00 00 00 */	li r0, 0
/* 804A80A0  7F E3 FB 78 */	mr r3, r31
/* 804A80A4  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A80A8  4B F3 D1 01 */	bl _texture_z_light_fog_prim_npc
/* 804A80AC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A80B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A80B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A80B8  7F E3 FB 78 */	mr r3, r31
/* 804A80BC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A80C0  7F DD F3 78 */	mr r29, r30
/* 804A80C4  3B DE 00 08 */	addi r30, r30, 8
/* 804A80C8  4B F6 53 0D */	bl _Matrix_to_Mtx_new
/* 804A80CC  90 7D 00 04 */	stw r3, 4(r29)
/* 804A80D0  7F C4 F3 78 */	mr r4, r30
/* 804A80D4  3C 00 DE 00 */	lis r0, 0xde00
/* 804A80D8  3C 60 80 C1 */	lis r3, crw_cobra_model@ha /* 0x80C10800@ha */
/* 804A80DC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A80E0  38 03 08 00 */	addi r0, r3, crw_cobra_model@l /* 0x80C10800@l */
/* 804A80E4  3B DE 00 08 */	addi r30, r30, 8
/* 804A80E8  90 04 00 04 */	stw r0, 4(r4)
/* 804A80EC  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A80F0:
/* 804A80F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A80F4  4B BF 2E 2D */	bl func_8009AF20
/* 804A80F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A80FC  7C 08 03 A6 */	mtlr r0
/* 804A8100  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8104  4E 80 00 20 */	blr 
