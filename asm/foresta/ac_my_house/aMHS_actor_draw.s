lbl_805B6108:
/* 805B6108  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B610C  7C 08 02 A6 */	mflr r0
/* 805B6110  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B6114  39 61 00 30 */	addi r11, r1, 0x30
/* 805B6118  4B AE 4D A9 */	bl func_8009AEC0
/* 805B611C  7C 78 1B 78 */	mr r24, r3
/* 805B6120  80 63 02 B4 */	lwz r3, 0x2b4(r3)
/* 805B6124  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B6128  7C 99 23 78 */	mr r25, r4
/* 805B612C  1C 03 26 B0 */	mulli r0, r3, 0x26b0
/* 805B6130  83 D9 00 00 */	lwz r30, 0(r25)
/* 805B6134  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805B6138  3B B8 01 78 */	addi r29, r24, 0x178
/* 805B613C  3C 85 00 01 */	addis r4, r5, 1
/* 805B6140  7C 84 02 14 */	add r4, r4, r0
/* 805B6144  8B 64 9D 17 */	lbz r27, -0x62e9(r4)
/* 805B6148  4B DF D4 CD */	bl mHS_get_pl_no_detail
/* 805B614C  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 805B6150  7C 7F 1B 78 */	mr r31, r3
/* 805B6154  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805B6158  88 64 00 01 */	lbz r3, 1(r4)
/* 805B615C  54 63 30 32 */	slwi r3, r3, 6
/* 805B6160  7C 03 00 51 */	subf. r0, r3, r0
/* 805B6164  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805B6168  7C 1C 03 78 */	mr r28, r0
/* 805B616C  41 82 01 90 */	beq lbl_805B62FC
/* 805B6170  7F 03 C3 78 */	mr r3, r24
/* 805B6174  7F 24 CB 78 */	mr r4, r25
/* 805B6178  4B FF FE A9 */	bl aMHS_actor_draw_ta_set
/* 805B617C  7F C3 F3 78 */	mr r3, r30
/* 805B6180  4B E2 EF 89 */	bl _texture_z_light_fog_prim
/* 805B6184  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B6188  83 5E 02 D0 */	lwz r26, 0x2d0(r30)
/* 805B618C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B6190  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B6194  90 1A 00 00 */	stw r0, 0(r26)
/* 805B6198  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B619C  3C 63 00 02 */	addis r3, r3, 2
/* 805B61A0  80 63 60 98 */	lwz r3, 0x6098(r3)
/* 805B61A4  80 18 02 BC */	lwz r0, 0x2bc(r24)
/* 805B61A8  81 83 00 A4 */	lwz r12, 0xa4(r3)
/* 805B61AC  7C 03 07 34 */	extsh r3, r0
/* 805B61B0  7D 89 03 A6 */	mtctr r12
/* 805B61B4  4E 80 04 21 */	bctrl 
/* 805B61B8  2C 1B 00 FF */	cmpwi r27, 0xff
/* 805B61BC  90 7A 00 04 */	stw r3, 4(r26)
/* 805B61C0  41 82 00 0C */	beq lbl_805B61CC
/* 805B61C4  2C 1F FF FF */	cmpwi r31, -1
/* 805B61C8  40 82 00 38 */	bne lbl_805B6200
lbl_805B61CC:
/* 805B61CC  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060024@ha */
/* 805B61D0  3C 80 80 BB */	lis r4, obj_myhome_mark_tex_txt@ha /* 0x80BAAF20@ha */
/* 805B61D4  38 06 00 24 */	addi r0, r6, 0x0024 /* 0xDB060024@l */
/* 805B61D8  3C 60 80 BB */	lis r3, data_80BAA700@ha /* 0x80BAA700@ha */
/* 805B61DC  90 1A 00 08 */	stw r0, 8(r26)
/* 805B61E0  38 A4 AF 20 */	addi r5, r4, obj_myhome_mark_tex_txt@l /* 0x80BAAF20@l */
/* 805B61E4  38 86 00 28 */	addi r4, r6, 0x28
/* 805B61E8  38 03 A7 00 */	addi r0, r3, data_80BAA700@l /* 0x80BAA700@l */
/* 805B61EC  90 BA 00 0C */	stw r5, 0xc(r26)
/* 805B61F0  90 9A 00 10 */	stw r4, 0x10(r26)
/* 805B61F4  90 1A 00 14 */	stw r0, 0x14(r26)
/* 805B61F8  3B 5A 00 18 */	addi r26, r26, 0x18
/* 805B61FC  48 00 00 5C */	b lbl_805B6258
lbl_805B6200:
/* 805B6200  57 60 07 7E */	clrlwi r0, r27, 0x1d
/* 805B6204  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B6208  1F FF 24 40 */	mulli r31, r31, 0x2440
/* 805B620C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B6210  1F 60 02 20 */	mulli r27, r0, 0x220
/* 805B6214  7C 03 FA 14 */	add r0, r3, r31
/* 805B6218  7C 60 DA 14 */	add r3, r0, r27
/* 805B621C  88 63 12 70 */	lbz r3, 0x1270(r3)
/* 805B6220  4B E1 39 9D */	bl mNW_PaletteIdx2Palette
/* 805B6224  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B6228  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 805B622C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B6230  38 C5 00 24 */	addi r6, r5, 0x0024 /* 0xDB060024@l */
/* 805B6234  38 05 00 28 */	addi r0, r5, 0x28
/* 805B6238  7C 84 FA 14 */	add r4, r4, r31
/* 805B623C  90 DA 00 08 */	stw r6, 8(r26)
/* 805B6240  7C 84 DA 14 */	add r4, r4, r27
/* 805B6244  38 84 12 80 */	addi r4, r4, 0x1280
/* 805B6248  90 9A 00 0C */	stw r4, 0xc(r26)
/* 805B624C  90 1A 00 10 */	stw r0, 0x10(r26)
/* 805B6250  90 7A 00 14 */	stw r3, 0x14(r26)
/* 805B6254  3B 5A 00 18 */	addi r26, r26, 0x18
lbl_805B6258:
/* 805B6258  3C 80 80 5B */	lis r4, func_805B5C54@ha /* 0x805B5C54@ha */
/* 805B625C  3C 60 80 5B */	lis r3, aMHS_actor_draw_after@ha /* 0x805B5EB0@ha */
/* 805B6260  38 C4 5C 54 */	addi r6, r4, func_805B5C54@l /* 0x805B5C54@l */
/* 805B6264  93 5E 02 D0 */	stw r26, 0x2d0(r30)
/* 805B6268  38 E3 5E B0 */	addi r7, r3, aMHS_actor_draw_after@l /* 0x805B5EB0@l */
/* 805B626C  7F 23 CB 78 */	mr r3, r25
/* 805B6270  7F A4 EB 78 */	mr r4, r29
/* 805B6274  7F 85 E3 78 */	mr r5, r28
/* 805B6278  7F 08 C3 78 */	mr r8, r24
/* 805B627C  4B DB B4 BD */	bl cKF_Si3_draw_R_SV
/* 805B6280  80 18 02 B8 */	lwz r0, 0x2b8(r24)
/* 805B6284  3C 60 80 6C */	lis r3, shadow_data@ha /* 0x806C6000@ha */
/* 805B6288  38 63 60 00 */	addi r3, r3, shadow_data@l /* 0x806C6000@l */
/* 805B628C  C0 38 00 28 */	lfs f1, 0x28(r24)
/* 805B6290  54 00 10 3A */	slwi r0, r0, 2
/* 805B6294  C0 58 00 2C */	lfs f2, 0x2c(r24)
/* 805B6298  7F 43 00 2E */	lwzx r26, r3, r0
/* 805B629C  38 60 00 00 */	li r3, 0
/* 805B62A0  C0 78 00 30 */	lfs f3, 0x30(r24)
/* 805B62A4  4B E5 60 5D */	bl Matrix_translate
/* 805B62A8  3C 80 80 65 */	lis r4, lit_943@ha /* 0x8064A9AC@ha */
/* 805B62AC  38 60 00 01 */	li r3, 1
/* 805B62B0  C0 24 A9 AC */	lfs f1, lit_943@l(r4)  /* 0x8064A9AC@l */
/* 805B62B4  FC 40 08 90 */	fmr f2, f1
/* 805B62B8  FC 60 08 90 */	fmr f3, f1
/* 805B62BC  4B E5 61 31 */	bl Matrix_scale
/* 805B62C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B62C4  80 18 02 B4 */	lwz r0, 0x2b4(r24)
/* 805B62C8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B62CC  38 A0 00 00 */	li r5, 0
/* 805B62D0  3C 84 00 02 */	addis r4, r4, 2
/* 805B62D4  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 805B62D8  80 C4 60 80 */	lwz r6, 0x6080(r4)
/* 805B62DC  7F 23 CB 78 */	mr r3, r25
/* 805B62E0  7C 9A 00 2E */	lwzx r4, r26, r0
/* 805B62E4  81 86 00 04 */	lwz r12, 4(r6)
/* 805B62E8  7D 89 03 A6 */	mtctr r12
/* 805B62EC  4E 80 04 21 */	bctrl 
/* 805B62F0  7F 03 C3 78 */	mr r3, r24
/* 805B62F4  7F 24 CB 78 */	mr r4, r25
/* 805B62F8  4B FF FD A9 */	bl aMHS_actor_draw_ta_clr
lbl_805B62FC:
/* 805B62FC  39 61 00 30 */	addi r11, r1, 0x30
/* 805B6300  4B AE 4C 0D */	bl func_8009AF0C
/* 805B6304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B6308  7C 08 03 A6 */	mtlr r0
/* 805B630C  38 21 00 30 */	addi r1, r1, 0x30
/* 805B6310  4E 80 00 20 */	blr 
