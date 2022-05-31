lbl_804A7F10:
/* 804A7F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7F14  7C 08 02 A6 */	mflr r0
/* 804A7F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7F20  4B BF 2F B5 */	bl func_8009AED4
/* 804A7F24  7C 7D 1B 78 */	mr r29, r3
/* 804A7F28  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7F2C  2C 00 00 01 */	cmpwi r0, 1
/* 804A7F30  40 82 00 6C */	bne lbl_804A7F9C
/* 804A7F34  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7F38  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7F3C  4B F6 43 1D */	bl Matrix_put
/* 804A7F40  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A7F44  4B F6 55 79 */	bl Matrix_Position_Zero
/* 804A7F48  38 00 00 00 */	li r0, 0
/* 804A7F4C  7F E3 FB 78 */	mr r3, r31
/* 804A7F50  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A7F54  4B F3 D2 55 */	bl _texture_z_light_fog_prim_npc
/* 804A7F58  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7F5C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7F60  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7F64  7F E3 FB 78 */	mr r3, r31
/* 804A7F68  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7F6C  7F DD F3 78 */	mr r29, r30
/* 804A7F70  3B DE 00 08 */	addi r30, r30, 8
/* 804A7F74  4B F6 54 61 */	bl _Matrix_to_Mtx_new
/* 804A7F78  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7F7C  7F C4 F3 78 */	mr r4, r30
/* 804A7F80  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7F84  3C 60 80 C1 */	lis r3, crw_biscus4_body_model@ha /* 0x80C10190@ha */
/* 804A7F88  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7F8C  38 03 01 90 */	addi r0, r3, crw_biscus4_body_model@l /* 0x80C10190@l */
/* 804A7F90  3B DE 00 08 */	addi r30, r30, 8
/* 804A7F94  90 04 00 04 */	stw r0, 4(r4)
/* 804A7F98  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A7F9C:
/* 804A7F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7FA0  4B BF 2F 81 */	bl func_8009AF20
/* 804A7FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7FA8  7C 08 03 A6 */	mtlr r0
/* 804A7FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7FB0  4E 80 00 20 */	blr 
