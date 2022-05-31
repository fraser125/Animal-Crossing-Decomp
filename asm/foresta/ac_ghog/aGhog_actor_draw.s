lbl_805AF30C:
/* 805AF30C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AF310  7C 08 02 A6 */	mflr r0
/* 805AF314  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AF318  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF31C  4B AE BB B9 */	bl func_8009AED4
/* 805AF320  7C 9D 23 78 */	mr r29, r4
/* 805AF324  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AF328  7F E3 FB 78 */	mr r3, r31
/* 805AF32C  4B E3 5E 7D */	bl _texture_z_light_fog_prim_npc
/* 805AF330  7F E3 FB 78 */	mr r3, r31
/* 805AF334  4B E3 5D FD */	bl _texture_z_light_fog_prim_shadow
/* 805AF338  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805AF33C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805AF340  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805AF344  7F E3 FB 78 */	mr r3, r31
/* 805AF348  38 9E 00 08 */	addi r4, r30, 8
/* 805AF34C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805AF350  90 1E 00 00 */	stw r0, 0(r30)
/* 805AF354  4B E5 E0 81 */	bl _Matrix_to_Mtx_new
/* 805AF358  90 7E 00 04 */	stw r3, 4(r30)
/* 805AF35C  3C C0 80 B7 */	lis r6, obj_e_ghog_modelT@ha /* 0x80B75630@ha */
/* 805AF360  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AF364  3C 80 80 6C */	lis r4, aGhog_shadow_data@ha /* 0x806C50BC@ha */
/* 805AF368  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805AF36C  3D 20 DE 00 */	lis r9, 0xde00
/* 805AF370  38 E6 56 30 */	addi r7, r6, obj_e_ghog_modelT@l /* 0x80B75630@l */
/* 805AF374  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AF378  38 08 00 08 */	addi r0, r8, 8
/* 805AF37C  3C A0 80 B7 */	lis r5, obj_e_ghog_model@ha /* 0x80B75740@ha */
/* 805AF380  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 805AF384  38 05 57 40 */	addi r0, r5, obj_e_ghog_model@l /* 0x80B75740@l */
/* 805AF388  3C C3 00 02 */	addis r6, r3, 2
/* 805AF38C  38 84 50 BC */	addi r4, r4, aGhog_shadow_data@l /* 0x806C50BC@l */
/* 805AF390  91 28 00 00 */	stw r9, 0(r8)
/* 805AF394  7F A3 EB 78 */	mr r3, r29
/* 805AF398  38 A0 00 01 */	li r5, 1
/* 805AF39C  90 E8 00 04 */	stw r7, 4(r8)
/* 805AF3A0  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805AF3A4  38 E8 00 08 */	addi r7, r8, 8
/* 805AF3A8  90 FF 02 D0 */	stw r7, 0x2d0(r31)
/* 805AF3AC  91 28 00 00 */	stw r9, 0(r8)
/* 805AF3B0  90 08 00 04 */	stw r0, 4(r8)
/* 805AF3B4  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805AF3B8  81 86 00 04 */	lwz r12, 4(r6)
/* 805AF3BC  7D 89 03 A6 */	mtctr r12
/* 805AF3C0  4E 80 04 21 */	bctrl 
/* 805AF3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF3C8  4B AE BB 59 */	bl func_8009AF20
/* 805AF3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF3D0  7C 08 03 A6 */	mtlr r0
/* 805AF3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805AF3D8  4E 80 00 20 */	blr 
