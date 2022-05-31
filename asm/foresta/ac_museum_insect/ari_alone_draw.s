lbl_8045B6B8:
/* 8045B6B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B6BC  7C 08 02 A6 */	mflr r0
/* 8045B6C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B6C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B6C8  4B C3 F8 0D */	bl func_8009AED4
/* 8045B6CC  7C 9D 23 78 */	mr r29, r4
/* 8045B6D0  7C 7F 1B 78 */	mr r31, r3
/* 8045B6D4  80 64 00 00 */	lwz r3, 0(r4)
/* 8045B6D8  4B F8 9A 81 */	bl _texture_z_light_fog_prim_xlu
/* 8045B6DC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8045B6E0  38 60 00 00 */	li r3, 0
/* 8045B6E4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8045B6E8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8045B6EC  EC 61 00 2A */	fadds f3, f1, f0
/* 8045B6F0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8045B6F4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8045B6F8  4B FB 0C 09 */	bl Matrix_translate
/* 8045B6FC  A8 7F 00 68 */	lha r3, 0x68(r31)
/* 8045B700  38 C0 00 01 */	li r6, 1
/* 8045B704  A8 9F 00 6A */	lha r4, 0x6a(r31)
/* 8045B708  A8 BF 00 6C */	lha r5, 0x6c(r31)
/* 8045B70C  4B FB 12 89 */	bl Matrix_rotateXYZ
/* 8045B710  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8045B714  38 60 00 01 */	li r3, 1
/* 8045B718  FC 40 08 90 */	fmr f2, f1
/* 8045B71C  FC 60 08 90 */	fmr f3, f1
/* 8045B720  4B FB 0C CD */	bl Matrix_scale
/* 8045B724  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8045B728  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045B72C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045B730  38 7F 00 08 */	addi r3, r31, 8
/* 8045B734  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8045B738  90 1F 00 00 */	stw r0, 0(r31)
/* 8045B73C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045B740  4B FB 1C 95 */	bl _Matrix_to_Mtx_new
/* 8045B744  90 7F 00 04 */	stw r3, 4(r31)
/* 8045B748  3C 60 80 EC */	lis r3, act_m_mu_ariT_model@ha /* 0x80EB9E58@ha */
/* 8045B74C  3C 80 DE 00 */	lis r4, 0xde00
/* 8045B750  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8045B754  38 03 9E 58 */	addi r0, r3, act_m_mu_ariT_model@l /* 0x80EB9E58@l */
/* 8045B758  38 65 00 08 */	addi r3, r5, 8
/* 8045B75C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8045B760  90 85 00 00 */	stw r4, 0(r5)
/* 8045B764  90 05 00 04 */	stw r0, 4(r5)
/* 8045B768  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B76C  4B C3 F7 B5 */	bl func_8009AF20
/* 8045B770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B774  7C 08 03 A6 */	mtlr r0
/* 8045B778  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B77C  4E 80 00 20 */	blr 
