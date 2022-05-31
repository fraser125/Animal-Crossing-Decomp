lbl_804AA848:
/* 804AA848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AA84C  7C 08 02 A6 */	mflr r0
/* 804AA850  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AA854  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA858  4B BF 06 7D */	bl func_8009AED4
/* 804AA85C  7C 7D 1B 78 */	mr r29, r3
/* 804AA860  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804AA864  2C 00 00 01 */	cmpwi r0, 1
/* 804AA868  40 82 00 6C */	bne lbl_804AA8D4
/* 804AA86C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804AA870  38 7D 01 78 */	addi r3, r29, 0x178
/* 804AA874  4B F6 19 E5 */	bl Matrix_put
/* 804AA878  38 7D 00 28 */	addi r3, r29, 0x28
/* 804AA87C  4B F6 2C 41 */	bl Matrix_Position_Zero
/* 804AA880  38 00 00 00 */	li r0, 0
/* 804AA884  7F E3 FB 78 */	mr r3, r31
/* 804AA888  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804AA88C  4B F3 A9 1D */	bl _texture_z_light_fog_prim_npc
/* 804AA890  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804AA894  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AA898  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AA89C  7F E3 FB 78 */	mr r3, r31
/* 804AA8A0  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA8A4  7F DD F3 78 */	mr r29, r30
/* 804AA8A8  3B DE 00 08 */	addi r30, r30, 8
/* 804AA8AC  4B F6 2B 29 */	bl _Matrix_to_Mtx_new
/* 804AA8B0  90 7D 00 04 */	stw r3, 4(r29)
/* 804AA8B4  7F C4 F3 78 */	mr r4, r30
/* 804AA8B8  3C 00 DE 00 */	lis r0, 0xde00
/* 804AA8BC  3C 60 80 C3 */	lis r3, crw_zinnia2_body_model@ha /* 0x80C2C5A0@ha */
/* 804AA8C0  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA8C4  38 03 C5 A0 */	addi r0, r3, crw_zinnia2_body_model@l /* 0x80C2C5A0@l */
/* 804AA8C8  3B DE 00 08 */	addi r30, r30, 8
/* 804AA8CC  90 04 00 04 */	stw r0, 4(r4)
/* 804AA8D0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804AA8D4:
/* 804AA8D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA8D8  4B BF 06 49 */	bl func_8009AF20
/* 804AA8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AA8E0  7C 08 03 A6 */	mtlr r0
/* 804AA8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804AA8E8  4E 80 00 20 */	blr 
