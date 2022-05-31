lbl_804A8BB8:
/* 804A8BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8BBC  7C 08 02 A6 */	mflr r0
/* 804A8BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8BC8  4B BF 23 0D */	bl func_8009AED4
/* 804A8BCC  7C 7D 1B 78 */	mr r29, r3
/* 804A8BD0  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A8BD4  2C 00 00 01 */	cmpwi r0, 1
/* 804A8BD8  40 82 00 6C */	bne lbl_804A8C44
/* 804A8BDC  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A8BE0  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A8BE4  4B F6 36 75 */	bl Matrix_put
/* 804A8BE8  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8BEC  4B F6 48 D1 */	bl Matrix_Position_Zero
/* 804A8BF0  38 00 00 00 */	li r0, 0
/* 804A8BF4  7F E3 FB 78 */	mr r3, r31
/* 804A8BF8  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A8BFC  4B F3 C5 AD */	bl _texture_z_light_fog_prim_npc
/* 804A8C00  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A8C04  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8C08  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8C0C  7F E3 FB 78 */	mr r3, r31
/* 804A8C10  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8C14  7F DD F3 78 */	mr r29, r30
/* 804A8C18  3B DE 00 08 */	addi r30, r30, 8
/* 804A8C1C  4B F6 47 B9 */	bl _Matrix_to_Mtx_new
/* 804A8C20  90 7D 00 04 */	stw r3, 4(r29)
/* 804A8C24  7F C4 F3 78 */	mr r4, r30
/* 804A8C28  3C 00 DE 00 */	lis r0, 0xde00
/* 804A8C2C  3C 60 80 C1 */	lis r3, crw_hat1_body_model@ha /* 0x80C11ED0@ha */
/* 804A8C30  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8C34  38 03 1E D0 */	addi r0, r3, crw_hat1_body_model@l /* 0x80C11ED0@l */
/* 804A8C38  3B DE 00 08 */	addi r30, r30, 8
/* 804A8C3C  90 04 00 04 */	stw r0, 4(r4)
/* 804A8C40  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A8C44:
/* 804A8C44  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8C48  4B BF 22 D9 */	bl func_8009AF20
/* 804A8C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8C50  7C 08 03 A6 */	mtlr r0
/* 804A8C54  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8C58  4E 80 00 20 */	blr 
