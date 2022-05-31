lbl_8046EC00:
/* 8046EC00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046EC04  7C 08 02 A6 */	mflr r0
/* 8046EC08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046EC0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046EC10  4B C2 C2 BD */	bl func_8009AECC
/* 8046EC14  7C 9F 23 78 */	mr r31, r4
/* 8046EC18  7C 7E 1B 78 */	mr r30, r3
/* 8046EC1C  80 64 00 00 */	lwz r3, 0(r4)
/* 8046EC20  4B F7 64 E9 */	bl _texture_z_light_fog_prim
/* 8046EC24  83 9F 00 00 */	lwz r28, 0(r31)
/* 8046EC28  38 60 00 00 */	li r3, 0
/* 8046EC2C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8046EC30  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8046EC34  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8046EC38  4B F9 D6 C9 */	bl Matrix_translate
/* 8046EC3C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8046EC40  38 60 00 01 */	li r3, 1
/* 8046EC44  FC 40 08 90 */	fmr f2, f1
/* 8046EC48  FC 60 08 90 */	fmr f3, f1
/* 8046EC4C  4B F9 D7 A1 */	bl Matrix_scale
/* 8046EC50  A8 7E 00 68 */	lha r3, 0x68(r30)
/* 8046EC54  38 C0 00 01 */	li r6, 1
/* 8046EC58  A8 9E 00 6A */	lha r4, 0x6a(r30)
/* 8046EC5C  A8 BE 00 6C */	lha r5, 0x6c(r30)
/* 8046EC60  4B F9 DD 35 */	bl Matrix_rotateXYZ
/* 8046EC64  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 8046EC68  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046EC6C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046EC70  38 7D 00 08 */	addi r3, r29, 8
/* 8046EC74  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8046EC78  90 1D 00 00 */	stw r0, 0(r29)
/* 8046EC7C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046EC80  4B F9 E7 55 */	bl _Matrix_to_Mtx_new
/* 8046EC84  90 7D 00 04 */	stw r3, 4(r29)
/* 8046EC88  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046EC8C  3C 00 DE 00 */	lis r0, 0xde00
/* 8046EC90  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 8046EC94  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046EC98  38 85 00 08 */	addi r4, r5, 8
/* 8046EC9C  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 8046ECA0  90 05 00 00 */	stw r0, 0(r5)
/* 8046ECA4  80 1E 00 00 */	lwz r0, 0(r30)
/* 8046ECA8  54 00 10 3A */	slwi r0, r0, 2
/* 8046ECAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046ECB0  80 03 00 00 */	lwz r0, 0(r3)
/* 8046ECB4  90 05 00 04 */	stw r0, 4(r5)
/* 8046ECB8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046ECBC  4B F7 64 9D */	bl _texture_z_light_fog_prim_xlu
/* 8046ECC0  83 9F 00 00 */	lwz r28, 0(r31)
/* 8046ECC4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046ECC8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046ECCC  83 BC 02 E0 */	lwz r29, 0x2e0(r28)
/* 8046ECD0  90 1D 00 00 */	stw r0, 0(r29)
/* 8046ECD4  7F BB EB 78 */	mr r27, r29
/* 8046ECD8  3B BD 00 08 */	addi r29, r29, 8
/* 8046ECDC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046ECE0  4B F9 E6 F5 */	bl _Matrix_to_Mtx_new
/* 8046ECE4  90 7B 00 04 */	stw r3, 4(r27)
/* 8046ECE8  7F A6 EB 78 */	mr r6, r29
/* 8046ECEC  3C 00 DE 00 */	lis r0, 0xde00
/* 8046ECF0  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046ECF4  90 1D 00 00 */	stw r0, 0(r29)
/* 8046ECF8  38 A3 65 4C */	addi r5, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046ECFC  3B BD 00 08 */	addi r29, r29, 8
/* 8046ED00  7F C3 F3 78 */	mr r3, r30
/* 8046ED04  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8046ED08  7F E4 FB 78 */	mr r4, r31
/* 8046ED0C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8046ED10  FC 00 00 1E */	fctiwz f0, f0
/* 8046ED14  54 00 10 3A */	slwi r0, r0, 2
/* 8046ED18  7C A5 00 2E */	lwzx r5, r5, r0
/* 8046ED1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046ED20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046ED24  54 00 10 3A */	slwi r0, r0, 2
/* 8046ED28  7C 05 00 2E */	lwzx r0, r5, r0
/* 8046ED2C  90 06 00 04 */	stw r0, 4(r6)
/* 8046ED30  93 BC 02 E0 */	stw r29, 0x2e0(r28)
/* 8046ED34  4B FE CB FD */	bl minsect_draw_shadow
/* 8046ED38  39 61 00 30 */	addi r11, r1, 0x30
/* 8046ED3C  4B C2 C1 DD */	bl func_8009AF18
/* 8046ED40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046ED44  7C 08 03 A6 */	mtlr r0
/* 8046ED48  38 21 00 30 */	addi r1, r1, 0x30
/* 8046ED4C  4E 80 00 20 */	blr 
