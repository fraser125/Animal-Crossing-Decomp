lbl_80618C64:
/* 80618C64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80618C68  7C 08 02 A6 */	mflr r0
/* 80618C6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80618C70  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80618C74  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80618C78  39 61 00 30 */	addi r11, r1, 0x30
/* 80618C7C  4B A8 22 55 */	bl func_8009AED0
/* 80618C80  7C 7E 1B 78 */	mr r30, r3
/* 80618C84  7C 9C 23 78 */	mr r28, r4
/* 80618C88  A8 63 00 52 */	lha r3, 0x52(r3)
/* 80618C8C  4B DA 1E 65 */	bl sin_s
/* 80618C90  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064C8A8@ha */
/* 80618C94  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80618C98  C0 63 C8 A8 */	lfs f3, lit_437@l(r3)  /* 0x8064C8A8@l */
/* 80618C9C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80618CA0  EC 63 00 72 */	fmuls f3, f3, f1
/* 80618CA4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80618CA8  83 FC 00 00 */	lwz r31, 0(r28)
/* 80618CAC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80618CB0  EC 21 18 2A */	fadds f1, f1, f3
/* 80618CB4  7F E3 FB 78 */	mr r3, r31
/* 80618CB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80618CBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80618CC0  4B DC C4 99 */	bl _texture_z_light_fog_prim_xlu
/* 80618CC4  C3 E1 00 0C */	lfs f31, 0xc(r1)
/* 80618CC8  38 60 00 00 */	li r3, 0
/* 80618CCC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80618CD0  FC 40 F8 90 */	fmr f2, f31
/* 80618CD4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80618CD8  4B DF 36 29 */	bl Matrix_translate
/* 80618CDC  38 7C 20 4C */	addi r3, r28, 0x204c
/* 80618CE0  38 80 00 01 */	li r4, 1
/* 80618CE4  4B DF 35 B5 */	bl Matrix_mult
/* 80618CE8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80618CEC  C0 41 00 08 */	lfs f2, 8(r1)
/* 80618CF0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80618CF4  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80618CF8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80618CFC  4B DF 33 05 */	bl atans_table
/* 80618D00  3C 63 00 01 */	addis r3, r3, 1
/* 80618D04  38 80 00 01 */	li r4, 1
/* 80618D08  38 03 80 00 */	addi r0, r3, -32768
/* 80618D0C  7C 00 00 D0 */	neg r0, r0
/* 80618D10  7C 03 07 34 */	extsh r3, r0
/* 80618D14  4B DF 3A DD */	bl Matrix_RotateZ
/* 80618D18  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80618D1C  38 60 00 01 */	li r3, 1
/* 80618D20  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80618D24  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80618D28  4B DF 36 C5 */	bl Matrix_scale
/* 80618D2C  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 80618D30  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80618D34  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80618D38  38 7D 00 08 */	addi r3, r29, 8
/* 80618D3C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80618D40  90 1D 00 00 */	stw r0, 0(r29)
/* 80618D44  80 7C 00 00 */	lwz r3, 0(r28)
/* 80618D48  4B DF 46 8D */	bl _Matrix_to_Mtx_new
/* 80618D4C  90 7D 00 04 */	stw r3, 4(r29)
/* 80618D50  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 80618D54  3C 60 80 CC */	lis r3, ef_sleep01_modelT@ha /* 0x80CBF780@ha */
/* 80618D58  3C C0 DE 00 */	lis r6, 0xde00
/* 80618D5C  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80618D60  38 E4 00 80 */	addi r7, r4, 0x0080 /* 0xFA000080@l */
/* 80618D64  38 A3 F7 80 */	addi r5, r3, ef_sleep01_modelT@l /* 0x80CBF780@l */
/* 80618D68  80 81 00 08 */	lwz r4, 8(r1)
/* 80618D6C  38 08 00 08 */	addi r0, r8, 8
/* 80618D70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80618D74  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80618D78  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80618D7C  90 E8 00 00 */	stw r7, 0(r8)
/* 80618D80  A8 FE 00 4E */	lha r7, 0x4e(r30)
/* 80618D84  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80618D88  64 E7 FF FF */	oris r7, r7, 0xffff
/* 80618D8C  60 E7 FF 00 */	ori r7, r7, 0xff00
/* 80618D90  90 E8 00 04 */	stw r7, 4(r8)
/* 80618D94  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80618D98  38 E8 00 08 */	addi r7, r8, 8
/* 80618D9C  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 80618DA0  90 C8 00 00 */	stw r6, 0(r8)
/* 80618DA4  90 A8 00 04 */	stw r5, 4(r8)
/* 80618DA8  90 9E 00 40 */	stw r4, 0x40(r30)
/* 80618DAC  90 7E 00 44 */	stw r3, 0x44(r30)
/* 80618DB0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80618DB4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80618DB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80618DBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80618DC0  4B A8 21 5D */	bl func_8009AF1C
/* 80618DC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80618DC8  7C 08 03 A6 */	mtlr r0
/* 80618DCC  38 21 00 40 */	addi r1, r1, 0x40
/* 80618DD0  4E 80 00 20 */	blr 
