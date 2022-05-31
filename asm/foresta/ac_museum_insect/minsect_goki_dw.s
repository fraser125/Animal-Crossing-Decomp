lbl_8046B1E8:
/* 8046B1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046B1EC  7C 08 02 A6 */	mflr r0
/* 8046B1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046B1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8046B1F8  4B C2 FC D5 */	bl func_8009AECC
/* 8046B1FC  7C 9F 23 78 */	mr r31, r4
/* 8046B200  7C 7E 1B 78 */	mr r30, r3
/* 8046B204  80 64 00 00 */	lwz r3, 0(r4)
/* 8046B208  4B F7 9F 01 */	bl _texture_z_light_fog_prim
/* 8046B20C  83 9F 00 00 */	lwz r28, 0(r31)
/* 8046B210  38 60 00 00 */	li r3, 0
/* 8046B214  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8046B218  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8046B21C  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8046B220  4B FA 10 E1 */	bl Matrix_translate
/* 8046B224  A8 7E 00 68 */	lha r3, 0x68(r30)
/* 8046B228  38 C0 00 01 */	li r6, 1
/* 8046B22C  A8 9E 00 6A */	lha r4, 0x6a(r30)
/* 8046B230  A8 BE 00 6C */	lha r5, 0x6c(r30)
/* 8046B234  4B FA 17 61 */	bl Matrix_rotateXYZ
/* 8046B238  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8046B23C  38 60 00 01 */	li r3, 1
/* 8046B240  FC 40 08 90 */	fmr f2, f1
/* 8046B244  FC 60 08 90 */	fmr f3, f1
/* 8046B248  4B FA 11 A5 */	bl Matrix_scale
/* 8046B24C  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 8046B250  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046B254  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046B258  38 7D 00 08 */	addi r3, r29, 8
/* 8046B25C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8046B260  90 1D 00 00 */	stw r0, 0(r29)
/* 8046B264  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046B268  4B FA 21 6D */	bl _Matrix_to_Mtx_new
/* 8046B26C  90 7D 00 04 */	stw r3, 4(r29)
/* 8046B270  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046B274  3C 00 DE 00 */	lis r0, 0xde00
/* 8046B278  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 8046B27C  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046B280  38 85 00 08 */	addi r4, r5, 8
/* 8046B284  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 8046B288  90 05 00 00 */	stw r0, 0(r5)
/* 8046B28C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8046B290  54 00 10 3A */	slwi r0, r0, 2
/* 8046B294  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046B298  80 03 00 00 */	lwz r0, 0(r3)
/* 8046B29C  90 05 00 04 */	stw r0, 4(r5)
/* 8046B2A0  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8046B2A4  2C 00 00 00 */	cmpwi r0, 0
/* 8046B2A8  41 82 00 7C */	beq lbl_8046B324
/* 8046B2AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046B2B0  4B F7 9E A9 */	bl _texture_z_light_fog_prim_xlu
/* 8046B2B4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046B2B8  83 9F 00 00 */	lwz r28, 0(r31)
/* 8046B2BC  C0 43 46 0C */	lfs f2, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046B2C0  38 60 00 01 */	li r3, 1
/* 8046B2C4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8046B2C8  FC 60 10 90 */	fmr f3, f2
/* 8046B2CC  83 BC 02 E0 */	lwz r29, 0x2e0(r28)
/* 8046B2D0  4B FA 11 1D */	bl Matrix_scale
/* 8046B2D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046B2D8  7F BB EB 78 */	mr r27, r29
/* 8046B2DC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046B2E0  90 1D 00 00 */	stw r0, 0(r29)
/* 8046B2E4  3B BD 00 08 */	addi r29, r29, 8
/* 8046B2E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046B2EC  4B FA 20 E9 */	bl _Matrix_to_Mtx_new
/* 8046B2F0  90 7B 00 04 */	stw r3, 4(r27)
/* 8046B2F4  7F A4 EB 78 */	mr r4, r29
/* 8046B2F8  3C 00 DE 00 */	lis r0, 0xde00
/* 8046B2FC  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046B300  90 1D 00 00 */	stw r0, 0(r29)
/* 8046B304  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046B308  3B BD 00 08 */	addi r29, r29, 8
/* 8046B30C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8046B310  54 00 10 3A */	slwi r0, r0, 2
/* 8046B314  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046B318  80 03 00 04 */	lwz r0, 4(r3)
/* 8046B31C  90 04 00 04 */	stw r0, 4(r4)
/* 8046B320  93 BC 02 E0 */	stw r29, 0x2e0(r28)
lbl_8046B324:
/* 8046B324  7F C3 F3 78 */	mr r3, r30
/* 8046B328  7F E4 FB 78 */	mr r4, r31
/* 8046B32C  4B FF 06 05 */	bl minsect_draw_shadow
/* 8046B330  39 61 00 20 */	addi r11, r1, 0x20
/* 8046B334  4B C2 FB E5 */	bl func_8009AF18
/* 8046B338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046B33C  7C 08 03 A6 */	mtlr r0
/* 8046B340  38 21 00 20 */	addi r1, r1, 0x20
/* 8046B344  4E 80 00 20 */	blr 
