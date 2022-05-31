lbl_80635C50:
/* 80635C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80635C54  7C 08 02 A6 */	mflr r0
/* 80635C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80635C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80635C60  4B A6 52 75 */	bl func_8009AED4
/* 80635C64  7C BD 2B 78 */	mr r29, r5
/* 80635C68  83 C5 00 00 */	lwz r30, 0(r5)
/* 80635C6C  7F C3 F3 78 */	mr r3, r30
/* 80635C70  4B DA F4 99 */	bl _texture_z_light_fog_prim
/* 80635C74  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80635C78  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80635C7C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80635C80  38 7F 00 08 */	addi r3, r31, 8
/* 80635C84  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80635C88  90 1F 00 00 */	stw r0, 0(r31)
/* 80635C8C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80635C90  4B DD 77 45 */	bl _Matrix_to_Mtx_new
/* 80635C94  90 7F 00 04 */	stw r3, 4(r31)
/* 80635C98  3C 80 80 FF */	lis r4, int_sum_bla_lanp_off_model@ha /* 0x80FF28D8@ha */
/* 80635C9C  3C 60 80 FF */	lis r3, int_sum_bla_lanp_offT_model@ha /* 0x80FF29E0@ha */
/* 80635CA0  3C A0 DE 00 */	lis r5, 0xde00
/* 80635CA4  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 80635CA8  38 84 28 D8 */	addi r4, r4, int_sum_bla_lanp_off_model@l /* 0x80FF28D8@l */
/* 80635CAC  38 03 29 E0 */	addi r0, r3, int_sum_bla_lanp_offT_model@l /* 0x80FF29E0@l */
/* 80635CB0  38 66 00 08 */	addi r3, r6, 8
/* 80635CB4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80635CB8  90 A6 00 00 */	stw r5, 0(r6)
/* 80635CBC  90 86 00 04 */	stw r4, 4(r6)
/* 80635CC0  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 80635CC4  38 64 00 08 */	addi r3, r4, 8
/* 80635CC8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80635CCC  90 A4 00 00 */	stw r5, 0(r4)
/* 80635CD0  90 04 00 04 */	stw r0, 4(r4)
/* 80635CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80635CD8  4B A6 52 49 */	bl func_8009AF20
/* 80635CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80635CE0  7C 08 03 A6 */	mtlr r0
/* 80635CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80635CE8  4E 80 00 20 */	blr 
