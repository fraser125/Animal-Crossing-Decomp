lbl_804A2C3C:
/* 804A2C3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A2C40  7C 08 02 A6 */	mflr r0
/* 804A2C44  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A2C48  39 61 00 50 */	addi r11, r1, 0x50
/* 804A2C4C  4B BF 82 71 */	bl func_8009AEBC
/* 804A2C50  7C 9A 23 78 */	mr r26, r4
/* 804A2C54  7C 79 1B 78 */	mr r25, r3
/* 804A2C58  83 A4 00 00 */	lwz r29, 0(r4)
/* 804A2C5C  7F A3 EB 78 */	mr r3, r29
/* 804A2C60  4B F4 25 49 */	bl _texture_z_light_fog_prim_npc
/* 804A2C64  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804A2C68  3C 80 D5 02 */	lis r4, 0xD502 /* 0xD5020001@ha */
/* 804A2C6C  3C 60 80 A0 */	lis r3, write_model@ha /* 0x809FFCE0@ha */
/* 804A2C70  3B C0 00 00 */	li r30, 0
/* 804A2C74  38 A6 00 08 */	addi r5, r6, 8
/* 804A2C78  38 04 00 01 */	addi r0, r4, 0x0001 /* 0xD5020001@l */
/* 804A2C7C  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 804A2C80  3B E3 FC E0 */	addi r31, r3, write_model@l /* 0x809FFCE0@l */
/* 804A2C84  3B 80 00 00 */	li r28, 0
/* 804A2C88  90 06 00 00 */	stw r0, 0(r6)
/* 804A2C8C  93 C6 00 04 */	stw r30, 4(r6)
lbl_804A2C90:
/* 804A2C90  7F 79 F2 14 */	add r27, r25, r30
/* 804A2C94  80 1B 02 40 */	lwz r0, 0x240(r27)
/* 804A2C98  2C 00 00 00 */	cmpwi r0, 0
/* 804A2C9C  41 82 01 64 */	beq lbl_804A2E00
/* 804A2CA0  4B F6 95 35 */	bl Matrix_push
/* 804A2CA4  80 9B 02 1C */	lwz r4, 0x21c(r27)
/* 804A2CA8  38 61 00 14 */	addi r3, r1, 0x14
/* 804A2CAC  80 BB 02 18 */	lwz r5, 0x218(r27)
/* 804A2CB0  80 DB 02 24 */	lwz r6, 0x224(r27)
/* 804A2CB4  80 FB 02 20 */	lwz r7, 0x220(r27)
/* 804A2CB8  4B F0 30 3D */	bl mFI_BkandUtNum2CenterWpos
/* 804A2CBC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804A2CC0  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A2CC4  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804A2CC8  38 83 5C 34 */	addi r4, r3, lit_484@l /* 0x80645C34@l */
/* 804A2CCC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804A2CD0  38 61 00 08 */	addi r3, r1, 8
/* 804A2CD4  90 C1 00 08 */	stw r6, 8(r1)
/* 804A2CD8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A2CDC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804A2CE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A2CE4  4B EE CC B5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A2CE8  3C 60 80 64 */	lis r3, lit_485@ha /* 0x80645C38@ha */
/* 804A2CEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804A2CF0  C0 03 5C 38 */	lfs f0, lit_485@l(r3)  /* 0x80645C38@l */
/* 804A2CF4  FC 40 08 18 */	frsp f2, f1
/* 804A2CF8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 804A2CFC  38 60 00 00 */	li r3, 0
/* 804A2D00  A0 1B 02 28 */	lhz r0, 0x228(r27)
/* 804A2D04  EC 63 00 28 */	fsubs f3, f3, f0
/* 804A2D08  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A2D0C  54 18 EF BE */	rlwinm r24, r0, 0x1d, 0x1e, 0x1f
/* 804A2D10  54 17 07 7E */	clrlwi r23, r0, 0x1d
/* 804A2D14  4B F6 95 ED */	bl Matrix_translate
/* 804A2D18  C0 3B 02 2C */	lfs f1, 0x22c(r27)
/* 804A2D1C  38 60 00 01 */	li r3, 1
/* 804A2D20  C0 5B 02 30 */	lfs f2, 0x230(r27)
/* 804A2D24  C0 7B 02 34 */	lfs f3, 0x234(r27)
/* 804A2D28  4B F6 96 C5 */	bl Matrix_scale
/* 804A2D2C  A0 1B 02 28 */	lhz r0, 0x228(r27)
/* 804A2D30  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 804A2D34  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804A2D38  41 82 00 20 */	beq lbl_804A2D58
/* 804A2D3C  3C 80 80 A0 */	lis r4, hakushi_pal@ha /* 0x809FF3C0@ha */
/* 804A2D40  3C 60 80 A0 */	lis r3, hakushi_tex@ha /* 0x809FF3E0@ha */
/* 804A2D44  38 84 F3 C0 */	addi r4, r4, hakushi_pal@l /* 0x809FF3C0@l */
/* 804A2D48  38 03 F3 E0 */	addi r0, r3, hakushi_tex@l /* 0x809FF3E0@l */
/* 804A2D4C  7C 86 23 78 */	mr r6, r4
/* 804A2D50  7C 07 03 78 */	mr r7, r0
/* 804A2D54  48 00 00 2C */	b lbl_804A2D80
lbl_804A2D58:
/* 804A2D58  1C 98 24 40 */	mulli r4, r24, 0x2440
/* 804A2D5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A2D60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A2D64  1C 17 02 20 */	mulli r0, r23, 0x220
/* 804A2D68  7C 63 22 14 */	add r3, r3, r4
/* 804A2D6C  7F 03 02 14 */	add r24, r3, r0
/* 804A2D70  88 78 12 70 */	lbz r3, 0x1270(r24)
/* 804A2D74  4B F2 6E 49 */	bl mNW_PaletteIdx2Palette
/* 804A2D78  38 F8 12 80 */	addi r7, r24, 0x1280
/* 804A2D7C  7C 66 1B 78 */	mr r6, r3
lbl_804A2D80:
/* 804A2D80  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 804A2D84  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 804A2D88  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 804A2D8C  7F A3 EB 78 */	mr r3, r29
/* 804A2D90  90 1B 00 00 */	stw r0, 0(r27)
/* 804A2D94  38 A5 00 24 */	addi r5, r5, 0x24
/* 804A2D98  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 804A2D9C  90 DB 00 04 */	stw r6, 4(r27)
/* 804A2DA0  90 BB 00 08 */	stw r5, 8(r27)
/* 804A2DA4  90 FB 00 0C */	stw r7, 0xc(r27)
/* 804A2DA8  90 1B 00 10 */	stw r0, 0x10(r27)
/* 804A2DAC  4B F6 A6 29 */	bl _Matrix_to_Mtx_new
/* 804A2DB0  90 7B 00 14 */	stw r3, 0x14(r27)
/* 804A2DB4  3C 00 DE 00 */	lis r0, 0xde00
/* 804A2DB8  3C A0 80 69 */	lis r5, mdl_1055@ha /* 0x8068E7D8@ha */
/* 804A2DBC  3C 60 80 69 */	lis r3, aSIGN_shadow_data@ha /* 0x8068E784@ha */
/* 804A2DC0  90 1B 00 18 */	stw r0, 0x18(r27)
/* 804A2DC4  38 83 E7 84 */	addi r4, r3, aSIGN_shadow_data@l /* 0x8068E784@l */
/* 804A2DC8  38 A5 E7 D8 */	addi r5, r5, mdl_1055@l /* 0x8068E7D8@l */
/* 804A2DCC  7F 43 D3 78 */	mr r3, r26
/* 804A2DD0  93 FB 00 1C */	stw r31, 0x1c(r27)
/* 804A2DD4  3B 7B 00 20 */	addi r27, r27, 0x20
/* 804A2DD8  7F 66 DB 78 */	mr r6, r27
/* 804A2DDC  90 1B 00 00 */	stw r0, 0(r27)
/* 804A2DE0  3B 7B 00 08 */	addi r27, r27, 8
/* 804A2DE4  80 19 04 08 */	lwz r0, 0x408(r25)
/* 804A2DE8  54 00 10 3A */	slwi r0, r0, 2
/* 804A2DEC  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A2DF0  90 06 00 04 */	stw r0, 4(r6)
/* 804A2DF4  93 7D 02 D0 */	stw r27, 0x2d0(r29)
/* 804A2DF8  48 00 03 3D */	bl aSIGN_draw_shadow
/* 804A2DFC  4B F6 94 19 */	bl Matrix_pull
lbl_804A2E00:
/* 804A2E00  3B 9C 00 01 */	addi r28, r28, 1
/* 804A2E04  3B DE 00 2C */	addi r30, r30, 0x2c
/* 804A2E08  2C 1C 00 0A */	cmpwi r28, 0xa
/* 804A2E0C  41 80 FE 84 */	blt lbl_804A2C90
/* 804A2E10  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 804A2E14  3C 60 D5 02 */	lis r3, 0xd502
/* 804A2E18  38 00 00 00 */	li r0, 0
/* 804A2E1C  38 85 00 08 */	addi r4, r5, 8
/* 804A2E20  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 804A2E24  90 65 00 00 */	stw r3, 0(r5)
/* 804A2E28  90 05 00 04 */	stw r0, 4(r5)
/* 804A2E2C  39 61 00 50 */	addi r11, r1, 0x50
/* 804A2E30  4B BF 80 D9 */	bl func_8009AF08
/* 804A2E34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A2E38  7C 08 03 A6 */	mtlr r0
/* 804A2E3C  38 21 00 50 */	addi r1, r1, 0x50
/* 804A2E40  4E 80 00 20 */	blr 
