lbl_804A7B14:
/* 804A7B14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7B18  7C 08 02 A6 */	mflr r0
/* 804A7B1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7B20  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7B24  4B BF 33 B1 */	bl func_8009AED4
/* 804A7B28  7C 7D 1B 78 */	mr r29, r3
/* 804A7B2C  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7B30  2C 00 00 01 */	cmpwi r0, 1
/* 804A7B34  40 82 00 6C */	bne lbl_804A7BA0
/* 804A7B38  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7B3C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7B40  4B F6 47 19 */	bl Matrix_put
/* 804A7B44  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A7B48  4B F6 59 75 */	bl Matrix_Position_Zero
/* 804A7B4C  38 00 00 00 */	li r0, 0
/* 804A7B50  7F E3 FB 78 */	mr r3, r31
/* 804A7B54  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A7B58  4B F3 D6 51 */	bl _texture_z_light_fog_prim_npc
/* 804A7B5C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7B60  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7B64  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7B68  7F E3 FB 78 */	mr r3, r31
/* 804A7B6C  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7B70  7F DD F3 78 */	mr r29, r30
/* 804A7B74  3B DE 00 08 */	addi r30, r30, 8
/* 804A7B78  4B F6 58 5D */	bl _Matrix_to_Mtx_new
/* 804A7B7C  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7B80  7F C4 F3 78 */	mr r4, r30
/* 804A7B84  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7B88  3C 60 80 C1 */	lis r3, crw_biscus1_body_model@ha /* 0x80C0E690@ha */
/* 804A7B8C  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7B90  38 03 E6 90 */	addi r0, r3, crw_biscus1_body_model@l /* 0x80C0E690@l */
/* 804A7B94  3B DE 00 08 */	addi r30, r30, 8
/* 804A7B98  90 04 00 04 */	stw r0, 4(r4)
/* 804A7B9C  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A7BA0:
/* 804A7BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7BA4  4B BF 33 7D */	bl func_8009AF20
/* 804A7BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7BAC  7C 08 03 A6 */	mtlr r0
/* 804A7BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7BB4  4E 80 00 20 */	blr 
