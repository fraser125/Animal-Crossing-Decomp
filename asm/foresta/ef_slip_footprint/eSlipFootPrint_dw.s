lbl_8061E544:
/* 8061E544  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061E548  7C 08 02 A6 */	mflr r0
/* 8061E54C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061E550  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8061E554  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8061E558  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E55C  4B A7 C9 71 */	bl func_8009AECC
/* 8061E560  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061E564  7C 7D 1B 78 */	mr r29, r3
/* 8061E568  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8061E56C  A8 1D 00 00 */	lha r0, 0(r29)
/* 8061E570  3F 83 00 02 */	addis r28, r3, 2
/* 8061E574  3C C0 80 65 */	lis r6, lit_456@ha /* 0x8064CBF8@ha */
/* 8061E578  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8061E57C  20 00 00 A0 */	subfic r0, r0, 0xa0
/* 8061E580  3C A0 80 65 */	lis r5, lit_457@ha /* 0x8064CBFC@ha */
/* 8061E584  7C 9E 23 78 */	mr r30, r4
/* 8061E588  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061E58C  7C 1F 07 34 */	extsh r31, r0
/* 8061E590  C0 45 CB FC */	lfs f2, lit_457@l(r5)  /* 0x8064CBFC@l */
/* 8061E594  7F E3 FB 78 */	mr r3, r31
/* 8061E598  C0 26 CB F8 */	lfs f1, lit_456@l(r6)  /* 0x8064CBF8@l */
/* 8061E59C  38 80 00 02 */	li r4, 2
/* 8061E5A0  38 A0 00 08 */	li r5, 8
/* 8061E5A4  7D 89 03 A6 */	mtctr r12
/* 8061E5A8  4E 80 04 21 */	bctrl 
/* 8061E5AC  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8061E5B0  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064CBF4@ha */
/* 8061E5B4  C0 44 CB F4 */	lfs f2, lit_425@l(r4)  /* 0x8064CBF4@l */
/* 8061E5B8  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064CC00@ha */
/* 8061E5BC  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061E5C0  FF E0 08 90 */	fmr f31, f1
/* 8061E5C4  C0 25 CC 00 */	lfs f1, lit_458@l(r5)  /* 0x8064CC00@l */
/* 8061E5C8  7F E3 FB 78 */	mr r3, r31
/* 8061E5CC  38 80 00 76 */	li r4, 0x76
/* 8061E5D0  38 A0 00 9E */	li r5, 0x9e
/* 8061E5D4  7D 89 03 A6 */	mtctr r12
/* 8061E5D8  4E 80 04 21 */	bctrl 
/* 8061E5DC  FC 00 08 1E */	fctiwz f0, f1
/* 8061E5E0  83 FE 00 00 */	lwz r31, 0(r30)
/* 8061E5E4  7F E3 FB 78 */	mr r3, r31
/* 8061E5E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061E5EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061E5F0  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 8061E5F4  4B DC 6B 65 */	bl _texture_z_light_fog_prim_xlu
/* 8061E5F8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8061E5FC  38 60 00 00 */	li r3, 0
/* 8061E600  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 8061E604  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8061E608  4B DE DC F9 */	bl Matrix_translate
/* 8061E60C  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 8061E610  38 80 00 01 */	li r4, 1
/* 8061E614  4B DE DE A5 */	bl Matrix_RotateX
/* 8061E618  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 8061E61C  38 80 00 01 */	li r4, 1
/* 8061E620  4B DE E0 3D */	bl Matrix_RotateY
/* 8061E624  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 8061E628  38 80 00 01 */	li r4, 1
/* 8061E62C  4B DE E1 C5 */	bl Matrix_RotateZ
/* 8061E630  3C 60 80 65 */	lis r3, lit_457@ha /* 0x8064CBFC@ha */
/* 8061E634  FC 20 F8 90 */	fmr f1, f31
/* 8061E638  C0 43 CB FC */	lfs f2, lit_457@l(r3)  /* 0x8064CBFC@l */
/* 8061E63C  FC 60 F8 90 */	fmr f3, f31
/* 8061E640  38 60 00 01 */	li r3, 1
/* 8061E644  4B DE DD A9 */	bl Matrix_scale
/* 8061E648  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 8061E64C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061E650  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061E654  38 7C 00 08 */	addi r3, r28, 8
/* 8061E658  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061E65C  90 1C 00 00 */	stw r0, 0(r28)
/* 8061E660  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061E664  4B DE ED 71 */	bl _Matrix_to_Mtx_new
/* 8061E668  90 7C 00 04 */	stw r3, 4(r28)
/* 8061E66C  A8 1D 00 52 */	lha r0, 0x52(r29)
/* 8061E670  2C 00 00 00 */	cmpwi r0, 0
/* 8061E674  41 82 00 2C */	beq lbl_8061E6A0
/* 8061E678  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8061E67C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8061E680  67 60 46 32 */	oris r0, r27, 0x4632
/* 8061E684  38 85 00 08 */	addi r4, r5, 8
/* 8061E688  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 8061E68C  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 8061E690  60 00 32 00 */	ori r0, r0, 0x3200
/* 8061E694  90 65 00 00 */	stw r3, 0(r5)
/* 8061E698  90 05 00 04 */	stw r0, 4(r5)
/* 8061E69C  48 00 00 28 */	b lbl_8061E6C4
lbl_8061E6A0:
/* 8061E6A0  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8061E6A4  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8061E6A8  67 60 00 32 */	oris r0, r27, 0x32
/* 8061E6AC  38 85 00 08 */	addi r4, r5, 8
/* 8061E6B0  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 8061E6B4  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 8061E6B8  60 00 64 00 */	ori r0, r0, 0x6400
/* 8061E6BC  90 65 00 00 */	stw r3, 0(r5)
/* 8061E6C0  90 05 00 04 */	stw r0, 4(r5)
lbl_8061E6C4:
/* 8061E6C4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8061E6C8  3C 60 80 CC */	lis r3, ef_footprint01_02_modelT@ha /* 0x80CBBD20@ha */
/* 8061E6CC  3C 80 DE 00 */	lis r4, 0xde00
/* 8061E6D0  38 A6 00 08 */	addi r5, r6, 8
/* 8061E6D4  38 03 BD 20 */	addi r0, r3, ef_footprint01_02_modelT@l /* 0x80CBBD20@l */
/* 8061E6D8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8061E6DC  90 86 00 00 */	stw r4, 0(r6)
/* 8061E6E0  90 06 00 04 */	stw r0, 4(r6)
/* 8061E6E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8061E6E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E6EC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8061E6F0  4B A7 C8 29 */	bl func_8009AF18
/* 8061E6F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061E6F8  7C 08 03 A6 */	mtlr r0
/* 8061E6FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8061E700  4E 80 00 20 */	blr 
