lbl_804A8D0C:
/* 804A8D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8D10  7C 08 02 A6 */	mflr r0
/* 804A8D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8D18  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8D1C  4B BF 21 B9 */	bl func_8009AED4
/* 804A8D20  7C 7D 1B 78 */	mr r29, r3
/* 804A8D24  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A8D28  2C 00 00 01 */	cmpwi r0, 1
/* 804A8D2C  40 82 00 6C */	bne lbl_804A8D98
/* 804A8D30  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A8D34  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A8D38  4B F6 35 21 */	bl Matrix_put
/* 804A8D3C  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8D40  4B F6 47 7D */	bl Matrix_Position_Zero
/* 804A8D44  38 00 00 00 */	li r0, 0
/* 804A8D48  7F E3 FB 78 */	mr r3, r31
/* 804A8D4C  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A8D50  4B F3 C4 59 */	bl _texture_z_light_fog_prim_npc
/* 804A8D54  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A8D58  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8D5C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8D60  7F E3 FB 78 */	mr r3, r31
/* 804A8D64  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8D68  7F DD F3 78 */	mr r29, r30
/* 804A8D6C  3B DE 00 08 */	addi r30, r30, 8
/* 804A8D70  4B F6 46 65 */	bl _Matrix_to_Mtx_new
/* 804A8D74  90 7D 00 04 */	stw r3, 4(r29)
/* 804A8D78  7F C4 F3 78 */	mr r4, r30
/* 804A8D7C  3C 00 DE 00 */	lis r0, 0xde00
/* 804A8D80  3C 60 80 C1 */	lis r3, crw_hat2_body_model@ha /* 0x80C12530@ha */
/* 804A8D84  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8D88  38 03 25 30 */	addi r0, r3, crw_hat2_body_model@l /* 0x80C12530@l */
/* 804A8D8C  3B DE 00 08 */	addi r30, r30, 8
/* 804A8D90  90 04 00 04 */	stw r0, 4(r4)
/* 804A8D94  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A8D98:
/* 804A8D98  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8D9C  4B BF 21 85 */	bl func_8009AF20
/* 804A8DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8DA4  7C 08 03 A6 */	mtlr r0
/* 804A8DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8DAC  4E 80 00 20 */	blr 
