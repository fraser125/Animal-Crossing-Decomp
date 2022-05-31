lbl_8063A4D4:
/* 8063A4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063A4D8  7C 08 02 A6 */	mflr r0
/* 8063A4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063A4E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063A4E4  4B A6 09 F1 */	bl func_8009AED4
/* 8063A4E8  7C BD 2B 78 */	mr r29, r5
/* 8063A4EC  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063A4F0  7F C3 F3 78 */	mr r3, r30
/* 8063A4F4  4B DA AC 15 */	bl _texture_z_light_fog_prim
/* 8063A4F8  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063A4FC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063A500  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063A504  38 7F 00 08 */	addi r3, r31, 8
/* 8063A508  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063A50C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063A510  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063A514  4B DD 2E C1 */	bl _Matrix_to_Mtx_new
/* 8063A518  90 7F 00 04 */	stw r3, 4(r31)
/* 8063A51C  3C 60 81 0A */	lis r3, int_sum_ratan_mirror_on_model@ha /* 0x810A1400@ha */
/* 8063A520  3C 80 DE 00 */	lis r4, 0xde00
/* 8063A524  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063A528  38 03 14 00 */	addi r0, r3, int_sum_ratan_mirror_on_model@l /* 0x810A1400@l */
/* 8063A52C  38 65 00 08 */	addi r3, r5, 8
/* 8063A530  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063A534  90 85 00 00 */	stw r4, 0(r5)
/* 8063A538  90 05 00 04 */	stw r0, 4(r5)
/* 8063A53C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063A540  4B A6 09 E1 */	bl func_8009AF20
/* 8063A544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063A548  7C 08 03 A6 */	mtlr r0
/* 8063A54C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063A550  4E 80 00 20 */	blr 
