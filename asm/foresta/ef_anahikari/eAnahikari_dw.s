lbl_80604CD0:
/* 80604CD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80604CD4  7C 08 02 A6 */	mflr r0
/* 80604CD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80604CDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80604CE0  4B A9 61 ED */	bl func_8009AECC
/* 80604CE4  AB C3 00 06 */	lha r30, 6(r3)
/* 80604CE8  7C 7C 1B 78 */	mr r28, r3
/* 80604CEC  7C 9D 23 78 */	mr r29, r4
/* 80604CF0  4B D9 61 C9 */	bl mEv_CheckTitleDemo
/* 80604CF4  2C 03 FF F7 */	cmpwi r3, -9
/* 80604CF8  41 82 01 80 */	beq lbl_80604E78
/* 80604CFC  88 1C 00 0F */	lbz r0, 0xf(r28)
/* 80604D00  28 00 00 00 */	cmplwi r0, 0
/* 80604D04  40 82 00 58 */	bne lbl_80604D5C
/* 80604D08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80604D0C  3C A0 80 65 */	lis r5, lit_424@ha /* 0x8064BB98@ha */
/* 80604D10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80604D14  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064BB9C@ha */
/* 80604D18  3C 63 00 02 */	addis r3, r3, 2
/* 80604D1C  38 E5 BB 98 */	addi r7, r5, lit_424@l /* 0x8064BB98@l */
/* 80604D20  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80604D24  38 C4 BB 9C */	addi r6, r4, lit_425@l /* 0x8064BB9C@l */
/* 80604D28  A8 7C 00 00 */	lha r3, 0(r28)
/* 80604D2C  38 80 00 00 */	li r4, 0
/* 80604D30  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80604D34  38 A0 00 3C */	li r5, 0x3c
/* 80604D38  C0 27 00 00 */	lfs f1, 0(r7)
/* 80604D3C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80604D40  7D 89 03 A6 */	mtctr r12
/* 80604D44  4E 80 04 21 */	bctrl 
/* 80604D48  FC 00 08 1E */	fctiwz f0, f1
/* 80604D4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80604D50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80604D54  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80604D58  48 00 00 64 */	b lbl_80604DBC
lbl_80604D5C:
/* 80604D5C  28 00 00 02 */	cmplwi r0, 2
/* 80604D60  40 82 00 58 */	bne lbl_80604DB8
/* 80604D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80604D68  3C A0 80 65 */	lis r5, lit_425@ha /* 0x8064BB9C@ha */
/* 80604D6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80604D70  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064BB98@ha */
/* 80604D74  3C 63 00 02 */	addis r3, r3, 2
/* 80604D78  38 E5 BB 9C */	addi r7, r5, lit_425@l /* 0x8064BB9C@l */
/* 80604D7C  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80604D80  38 C4 BB 98 */	addi r6, r4, lit_424@l /* 0x8064BB98@l */
/* 80604D84  A8 7C 00 00 */	lha r3, 0(r28)
/* 80604D88  38 80 00 00 */	li r4, 0
/* 80604D8C  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80604D90  38 A0 00 3C */	li r5, 0x3c
/* 80604D94  C0 27 00 00 */	lfs f1, 0(r7)
/* 80604D98  C0 46 00 00 */	lfs f2, 0(r6)
/* 80604D9C  7D 89 03 A6 */	mtctr r12
/* 80604DA0  4E 80 04 21 */	bctrl 
/* 80604DA4  FC 00 08 1E */	fctiwz f0, f1
/* 80604DA8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80604DAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80604DB0  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80604DB4  48 00 00 08 */	b lbl_80604DBC
lbl_80604DB8:
/* 80604DB8  3B 60 00 C8 */	li r27, 0xc8
lbl_80604DBC:
/* 80604DBC  83 FD 00 00 */	lwz r31, 0(r29)
/* 80604DC0  7F E3 FB 78 */	mr r3, r31
/* 80604DC4  4B DE 03 95 */	bl _texture_z_light_fog_prim_xlu
/* 80604DC8  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80604DCC  38 60 00 00 */	li r3, 0
/* 80604DD0  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80604DD4  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 80604DD8  4B E0 75 29 */	bl Matrix_translate
/* 80604DDC  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80604DE0  38 60 00 01 */	li r3, 1
/* 80604DE4  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 80604DE8  C0 7C 00 3C */	lfs f3, 0x3c(r28)
/* 80604DEC  4B E0 76 01 */	bl Matrix_scale
/* 80604DF0  3C 60 80 6D */	lis r3, ef_anahikari_anime_tbl@ha /* 0x806D1D68@ha */
/* 80604DF4  57 DE 10 3A */	slwi r30, r30, 2
/* 80604DF8  38 83 1D 68 */	addi r4, r3, ef_anahikari_anime_tbl@l /* 0x806D1D68@l */
/* 80604DFC  7F A3 EB 78 */	mr r3, r29
/* 80604E00  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80604E04  4B D6 E7 59 */	bl Evw_Anime_Set
/* 80604E08  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80604E0C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80604E10  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80604E14  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80604E18  38 C7 00 08 */	addi r6, r7, 8
/* 80604E1C  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFA0000FF@l */
/* 80604E20  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 80604E24  64 04 FF FF */	oris r4, r0, 0xffff
/* 80604E28  60 84 FF 00 */	ori r4, r4, 0xff00
/* 80604E2C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80604E30  90 A7 00 00 */	stw r5, 0(r7)
/* 80604E34  90 87 00 04 */	stw r4, 4(r7)
/* 80604E38  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 80604E3C  38 7C 00 08 */	addi r3, r28, 8
/* 80604E40  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80604E44  90 1C 00 00 */	stw r0, 0(r28)
/* 80604E48  80 7D 00 00 */	lwz r3, 0(r29)
/* 80604E4C  4B E0 85 89 */	bl _Matrix_to_Mtx_new
/* 80604E50  90 7C 00 04 */	stw r3, 4(r28)
/* 80604E54  3C 60 80 6D */	lis r3, data_806D1D60@ha /* 0x806D1D60@ha */
/* 80604E58  3C 00 DE 00 */	lis r0, 0xde00
/* 80604E5C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80604E60  38 63 1D 60 */	addi r3, r3, data_806D1D60@l /* 0x806D1D60@l */
/* 80604E64  38 85 00 08 */	addi r4, r5, 8
/* 80604E68  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80604E6C  90 05 00 00 */	stw r0, 0(r5)
/* 80604E70  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80604E74  90 05 00 04 */	stw r0, 4(r5)
lbl_80604E78:
/* 80604E78  39 61 00 30 */	addi r11, r1, 0x30
/* 80604E7C  4B A9 60 9D */	bl func_8009AF18
/* 80604E80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80604E84  7C 08 03 A6 */	mtlr r0
/* 80604E88  38 21 00 30 */	addi r1, r1, 0x30
/* 80604E8C  4E 80 00 20 */	blr 
