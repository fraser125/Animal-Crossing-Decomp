lbl_804A2E44:
/* 804A2E44  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A2E48  7C 08 02 A6 */	mflr r0
/* 804A2E4C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A2E50  39 61 00 60 */	addi r11, r1, 0x60
/* 804A2E54  4B BF 80 4D */	bl func_8009AEA0
/* 804A2E58  83 84 00 00 */	lwz r28, 0(r4)
/* 804A2E5C  7C 9F 23 78 */	mr r31, r4
/* 804A2E60  7C 7B 1B 78 */	mr r27, r3
/* 804A2E64  4B F6 94 25 */	bl get_Matrix_now
/* 804A2E68  7C 7D 1B 78 */	mr r29, r3
/* 804A2E6C  7F 63 DB 78 */	mr r3, r27
/* 804A2E70  7F E4 FB 78 */	mr r4, r31
/* 804A2E74  4B FF FD C9 */	bl aSIGN_single_all_draw
/* 804A2E78  7F 83 E3 78 */	mr r3, r28
/* 804A2E7C  4B F4 23 2D */	bl _texture_z_light_fog_prim_npc
/* 804A2E80  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 804A2E84  3C 80 D5 02 */	lis r4, 0xD502 /* 0xD5020001@ha */
/* 804A2E88  3C 60 80 A0 */	lis r3, write_model@ha /* 0x809FFCE0@ha */
/* 804A2E8C  38 00 00 00 */	li r0, 0
/* 804A2E90  38 A6 00 08 */	addi r5, r6, 8
/* 804A2E94  38 84 00 01 */	addi r4, r4, 0x0001 /* 0xD5020001@l */
/* 804A2E98  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 804A2E9C  3A BB 01 78 */	addi r21, r27, 0x178
/* 804A2EA0  3B C3 FC E0 */	addi r30, r3, write_model@l /* 0x809FFCE0@l */
/* 804A2EA4  3A E0 00 00 */	li r23, 0
/* 804A2EA8  90 86 00 00 */	stw r4, 0(r6)
/* 804A2EAC  90 06 00 04 */	stw r0, 4(r6)
lbl_804A2EB0:
/* 804A2EB0  3A C0 00 00 */	li r22, 0
lbl_804A2EB4:
/* 804A2EB4  80 75 00 04 */	lwz r3, 4(r21)
/* 804A2EB8  80 95 00 00 */	lwz r4, 0(r21)
/* 804A2EBC  4B F0 42 99 */	bl mFI_BkNumtoUtFGTop
/* 804A2EC0  3B 20 00 00 */	li r25, 0
/* 804A2EC4  7C 7A 1B 78 */	mr r26, r3
/* 804A2EC8  3A 20 00 00 */	li r17, 0
lbl_804A2ECC:
/* 804A2ECC  38 11 00 08 */	addi r0, r17, 8
/* 804A2ED0  7E 95 02 2E */	lhzx r20, r21, r0
/* 804A2ED4  28 14 00 00 */	cmplwi r20, 0
/* 804A2ED8  40 82 00 0C */	bne lbl_804A2EE4
/* 804A2EDC  3B 5A 00 20 */	addi r26, r26, 0x20
/* 804A2EE0  48 00 01 A0 */	b lbl_804A3080
lbl_804A2EE4:
/* 804A2EE4  3B 00 00 00 */	li r24, 0
/* 804A2EE8  3A 60 00 01 */	li r19, 1
lbl_804A2EEC:
/* 804A2EEC  56 60 04 3E */	clrlwi r0, r19, 0x10
/* 804A2EF0  7E 80 00 39 */	and. r0, r20, r0
/* 804A2EF4  41 82 01 78 */	beq lbl_804A306C
/* 804A2EF8  A2 1A 00 00 */	lhz r16, 0(r26)
/* 804A2EFC  56 00 A7 3F */	rlwinm. r0, r16, 0x14, 0x1c, 0x1f
/* 804A2F00  40 82 01 6C */	bne lbl_804A306C
/* 804A2F04  56 00 C7 3E */	rlwinm r0, r16, 0x18, 0x1c, 0x1f
/* 804A2F08  2C 00 00 09 */	cmpwi r0, 9
/* 804A2F0C  40 82 01 60 */	bne lbl_804A306C
/* 804A2F10  80 95 00 04 */	lwz r4, 4(r21)
/* 804A2F14  7F 06 C3 78 */	mr r6, r24
/* 804A2F18  80 B5 00 00 */	lwz r5, 0(r21)
/* 804A2F1C  7F 27 CB 78 */	mr r7, r25
/* 804A2F20  38 61 00 14 */	addi r3, r1, 0x14
/* 804A2F24  4B F0 2D D1 */	bl mFI_BkandUtNum2CenterWpos
/* 804A2F28  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804A2F2C  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A2F30  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804A2F34  38 83 5C 34 */	addi r4, r3, lit_484@l /* 0x80645C34@l */
/* 804A2F38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804A2F3C  38 61 00 08 */	addi r3, r1, 8
/* 804A2F40  90 C1 00 08 */	stw r6, 8(r1)
/* 804A2F44  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A2F48  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804A2F4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A2F50  4B EE CA 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A2F54  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804A2F58  56 00 DF FF */	rlwinm. r0, r16, 0x1b, 0x1f, 0x1f
/* 804A2F5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A2F60  56 00 EF BE */	rlwinm r0, r16, 0x1d, 0x1e, 0x1f
/* 804A2F64  82 5C 02 D0 */	lwz r18, 0x2d0(r28)
/* 804A2F68  56 05 07 7E */	clrlwi r5, r16, 0x1d
/* 804A2F6C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 804A2F70  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A2F74  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 804A2F78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A2F7C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 804A2F80  41 82 00 20 */	beq lbl_804A2FA0
/* 804A2F84  3C 80 80 A0 */	lis r4, hakushi_pal@ha /* 0x809FF3C0@ha */
/* 804A2F88  3C 60 80 A0 */	lis r3, hakushi_tex@ha /* 0x809FF3E0@ha */
/* 804A2F8C  38 84 F3 C0 */	addi r4, r4, hakushi_pal@l /* 0x809FF3C0@l */
/* 804A2F90  38 03 F3 E0 */	addi r0, r3, hakushi_tex@l /* 0x809FF3E0@l */
/* 804A2F94  7C 86 23 78 */	mr r6, r4
/* 804A2F98  7C 07 03 78 */	mr r7, r0
/* 804A2F9C  48 00 00 2C */	b lbl_804A2FC8
lbl_804A2FA0:
/* 804A2FA0  1C 80 24 40 */	mulli r4, r0, 0x2440
/* 804A2FA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A2FA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A2FAC  1C 05 02 20 */	mulli r0, r5, 0x220
/* 804A2FB0  7C 63 22 14 */	add r3, r3, r4
/* 804A2FB4  7E 03 02 14 */	add r16, r3, r0
/* 804A2FB8  88 70 12 70 */	lbz r3, 0x1270(r16)
/* 804A2FBC  4B F2 6C 01 */	bl mNW_PaletteIdx2Palette
/* 804A2FC0  38 F0 12 80 */	addi r7, r16, 0x1280
/* 804A2FC4  7C 66 1B 78 */	mr r6, r3
lbl_804A2FC8:
/* 804A2FC8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 804A2FCC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 804A2FD0  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 804A2FD4  7F 83 E3 78 */	mr r3, r28
/* 804A2FD8  90 12 00 00 */	stw r0, 0(r18)
/* 804A2FDC  38 A5 00 24 */	addi r5, r5, 0x24
/* 804A2FE0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 804A2FE4  90 D2 00 04 */	stw r6, 4(r18)
/* 804A2FE8  90 B2 00 08 */	stw r5, 8(r18)
/* 804A2FEC  90 F2 00 0C */	stw r7, 0xc(r18)
/* 804A2FF0  90 12 00 10 */	stw r0, 0x10(r18)
/* 804A2FF4  4B F6 A3 E1 */	bl _Matrix_to_Mtx_new
/* 804A2FF8  90 72 00 14 */	stw r3, 0x14(r18)
/* 804A2FFC  3C 00 DE 00 */	lis r0, 0xde00
/* 804A3000  3C 80 80 69 */	lis r4, mdl_1140@ha /* 0x8068E7E0@ha */
/* 804A3004  3C 60 80 64 */	lis r3, lit_485@ha /* 0x80645C38@ha */
/* 804A3008  90 12 00 18 */	stw r0, 0x18(r18)
/* 804A300C  38 A3 5C 38 */	addi r5, r3, lit_485@l /* 0x80645C38@l */
/* 804A3010  38 C4 E7 E0 */	addi r6, r4, mdl_1140@l /* 0x8068E7E0@l */
/* 804A3014  3C 60 80 69 */	lis r3, aSIGN_shadow_data@ha /* 0x8068E784@ha */
/* 804A3018  93 D2 00 1C */	stw r30, 0x1c(r18)
/* 804A301C  3A 52 00 20 */	addi r18, r18, 0x20
/* 804A3020  38 83 E7 84 */	addi r4, r3, aSIGN_shadow_data@l /* 0x8068E784@l */
/* 804A3024  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A3028  90 12 00 00 */	stw r0, 0(r18)
/* 804A302C  7E 47 93 78 */	mr r7, r18
/* 804A3030  3A 52 00 08 */	addi r18, r18, 8
/* 804A3034  7F E3 FB 78 */	mr r3, r31
/* 804A3038  80 1B 04 08 */	lwz r0, 0x408(r27)
/* 804A303C  54 00 10 3A */	slwi r0, r0, 2
/* 804A3040  7C 06 00 2E */	lwzx r0, r6, r0
/* 804A3044  90 07 00 04 */	stw r0, 4(r7)
/* 804A3048  92 5C 02 D0 */	stw r18, 0x2d0(r28)
/* 804A304C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A3050  D0 3D 00 30 */	stfs f1, 0x30(r29)
/* 804A3054  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804A3058  D0 3D 00 34 */	stfs f1, 0x34(r29)
/* 804A305C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804A3060  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A3064  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 804A3068  48 00 00 CD */	bl aSIGN_draw_shadow
lbl_804A306C:
/* 804A306C  3B 18 00 01 */	addi r24, r24, 1
/* 804A3070  56 73 0C 3C */	rlwinm r19, r19, 1, 0x10, 0x1e
/* 804A3074  2C 18 00 10 */	cmpwi r24, 0x10
/* 804A3078  3B 5A 00 02 */	addi r26, r26, 2
/* 804A307C  41 80 FE 70 */	blt lbl_804A2EEC
lbl_804A3080:
/* 804A3080  3B 39 00 01 */	addi r25, r25, 1
/* 804A3084  3A 31 00 02 */	addi r17, r17, 2
/* 804A3088  2C 19 00 10 */	cmpwi r25, 0x10
/* 804A308C  41 80 FE 40 */	blt lbl_804A2ECC
/* 804A3090  3A D6 00 01 */	addi r22, r22, 1
/* 804A3094  3A B5 00 28 */	addi r21, r21, 0x28
/* 804A3098  2C 16 00 02 */	cmpwi r22, 2
/* 804A309C  41 80 FE 18 */	blt lbl_804A2EB4
/* 804A30A0  3A F7 00 01 */	addi r23, r23, 1
/* 804A30A4  2C 17 00 02 */	cmpwi r23, 2
/* 804A30A8  41 80 FE 08 */	blt lbl_804A2EB0
/* 804A30AC  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 804A30B0  3C 60 D5 02 */	lis r3, 0xd502
/* 804A30B4  38 00 00 00 */	li r0, 0
/* 804A30B8  38 85 00 08 */	addi r4, r5, 8
/* 804A30BC  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 804A30C0  90 65 00 00 */	stw r3, 0(r5)
/* 804A30C4  90 05 00 04 */	stw r0, 4(r5)
/* 804A30C8  39 61 00 60 */	addi r11, r1, 0x60
/* 804A30CC  4B BF 7E 21 */	bl func_8009AEEC
/* 804A30D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A30D4  7C 08 03 A6 */	mtlr r0
/* 804A30D8  38 21 00 60 */	addi r1, r1, 0x60
/* 804A30DC  4E 80 00 20 */	blr 
