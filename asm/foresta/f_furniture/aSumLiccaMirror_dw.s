lbl_80638DE4:
/* 80638DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80638DE8  7C 08 02 A6 */	mflr r0
/* 80638DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80638DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80638DF4  4B A6 20 E1 */	bl func_8009AED4
/* 80638DF8  7C BD 2B 78 */	mr r29, r5
/* 80638DFC  83 C5 00 00 */	lwz r30, 0(r5)
/* 80638E00  7F C3 F3 78 */	mr r3, r30
/* 80638E04  4B DA C3 05 */	bl _texture_z_light_fog_prim
/* 80638E08  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80638E0C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80638E10  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80638E14  38 7F 00 08 */	addi r3, r31, 8
/* 80638E18  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80638E1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80638E20  80 7D 00 00 */	lwz r3, 0(r29)
/* 80638E24  4B DD 45 B1 */	bl _Matrix_to_Mtx_new
/* 80638E28  90 7F 00 04 */	stw r3, 4(r31)
/* 80638E2C  3C 60 81 07 */	lis r3, int_sum_liccamirror_env_model@ha /* 0x81068578@ha */
/* 80638E30  3C 80 DE 00 */	lis r4, 0xde00
/* 80638E34  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80638E38  38 03 85 78 */	addi r0, r3, int_sum_liccamirror_env_model@l /* 0x81068578@l */
/* 80638E3C  38 65 00 08 */	addi r3, r5, 8
/* 80638E40  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80638E44  90 85 00 00 */	stw r4, 0(r5)
/* 80638E48  90 05 00 04 */	stw r0, 4(r5)
/* 80638E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80638E50  4B A6 20 D1 */	bl func_8009AF20
/* 80638E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80638E58  7C 08 03 A6 */	mtlr r0
/* 80638E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80638E60  4E 80 00 20 */	blr 
