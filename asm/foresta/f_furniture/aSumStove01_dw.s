lbl_8063AD9C:
/* 8063AD9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063ADA0  7C 08 02 A6 */	mflr r0
/* 8063ADA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063ADA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063ADAC  4B A6 01 29 */	bl func_8009AED4
/* 8063ADB0  7C BD 2B 78 */	mr r29, r5
/* 8063ADB4  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063ADB8  7F C3 F3 78 */	mr r3, r30
/* 8063ADBC  4B DA A3 4D */	bl _texture_z_light_fog_prim
/* 8063ADC0  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063ADC4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063ADC8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063ADCC  38 7F 00 08 */	addi r3, r31, 8
/* 8063ADD0  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063ADD4  90 1F 00 00 */	stw r0, 0(r31)
/* 8063ADD8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063ADDC  4B DD 25 F9 */	bl _Matrix_to_Mtx_new
/* 8063ADE0  90 7F 00 04 */	stw r3, 4(r31)
/* 8063ADE4  3C 60 81 0B */	lis r3, int_sum_stove_offT_model@ha /* 0x810AEFE0@ha */
/* 8063ADE8  3C 80 DE 00 */	lis r4, 0xde00
/* 8063ADEC  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063ADF0  38 03 EF E0 */	addi r0, r3, int_sum_stove_offT_model@l /* 0x810AEFE0@l */
/* 8063ADF4  38 65 00 08 */	addi r3, r5, 8
/* 8063ADF8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063ADFC  90 85 00 00 */	stw r4, 0(r5)
/* 8063AE00  90 05 00 04 */	stw r0, 4(r5)
/* 8063AE04  39 61 00 20 */	addi r11, r1, 0x20
/* 8063AE08  4B A6 01 19 */	bl func_8009AF20
/* 8063AE0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063AE10  7C 08 03 A6 */	mtlr r0
/* 8063AE14  38 21 00 20 */	addi r1, r1, 0x20
/* 8063AE18  4E 80 00 20 */	blr 
