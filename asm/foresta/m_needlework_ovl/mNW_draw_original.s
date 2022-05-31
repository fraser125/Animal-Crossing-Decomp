lbl_805E9AAC:
/* 805E9AAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E9AB0  7C 08 02 A6 */	mflr r0
/* 805E9AB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E9AB8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E9ABC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E9AC0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E9AC4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E9AC8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805E9ACC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805E9AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9AD4  4B AB 13 F5 */	bl func_8009AEC8
/* 805E9AD8  3C E0 80 65 */	lis r7, data_8064B68C@ha /* 0x8064B68C@ha */
/* 805E9ADC  FF E0 18 90 */	fmr f31, f3
/* 805E9AE0  C0 07 B6 8C */	lfs f0, data_8064B68C@l(r7)  /* 0x8064B68C@l */
/* 805E9AE4  FF A0 08 90 */	fmr f29, f1
/* 805E9AE8  FF C0 10 90 */	fmr f30, f2
/* 805E9AEC  7C 7B 1B 78 */	mr r27, r3
/* 805E9AF0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805E9AF4  7C 9C 23 78 */	mr r28, r4
/* 805E9AF8  7C BD 2B 78 */	mr r29, r5
/* 805E9AFC  7C DE 33 78 */	mr r30, r6
/* 805E9B00  41 80 01 44 */	blt lbl_805E9C44
/* 805E9B04  3C 80 80 65 */	lis r4, lit_542@ha /* 0x8064B690@ha */
/* 805E9B08  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B694@ha */
/* 805E9B0C  C0 24 B6 90 */	lfs f1, lit_542@l(r4)  /* 0x8064B690@l */
/* 805E9B10  C0 63 B6 94 */	lfs f3, lit_543@l(r3)  /* 0x8064B694@l */
/* 805E9B14  38 60 00 00 */	li r3, 0
/* 805E9B18  FC 40 08 90 */	fmr f2, f1
/* 805E9B1C  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805E9B20  4B E2 28 CD */	bl Matrix_scale
/* 805E9B24  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064B698@ha */
/* 805E9B28  FC 20 E8 90 */	fmr f1, f29
/* 805E9B2C  C0 63 B6 98 */	lfs f3, lit_544@l(r3)  /* 0x8064B698@l */
/* 805E9B30  FC 40 F0 90 */	fmr f2, f30
/* 805E9B34  38 60 00 01 */	li r3, 1
/* 805E9B38  4B E2 27 C9 */	bl Matrix_translate
/* 805E9B3C  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B694@ha */
/* 805E9B40  FC 20 F8 90 */	fmr f1, f31
/* 805E9B44  C0 63 B6 94 */	lfs f3, lit_543@l(r3)  /* 0x8064B694@l */
/* 805E9B48  FC 40 F8 90 */	fmr f2, f31
/* 805E9B4C  38 60 00 01 */	li r3, 1
/* 805E9B50  4B E2 28 9D */	bl Matrix_scale
/* 805E9B54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E9B58  7F FA FB 78 */	mr r26, r31
/* 805E9B5C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E9B60  7F 83 E3 78 */	mr r3, r28
/* 805E9B64  90 1F 00 00 */	stw r0, 0(r31)
/* 805E9B68  3B FF 00 08 */	addi r31, r31, 8
/* 805E9B6C  4B E2 38 69 */	bl _Matrix_to_Mtx_new
/* 805E9B70  90 7A 00 04 */	stw r3, 4(r26)
/* 805E9B74  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805E9B78  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805E9B7C  7F FA FB 78 */	mr r26, r31
/* 805E9B80  90 1F 00 00 */	stw r0, 0(r31)
/* 805E9B84  7F 63 DB 78 */	mr r3, r27
/* 805E9B88  7F A4 EB 78 */	mr r4, r29
/* 805E9B8C  3B FF 00 08 */	addi r31, r31, 8
/* 805E9B90  4B FF FD 9D */	bl mNW_get_image_texture
/* 805E9B94  90 7A 00 04 */	stw r3, 4(r26)
/* 805E9B98  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805E9B9C  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805E9BA0  7F 63 DB 78 */	mr r3, r27
/* 805E9BA4  90 1F 00 00 */	stw r0, 0(r31)
/* 805E9BA8  7F A4 EB 78 */	mr r4, r29
/* 805E9BAC  4B FF FC F9 */	bl mNW_get_image_pal
/* 805E9BB0  2C 1E 00 00 */	cmpwi r30, 0
/* 805E9BB4  90 7F 00 04 */	stw r3, 4(r31)
/* 805E9BB8  41 82 00 20 */	beq lbl_805E9BD8
/* 805E9BBC  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805E9BC0  38 00 00 50 */	li r0, 0x50
/* 805E9BC4  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805E9BC8  90 7F 00 08 */	stw r3, 8(r31)
/* 805E9BCC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E9BD0  3B FF 00 10 */	addi r31, r31, 0x10
/* 805E9BD4  48 00 00 1C */	b lbl_805E9BF0
lbl_805E9BD8:
/* 805E9BD8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805E9BDC  38 00 FF FF */	li r0, -1
/* 805E9BE0  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805E9BE4  90 7F 00 08 */	stw r3, 8(r31)
/* 805E9BE8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E9BEC  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805E9BF0:
/* 805E9BF0  3C 80 DE 00 */	lis r4, 0xde00
/* 805E9BF4  3C 60 80 A4 */	lis r3, inv_md_base_model_before@ha /* 0x80A3CD00@ha */
/* 805E9BF8  90 9F 00 00 */	stw r4, 0(r31)
/* 805E9BFC  38 03 CD 00 */	addi r0, r3, inv_md_base_model_before@l /* 0x80A3CD00@l */
/* 805E9C00  90 1F 00 04 */	stw r0, 4(r31)
/* 805E9C04  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805E9C08  80 03 09 DC */	lwz r0, 0x9dc(r3)
/* 805E9C0C  28 00 00 00 */	cmplwi r0, 0
/* 805E9C10  40 82 00 1C */	bne lbl_805E9C2C
/* 805E9C14  3C 60 80 A4 */	lis r3, inv_md_base_model_a@ha /* 0x80A3CD40@ha */
/* 805E9C18  90 9F 00 08 */	stw r4, 8(r31)
/* 805E9C1C  38 03 CD 40 */	addi r0, r3, inv_md_base_model_a@l /* 0x80A3CD40@l */
/* 805E9C20  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E9C24  3B FF 00 10 */	addi r31, r31, 0x10
/* 805E9C28  48 00 00 18 */	b lbl_805E9C40
lbl_805E9C2C:
/* 805E9C2C  3C 60 80 A4 */	lis r3, inv_md_base_model_b@ha /* 0x80A3CD58@ha */
/* 805E9C30  90 9F 00 08 */	stw r4, 8(r31)
/* 805E9C34  38 03 CD 58 */	addi r0, r3, inv_md_base_model_b@l /* 0x80A3CD58@l */
/* 805E9C38  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E9C3C  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805E9C40:
/* 805E9C40  93 FC 02 D0 */	stw r31, 0x2d0(r28)
lbl_805E9C44:
/* 805E9C44  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E9C48  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E9C4C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E9C50  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E9C54  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805E9C58  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9C5C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805E9C60  4B AB 12 B5 */	bl func_8009AF14
/* 805E9C64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E9C68  7C 08 03 A6 */	mtlr r0
/* 805E9C6C  38 21 00 50 */	addi r1, r1, 0x50
/* 805E9C70  4E 80 00 20 */	blr 
