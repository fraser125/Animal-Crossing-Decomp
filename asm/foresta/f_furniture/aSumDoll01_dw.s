lbl_80636D80:
/* 80636D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80636D84  7C 08 02 A6 */	mflr r0
/* 80636D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80636D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80636D90  4B A6 41 45 */	bl func_8009AED4
/* 80636D94  7C BD 2B 78 */	mr r29, r5
/* 80636D98  83 C5 00 00 */	lwz r30, 0(r5)
/* 80636D9C  7F C3 F3 78 */	mr r3, r30
/* 80636DA0  4B DA E3 69 */	bl _texture_z_light_fog_prim
/* 80636DA4  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80636DA8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80636DAC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80636DB0  38 7F 00 08 */	addi r3, r31, 8
/* 80636DB4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80636DB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80636DBC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80636DC0  4B DD 66 15 */	bl _Matrix_to_Mtx_new
/* 80636DC4  90 7F 00 04 */	stw r3, 4(r31)
/* 80636DC8  3C 60 81 02 */	lis r3, int_sum_doll01_offT_model@ha /* 0x81022760@ha */
/* 80636DCC  3C 80 DE 00 */	lis r4, 0xde00
/* 80636DD0  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80636DD4  38 03 27 60 */	addi r0, r3, int_sum_doll01_offT_model@l /* 0x81022760@l */
/* 80636DD8  38 65 00 08 */	addi r3, r5, 8
/* 80636DDC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80636DE0  90 85 00 00 */	stw r4, 0(r5)
/* 80636DE4  90 05 00 04 */	stw r0, 4(r5)
/* 80636DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80636DEC  4B A6 41 35 */	bl func_8009AF20
/* 80636DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80636DF4  7C 08 03 A6 */	mtlr r0
/* 80636DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80636DFC  4E 80 00 20 */	blr 
