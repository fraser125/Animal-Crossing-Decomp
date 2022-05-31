lbl_806378BC:
/* 806378BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806378C0  7C 08 02 A6 */	mflr r0
/* 806378C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806378C8  39 61 00 20 */	addi r11, r1, 0x20
/* 806378CC  4B A6 36 09 */	bl func_8009AED4
/* 806378D0  7C BD 2B 78 */	mr r29, r5
/* 806378D4  83 C5 00 00 */	lwz r30, 0(r5)
/* 806378D8  7F C3 F3 78 */	mr r3, r30
/* 806378DC  4B DA D8 2D */	bl _texture_z_light_fog_prim
/* 806378E0  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 806378E4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806378E8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806378EC  38 7F 00 08 */	addi r3, r31, 8
/* 806378F0  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 806378F4  90 1F 00 00 */	stw r0, 0(r31)
/* 806378F8  80 7D 00 00 */	lwz r3, 0(r29)
/* 806378FC  4B DD 5A D9 */	bl _Matrix_to_Mtx_new
/* 80637900  90 7F 00 04 */	stw r3, 4(r31)
/* 80637904  3C 60 81 04 */	lis r3, int_sum_gre_lanp01_offT_model@ha /* 0x81041C08@ha */
/* 80637908  3C 80 DE 00 */	lis r4, 0xde00
/* 8063790C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80637910  38 03 1C 08 */	addi r0, r3, int_sum_gre_lanp01_offT_model@l /* 0x81041C08@l */
/* 80637914  38 65 00 08 */	addi r3, r5, 8
/* 80637918  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063791C  90 85 00 00 */	stw r4, 0(r5)
/* 80637920  90 05 00 04 */	stw r0, 4(r5)
/* 80637924  39 61 00 20 */	addi r11, r1, 0x20
/* 80637928  4B A6 35 F9 */	bl func_8009AF20
/* 8063792C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80637930  7C 08 03 A6 */	mtlr r0
/* 80637934  38 21 00 20 */	addi r1, r1, 0x20
/* 80637938  4E 80 00 20 */	blr 
