lbl_80619910:
/* 80619910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80619914  7C 08 02 A6 */	mflr r0
/* 80619918  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061991C  39 61 00 30 */	addi r11, r1, 0x30
/* 80619920  4B A8 15 AD */	bl func_8009AECC
/* 80619924  7C 7B 1B 78 */	mr r27, r3
/* 80619928  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061992C  80 BB 00 10 */	lwz r5, 0x10(r27)
/* 80619930  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80619934  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80619938  3C 63 00 02 */	addis r3, r3, 2
/* 8061993C  7C 9E 23 78 */	mr r30, r4
/* 80619940  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80619944  90 A1 00 08 */	stw r5, 8(r1)
/* 80619948  38 61 00 08 */	addi r3, r1, 8
/* 8061994C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80619950  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 80619954  90 01 00 10 */	stw r0, 0x10(r1)
/* 80619958  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8061995C  7D 89 03 A6 */	mtctr r12
/* 80619960  4E 80 04 21 */	bctrl 
/* 80619964  2C 03 00 00 */	cmpwi r3, 0
/* 80619968  40 82 00 10 */	bne lbl_80619978
/* 8061996C  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 80619970  28 00 00 02 */	cmplwi r0, 2
/* 80619974  40 82 01 54 */	bne lbl_80619AC8
lbl_80619978:
/* 80619978  83 FE 00 00 */	lwz r31, 0(r30)
/* 8061997C  AB BB 00 4C */	lha r29, 0x4c(r27)
/* 80619980  AB 9B 00 4E */	lha r28, 0x4e(r27)
/* 80619984  7F E3 FB 78 */	mr r3, r31
/* 80619988  4B DC B7 D1 */	bl _texture_z_light_fog_prim_xlu
/* 8061998C  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 80619990  38 60 00 00 */	li r3, 0
/* 80619994  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80619998  C0 9B 00 14 */	lfs f4, 0x14(r27)
/* 8061999C  C0 5B 00 44 */	lfs f2, 0x44(r27)
/* 806199A0  EC 21 00 2A */	fadds f1, f1, f0
/* 806199A4  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 806199A8  C0 1B 00 48 */	lfs f0, 0x48(r27)
/* 806199AC  EC 44 10 2A */	fadds f2, f4, f2
/* 806199B0  EC 63 00 2A */	fadds f3, f3, f0
/* 806199B4  4B DF 29 4D */	bl Matrix_translate
/* 806199B8  7C 1D 00 D0 */	neg r0, r29
/* 806199BC  38 80 00 01 */	li r4, 1
/* 806199C0  7C 03 07 34 */	extsh r3, r0
/* 806199C4  4B DF 2C 99 */	bl Matrix_RotateY
/* 806199C8  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064C968@ha */
/* 806199CC  3C A0 80 65 */	lis r5, lit_472@ha /* 0x8064C964@ha */
/* 806199D0  38 83 C9 68 */	addi r4, r3, lit_473@l /* 0x8064C968@l */
/* 806199D4  C0 25 C9 64 */	lfs f1, lit_472@l(r5)  /* 0x8064C964@l */
/* 806199D8  C0 44 00 00 */	lfs f2, 0(r4)
/* 806199DC  38 60 00 01 */	li r3, 1
/* 806199E0  FC 60 10 90 */	fmr f3, f2
/* 806199E4  4B DF 2A 09 */	bl Matrix_scale
/* 806199E8  7F A3 EB 78 */	mr r3, r29
/* 806199EC  38 80 00 01 */	li r4, 1
/* 806199F0  4B DF 2C 6D */	bl Matrix_RotateY
/* 806199F4  7C 1C 00 D0 */	neg r0, r28
/* 806199F8  38 80 00 01 */	li r4, 1
/* 806199FC  7C 03 07 34 */	extsh r3, r0
/* 80619A00  4B DF 2C 5D */	bl Matrix_RotateY
/* 80619A04  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064C968@ha */
/* 80619A08  3C 80 80 65 */	lis r4, lit_472@ha /* 0x8064C964@ha */
/* 80619A0C  38 A3 C9 68 */	addi r5, r3, lit_473@l /* 0x8064C968@l */
/* 80619A10  C0 64 C9 64 */	lfs f3, lit_472@l(r4)  /* 0x8064C964@l */
/* 80619A14  C0 25 00 00 */	lfs f1, 0(r5)
/* 80619A18  38 60 00 01 */	li r3, 1
/* 80619A1C  FC 40 08 90 */	fmr f2, f1
/* 80619A20  4B DF 29 CD */	bl Matrix_scale
/* 80619A24  7F 83 E3 78 */	mr r3, r28
/* 80619A28  38 80 00 01 */	li r4, 1
/* 80619A2C  4B DF 2C 31 */	bl Matrix_RotateY
/* 80619A30  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064C96C@ha */
/* 80619A34  3C 80 80 65 */	lis r4, lit_473@ha /* 0x8064C968@ha */
/* 80619A38  38 A3 C9 6C */	addi r5, r3, lit_474@l /* 0x8064C96C@l */
/* 80619A3C  C0 44 C9 68 */	lfs f2, lit_473@l(r4)  /* 0x8064C968@l */
/* 80619A40  C0 25 00 00 */	lfs f1, 0(r5)
/* 80619A44  38 60 00 01 */	li r3, 1
/* 80619A48  FC 60 08 90 */	fmr f3, f1
/* 80619A4C  4B DF 29 A1 */	bl Matrix_scale
/* 80619A50  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 80619A54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80619A58  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80619A5C  38 7D 00 08 */	addi r3, r29, 8
/* 80619A60  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80619A64  90 1D 00 00 */	stw r0, 0(r29)
/* 80619A68  80 7E 00 00 */	lwz r3, 0(r30)
/* 80619A6C  4B DF 39 69 */	bl _Matrix_to_Mtx_new
/* 80619A70  90 7D 00 04 */	stw r3, 4(r29)
/* 80619A74  3C A0 FF FF */	lis r5, 0xFFFF /* 0xFFFF64AA@ha */
/* 80619A78  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA000028@ha */
/* 80619A7C  3C 60 80 CC */	lis r3, ef_moon01_00_evw_anime@ha /* 0x80CBA1A8@ha */
/* 80619A80  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80619A84  38 05 64 AA */	addi r0, r5, 0x64AA /* 0xFFFF64AA@l */
/* 80619A88  38 83 A1 A8 */	addi r4, r3, ef_moon01_00_evw_anime@l /* 0x80CBA1A8@l */
/* 80619A8C  38 C6 00 28 */	addi r6, r6, 0x0028 /* 0xFA000028@l */
/* 80619A90  38 A7 00 08 */	addi r5, r7, 8
/* 80619A94  7F C3 F3 78 */	mr r3, r30
/* 80619A98  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80619A9C  90 C7 00 00 */	stw r6, 0(r7)
/* 80619AA0  90 07 00 04 */	stw r0, 4(r7)
/* 80619AA4  4B D5 9A B9 */	bl Evw_Anime_Set
/* 80619AA8  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80619AAC  3C 60 80 CC */	lis r3, ef_moon01_00_modelT@ha /* 0x80CBAC00@ha */
/* 80619AB0  3C 80 DE 00 */	lis r4, 0xde00
/* 80619AB4  38 A6 00 08 */	addi r5, r6, 8
/* 80619AB8  38 03 AC 00 */	addi r0, r3, ef_moon01_00_modelT@l /* 0x80CBAC00@l */
/* 80619ABC  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80619AC0  90 86 00 00 */	stw r4, 0(r6)
/* 80619AC4  90 06 00 04 */	stw r0, 4(r6)
lbl_80619AC8:
/* 80619AC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80619ACC  4B A8 14 4D */	bl func_8009AF18
/* 80619AD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80619AD4  7C 08 03 A6 */	mtlr r0
/* 80619AD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80619ADC  4E 80 00 20 */	blr 
