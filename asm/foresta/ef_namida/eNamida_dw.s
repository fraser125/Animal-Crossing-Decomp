lbl_806181B4:
/* 806181B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806181B8  7C 08 02 A6 */	mflr r0
/* 806181BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806181C0  39 61 00 30 */	addi r11, r1, 0x30
/* 806181C4  4B A8 2D 11 */	bl func_8009AED4
/* 806181C8  A8 E3 00 4C */	lha r7, 0x4c(r3)
/* 806181CC  7C 7F 1B 78 */	mr r31, r3
/* 806181D0  3C 60 80 65 */	lis r3, lit_381@ha /* 0x8064C804@ha */
/* 806181D4  3C 00 43 30 */	lis r0, 0x4330
/* 806181D8  38 A3 C8 04 */	addi r5, r3, lit_381@l /* 0x8064C804@l */
/* 806181DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 806181E0  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 806181E4  80 FF 00 40 */	lwz r7, 0x40(r31)
/* 806181E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806181EC  3C C0 80 65 */	lis r6, lit_434@ha /* 0x8064C828@ha */
/* 806181F0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 806181F4  7C 9D 23 78 */	mr r29, r4
/* 806181F8  C8 25 00 00 */	lfd f1, 0(r5)
/* 806181FC  38 61 00 08 */	addi r3, r1, 8
/* 80618200  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80618204  90 E1 00 08 */	stw r7, 8(r1)
/* 80618208  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061820C  C0 26 C8 28 */	lfs f1, lit_434@l(r6)  /* 0x8064C828@l */
/* 80618210  90 01 00 0C */	stw r0, 0xc(r1)
/* 80618214  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80618218  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061821C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80618220  4B DF 3B 8D */	bl sMath_RotateY
/* 80618224  83 DD 00 00 */	lwz r30, 0(r29)
/* 80618228  7F C3 F3 78 */	mr r3, r30
/* 8061822C  4B DC CF 2D */	bl _texture_z_light_fog_prim_xlu
/* 80618230  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80618234  38 60 00 00 */	li r3, 0
/* 80618238  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8061823C  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80618240  4B DF 40 C1 */	bl Matrix_translate
/* 80618244  C0 21 00 08 */	lfs f1, 8(r1)
/* 80618248  38 60 00 01 */	li r3, 1
/* 8061824C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80618250  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80618254  4B DF 40 AD */	bl Matrix_translate
/* 80618258  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8061825C  38 80 00 01 */	li r4, 1
/* 80618260  4B DF 40 39 */	bl Matrix_mult
/* 80618264  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80618268  38 60 00 01 */	li r3, 1
/* 8061826C  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80618270  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80618274  4B DF 41 79 */	bl Matrix_scale
/* 80618278  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 8061827C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80618280  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80618284  38 7F 00 08 */	addi r3, r31, 8
/* 80618288  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061828C  90 1F 00 00 */	stw r0, 0(r31)
/* 80618290  80 7D 00 00 */	lwz r3, 0(r29)
/* 80618294  4B DF 51 41 */	bl _Matrix_to_Mtx_new
/* 80618298  90 7F 00 04 */	stw r3, 4(r31)
/* 8061829C  3C 60 80 CC */	lis r3, ef_namida01_modelT@ha /* 0x80CB94C0@ha */
/* 806182A0  3C 80 DE 00 */	lis r4, 0xde00
/* 806182A4  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 806182A8  38 03 94 C0 */	addi r0, r3, ef_namida01_modelT@l /* 0x80CB94C0@l */
/* 806182AC  38 65 00 08 */	addi r3, r5, 8
/* 806182B0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 806182B4  90 85 00 00 */	stw r4, 0(r5)
/* 806182B8  90 05 00 04 */	stw r0, 4(r5)
/* 806182BC  39 61 00 30 */	addi r11, r1, 0x30
/* 806182C0  4B A8 2C 61 */	bl func_8009AF20
/* 806182C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806182C8  7C 08 03 A6 */	mtlr r0
/* 806182CC  38 21 00 30 */	addi r1, r1, 0x30
/* 806182D0  4E 80 00 20 */	blr 