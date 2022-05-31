lbl_8063A940:
/* 8063A940  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063A944  7C 08 02 A6 */	mflr r0
/* 8063A948  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063A94C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063A950  4B A6 05 79 */	bl func_8009AEC8
/* 8063A954  7C BC 2B 78 */	mr r28, r5
/* 8063A958  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063A95C  83 A5 00 00 */	lwz r29, 0(r5)
/* 8063A960  7C 7A 1B 78 */	mr r26, r3
/* 8063A964  80 65 00 A0 */	lwz r3, 0xa0(r5)
/* 8063A968  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063A96C  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 8063A970  3B FA 01 34 */	addi r31, r26, 0x134
/* 8063A974  54 64 07 FE */	clrlwi r4, r3, 0x1f
/* 8063A978  38 7B 00 08 */	addi r3, r27, 8
/* 8063A97C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8063A980  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063A984  90 1B 00 00 */	stw r0, 0(r27)
/* 8063A988  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063A98C  80 65 00 00 */	lwz r3, 0(r5)
/* 8063A990  7F DA F2 14 */	add r30, r26, r30
/* 8063A994  4B DD 2A 41 */	bl _Matrix_to_Mtx_new
/* 8063A998  90 7B 00 04 */	stw r3, 4(r27)
/* 8063A99C  88 1A 01 2C */	lbz r0, 0x12c(r26)
/* 8063A9A0  28 00 00 00 */	cmplwi r0, 0
/* 8063A9A4  41 82 00 38 */	beq lbl_8063A9DC
/* 8063A9A8  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8063A9AC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063A9B0  80 DC 00 A0 */	lwz r6, 0xa0(r28)
/* 8063A9B4  3C 60 80 6E */	lis r3, anime_table@ha /* 0x806DC95C@ha */
/* 8063A9B8  38 05 00 08 */	addi r0, r5, 8
/* 8063A9BC  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063A9C0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8063A9C4  54 C0 17 3A */	rlwinm r0, r6, 2, 0x1c, 0x1d
/* 8063A9C8  38 63 C9 5C */	addi r3, r3, anime_table@l /* 0x806DC95C@l */
/* 8063A9CC  90 85 00 00 */	stw r4, 0(r5)
/* 8063A9D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063A9D4  90 05 00 04 */	stw r0, 4(r5)
/* 8063A9D8  48 00 00 28 */	b lbl_8063AA00
lbl_8063A9DC:
/* 8063A9DC  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8063A9E0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063A9E4  3C 60 81 0A */	lis r3, int_sum_roboconpo_face1_TA_tex_txt@ha /* 0x810A4560@ha */
/* 8063A9E8  38 05 00 08 */	addi r0, r5, 8
/* 8063A9EC  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063A9F0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8063A9F4  38 03 45 60 */	addi r0, r3, int_sum_roboconpo_face1_TA_tex_txt@l /* 0x810A4560@l */
/* 8063A9F8  90 85 00 00 */	stw r4, 0(r5)
/* 8063A9FC  90 05 00 04 */	stw r0, 4(r5)
lbl_8063AA00:
/* 8063AA00  7F 83 E3 78 */	mr r3, r28
/* 8063AA04  7F E4 FB 78 */	mr r4, r31
/* 8063AA08  7F C5 F3 78 */	mr r5, r30
/* 8063AA0C  38 C0 00 00 */	li r6, 0
/* 8063AA10  38 E0 00 00 */	li r7, 0
/* 8063AA14  39 00 00 00 */	li r8, 0
/* 8063AA18  4B D3 6D 21 */	bl cKF_Si3_draw_R_SV
/* 8063AA1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063AA20  4B A6 04 F5 */	bl func_8009AF14
/* 8063AA24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063AA28  7C 08 03 A6 */	mtlr r0
/* 8063AA2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063AA30  4E 80 00 20 */	blr 
