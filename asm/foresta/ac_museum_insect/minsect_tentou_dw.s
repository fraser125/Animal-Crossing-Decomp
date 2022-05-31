lbl_80463ED4:
/* 80463ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80463ED8  7C 08 02 A6 */	mflr r0
/* 80463EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80463EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80463EE4  4B C3 6F ED */	bl func_8009AED0
/* 80463EE8  7C 9C 23 78 */	mr r28, r4
/* 80463EEC  7C 7E 1B 78 */	mr r30, r3
/* 80463EF0  80 64 00 00 */	lwz r3, 0(r4)
/* 80463EF4  4B F8 12 15 */	bl _texture_z_light_fog_prim
/* 80463EF8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80463EFC  38 60 00 00 */	li r3, 0
/* 80463F00  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80463F04  83 FC 00 00 */	lwz r31, 0(r28)
/* 80463F08  EC 41 00 2A */	fadds f2, f1, f0
/* 80463F0C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80463F10  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80463F14  4B FA 83 ED */	bl Matrix_translate
/* 80463F18  A8 7E 00 68 */	lha r3, 0x68(r30)
/* 80463F1C  38 C0 00 01 */	li r6, 1
/* 80463F20  A8 9E 00 6A */	lha r4, 0x6a(r30)
/* 80463F24  A8 BE 00 6C */	lha r5, 0x6c(r30)
/* 80463F28  4B FA 8A 6D */	bl Matrix_rotateXYZ
/* 80463F2C  A8 7E 00 74 */	lha r3, 0x74(r30)
/* 80463F30  38 80 00 00 */	li r4, 0
/* 80463F34  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 80463F38  38 A0 00 00 */	li r5, 0
/* 80463F3C  38 C0 00 01 */	li r6, 1
/* 80463F40  7C 03 02 14 */	add r0, r3, r0
/* 80463F44  7C 03 07 34 */	extsh r3, r0
/* 80463F48  4B FA 8A 4D */	bl Matrix_rotateXYZ
/* 80463F4C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80463F50  38 60 00 01 */	li r3, 1
/* 80463F54  FC 40 08 90 */	fmr f2, f1
/* 80463F58  FC 60 08 90 */	fmr f3, f1
/* 80463F5C  4B FA 84 91 */	bl Matrix_scale
/* 80463F60  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80463F64  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80463F68  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80463F6C  38 60 00 01 */	li r3, 1
/* 80463F70  C0 44 00 00 */	lfs f2, 0(r4)
/* 80463F74  FC 60 10 90 */	fmr f3, f2
/* 80463F78  4B FA 84 75 */	bl Matrix_scale
/* 80463F7C  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80463F80  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80463F84  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80463F88  38 7D 00 08 */	addi r3, r29, 8
/* 80463F8C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80463F90  90 1D 00 00 */	stw r0, 0(r29)
/* 80463F94  80 7C 00 00 */	lwz r3, 0(r28)
/* 80463F98  4B FA 94 3D */	bl _Matrix_to_Mtx_new
/* 80463F9C  90 7D 00 04 */	stw r3, 4(r29)
/* 80463FA0  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 80463FA4  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80463FA8  3C A0 FB 00 */	lis r5, 0xfb00
/* 80463FAC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80463FB0  38 84 9B FF */	addi r4, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 80463FB4  3C 00 DE 00 */	lis r0, 0xde00
/* 80463FB8  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80463FBC  38 C7 00 08 */	addi r6, r7, 8
/* 80463FC0  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 80463FC4  90 A7 00 00 */	stw r5, 0(r7)
/* 80463FC8  90 87 00 04 */	stw r4, 4(r7)
/* 80463FCC  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80463FD0  38 85 00 08 */	addi r4, r5, 8
/* 80463FD4  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80463FD8  90 05 00 00 */	stw r0, 0(r5)
/* 80463FDC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80463FE0  54 00 10 3A */	slwi r0, r0, 2
/* 80463FE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80463FE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80463FEC  90 05 00 04 */	stw r0, 4(r5)
/* 80463FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80463FF4  4B C3 6F 29 */	bl func_8009AF1C
/* 80463FF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80463FFC  7C 08 03 A6 */	mtlr r0
/* 80464000  38 21 00 20 */	addi r1, r1, 0x20
/* 80464004  4E 80 00 20 */	blr 
