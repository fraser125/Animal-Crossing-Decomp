lbl_80627CF4:
/* 80627CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80627CF8  7C 08 02 A6 */	mflr r0
/* 80627CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80627D00  39 61 00 20 */	addi r11, r1, 0x20
/* 80627D04  4B A7 31 CD */	bl func_8009AED0
/* 80627D08  7C 7C 1B 78 */	mr r28, r3
/* 80627D0C  7C 9D 23 78 */	mr r29, r4
/* 80627D10  A8 03 00 00 */	lha r0, 0(r3)
/* 80627D14  20 00 00 10 */	subfic r0, r0, 0x10
/* 80627D18  7C 00 07 34 */	extsh r0, r0
/* 80627D1C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80627D20  7C 00 07 35 */	extsh. r0, r0
/* 80627D24  40 80 00 0C */	bge lbl_80627D30
/* 80627D28  3B E0 00 00 */	li r31, 0
/* 80627D2C  48 00 00 14 */	b lbl_80627D40
lbl_80627D30:
/* 80627D30  2C 00 00 07 */	cmpwi r0, 7
/* 80627D34  3B E0 00 07 */	li r31, 7
/* 80627D38  41 81 00 08 */	bgt lbl_80627D40
/* 80627D3C  7C 1F 03 78 */	mr r31, r0
lbl_80627D40:
/* 80627D40  83 DD 00 00 */	lwz r30, 0(r29)
/* 80627D44  7F C3 F3 78 */	mr r3, r30
/* 80627D48  4B DB D4 11 */	bl _texture_z_light_fog_prim_xlu
/* 80627D4C  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80627D50  38 60 00 00 */	li r3, 0
/* 80627D54  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80627D58  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 80627D5C  4B DE 45 A5 */	bl Matrix_translate
/* 80627D60  38 60 E0 00 */	li r3, -8192
/* 80627D64  38 80 00 01 */	li r4, 1
/* 80627D68  4B DE 47 51 */	bl Matrix_RotateX
/* 80627D6C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80627D70  3C 00 43 30 */	lis r0, 0x4330
/* 80627D74  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80627D78  3C A0 80 65 */	lis r5, lit_426@ha /* 0x8064D0B8@ha */
/* 80627D7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80627D80  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064D0BC@ha */
/* 80627D84  C8 23 D0 BC */	lfd f1, lit_428@l(r3)  /* 0x8064D0BC@l */
/* 80627D88  3C C0 80 65 */	lis r6, lit_425@ha /* 0x8064D0B4@ha */
/* 80627D8C  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 80627D90  38 60 00 01 */	li r3, 1
/* 80627D94  90 01 00 08 */	stw r0, 8(r1)
/* 80627D98  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80627D9C  C0 85 D0 B8 */	lfs f4, lit_426@l(r5)  /* 0x8064D0B8@l */
/* 80627DA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80627DA4  C0 A6 D0 B4 */	lfs f5, lit_425@l(r6)  /* 0x8064D0B4@l */
/* 80627DA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80627DAC  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 80627DB0  EC 60 08 28 */	fsubs f3, f0, f1
/* 80627DB4  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80627DB8  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80627DBC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80627DC0  EC 65 18 2A */	fadds f3, f5, f3
/* 80627DC4  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80627DC8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80627DCC  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80627DD0  4B DE 46 1D */	bl Matrix_scale
/* 80627DD4  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 80627DD8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80627DDC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80627DE0  38 7C 00 08 */	addi r3, r28, 8
/* 80627DE4  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80627DE8  90 1C 00 00 */	stw r0, 0(r28)
/* 80627DEC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80627DF0  4B DE 55 E5 */	bl _Matrix_to_Mtx_new
/* 80627DF4  90 7C 00 04 */	stw r3, 4(r28)
/* 80627DF8  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 80627DFC  7F E0 07 34 */	extsh r0, r31
/* 80627E00  3C C0 80 6D */	lis r6, eYukihane_pattern_table@ha /* 0x806D3BE8@ha */
/* 80627E04  81 5E 02 E0 */	lwz r10, 0x2e0(r30)
/* 80627E08  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000082@ha */
/* 80627E0C  3C 80 32 50 */	lis r4, 0x3250 /* 0x325078E6@ha */
/* 80627E10  3C 60 80 CC */	lis r3, ef_yukihane01_00_modelT@ha /* 0x80CC59A0@ha */
/* 80627E14  39 0A 00 08 */	addi r8, r10, 8
/* 80627E18  38 E7 00 20 */	addi r7, r7, 0x0020 /* 0xDB060020@l */
/* 80627E1C  91 1E 02 E0 */	stw r8, 0x2e0(r30)
/* 80627E20  54 00 10 3A */	slwi r0, r0, 2
/* 80627E24  39 26 3B E8 */	addi r9, r6, eYukihane_pattern_table@l /* 0x806D3BE8@l */
/* 80627E28  39 05 00 82 */	addi r8, r5, 0x0082 /* 0xFA000082@l */
/* 80627E2C  90 EA 00 00 */	stw r7, 0(r10)
/* 80627E30  38 E4 78 E6 */	addi r7, r4, 0x78E6 /* 0x325078E6@l */
/* 80627E34  3C C0 FB 00 */	lis r6, 0xfb00
/* 80627E38  38 A0 00 FF */	li r5, 0xff
/* 80627E3C  7D 29 00 2E */	lwzx r9, r9, r0
/* 80627E40  3C 80 DE 00 */	lis r4, 0xde00
/* 80627E44  38 03 59 A0 */	addi r0, r3, ef_yukihane01_00_modelT@l /* 0x80CC59A0@l */
/* 80627E48  91 2A 00 04 */	stw r9, 4(r10)
/* 80627E4C  81 3E 02 E0 */	lwz r9, 0x2e0(r30)
/* 80627E50  38 69 00 08 */	addi r3, r9, 8
/* 80627E54  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80627E58  91 09 00 00 */	stw r8, 0(r9)
/* 80627E5C  90 E9 00 04 */	stw r7, 4(r9)
/* 80627E60  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 80627E64  38 67 00 08 */	addi r3, r7, 8
/* 80627E68  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80627E6C  90 C7 00 00 */	stw r6, 0(r7)
/* 80627E70  90 A7 00 04 */	stw r5, 4(r7)
/* 80627E74  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80627E78  38 65 00 08 */	addi r3, r5, 8
/* 80627E7C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80627E80  90 85 00 00 */	stw r4, 0(r5)
/* 80627E84  90 05 00 04 */	stw r0, 4(r5)
/* 80627E88  39 61 00 20 */	addi r11, r1, 0x20
/* 80627E8C  4B A7 30 91 */	bl func_8009AF1C
/* 80627E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80627E94  7C 08 03 A6 */	mtlr r0
/* 80627E98  38 21 00 20 */	addi r1, r1, 0x20
/* 80627E9C  4E 80 00 20 */	blr 
