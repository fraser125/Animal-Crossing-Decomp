lbl_805E2A38:
/* 805E2A38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E2A3C  7C 08 02 A6 */	mflr r0
/* 805E2A40  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E2A44  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2A48  4B AB 84 71 */	bl func_8009AEB8
/* 805E2A4C  7C 79 1B 78 */	mr r25, r3
/* 805E2A50  7C 9A 23 78 */	mr r26, r4
/* 805E2A54  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E2A58  3B 80 00 00 */	li r28, 0
/* 805E2A5C  83 DA 00 00 */	lwz r30, 0(r26)
/* 805E2A60  3B 60 00 00 */	li r27, 0
/* 805E2A64  83 E4 09 88 */	lwz r31, 0x988(r4)
/* 805E2A68  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805E2A6C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 805E2A70  88 63 00 01 */	lbz r3, 1(r3)
/* 805E2A74  54 63 30 32 */	slwi r3, r3, 6
/* 805E2A78  7C 03 00 50 */	subf r0, r3, r0
/* 805E2A7C  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805E2A80  7C 1D 03 78 */	mr r29, r0
/* 805E2A84  A8 64 00 04 */	lha r3, 4(r4)
/* 805E2A88  4B FF E8 29 */	bl func_805E12B0
/* 805E2A8C  7C 78 1B 78 */	mr r24, r3
/* 805E2A90  4B DF 75 AD */	bl mPlib_Get_PlayerEyeTexAnimation_p
/* 805E2A94  7C 77 1B 78 */	mr r23, r3
/* 805E2A98  7F 03 C3 78 */	mr r3, r24
/* 805E2A9C  4B DF 75 CD */	bl mPlib_Get_PlayerMouthTexAnimation_p
/* 805E2AA0  28 1D 00 00 */	cmplwi r29, 0
/* 805E2AA4  7C 78 1B 78 */	mr r24, r3
/* 805E2AA8  41 82 01 D0 */	beq lbl_805E2C78
/* 805E2AAC  28 17 00 00 */	cmplwi r23, 0
/* 805E2AB0  40 82 00 0C */	bne lbl_805E2ABC
/* 805E2AB4  28 18 00 00 */	cmplwi r24, 0
/* 805E2AB8  41 82 00 64 */	beq lbl_805E2B1C
lbl_805E2ABC:
/* 805E2ABC  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E2AC0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805E2AC4  C0 03 B3 F4 */	lfs f0, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E2AC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E2ACC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805E2AD0  4C 40 13 82 */	cror 2, 0, 2
/* 805E2AD4  40 82 00 48 */	bne lbl_805E2B1C
/* 805E2AD8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 805E2ADC  4C 40 13 82 */	cror 2, 0, 2
/* 805E2AE0  40 82 00 3C */	bne lbl_805E2B1C
/* 805E2AE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E2AE8  28 17 00 00 */	cmplwi r23, 0
/* 805E2AEC  FC 00 00 1E */	fctiwz f0, f0
/* 805E2AF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805E2AF4  82 C1 00 0C */	lwz r22, 0xc(r1)
/* 805E2AF8  41 82 00 10 */	beq lbl_805E2B08
/* 805E2AFC  7C 77 B0 AE */	lbzx r3, r23, r22
/* 805E2B00  4B DF 75 95 */	bl mPlib_Get_eye_tex_p
/* 805E2B04  7C 7C 1B 78 */	mr r28, r3
lbl_805E2B08:
/* 805E2B08  28 18 00 00 */	cmplwi r24, 0
/* 805E2B0C  41 82 00 10 */	beq lbl_805E2B1C
/* 805E2B10  7C 78 B0 AE */	lbzx r3, r24, r22
/* 805E2B14  4B DF 75 DD */	bl mPlib_Get_mouth_tex_p
/* 805E2B18  7C 7B 1B 78 */	mr r27, r3
lbl_805E2B1C:
/* 805E2B1C  28 1C 00 00 */	cmplwi r28, 0
/* 805E2B20  40 82 00 10 */	bne lbl_805E2B30
/* 805E2B24  38 60 00 00 */	li r3, 0
/* 805E2B28  4B DF 75 6D */	bl mPlib_Get_eye_tex_p
/* 805E2B2C  7C 7C 1B 78 */	mr r28, r3
lbl_805E2B30:
/* 805E2B30  28 1B 00 00 */	cmplwi r27, 0
/* 805E2B34  40 82 00 10 */	bne lbl_805E2B44
/* 805E2B38  38 60 00 00 */	li r3, 0
/* 805E2B3C  4B DF 75 B5 */	bl mPlib_Get_mouth_tex_p
/* 805E2B40  7C 7B 1B 78 */	mr r27, r3
lbl_805E2B44:
/* 805E2B44  3C 80 80 65 */	lis r4, lit_1153@ha /* 0x8064B480@ha */
/* 805E2B48  38 60 00 00 */	li r3, 0
/* 805E2B4C  C0 24 B4 80 */	lfs f1, lit_1153@l(r4)  /* 0x8064B480@l */
/* 805E2B50  FC 40 08 90 */	fmr f2, f1
/* 805E2B54  FC 60 08 90 */	fmr f3, f1
/* 805E2B58  4B E2 98 95 */	bl Matrix_scale
/* 805E2B5C  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805E2B60  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E2B64  3C A0 E7 00 */	lis r5, 0xe700
/* 805E2B68  38 80 00 00 */	li r4, 0
/* 805E2B6C  38 C7 00 08 */	addi r6, r7, 8
/* 805E2B70  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E2B74  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805E2B78  7F C3 F3 78 */	mr r3, r30
/* 805E2B7C  90 A7 00 00 */	stw r5, 0(r7)
/* 805E2B80  90 87 00 04 */	stw r4, 4(r7)
/* 805E2B84  83 1E 02 D0 */	lwz r24, 0x2d0(r30)
/* 805E2B88  38 98 00 08 */	addi r4, r24, 8
/* 805E2B8C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805E2B90  90 18 00 00 */	stw r0, 0(r24)
/* 805E2B94  4B E2 A8 41 */	bl _Matrix_to_Mtx_new
/* 805E2B98  90 78 00 04 */	stw r3, 4(r24)
/* 805E2B9C  7F C3 F3 78 */	mr r3, r30
/* 805E2BA0  4B E0 25 69 */	bl _texture_z_light_fog_prim
/* 805E2BA4  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805E2BA8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805E2BAC  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 805E2BB0  7F 43 D3 78 */	mr r3, r26
/* 805E2BB4  38 07 00 08 */	addi r0, r7, 8
/* 805E2BB8  38 85 00 24 */	addi r4, r5, 0x24
/* 805E2BBC  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805E2BC0  38 05 00 28 */	addi r0, r5, 0x28
/* 805E2BC4  90 C7 00 00 */	stw r6, 0(r7)
/* 805E2BC8  93 87 00 04 */	stw r28, 4(r7)
/* 805E2BCC  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805E2BD0  38 A6 00 08 */	addi r5, r6, 8
/* 805E2BD4  90 BE 02 D0 */	stw r5, 0x2d0(r30)
/* 805E2BD8  90 86 00 00 */	stw r4, 0(r6)
/* 805E2BDC  93 66 00 04 */	stw r27, 4(r6)
/* 805E2BE0  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 805E2BE4  38 9B 00 08 */	addi r4, r27, 8
/* 805E2BE8  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805E2BEC  90 1B 00 00 */	stw r0, 0(r27)
/* 805E2BF0  4B DF 67 95 */	bl mPlib_get_player_tex_p
/* 805E2BF4  90 7B 00 04 */	stw r3, 4(r27)
/* 805E2BF8  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB06002C@ha */
/* 805E2BFC  38 03 00 2C */	addi r0, r3, 0x002C /* 0xDB06002C@l */
/* 805E2C00  7F 43 D3 78 */	mr r3, r26
/* 805E2C04  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 805E2C08  38 9B 00 08 */	addi r4, r27, 8
/* 805E2C0C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805E2C10  90 1B 00 00 */	stw r0, 0(r27)
/* 805E2C14  4B DF 67 B9 */	bl mPlib_get_player_pallet_p
/* 805E2C18  90 7B 00 04 */	stw r3, 4(r27)
/* 805E2C1C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060030@ha */
/* 805E2C20  38 03 00 30 */	addi r0, r3, 0x0030 /* 0xDB060030@l */
/* 805E2C24  7F 43 D3 78 */	mr r3, r26
/* 805E2C28  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 805E2C2C  38 9B 00 08 */	addi r4, r27, 8
/* 805E2C30  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805E2C34  90 1B 00 00 */	stw r0, 0(r27)
/* 805E2C38  4B DF 67 F9 */	bl mPlib_get_player_face_pallet_p
/* 805E2C3C  3C 80 80 5E */	lis r4, mIV_pl_shape_after_draw@ha /* 0x805E2670@ha */
/* 805E2C40  90 7B 00 04 */	stw r3, 4(r27)
/* 805E2C44  38 E4 26 70 */	addi r7, r4, mIV_pl_shape_after_draw@l /* 0x805E2670@l */
/* 805E2C48  7F 43 D3 78 */	mr r3, r26
/* 805E2C4C  7F E4 FB 78 */	mr r4, r31
/* 805E2C50  7F A5 EB 78 */	mr r5, r29
/* 805E2C54  7F 28 CB 78 */	mr r8, r25
/* 805E2C58  38 C0 00 00 */	li r6, 0
/* 805E2C5C  4B D8 EA DD */	bl cKF_Si3_draw_R_SV
/* 805E2C60  7F 23 CB 78 */	mr r3, r25
/* 805E2C64  7F 44 D3 78 */	mr r4, r26
/* 805E2C68  4B FF FA 7D */	bl mIV_pl_equip_item_draw
/* 805E2C6C  7F 23 CB 78 */	mr r3, r25
/* 805E2C70  7F 44 D3 78 */	mr r4, r26
/* 805E2C74  4B FF FB 0D */	bl mIV_pl_food_item_draw
lbl_805E2C78:
/* 805E2C78  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2C7C  4B AB 82 89 */	bl func_8009AF04
/* 805E2C80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E2C84  7C 08 03 A6 */	mtlr r0
/* 805E2C88  38 21 00 40 */	addi r1, r1, 0x40
/* 805E2C8C  4E 80 00 20 */	blr 
