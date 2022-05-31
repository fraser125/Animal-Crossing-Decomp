lbl_805CD4B0:
/* 805CD4B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CD4B4  7C 08 02 A6 */	mflr r0
/* 805CD4B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CD4BC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805CD4C0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805CD4C4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805CD4C8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805CD4CC  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805CD4D0  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805CD4D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD4D8  4B AC D9 F1 */	bl func_8009AEC8
/* 805CD4DC  3C E0 80 65 */	lis r7, data_8064AFFC@ha /* 0x8064AFFC@ha */
/* 805CD4E0  FF E0 18 90 */	fmr f31, f3
/* 805CD4E4  C0 07 AF FC */	lfs f0, data_8064AFFC@l(r7)  /* 0x8064AFFC@l */
/* 805CD4E8  FF A0 08 90 */	fmr f29, f1
/* 805CD4EC  FF C0 10 90 */	fmr f30, f2
/* 805CD4F0  7C 7B 1B 78 */	mr r27, r3
/* 805CD4F4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805CD4F8  7C 9C 23 78 */	mr r28, r4
/* 805CD4FC  7C BD 2B 78 */	mr r29, r5
/* 805CD500  7C DE 33 78 */	mr r30, r6
/* 805CD504  41 80 01 28 */	blt lbl_805CD62C
/* 805CD508  3C 80 80 65 */	lis r4, lit_567@ha /* 0x8064B000@ha */
/* 805CD50C  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064B004@ha */
/* 805CD510  C0 24 B0 00 */	lfs f1, lit_567@l(r4)  /* 0x8064B000@l */
/* 805CD514  C0 63 B0 04 */	lfs f3, lit_568@l(r3)  /* 0x8064B004@l */
/* 805CD518  38 60 00 00 */	li r3, 0
/* 805CD51C  FC 40 08 90 */	fmr f2, f1
/* 805CD520  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805CD524  4B E3 EE C9 */	bl Matrix_scale
/* 805CD528  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064B008@ha */
/* 805CD52C  FC 20 E8 90 */	fmr f1, f29
/* 805CD530  C0 63 B0 08 */	lfs f3, lit_569@l(r3)  /* 0x8064B008@l */
/* 805CD534  FC 40 F0 90 */	fmr f2, f30
/* 805CD538  38 60 00 01 */	li r3, 1
/* 805CD53C  4B E3 ED C5 */	bl Matrix_translate
/* 805CD540  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064B004@ha */
/* 805CD544  FC 20 F8 90 */	fmr f1, f31
/* 805CD548  C0 63 B0 04 */	lfs f3, lit_568@l(r3)  /* 0x8064B004@l */
/* 805CD54C  FC 40 F8 90 */	fmr f2, f31
/* 805CD550  38 60 00 01 */	li r3, 1
/* 805CD554  4B E3 EE 99 */	bl Matrix_scale
/* 805CD558  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CD55C  7F FA FB 78 */	mr r26, r31
/* 805CD560  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CD564  7F 83 E3 78 */	mr r3, r28
/* 805CD568  90 1F 00 00 */	stw r0, 0(r31)
/* 805CD56C  3B FF 00 08 */	addi r31, r31, 8
/* 805CD570  4B E3 FE 65 */	bl _Matrix_to_Mtx_new
/* 805CD574  90 7A 00 04 */	stw r3, 4(r26)
/* 805CD578  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805CD57C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805CD580  7F FA FB 78 */	mr r26, r31
/* 805CD584  90 1F 00 00 */	stw r0, 0(r31)
/* 805CD588  7F 63 DB 78 */	mr r3, r27
/* 805CD58C  7F A4 EB 78 */	mr r4, r29
/* 805CD590  3B FF 00 08 */	addi r31, r31, 8
/* 805CD594  4B FF FD F9 */	bl mCO_get_texture_pat_idx
/* 805CD598  90 7A 00 04 */	stw r3, 4(r26)
/* 805CD59C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805CD5A0  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805CD5A4  7F 63 DB 78 */	mr r3, r27
/* 805CD5A8  90 1F 00 00 */	stw r0, 0(r31)
/* 805CD5AC  7F A4 EB 78 */	mr r4, r29
/* 805CD5B0  4B FF FE 85 */	bl mCO_get_pallet_no_pat_idx
/* 805CD5B4  4B DF C6 09 */	bl mNW_PaletteIdx2Palette
/* 805CD5B8  2C 1E 00 00 */	cmpwi r30, 0
/* 805CD5BC  90 7F 00 04 */	stw r3, 4(r31)
/* 805CD5C0  41 82 00 20 */	beq lbl_805CD5E0
/* 805CD5C4  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805CD5C8  38 00 00 50 */	li r0, 0x50
/* 805CD5CC  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805CD5D0  90 7F 00 08 */	stw r3, 8(r31)
/* 805CD5D4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805CD5D8  3B FF 00 10 */	addi r31, r31, 0x10
/* 805CD5DC  48 00 00 1C */	b lbl_805CD5F8
lbl_805CD5E0:
/* 805CD5E0  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805CD5E4  38 00 FF FF */	li r0, -1
/* 805CD5E8  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805CD5EC  90 7F 00 08 */	stw r3, 8(r31)
/* 805CD5F0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805CD5F4  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805CD5F8:
/* 805CD5F8  3C 80 DE 00 */	lis r4, 0xde00
/* 805CD5FC  3C 60 80 A4 */	lis r3, inv_md_base_model_before@ha /* 0x80A3CD00@ha */
/* 805CD600  90 9F 00 00 */	stw r4, 0(r31)
/* 805CD604  38 03 CD 00 */	addi r0, r3, inv_md_base_model_before@l /* 0x80A3CD00@l */
/* 805CD608  3C 60 80 A4 */	lis r3, inv_md_base_model_b@ha /* 0x80A3CD58@ha */
/* 805CD60C  90 1F 00 04 */	stw r0, 4(r31)
/* 805CD610  3B FF 00 08 */	addi r31, r31, 8
/* 805CD614  7F E5 FB 78 */	mr r5, r31
/* 805CD618  38 03 CD 58 */	addi r0, r3, inv_md_base_model_b@l /* 0x80A3CD58@l */
/* 805CD61C  90 9F 00 00 */	stw r4, 0(r31)
/* 805CD620  3B FF 00 08 */	addi r31, r31, 8
/* 805CD624  90 05 00 04 */	stw r0, 4(r5)
/* 805CD628  93 FC 02 D0 */	stw r31, 0x2d0(r28)
lbl_805CD62C:
/* 805CD62C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805CD630  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805CD634  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805CD638  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805CD63C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805CD640  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD644  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805CD648  4B AC D8 CD */	bl func_8009AF14
/* 805CD64C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CD650  7C 08 03 A6 */	mtlr r0
/* 805CD654  38 21 00 50 */	addi r1, r1, 0x50
/* 805CD658  4E 80 00 20 */	blr 
