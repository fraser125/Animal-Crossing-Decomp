lbl_80638250:
/* 80638250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80638254  7C 08 02 A6 */	mflr r0
/* 80638258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063825C  39 61 00 20 */	addi r11, r1, 0x20
/* 80638260  4B A6 2C 75 */	bl func_8009AED4
/* 80638264  7C BD 2B 78 */	mr r29, r5
/* 80638268  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063826C  7F C3 F3 78 */	mr r3, r30
/* 80638270  4B DA CE 99 */	bl _texture_z_light_fog_prim
/* 80638274  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80638278  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063827C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80638280  38 7F 00 08 */	addi r3, r31, 8
/* 80638284  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80638288  90 1F 00 00 */	stw r0, 0(r31)
/* 8063828C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80638290  4B DD 51 45 */	bl _Matrix_to_Mtx_new
/* 80638294  90 7F 00 04 */	stw r3, 4(r31)
/* 80638298  3C 60 81 05 */	lis r3, int_sum_hal_lanp01_offT_model@ha /* 0x8104DB58@ha */
/* 8063829C  3C 80 DE 00 */	lis r4, 0xde00
/* 806382A0  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 806382A4  38 03 DB 58 */	addi r0, r3, int_sum_hal_lanp01_offT_model@l /* 0x8104DB58@l */
/* 806382A8  38 65 00 08 */	addi r3, r5, 8
/* 806382AC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 806382B0  90 85 00 00 */	stw r4, 0(r5)
/* 806382B4  90 05 00 04 */	stw r0, 4(r5)
/* 806382B8  39 61 00 20 */	addi r11, r1, 0x20
/* 806382BC  4B A6 2C 65 */	bl func_8009AF20
/* 806382C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806382C4  7C 08 03 A6 */	mtlr r0
/* 806382C8  38 21 00 20 */	addi r1, r1, 0x20
/* 806382CC  4E 80 00 20 */	blr 
