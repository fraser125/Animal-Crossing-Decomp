lbl_8063BAA4:
/* 8063BAA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063BAA8  7C 08 02 A6 */	mflr r0
/* 8063BAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063BAB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BAB4  4B A5 F4 21 */	bl func_8009AED4
/* 8063BAB8  7C BD 2B 78 */	mr r29, r5
/* 8063BABC  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063BAC0  7F C3 F3 78 */	mr r3, r30
/* 8063BAC4  4B DA 96 45 */	bl _texture_z_light_fog_prim
/* 8063BAC8  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063BACC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063BAD0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063BAD4  38 7F 00 08 */	addi r3, r31, 8
/* 8063BAD8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063BADC  90 1F 00 00 */	stw r0, 0(r31)
/* 8063BAE0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063BAE4  4B DD 18 F1 */	bl _Matrix_to_Mtx_new
/* 8063BAE8  90 7F 00 04 */	stw r3, 4(r31)
/* 8063BAEC  3C 60 81 0D */	lis r3, int_sum_whi_lanp_offT_model@ha /* 0x810CEF78@ha */
/* 8063BAF0  3C 80 DE 00 */	lis r4, 0xde00
/* 8063BAF4  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063BAF8  38 03 EF 78 */	addi r0, r3, int_sum_whi_lanp_offT_model@l /* 0x810CEF78@l */
/* 8063BAFC  38 65 00 08 */	addi r3, r5, 8
/* 8063BB00  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063BB04  90 85 00 00 */	stw r4, 0(r5)
/* 8063BB08  90 05 00 04 */	stw r0, 4(r5)
/* 8063BB0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BB10  4B A5 F4 11 */	bl func_8009AF20
/* 8063BB14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063BB18  7C 08 03 A6 */	mtlr r0
/* 8063BB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063BB20  4E 80 00 20 */	blr 
