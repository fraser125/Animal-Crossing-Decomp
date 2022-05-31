lbl_8061BCB4:
/* 8061BCB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061BCB8  7C 08 02 A6 */	mflr r0
/* 8061BCBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061BCC0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8061BCC4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8061BCC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8061BCCC  4B A7 F2 05 */	bl func_8009AED0
/* 8061BCD0  7C 7C 1B 78 */	mr r28, r3
/* 8061BCD4  3C A0 80 65 */	lis r5, lit_427@ha /* 0x8064CAB4@ha */
/* 8061BCD8  A8 FC 00 4C */	lha r7, 0x4c(r28)
/* 8061BCDC  38 C5 CA B4 */	addi r6, r5, lit_427@l /* 0x8064CAB4@l */
/* 8061BCE0  3C 60 43 30 */	lis r3, 0x4330
/* 8061BCE4  A8 1C 00 00 */	lha r0, 0(r28)
/* 8061BCE8  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8061BCEC  3C E0 80 65 */	lis r7, lit_423@ha /* 0x8064CAA4@ha */
/* 8061BCF0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8061BCF4  7C 9D 23 78 */	mr r29, r4
/* 8061BCF8  C8 26 00 00 */	lfd f1, 0(r6)
/* 8061BCFC  20 00 01 40 */	subfic r0, r0, 0x140
/* 8061BD00  90 61 00 08 */	stw r3, 8(r1)
/* 8061BD04  7C 03 07 34 */	extsh r3, r0
/* 8061BD08  38 03 FF 88 */	addi r0, r3, -120
/* 8061BD0C  C0 47 CA A4 */	lfs f2, lit_423@l(r7)  /* 0x8064CAA4@l */
/* 8061BD10  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061BD14  1C 00 00 06 */	mulli r0, r0, 6
/* 8061BD18  7F A5 EB 78 */	mr r5, r29
/* 8061BD1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061BD20  38 60 00 00 */	li r3, 0
/* 8061BD24  7C 80 00 D0 */	neg r4, r0
/* 8061BD28  EF E2 00 32 */	fmuls f31, f2, f0
/* 8061BD2C  4B FF FF 2D */	bl eShooting_GetTwoTileGfx
/* 8061BD30  83 DD 00 00 */	lwz r30, 0(r29)
/* 8061BD34  7C 7F 1B 78 */	mr r31, r3
/* 8061BD38  7F C3 F3 78 */	mr r3, r30
/* 8061BD3C  4B DC 94 1D */	bl _texture_z_light_fog_prim_xlu
/* 8061BD40  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8061BD44  38 60 00 00 */	li r3, 0
/* 8061BD48  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8061BD4C  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 8061BD50  4B DF 05 B1 */	bl Matrix_translate
/* 8061BD54  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 8061BD58  38 80 00 01 */	li r4, 1
/* 8061BD5C  7C 00 00 D0 */	neg r0, r0
/* 8061BD60  7C 03 07 34 */	extsh r3, r0
/* 8061BD64  4B DF 08 F9 */	bl Matrix_RotateY
/* 8061BD68  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064CAAC@ha */
/* 8061BD6C  3C A0 80 65 */	lis r5, lit_424@ha /* 0x8064CAA8@ha */
/* 8061BD70  38 83 CA AC */	addi r4, r3, lit_425@l /* 0x8064CAAC@l */
/* 8061BD74  C0 25 CA A8 */	lfs f1, lit_424@l(r5)  /* 0x8064CAA8@l */
/* 8061BD78  C0 44 00 00 */	lfs f2, 0(r4)
/* 8061BD7C  38 60 00 01 */	li r3, 1
/* 8061BD80  FC 60 10 90 */	fmr f3, f2
/* 8061BD84  4B DF 06 69 */	bl Matrix_scale
/* 8061BD88  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8061BD8C  38 80 00 01 */	li r4, 1
/* 8061BD90  4B DF 08 CD */	bl Matrix_RotateY
/* 8061BD94  A8 7C 00 08 */	lha r3, 8(r28)
/* 8061BD98  38 80 00 01 */	li r4, 1
/* 8061BD9C  4B DF 08 C1 */	bl Matrix_RotateY
/* 8061BDA0  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064CAA4@ha */
/* 8061BDA4  38 60 00 01 */	li r3, 1
/* 8061BDA8  C0 24 CA A4 */	lfs f1, lit_423@l(r4)  /* 0x8064CAA4@l */
/* 8061BDAC  FC 40 08 90 */	fmr f2, f1
/* 8061BDB0  EC 61 07 F2 */	fmuls f3, f1, f31
/* 8061BDB4  4B DF 06 39 */	bl Matrix_scale
/* 8061BDB8  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8061BDBC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061BDC0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061BDC4  38 7C 00 08 */	addi r3, r28, 8
/* 8061BDC8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061BDCC  90 1C 00 00 */	stw r0, 0(r28)
/* 8061BDD0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8061BDD4  4B DF 16 01 */	bl _Matrix_to_Mtx_new
/* 8061BDD8  90 7C 00 04 */	stw r3, 4(r28)
/* 8061BDDC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 8061BDE0  3C 60 80 CC */	lis r3, ef_nagare01_modelT@ha /* 0x80CBDEC0@ha */
/* 8061BDE4  3C 80 DE 00 */	lis r4, 0xde00
/* 8061BDE8  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8061BDEC  38 A5 00 24 */	addi r5, r5, 0x0024 /* 0xDB060024@l */
/* 8061BDF0  38 03 DE C0 */	addi r0, r3, ef_nagare01_modelT@l /* 0x80CBDEC0@l */
/* 8061BDF4  38 66 00 08 */	addi r3, r6, 8
/* 8061BDF8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061BDFC  90 A6 00 00 */	stw r5, 0(r6)
/* 8061BE00  93 E6 00 04 */	stw r31, 4(r6)
/* 8061BE04  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8061BE08  38 65 00 08 */	addi r3, r5, 8
/* 8061BE0C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061BE10  90 85 00 00 */	stw r4, 0(r5)
/* 8061BE14  90 05 00 04 */	stw r0, 4(r5)
/* 8061BE18  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8061BE1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8061BE20  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8061BE24  4B A7 F0 F9 */	bl func_8009AF1C
/* 8061BE28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061BE2C  7C 08 03 A6 */	mtlr r0
/* 8061BE30  38 21 00 30 */	addi r1, r1, 0x30
/* 8061BE34  4E 80 00 20 */	blr 
