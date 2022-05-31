lbl_8062591C:
/* 8062591C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80625920  7C 08 02 A6 */	mflr r0
/* 80625924  90 01 00 44 */	stw r0, 0x44(r1)
/* 80625928  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8062592C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80625930  39 61 00 30 */	addi r11, r1, 0x30
/* 80625934  4B A7 55 99 */	bl func_8009AECC
/* 80625938  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8062593C  7C 7D 1B 78 */	mr r29, r3
/* 80625940  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80625944  A8 1D 00 00 */	lha r0, 0(r29)
/* 80625948  3F 83 00 02 */	addis r28, r3, 2
/* 8062594C  3C C0 80 65 */	lis r6, lit_455@ha /* 0x8064CFD4@ha */
/* 80625950  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 80625954  20 00 00 A0 */	subfic r0, r0, 0xa0
/* 80625958  3C A0 80 65 */	lis r5, lit_456@ha /* 0x8064CFD8@ha */
/* 8062595C  7C 9E 23 78 */	mr r30, r4
/* 80625960  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80625964  7C 1F 07 34 */	extsh r31, r0
/* 80625968  C0 45 CF D8 */	lfs f2, lit_456@l(r5)  /* 0x8064CFD8@l */
/* 8062596C  7F E3 FB 78 */	mr r3, r31
/* 80625970  C0 26 CF D4 */	lfs f1, lit_455@l(r6)  /* 0x8064CFD4@l */
/* 80625974  38 80 00 02 */	li r4, 2
/* 80625978  38 A0 00 08 */	li r5, 8
/* 8062597C  7D 89 03 A6 */	mtctr r12
/* 80625980  4E 80 04 21 */	bctrl 
/* 80625984  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 80625988  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064CFD0@ha */
/* 8062598C  C0 44 CF D0 */	lfs f2, lit_424@l(r4)  /* 0x8064CFD0@l */
/* 80625990  3C A0 80 65 */	lis r5, lit_457@ha /* 0x8064CFDC@ha */
/* 80625994  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80625998  FF E0 08 90 */	fmr f31, f1
/* 8062599C  C0 25 CF DC */	lfs f1, lit_457@l(r5)  /* 0x8064CFDC@l */
/* 806259A0  7F E3 FB 78 */	mr r3, r31
/* 806259A4  38 80 00 76 */	li r4, 0x76
/* 806259A8  38 A0 00 9F */	li r5, 0x9f
/* 806259AC  7D 89 03 A6 */	mtctr r12
/* 806259B0  4E 80 04 21 */	bctrl 
/* 806259B4  FC 00 08 1E */	fctiwz f0, f1
/* 806259B8  83 FE 00 00 */	lwz r31, 0(r30)
/* 806259BC  7F E3 FB 78 */	mr r3, r31
/* 806259C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 806259C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806259C8  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 806259CC  4B DB F7 8D */	bl _texture_z_light_fog_prim_xlu
/* 806259D0  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 806259D4  38 60 00 00 */	li r3, 0
/* 806259D8  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 806259DC  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 806259E0  4B DE 69 21 */	bl Matrix_translate
/* 806259E4  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 806259E8  38 80 00 01 */	li r4, 1
/* 806259EC  4B DE 6A CD */	bl Matrix_RotateX
/* 806259F0  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 806259F4  38 80 00 01 */	li r4, 1
/* 806259F8  4B DE 6C 65 */	bl Matrix_RotateY
/* 806259FC  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 80625A00  38 80 00 01 */	li r4, 1
/* 80625A04  4B DE 6D ED */	bl Matrix_RotateZ
/* 80625A08  3C 60 80 65 */	lis r3, lit_456@ha /* 0x8064CFD8@ha */
/* 80625A0C  FC 20 F8 90 */	fmr f1, f31
/* 80625A10  C0 43 CF D8 */	lfs f2, lit_456@l(r3)  /* 0x8064CFD8@l */
/* 80625A14  FC 60 F8 90 */	fmr f3, f31
/* 80625A18  38 60 00 01 */	li r3, 1
/* 80625A1C  4B DE 69 D1 */	bl Matrix_scale
/* 80625A20  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 80625A24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80625A28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80625A2C  38 7C 00 08 */	addi r3, r28, 8
/* 80625A30  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80625A34  90 1C 00 00 */	stw r0, 0(r28)
/* 80625A38  80 7E 00 00 */	lwz r3, 0(r30)
/* 80625A3C  4B DE 79 99 */	bl _Matrix_to_Mtx_new
/* 80625A40  90 7C 00 04 */	stw r3, 4(r28)
/* 80625A44  A8 1D 00 52 */	lha r0, 0x52(r29)
/* 80625A48  2C 00 00 00 */	cmpwi r0, 0
/* 80625A4C  41 82 00 2C */	beq lbl_80625A78
/* 80625A50  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80625A54  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 80625A58  67 60 46 32 */	oris r0, r27, 0x4632
/* 80625A5C  38 85 00 08 */	addi r4, r5, 8
/* 80625A60  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 80625A64  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80625A68  60 00 32 00 */	ori r0, r0, 0x3200
/* 80625A6C  90 65 00 00 */	stw r3, 0(r5)
/* 80625A70  90 05 00 04 */	stw r0, 4(r5)
/* 80625A74  48 00 00 28 */	b lbl_80625A9C
lbl_80625A78:
/* 80625A78  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80625A7C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 80625A80  67 60 00 32 */	oris r0, r27, 0x32
/* 80625A84  38 85 00 08 */	addi r4, r5, 8
/* 80625A88  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 80625A8C  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80625A90  60 00 64 00 */	ori r0, r0, 0x6400
/* 80625A94  90 65 00 00 */	stw r3, 0(r5)
/* 80625A98  90 05 00 04 */	stw r0, 4(r5)
lbl_80625A9C:
/* 80625A9C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80625AA0  3C 60 80 CC */	lis r3, ef_turn_footprint_modelT@ha /* 0x80CBBA80@ha */
/* 80625AA4  3C C0 FB 00 */	lis r6, 0xfb00
/* 80625AA8  38 A0 FF FF */	li r5, -1
/* 80625AAC  38 07 00 08 */	addi r0, r7, 8
/* 80625AB0  3C 80 DE 00 */	lis r4, 0xde00
/* 80625AB4  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80625AB8  38 03 BA 80 */	addi r0, r3, ef_turn_footprint_modelT@l /* 0x80CBBA80@l */
/* 80625ABC  90 C7 00 00 */	stw r6, 0(r7)
/* 80625AC0  90 A7 00 04 */	stw r5, 4(r7)
/* 80625AC4  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80625AC8  38 65 00 08 */	addi r3, r5, 8
/* 80625ACC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80625AD0  90 85 00 00 */	stw r4, 0(r5)
/* 80625AD4  90 05 00 04 */	stw r0, 4(r5)
/* 80625AD8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80625ADC  39 61 00 30 */	addi r11, r1, 0x30
/* 80625AE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80625AE4  4B A7 54 35 */	bl func_8009AF18
/* 80625AE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80625AEC  7C 08 03 A6 */	mtlr r0
/* 80625AF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80625AF4  4E 80 00 20 */	blr 
