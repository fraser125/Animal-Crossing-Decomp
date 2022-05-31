lbl_80633D64:
/* 80633D64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80633D68  7C 08 02 A6 */	mflr r0
/* 80633D6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80633D70  39 61 00 30 */	addi r11, r1, 0x30
/* 80633D74  4B A6 71 51 */	bl func_8009AEC4
/* 80633D78  7C BD 2B 78 */	mr r29, r5
/* 80633D7C  7C 7C 1B 78 */	mr r28, r3
/* 80633D80  80 A5 00 A0 */	lwz r5, 0xa0(r5)
/* 80633D84  3B FC 01 34 */	addi r31, r28, 0x134
/* 80633D88  A8 C3 00 02 */	lha r6, 2(r3)
/* 80633D8C  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 80633D90  1C 60 03 00 */	mulli r3, r0, 0x300
/* 80633D94  2C 06 00 01 */	cmpwi r6, 1
/* 80633D98  3B C3 02 10 */	addi r30, r3, 0x210
/* 80633D9C  7F DC F2 14 */	add r30, r28, r30
/* 80633DA0  40 82 00 08 */	bne lbl_80633DA8
/* 80633DA4  80 BD 20 90 */	lwz r5, 0x2090(r29)
lbl_80633DA8:
/* 80633DA8  2C 06 00 01 */	cmpwi r6, 1
/* 80633DAC  40 82 00 4C */	bne lbl_80633DF8
/* 80633DB0  A8 1C 08 2C */	lha r0, 0x82c(r28)
/* 80633DB4  38 60 00 00 */	li r3, 0
/* 80633DB8  2C 00 00 01 */	cmpwi r0, 1
/* 80633DBC  41 82 00 0C */	beq lbl_80633DC8
/* 80633DC0  2C 06 00 01 */	cmpwi r6, 1
/* 80633DC4  41 82 00 08 */	beq lbl_80633DCC
lbl_80633DC8:
/* 80633DC8  38 60 00 01 */	li r3, 1
lbl_80633DCC:
/* 80633DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80633DD0  41 82 00 18 */	beq lbl_80633DE8
/* 80633DD4  3C 60 80 6D */	lis r3, fNNB_texture_table@ha /* 0x806D7D98@ha */
/* 80633DD8  54 A0 17 3A */	rlwinm r0, r5, 2, 0x1c, 0x1d
/* 80633DDC  38 63 7D 98 */	addi r3, r3, fNNB_texture_table@l /* 0x806D7D98@l */
/* 80633DE0  7F 43 00 2E */	lwzx r26, r3, r0
/* 80633DE4  48 00 00 A0 */	b lbl_80633E84
lbl_80633DE8:
/* 80633DE8  3C 60 80 F6 */	lis r3, int_nog_nabe_fire1_TA_tex_txt@ha /* 0x80F5A1C0@ha */
/* 80633DEC  38 03 A1 C0 */	addi r0, r3, int_nog_nabe_fire1_TA_tex_txt@l /* 0x80F5A1C0@l */
/* 80633DF0  7C 1A 03 78 */	mr r26, r0
/* 80633DF4  48 00 00 90 */	b lbl_80633E84
lbl_80633DF8:
/* 80633DF8  3C 60 80 F6 */	lis r3, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633DFC  3C 00 43 30 */	lis r0, 0x4330
/* 80633E00  38 83 AF C0 */	addi r4, r3, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633E04  90 01 00 08 */	stw r0, 8(r1)
/* 80633E08  A8 84 00 12 */	lha r4, 0x12(r4)
/* 80633E0C  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 80633E10  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 80633E14  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80633E18  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80633E1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80633E20  C8 01 00 08 */	lfd f0, 8(r1)
/* 80633E24  EC 00 08 28 */	fsubs f0, f0, f1
/* 80633E28  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80633E2C  40 82 00 4C */	bne lbl_80633E78
/* 80633E30  A8 1C 08 2C */	lha r0, 0x82c(r28)
/* 80633E34  38 60 00 00 */	li r3, 0
/* 80633E38  2C 00 00 01 */	cmpwi r0, 1
/* 80633E3C  41 82 00 0C */	beq lbl_80633E48
/* 80633E40  2C 06 00 01 */	cmpwi r6, 1
/* 80633E44  41 82 00 08 */	beq lbl_80633E4C
lbl_80633E48:
/* 80633E48  38 60 00 01 */	li r3, 1
lbl_80633E4C:
/* 80633E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80633E50  41 82 00 18 */	beq lbl_80633E68
/* 80633E54  3C 60 80 6D */	lis r3, fNNB_texture_table@ha /* 0x806D7D98@ha */
/* 80633E58  54 A0 17 3A */	rlwinm r0, r5, 2, 0x1c, 0x1d
/* 80633E5C  38 63 7D 98 */	addi r3, r3, fNNB_texture_table@l /* 0x806D7D98@l */
/* 80633E60  7F 43 00 2E */	lwzx r26, r3, r0
/* 80633E64  48 00 00 20 */	b lbl_80633E84
lbl_80633E68:
/* 80633E68  3C 60 80 F6 */	lis r3, int_nog_nabe_fire1_TA_tex_txt@ha /* 0x80F5A1C0@ha */
/* 80633E6C  38 03 A1 C0 */	addi r0, r3, int_nog_nabe_fire1_TA_tex_txt@l /* 0x80F5A1C0@l */
/* 80633E70  7C 1A 03 78 */	mr r26, r0
/* 80633E74  48 00 00 10 */	b lbl_80633E84
lbl_80633E78:
/* 80633E78  3C 60 80 F6 */	lis r3, int_nog_nabe_fire1_TA_tex_txt@ha /* 0x80F5A1C0@ha */
/* 80633E7C  38 03 A1 C0 */	addi r0, r3, int_nog_nabe_fire1_TA_tex_txt@l /* 0x80F5A1C0@l */
/* 80633E80  7C 1A 03 78 */	mr r26, r0
lbl_80633E84:
/* 80633E84  83 3D 00 00 */	lwz r25, 0(r29)
/* 80633E88  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80633E8C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80633E90  83 79 02 D0 */	lwz r27, 0x2d0(r25)
/* 80633E94  38 7B 00 08 */	addi r3, r27, 8
/* 80633E98  90 79 02 D0 */	stw r3, 0x2d0(r25)
/* 80633E9C  90 1B 00 00 */	stw r0, 0(r27)
/* 80633EA0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80633EA4  4B DD 95 31 */	bl _Matrix_to_Mtx_new
/* 80633EA8  90 7B 00 04 */	stw r3, 4(r27)
/* 80633EAC  3C 80 80 63 */	lis r4, fNNB_DrawBefore@ha /* 0x80633CCC@ha */
/* 80633EB0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80633EB4  3C 60 80 63 */	lis r3, fNNB_DrawAfter@ha /* 0x80633CE4@ha */
/* 80633EB8  81 39 02 E0 */	lwz r9, 0x2e0(r25)
/* 80633EBC  38 C4 3C CC */	addi r6, r4, fNNB_DrawBefore@l /* 0x80633CCC@l */
/* 80633EC0  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 80633EC4  38 E3 3C E4 */	addi r7, r3, fNNB_DrawAfter@l /* 0x80633CE4@l */
/* 80633EC8  38 89 00 08 */	addi r4, r9, 8
/* 80633ECC  7F A3 EB 78 */	mr r3, r29
/* 80633ED0  90 99 02 E0 */	stw r4, 0x2e0(r25)
/* 80633ED4  7F E4 FB 78 */	mr r4, r31
/* 80633ED8  7F C5 F3 78 */	mr r5, r30
/* 80633EDC  7F 88 E3 78 */	mr r8, r28
/* 80633EE0  90 09 00 00 */	stw r0, 0(r9)
/* 80633EE4  93 49 00 04 */	stw r26, 4(r9)
/* 80633EE8  4B D3 D8 51 */	bl cKF_Si3_draw_R_SV
/* 80633EEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80633EF0  4B A6 70 21 */	bl func_8009AF10
/* 80633EF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80633EF8  7C 08 03 A6 */	mtlr r0
/* 80633EFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80633F00  4E 80 00 20 */	blr 
