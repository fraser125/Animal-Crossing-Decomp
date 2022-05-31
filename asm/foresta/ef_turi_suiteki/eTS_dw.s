lbl_80624C74:
/* 80624C74  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80624C78  7C 08 02 A6 */	mflr r0
/* 80624C7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80624C80  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80624C84  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80624C88  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80624C8C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80624C90  39 61 00 50 */	addi r11, r1, 0x50
/* 80624C94  4B A7 62 41 */	bl func_8009AED4
/* 80624C98  7C 7E 1B 78 */	mr r30, r3
/* 80624C9C  3C A0 43 30 */	lis r5, 0x4330
/* 80624CA0  A8 E3 00 00 */	lha r7, 0(r3)
/* 80624CA4  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064CFB4@ha */
/* 80624CA8  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 80624CAC  38 C3 CF B4 */	addi r6, r3, lit_439@l /* 0x8064CFB4@l */
/* 80624CB0  A9 1E 00 08 */	lha r8, 8(r30)
/* 80624CB4  7C 9F 23 78 */	mr r31, r4
/* 80624CB8  7C 07 00 50 */	subf r0, r7, r0
/* 80624CBC  80 FE 00 34 */	lwz r7, 0x34(r30)
/* 80624CC0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80624CC4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80624CC8  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80624CCC  7D 00 07 35 */	extsh. r0, r8
/* 80624CD0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80624CD4  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80624CD8  C8 66 00 00 */	lfd f3, 0(r6)
/* 80624CDC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80624CE0  90 E1 00 08 */	stw r7, 8(r1)
/* 80624CE4  EF E0 18 28 */	fsubs f31, f0, f3
/* 80624CE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80624CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80624CF0  41 82 00 44 */	beq lbl_80624D34
/* 80624CF4  A8 7E 00 06 */	lha r3, 6(r30)
/* 80624CF8  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 80624CFC  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064CFA0@ha */
/* 80624D00  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80624D04  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80624D08  C0 44 CF A0 */	lfs f2, lit_434@l(r4)  /* 0x8064CFA0@l */
/* 80624D0C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80624D10  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80624D14  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80624D18  EC 20 18 28 */	fsubs f1, f0, f3
/* 80624D1C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80624D20  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80624D24  EC 22 00 72 */	fmuls f1, f2, f1
/* 80624D28  EC 00 18 28 */	fsubs f0, f0, f3
/* 80624D2C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80624D30  48 00 00 0C */	b lbl_80624D3C
lbl_80624D34:
/* 80624D34  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064CFA4@ha */
/* 80624D38  C0 23 CF A4 */	lfs f1, lit_435@l(r3)  /* 0x8064CFA4@l */
lbl_80624D3C:
/* 80624D3C  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064CFA8@ha */
/* 80624D40  C0 03 CF A8 */	lfs f0, lit_436@l(r3)  /* 0x8064CFA8@l */
/* 80624D44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80624D48  FC 00 00 1E */	fctiwz f0, f0
/* 80624D4C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80624D50  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80624D54  7F A3 07 34 */	extsh r3, r29
/* 80624D58  4B D9 5D 99 */	bl sin_s
/* 80624D5C  FF C0 08 90 */	fmr f30, f1
/* 80624D60  38 60 35 00 */	li r3, 0x3500
/* 80624D64  4B D9 5D 39 */	bl cos_s
/* 80624D68  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80624D6C  7F A3 07 34 */	extsh r3, r29
/* 80624D70  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80624D74  EC 42 07 F2 */	fmuls f2, f2, f31
/* 80624D78  EC 22 00 72 */	fmuls f1, f2, f1
/* 80624D7C  EC 21 07 B2 */	fmuls f1, f1, f30
/* 80624D80  EC 00 08 2A */	fadds f0, f0, f1
/* 80624D84  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80624D88  4B D9 5D 15 */	bl cos_s
/* 80624D8C  FF C0 08 90 */	fmr f30, f1
/* 80624D90  38 60 35 00 */	li r3, 0x3500
/* 80624D94  4B D9 5D 09 */	bl cos_s
/* 80624D98  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80624D9C  38 60 35 00 */	li r3, 0x3500
/* 80624DA0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80624DA4  EC 42 07 F2 */	fmuls f2, f2, f31
/* 80624DA8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80624DAC  EC 21 07 B2 */	fmuls f1, f1, f30
/* 80624DB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80624DB4  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80624DB8  4B D9 5D 39 */	bl sin_s
/* 80624DBC  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064CF9C@ha */
/* 80624DC0  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064CFAC@ha */
/* 80624DC4  C0 64 CF 9C */	lfs f3, lit_386@l(r4)  /* 0x8064CF9C@l */
/* 80624DC8  C0 03 CF AC */	lfs f0, lit_437@l(r3)  /* 0x8064CFAC@l */
/* 80624DCC  EC 63 07 F2 */	fmuls f3, f3, f31
/* 80624DD0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80624DD4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80624DD8  EC 23 00 72 */	fmuls f1, f3, f1
/* 80624DDC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80624DE0  EC 22 08 2A */	fadds f1, f2, f1
/* 80624DE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80624DE8  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80624DEC  83 BF 00 00 */	lwz r29, 0(r31)
/* 80624DF0  7F A3 EB 78 */	mr r3, r29
/* 80624DF4  4B DC 03 65 */	bl _texture_z_light_fog_prim_xlu
/* 80624DF8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80624DFC  38 60 00 00 */	li r3, 0
/* 80624E00  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80624E04  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80624E08  4B DE 74 F9 */	bl Matrix_translate
/* 80624E0C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80624E10  38 60 00 01 */	li r3, 1
/* 80624E14  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80624E18  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80624E1C  4B DE 75 D1 */	bl Matrix_scale
/* 80624E20  83 DD 02 E0 */	lwz r30, 0x2e0(r29)
/* 80624E24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80624E28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80624E2C  38 7E 00 08 */	addi r3, r30, 8
/* 80624E30  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80624E34  90 1E 00 00 */	stw r0, 0(r30)
/* 80624E38  80 7F 00 00 */	lwz r3, 0(r31)
/* 80624E3C  4B DE 85 99 */	bl _Matrix_to_Mtx_new
/* 80624E40  90 7E 00 04 */	stw r3, 4(r30)
/* 80624E44  3C 60 80 CC */	lis r3, ef_turi_suiteki01_00_modelT@ha /* 0x80CC2C40@ha */
/* 80624E48  3C 80 DE 00 */	lis r4, 0xde00
/* 80624E4C  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80624E50  38 03 2C 40 */	addi r0, r3, ef_turi_suiteki01_00_modelT@l /* 0x80CC2C40@l */
/* 80624E54  38 65 00 08 */	addi r3, r5, 8
/* 80624E58  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80624E5C  90 85 00 00 */	stw r4, 0(r5)
/* 80624E60  90 05 00 04 */	stw r0, 4(r5)
/* 80624E64  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80624E68  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80624E6C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80624E70  39 61 00 50 */	addi r11, r1, 0x50
/* 80624E74  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80624E78  4B A7 60 A9 */	bl func_8009AF20
/* 80624E7C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80624E80  7C 08 03 A6 */	mtlr r0
/* 80624E84  38 21 00 70 */	addi r1, r1, 0x70
/* 80624E88  4E 80 00 20 */	blr 
