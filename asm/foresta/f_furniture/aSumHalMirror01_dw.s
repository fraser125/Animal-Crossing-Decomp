lbl_806382D0:
/* 806382D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806382D4  7C 08 02 A6 */	mflr r0
/* 806382D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806382DC  39 61 00 20 */	addi r11, r1, 0x20
/* 806382E0  4B A6 2B F5 */	bl func_8009AED4
/* 806382E4  7C BD 2B 78 */	mr r29, r5
/* 806382E8  83 C5 00 00 */	lwz r30, 0(r5)
/* 806382EC  7F C3 F3 78 */	mr r3, r30
/* 806382F0  4B DA CE 19 */	bl _texture_z_light_fog_prim
/* 806382F4  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 806382F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806382FC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80638300  38 7F 00 08 */	addi r3, r31, 8
/* 80638304  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80638308  90 1F 00 00 */	stw r0, 0(r31)
/* 8063830C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80638310  4B DD 50 C5 */	bl _Matrix_to_Mtx_new
/* 80638314  90 7F 00 04 */	stw r3, 4(r31)
/* 80638318  3C 60 81 05 */	lis r3, int_sum_hal_mirror01_on_model@ha /* 0x8104E8A0@ha */
/* 8063831C  3C 80 DE 00 */	lis r4, 0xde00
/* 80638320  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80638324  38 03 E8 A0 */	addi r0, r3, int_sum_hal_mirror01_on_model@l /* 0x8104E8A0@l */
/* 80638328  38 65 00 08 */	addi r3, r5, 8
/* 8063832C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80638330  90 85 00 00 */	stw r4, 0(r5)
/* 80638334  90 05 00 04 */	stw r0, 4(r5)
/* 80638338  39 61 00 20 */	addi r11, r1, 0x20
/* 8063833C  4B A6 2B E5 */	bl func_8009AF20
/* 80638340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80638344  7C 08 03 A6 */	mtlr r0
/* 80638348  38 21 00 20 */	addi r1, r1, 0x20
/* 8063834C  4E 80 00 20 */	blr 
