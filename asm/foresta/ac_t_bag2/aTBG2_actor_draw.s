lbl_804A79C0:
/* 804A79C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A79C4  7C 08 02 A6 */	mflr r0
/* 804A79C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A79CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A79D0  4B BF 35 05 */	bl func_8009AED4
/* 804A79D4  7C 7D 1B 78 */	mr r29, r3
/* 804A79D8  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A79DC  2C 00 00 01 */	cmpwi r0, 1
/* 804A79E0  40 82 00 6C */	bne lbl_804A7A4C
/* 804A79E4  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A79E8  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A79EC  4B F6 48 6D */	bl Matrix_put
/* 804A79F0  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A79F4  4B F6 5A C9 */	bl Matrix_Position_Zero
/* 804A79F8  38 00 00 00 */	li r0, 0
/* 804A79FC  7F E3 FB 78 */	mr r3, r31
/* 804A7A00  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A7A04  4B F3 D7 A5 */	bl _texture_z_light_fog_prim_npc
/* 804A7A08  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7A0C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7A10  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7A14  7F E3 FB 78 */	mr r3, r31
/* 804A7A18  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7A1C  7F DD F3 78 */	mr r29, r30
/* 804A7A20  3B DE 00 08 */	addi r30, r30, 8
/* 804A7A24  4B F6 59 B1 */	bl _Matrix_to_Mtx_new
/* 804A7A28  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7A2C  7F C4 F3 78 */	mr r4, r30
/* 804A7A30  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7A34  3C 60 80 C1 */	lis r3, crw_bag2_body_model@ha /* 0x80C0DE30@ha */
/* 804A7A38  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7A3C  38 03 DE 30 */	addi r0, r3, crw_bag2_body_model@l /* 0x80C0DE30@l */
/* 804A7A40  3B DE 00 08 */	addi r30, r30, 8
/* 804A7A44  90 04 00 04 */	stw r0, 4(r4)
/* 804A7A48  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A7A4C:
/* 804A7A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7A50  4B BF 34 D1 */	bl func_8009AF20
/* 804A7A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7A58  7C 08 03 A6 */	mtlr r0
/* 804A7A5C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7A60  4E 80 00 20 */	blr 
