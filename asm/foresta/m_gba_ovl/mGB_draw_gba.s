lbl_805DC4F4:
/* 805DC4F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805DC4F8  7C 08 02 A6 */	mflr r0
/* 805DC4FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805DC500  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805DC504  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805DC508  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805DC50C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805DC510  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805DC514  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805DC518  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC51C  4B AB E9 AD */	bl func_8009AEC8
/* 805DC520  3C E0 80 65 */	lis r7, data_8064B27C@ha /* 0x8064B27C@ha */
/* 805DC524  FF E0 18 90 */	fmr f31, f3
/* 805DC528  C0 07 B2 7C */	lfs f0, data_8064B27C@l(r7)  /* 0x8064B27C@l */
/* 805DC52C  FF A0 08 90 */	fmr f29, f1
/* 805DC530  FF C0 10 90 */	fmr f30, f2
/* 805DC534  7C 7B 1B 78 */	mr r27, r3
/* 805DC538  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805DC53C  7C 9C 23 78 */	mr r28, r4
/* 805DC540  7C BD 2B 78 */	mr r29, r5
/* 805DC544  7C DE 33 78 */	mr r30, r6
/* 805DC548  41 80 01 24 */	blt lbl_805DC66C
/* 805DC54C  3C 80 80 65 */	lis r4, lit_519@ha /* 0x8064B280@ha */
/* 805DC550  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064B284@ha */
/* 805DC554  C0 24 B2 80 */	lfs f1, lit_519@l(r4)  /* 0x8064B280@l */
/* 805DC558  C0 63 B2 84 */	lfs f3, lit_520@l(r3)  /* 0x8064B284@l */
/* 805DC55C  38 60 00 00 */	li r3, 0
/* 805DC560  FC 40 08 90 */	fmr f2, f1
/* 805DC564  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805DC568  4B E2 FE 85 */	bl Matrix_scale
/* 805DC56C  3C 60 80 65 */	lis r3, lit_521@ha /* 0x8064B288@ha */
/* 805DC570  FC 20 E8 90 */	fmr f1, f29
/* 805DC574  C0 63 B2 88 */	lfs f3, lit_521@l(r3)  /* 0x8064B288@l */
/* 805DC578  FC 40 F0 90 */	fmr f2, f30
/* 805DC57C  38 60 00 01 */	li r3, 1
/* 805DC580  4B E2 FD 81 */	bl Matrix_translate
/* 805DC584  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064B284@ha */
/* 805DC588  FC 20 F8 90 */	fmr f1, f31
/* 805DC58C  C0 63 B2 84 */	lfs f3, lit_520@l(r3)  /* 0x8064B284@l */
/* 805DC590  FC 40 F8 90 */	fmr f2, f31
/* 805DC594  38 60 00 01 */	li r3, 1
/* 805DC598  4B E2 FE 55 */	bl Matrix_scale
/* 805DC59C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DC5A0  7F FA FB 78 */	mr r26, r31
/* 805DC5A4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DC5A8  7F 83 E3 78 */	mr r3, r28
/* 805DC5AC  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC5B0  3B FF 00 08 */	addi r31, r31, 8
/* 805DC5B4  4B E3 0E 21 */	bl _Matrix_to_Mtx_new
/* 805DC5B8  90 7A 00 04 */	stw r3, 4(r26)
/* 805DC5BC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DC5C0  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DC5C4  7F FA FB 78 */	mr r26, r31
/* 805DC5C8  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC5CC  7F 63 DB 78 */	mr r3, r27
/* 805DC5D0  7F A4 EB 78 */	mr r4, r29
/* 805DC5D4  3B FF 00 08 */	addi r31, r31, 8
/* 805DC5D8  4B FF FE D1 */	bl mGB_get_image_texture
/* 805DC5DC  90 7A 00 04 */	stw r3, 4(r26)
/* 805DC5E0  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805DC5E4  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805DC5E8  7F 63 DB 78 */	mr r3, r27
/* 805DC5EC  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC5F0  7F A4 EB 78 */	mr r4, r29
/* 805DC5F4  4B FF FE 65 */	bl mGB_get_image_pal
/* 805DC5F8  2C 1E 00 00 */	cmpwi r30, 0
/* 805DC5FC  90 7F 00 04 */	stw r3, 4(r31)
/* 805DC600  41 82 00 20 */	beq lbl_805DC620
/* 805DC604  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805DC608  38 00 00 50 */	li r0, 0x50
/* 805DC60C  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805DC610  90 7F 00 08 */	stw r3, 8(r31)
/* 805DC614  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805DC618  3B FF 00 10 */	addi r31, r31, 0x10
/* 805DC61C  48 00 00 1C */	b lbl_805DC638
lbl_805DC620:
/* 805DC620  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805DC624  38 00 FF FF */	li r0, -1
/* 805DC628  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805DC62C  90 7F 00 08 */	stw r3, 8(r31)
/* 805DC630  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805DC634  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805DC638:
/* 805DC638  3C 80 DE 00 */	lis r4, 0xde00
/* 805DC63C  3C 60 80 A4 */	lis r3, inv_md_base_model_before@ha /* 0x80A3CD00@ha */
/* 805DC640  90 9F 00 00 */	stw r4, 0(r31)
/* 805DC644  38 03 CD 00 */	addi r0, r3, inv_md_base_model_before@l /* 0x80A3CD00@l */
/* 805DC648  3C 60 80 A4 */	lis r3, inv_md_base_model_b@ha /* 0x80A3CD58@ha */
/* 805DC64C  90 1F 00 04 */	stw r0, 4(r31)
/* 805DC650  3B FF 00 08 */	addi r31, r31, 8
/* 805DC654  7F E5 FB 78 */	mr r5, r31
/* 805DC658  38 03 CD 58 */	addi r0, r3, inv_md_base_model_b@l /* 0x80A3CD58@l */
/* 805DC65C  90 9F 00 00 */	stw r4, 0(r31)
/* 805DC660  3B FF 00 08 */	addi r31, r31, 8
/* 805DC664  90 05 00 04 */	stw r0, 4(r5)
/* 805DC668  93 FC 02 D0 */	stw r31, 0x2d0(r28)
lbl_805DC66C:
/* 805DC66C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805DC670  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805DC674  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805DC678  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805DC67C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805DC680  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC684  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805DC688  4B AB E8 8D */	bl func_8009AF14
/* 805DC68C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805DC690  7C 08 03 A6 */	mtlr r0
/* 805DC694  38 21 00 50 */	addi r1, r1, 0x50
/* 805DC698  4E 80 00 20 */	blr 
