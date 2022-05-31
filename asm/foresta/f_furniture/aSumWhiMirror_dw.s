lbl_8063BB24:
/* 8063BB24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063BB28  7C 08 02 A6 */	mflr r0
/* 8063BB2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063BB30  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BB34  4B A5 F3 A1 */	bl func_8009AED4
/* 8063BB38  7C BD 2B 78 */	mr r29, r5
/* 8063BB3C  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063BB40  7F C3 F3 78 */	mr r3, r30
/* 8063BB44  4B DA 95 C5 */	bl _texture_z_light_fog_prim
/* 8063BB48  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063BB4C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063BB50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063BB54  38 7F 00 08 */	addi r3, r31, 8
/* 8063BB58  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063BB5C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063BB60  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063BB64  4B DD 18 71 */	bl _Matrix_to_Mtx_new
/* 8063BB68  90 7F 00 04 */	stw r3, 4(r31)
/* 8063BB6C  3C 60 81 0D */	lis r3, int_sum_whi_mirror_on_model@ha /* 0x810CFCA0@ha */
/* 8063BB70  3C 80 DE 00 */	lis r4, 0xde00
/* 8063BB74  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063BB78  38 03 FC A0 */	addi r0, r3, int_sum_whi_mirror_on_model@l /* 0x810CFCA0@l */
/* 8063BB7C  38 65 00 08 */	addi r3, r5, 8
/* 8063BB80  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063BB84  90 85 00 00 */	stw r4, 0(r5)
/* 8063BB88  90 05 00 04 */	stw r0, 4(r5)
/* 8063BB8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BB90  4B A5 F3 91 */	bl func_8009AF20
/* 8063BB94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063BB98  7C 08 03 A6 */	mtlr r0
/* 8063BB9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063BBA0  4E 80 00 20 */	blr 
