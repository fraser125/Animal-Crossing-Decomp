lbl_804A9150:
/* 804A9150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9154  7C 08 02 A6 */	mflr r0
/* 804A9158  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A915C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9160  4B BF 1D 69 */	bl func_8009AEC8
/* 804A9164  7C 7B 1B 78 */	mr r27, r3
/* 804A9168  80 63 01 EC */	lwz r3, 0x1ec(r3)
/* 804A916C  83 C4 00 00 */	lwz r30, 0(r4)
/* 804A9170  7C 9A 23 78 */	mr r26, r4
/* 804A9174  88 63 00 01 */	lbz r3, 1(r3)
/* 804A9178  3B FB 01 D4 */	addi r31, r27, 0x1d4
/* 804A917C  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 804A9180  54 63 30 32 */	slwi r3, r3, 6
/* 804A9184  7C 03 00 51 */	subf. r0, r3, r0
/* 804A9188  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 804A918C  7C 1D 03 78 */	mr r29, r0
/* 804A9190  41 82 00 B8 */	beq lbl_804A9248
/* 804A9194  80 1B 01 B8 */	lwz r0, 0x1b8(r27)
/* 804A9198  2C 00 00 01 */	cmpwi r0, 1
/* 804A919C  40 82 00 20 */	bne lbl_804A91BC
/* 804A91A0  38 7B 01 78 */	addi r3, r27, 0x178
/* 804A91A4  4B F6 30 B5 */	bl Matrix_put
/* 804A91A8  38 7B 00 28 */	addi r3, r27, 0x28
/* 804A91AC  4B F6 43 11 */	bl Matrix_Position_Zero
/* 804A91B0  38 00 00 00 */	li r0, 0
/* 804A91B4  90 1B 01 B8 */	stw r0, 0x1b8(r27)
/* 804A91B8  48 00 00 30 */	b lbl_804A91E8
lbl_804A91BC:
/* 804A91BC  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 804A91C0  38 60 00 00 */	li r3, 0
/* 804A91C4  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 804A91C8  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 804A91CC  4B F6 31 35 */	bl Matrix_translate
/* 804A91D0  3C 80 80 64 */	lis r4, lit_513@ha /* 0x80645DF0@ha */
/* 804A91D4  38 60 00 01 */	li r3, 1
/* 804A91D8  C0 24 5D F0 */	lfs f1, lit_513@l(r4)  /* 0x80645DF0@l */
/* 804A91DC  FC 40 08 90 */	fmr f2, f1
/* 804A91E0  FC 60 08 90 */	fmr f3, f1
/* 804A91E4  4B F6 32 09 */	bl Matrix_scale
lbl_804A91E8:
/* 804A91E8  7F C3 F3 78 */	mr r3, r30
/* 804A91EC  4B F3 BF BD */	bl _texture_z_light_fog_prim_npc
/* 804A91F0  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 804A91F4  38 60 00 01 */	li r3, 1
/* 804A91F8  C0 3B 00 5C */	lfs f1, 0x5c(r27)
/* 804A91FC  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 804A9200  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 804A9204  4B F6 31 E9 */	bl Matrix_scale
/* 804A9208  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A920C  7F 9B E3 78 */	mr r27, r28
/* 804A9210  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9214  7F C3 F3 78 */	mr r3, r30
/* 804A9218  90 1C 00 00 */	stw r0, 0(r28)
/* 804A921C  3B 9C 00 08 */	addi r28, r28, 8
/* 804A9220  4B F6 41 B5 */	bl _Matrix_to_Mtx_new
/* 804A9224  90 7B 00 04 */	stw r3, 4(r27)
/* 804A9228  7F 43 D3 78 */	mr r3, r26
/* 804A922C  7F E4 FB 78 */	mr r4, r31
/* 804A9230  7F A5 EB 78 */	mr r5, r29
/* 804A9234  93 9E 02 D0 */	stw r28, 0x2d0(r30)
/* 804A9238  38 C0 00 00 */	li r6, 0
/* 804A923C  38 E0 00 00 */	li r7, 0
/* 804A9240  39 00 00 00 */	li r8, 0
/* 804A9244  4B EC 84 F5 */	bl cKF_Si3_draw_R_SV
lbl_804A9248:
/* 804A9248  39 61 00 20 */	addi r11, r1, 0x20
/* 804A924C  4B BF 1C C9 */	bl func_8009AF14
/* 804A9250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9254  7C 08 03 A6 */	mtlr r0
/* 804A9258  38 21 00 20 */	addi r1, r1, 0x20
/* 804A925C  4E 80 00 20 */	blr 
