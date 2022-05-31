lbl_80612D80:
/* 80612D80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80612D84  7C 08 02 A6 */	mflr r0
/* 80612D88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80612D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80612D90  4B A8 81 3D */	bl func_8009AECC
/* 80612D94  A8 03 00 00 */	lha r0, 0(r3)
/* 80612D98  7C 7C 1B 78 */	mr r28, r3
/* 80612D9C  7C 9E 23 78 */	mr r30, r4
/* 80612DA0  20 00 00 64 */	subfic r0, r0, 0x64
/* 80612DA4  7C 03 07 34 */	extsh r3, r0
/* 80612DA8  2C 03 00 09 */	cmpwi r3, 9
/* 80612DAC  41 81 00 4C */	bgt lbl_80612DF8
/* 80612DB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80612DB4  3C C0 80 65 */	lis r6, data_8064C4C4@ha /* 0x8064C4C4@ha */
/* 80612DB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80612DBC  3C A0 80 65 */	lis r5, lit_440@ha /* 0x8064C4E0@ha */
/* 80612DC0  3C 84 00 02 */	addis r4, r4, 2
/* 80612DC4  C0 45 C4 E0 */	lfs f2, lit_440@l(r5)  /* 0x8064C4E0@l */
/* 80612DC8  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80612DCC  38 A0 00 12 */	li r5, 0x12
/* 80612DD0  C0 26 C4 C4 */	lfs f1, data_8064C4C4@l(r6)  /* 0x8064C4C4@l */
/* 80612DD4  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80612DD8  38 80 00 00 */	li r4, 0
/* 80612DDC  7D 89 03 A6 */	mtctr r12
/* 80612DE0  4E 80 04 21 */	bctrl 
/* 80612DE4  FC 00 08 1E */	fctiwz f0, f1
/* 80612DE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80612DEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80612DF0  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80612DF4  48 00 00 58 */	b lbl_80612E4C
lbl_80612DF8:
/* 80612DF8  2C 03 00 50 */	cmpwi r3, 0x50
/* 80612DFC  40 80 00 0C */	bge lbl_80612E08
/* 80612E00  3B A0 00 96 */	li r29, 0x96
/* 80612E04  48 00 00 48 */	b lbl_80612E4C
lbl_80612E08:
/* 80612E08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80612E0C  3C C0 80 65 */	lis r6, lit_440@ha /* 0x8064C4E0@ha */
/* 80612E10  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80612E14  3C A0 80 65 */	lis r5, data_8064C4C4@ha /* 0x8064C4C4@ha */
/* 80612E18  3C 84 00 02 */	addis r4, r4, 2
/* 80612E1C  C0 45 C4 C4 */	lfs f2, data_8064C4C4@l(r5)  /* 0x8064C4C4@l */
/* 80612E20  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80612E24  38 A0 00 62 */	li r5, 0x62
/* 80612E28  C0 26 C4 E0 */	lfs f1, lit_440@l(r6)  /* 0x8064C4E0@l */
/* 80612E2C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80612E30  38 80 00 50 */	li r4, 0x50
/* 80612E34  7D 89 03 A6 */	mtctr r12
/* 80612E38  4E 80 04 21 */	bctrl 
/* 80612E3C  FC 00 08 1E */	fctiwz f0, f1
/* 80612E40  D8 01 00 08 */	stfd f0, 8(r1)
/* 80612E44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80612E48  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_80612E4C:
/* 80612E4C  83 FE 00 00 */	lwz r31, 0(r30)
/* 80612E50  7F E3 FB 78 */	mr r3, r31
/* 80612E54  4B DD 23 05 */	bl _texture_z_light_fog_prim_xlu
/* 80612E58  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80612E5C  38 60 00 00 */	li r3, 0
/* 80612E60  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80612E64  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 80612E68  4B DF 94 99 */	bl Matrix_translate
/* 80612E6C  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80612E70  38 80 00 01 */	li r4, 1
/* 80612E74  4B DF 94 25 */	bl Matrix_mult
/* 80612E78  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 80612E7C  38 60 00 01 */	li r3, 1
/* 80612E80  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 80612E84  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 80612E88  4B DF 94 79 */	bl Matrix_translate
/* 80612E8C  A8 1C 00 4C */	lha r0, 0x4c(r28)
/* 80612E90  2C 00 00 00 */	cmpwi r0, 0
/* 80612E94  40 82 00 14 */	bne lbl_80612EA8
/* 80612E98  38 60 F8 00 */	li r3, -2048
/* 80612E9C  38 80 00 01 */	li r4, 1
/* 80612EA0  4B DF 99 51 */	bl Matrix_RotateZ
/* 80612EA4  48 00 00 10 */	b lbl_80612EB4
lbl_80612EA8:
/* 80612EA8  38 60 08 00 */	li r3, 0x800
/* 80612EAC  38 80 00 01 */	li r4, 1
/* 80612EB0  4B DF 99 41 */	bl Matrix_RotateZ
lbl_80612EB4:
/* 80612EB4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80612EB8  3C 00 43 30 */	lis r0, 0x4330
/* 80612EBC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80612EC0  3C A0 80 65 */	lis r5, lit_442@ha /* 0x8064C4E8@ha */
/* 80612EC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80612EC8  3C 60 80 65 */	lis r3, lit_444@ha /* 0x8064C4EC@ha */
/* 80612ECC  C8 23 C4 EC */	lfd f1, lit_444@l(r3)  /* 0x8064C4EC@l */
/* 80612ED0  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064C4E4@ha */
/* 80612ED4  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 80612ED8  38 60 00 01 */	li r3, 1
/* 80612EDC  90 01 00 08 */	stw r0, 8(r1)
/* 80612EE0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80612EE4  C0 85 C4 E8 */	lfs f4, lit_442@l(r5)  /* 0x8064C4E8@l */
/* 80612EE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80612EEC  C0 A6 C4 E4 */	lfs f5, lit_441@l(r6)  /* 0x8064C4E4@l */
/* 80612EF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80612EF4  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 80612EF8  EC 60 08 28 */	fsubs f3, f0, f1
/* 80612EFC  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80612F00  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80612F04  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80612F08  EC 65 18 2A */	fadds f3, f5, f3
/* 80612F0C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80612F10  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80612F14  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80612F18  4B DF 94 D5 */	bl Matrix_scale
/* 80612F1C  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 80612F20  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80612F24  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80612F28  38 7B 00 08 */	addi r3, r27, 8
/* 80612F2C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80612F30  90 1B 00 00 */	stw r0, 0(r27)
/* 80612F34  80 7E 00 00 */	lwz r3, 0(r30)
/* 80612F38  4B DF A4 9D */	bl _Matrix_to_Mtx_new
/* 80612F3C  3C 80 80 CB */	lis r4, ef_kaze01_evw_anime@ha /* 0x80CB6788@ha */
/* 80612F40  90 7B 00 04 */	stw r3, 4(r27)
/* 80612F44  38 84 67 88 */	addi r4, r4, ef_kaze01_evw_anime@l /* 0x80CB6788@l */
/* 80612F48  7F C3 F3 78 */	mr r3, r30
/* 80612F4C  4B D6 06 11 */	bl Evw_Anime_Set
/* 80612F50  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80612F54  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 80612F58  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80612F5C  38 85 00 08 */	addi r4, r5, 8
/* 80612F60  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 80612F64  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80612F68  64 00 FF FF */	oris r0, r0, 0xffff
/* 80612F6C  60 00 FF 00 */	ori r0, r0, 0xff00
/* 80612F70  90 65 00 00 */	stw r3, 0(r5)
/* 80612F74  90 05 00 04 */	stw r0, 4(r5)
/* 80612F78  A8 1C 00 4C */	lha r0, 0x4c(r28)
/* 80612F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80612F80  40 82 00 28 */	bne lbl_80612FA8
/* 80612F84  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80612F88  3C 60 80 CB */	lis r3, ef_kaze01_modelT@ha /* 0x80CB6940@ha */
/* 80612F8C  3C 80 DE 00 */	lis r4, 0xde00
/* 80612F90  38 A6 00 08 */	addi r5, r6, 8
/* 80612F94  38 03 69 40 */	addi r0, r3, ef_kaze01_modelT@l /* 0x80CB6940@l */
/* 80612F98  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80612F9C  90 86 00 00 */	stw r4, 0(r6)
/* 80612FA0  90 06 00 04 */	stw r0, 4(r6)
/* 80612FA4  48 00 00 24 */	b lbl_80612FC8
lbl_80612FA8:
/* 80612FA8  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80612FAC  3C 60 80 CB */	lis r3, ef_kaze01_modelT2@ha /* 0x80CB69B0@ha */
/* 80612FB0  3C 80 DE 00 */	lis r4, 0xde00
/* 80612FB4  38 A6 00 08 */	addi r5, r6, 8
/* 80612FB8  38 03 69 B0 */	addi r0, r3, ef_kaze01_modelT2@l /* 0x80CB69B0@l */
/* 80612FBC  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80612FC0  90 86 00 00 */	stw r4, 0(r6)
/* 80612FC4  90 06 00 04 */	stw r0, 4(r6)
lbl_80612FC8:
/* 80612FC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80612FCC  4B A8 7F 4D */	bl func_8009AF18
/* 80612FD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80612FD4  7C 08 03 A6 */	mtlr r0
/* 80612FD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80612FDC  4E 80 00 20 */	blr 
