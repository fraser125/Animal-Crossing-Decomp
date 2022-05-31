lbl_806219EC:
/* 806219EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806219F0  7C 08 02 A6 */	mflr r0
/* 806219F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806219F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806219FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80621A00  39 61 00 30 */	addi r11, r1, 0x30
/* 80621A04  4B A7 94 CD */	bl func_8009AED0
/* 80621A08  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80621A0C  3C E0 80 65 */	lis r7, lit_393@ha /* 0x8064CD90@ha */
/* 80621A10  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80621A14  3C C0 80 65 */	lis r6, lit_501@ha /* 0x8064CDBC@ha */
/* 80621A18  3C A5 00 02 */	addis r5, r5, 2
/* 80621A1C  7C 7D 1B 78 */	mr r29, r3
/* 80621A20  80 65 60 9C */	lwz r3, 0x609c(r5)
/* 80621A24  7C 9E 23 78 */	mr r30, r4
/* 80621A28  38 80 00 00 */	li r4, 0
/* 80621A2C  38 A0 00 14 */	li r5, 0x14
/* 80621A30  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80621A34  A8 7D 00 00 */	lha r3, 0(r29)
/* 80621A38  C0 27 CD 90 */	lfs f1, lit_393@l(r7)  /* 0x8064CD90@l */
/* 80621A3C  C0 46 CD BC */	lfs f2, lit_501@l(r6)  /* 0x8064CDBC@l */
/* 80621A40  7D 89 03 A6 */	mtctr r12
/* 80621A44  4E 80 04 21 */	bctrl 
/* 80621A48  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 80621A4C  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064CDD4@ha */
/* 80621A50  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80621A54  38 83 CD D4 */	addi r4, r3, lit_538@l /* 0x8064CDD4@l */
/* 80621A58  3C A0 80 65 */	lis r5, lit_502@ha /* 0x8064CDC0@ha */
/* 80621A5C  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064CD90@ha */
/* 80621A60  EC 02 00 28 */	fsubs f0, f2, f0
/* 80621A64  C0 44 00 00 */	lfs f2, 0(r4)
/* 80621A68  C0 65 CD C0 */	lfs f3, lit_502@l(r5)  /* 0x8064CDC0@l */
/* 80621A6C  C0 83 CD 90 */	lfs f4, lit_393@l(r3)  /* 0x8064CD90@l */
/* 80621A70  EC 02 00 2A */	fadds f0, f2, f0
/* 80621A74  EC 00 10 24 */	fdivs f0, f0, f2
/* 80621A78  EC 03 00 32 */	fmuls f0, f3, f0
/* 80621A7C  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80621A80  40 80 00 08 */	bge lbl_80621A88
/* 80621A84  48 00 00 08 */	b lbl_80621A8C
lbl_80621A88:
/* 80621A88  FC 80 00 90 */	fmr f4, f0
lbl_80621A8C:
/* 80621A8C  88 BE 1D 84 */	lbz r5, 0x1d84(r30)
/* 80621A90  3C 00 43 30 */	lis r0, 0x4330
/* 80621A94  3C 80 80 65 */	lis r4, lit_541@ha /* 0x8064CDDC@ha */
/* 80621A98  3C 60 80 65 */	lis r3, lit_502@ha /* 0x8064CDC0@ha */
/* 80621A9C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80621AA0  C0 03 CD C0 */	lfs f0, lit_502@l(r3)  /* 0x8064CDC0@l */
/* 80621AA4  90 01 00 08 */	stw r0, 8(r1)
/* 80621AA8  C8 64 CD DC */	lfd f3, lit_541@l(r4)  /* 0x8064CDDC@l */
/* 80621AAC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80621AB0  C8 41 00 08 */	lfd f2, 8(r1)
/* 80621AB4  EC 42 18 28 */	fsubs f2, f2, f3
/* 80621AB8  40 81 00 08 */	ble lbl_80621AC0
/* 80621ABC  48 00 00 08 */	b lbl_80621AC4
lbl_80621AC0:
/* 80621AC0  FC 00 20 90 */	fmr f0, f4
lbl_80621AC4:
/* 80621AC4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80621AC8  3C 60 80 65 */	lis r3, lit_539@ha /* 0x8064CDD8@ha */
/* 80621ACC  C0 03 CD D8 */	lfs f0, lit_539@l(r3)  /* 0x8064CDD8@l */
/* 80621AD0  83 FE 00 00 */	lwz r31, 0(r30)
/* 80621AD4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80621AD8  EF E0 00 72 */	fmuls f31, f0, f1
/* 80621ADC  7F E3 FB 78 */	mr r3, r31
/* 80621AE0  FC 00 10 1E */	fctiwz f0, f2
/* 80621AE4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80621AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80621AEC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80621AF0  4B DC 36 69 */	bl _texture_z_light_fog_prim_xlu
/* 80621AF4  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 80621AF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80621AFC  40 82 00 98 */	bne lbl_80621B94
/* 80621B00  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064CD8C@ha */
/* 80621B04  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 80621B08  C0 03 CD 8C */	lfs f0, lit_392@l(r3)  /* 0x8064CD8C@l */
/* 80621B0C  38 60 00 00 */	li r3, 0
/* 80621B10  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80621B14  EC 42 00 28 */	fsubs f2, f2, f0
/* 80621B18  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80621B1C  4B DE A7 E5 */	bl Matrix_translate
/* 80621B20  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80621B24  38 60 00 01 */	li r3, 1
/* 80621B28  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 80621B2C  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80621B30  4B DE A8 BD */	bl Matrix_scale
/* 80621B34  80 BF 03 00 */	lwz r5, 0x300(r31)
/* 80621B38  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80621B3C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80621B40  38 05 00 08 */	addi r0, r5, 8
/* 80621B44  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 80621B48  90 1F 03 00 */	stw r0, 0x300(r31)
/* 80621B4C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80621B50  90 85 00 00 */	stw r4, 0(r5)
/* 80621B54  93 85 00 04 */	stw r28, 4(r5)
/* 80621B58  83 9F 03 00 */	lwz r28, 0x300(r31)
/* 80621B5C  38 7C 00 08 */	addi r3, r28, 8
/* 80621B60  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80621B64  90 1C 00 00 */	stw r0, 0(r28)
/* 80621B68  80 7E 00 00 */	lwz r3, 0(r30)
/* 80621B6C  4B DE B8 69 */	bl _Matrix_to_Mtx_new
/* 80621B70  90 7C 00 04 */	stw r3, 4(r28)
/* 80621B74  3C 60 80 CC */	lis r3, ef_tamaire_shadow_modelT@ha /* 0x80CC0C80@ha */
/* 80621B78  3C 80 DE 00 */	lis r4, 0xde00
/* 80621B7C  80 BF 03 00 */	lwz r5, 0x300(r31)
/* 80621B80  38 03 0C 80 */	addi r0, r3, ef_tamaire_shadow_modelT@l /* 0x80CC0C80@l */
/* 80621B84  38 65 00 08 */	addi r3, r5, 8
/* 80621B88  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80621B8C  90 85 00 00 */	stw r4, 0(r5)
/* 80621B90  90 05 00 04 */	stw r0, 4(r5)
lbl_80621B94:
/* 80621B94  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80621B98  38 60 00 00 */	li r3, 0
/* 80621B9C  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 80621BA0  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80621BA4  4B DE A7 5D */	bl Matrix_translate
/* 80621BA8  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80621BAC  38 80 00 01 */	li r4, 1
/* 80621BB0  4B DE A6 E9 */	bl Matrix_mult
/* 80621BB4  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80621BB8  38 60 00 01 */	li r3, 1
/* 80621BBC  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 80621BC0  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80621BC4  4B DE A8 29 */	bl Matrix_scale
/* 80621BC8  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80621BCC  38 80 00 01 */	li r4, 1
/* 80621BD0  4B DE AC 21 */	bl Matrix_RotateZ
/* 80621BD4  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 80621BD8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80621BDC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80621BE0  38 7C 00 08 */	addi r3, r28, 8
/* 80621BE4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80621BE8  90 1C 00 00 */	stw r0, 0(r28)
/* 80621BEC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80621BF0  4B DE B7 E5 */	bl _Matrix_to_Mtx_new
/* 80621BF4  FC 00 F8 1E */	fctiwz f0, f31
/* 80621BF8  90 7C 00 04 */	stw r3, 4(r28)
/* 80621BFC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80621C00  3C 60 80 6D */	lis r3, data_806D37D8@ha /* 0x806D37D8@ha */
/* 80621C04  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80621C08  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFA0000FF@l */
/* 80621C0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80621C10  38 C7 00 08 */	addi r6, r7, 8
/* 80621C14  3C 00 DE 00 */	lis r0, 0xde00
/* 80621C18  38 63 37 D8 */	addi r3, r3, data_806D37D8@l /* 0x806D37D8@l */
/* 80621C1C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80621C20  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 80621C24  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80621C28  64 84 FF FF */	oris r4, r4, 0xffff
/* 80621C2C  90 A7 00 00 */	stw r5, 0(r7)
/* 80621C30  60 84 FF 00 */	ori r4, r4, 0xff00
/* 80621C34  90 87 00 04 */	stw r4, 4(r7)
/* 80621C38  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80621C3C  38 85 00 08 */	addi r4, r5, 8
/* 80621C40  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80621C44  90 05 00 00 */	stw r0, 0(r5)
/* 80621C48  A8 1D 00 06 */	lha r0, 6(r29)
/* 80621C4C  54 00 10 3A */	slwi r0, r0, 2
/* 80621C50  7C 03 00 2E */	lwzx r0, r3, r0
/* 80621C54  90 05 00 04 */	stw r0, 4(r5)
/* 80621C58  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80621C5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80621C60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80621C64  4B A7 92 B9 */	bl func_8009AF1C
/* 80621C68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80621C6C  7C 08 03 A6 */	mtlr r0
/* 80621C70  38 21 00 40 */	addi r1, r1, 0x40
/* 80621C74  4E 80 00 20 */	blr 
