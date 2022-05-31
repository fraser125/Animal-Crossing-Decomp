lbl_8060848C:
/* 8060848C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80608490  7C 08 02 A6 */	mflr r0
/* 80608494  90 01 00 24 */	stw r0, 0x24(r1)
/* 80608498  39 61 00 20 */	addi r11, r1, 0x20
/* 8060849C  4B A9 2A 35 */	bl func_8009AED0
/* 806084A0  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 806084A4  7C 7D 1B 78 */	mr r29, r3
/* 806084A8  7C 9E 23 78 */	mr r30, r4
/* 806084AC  2C 00 00 00 */	cmpwi r0, 0
/* 806084B0  40 82 00 E4 */	bne lbl_80608594
/* 806084B4  80 7E 00 00 */	lwz r3, 0(r30)
/* 806084B8  4B DD CC 51 */	bl _texture_z_light_fog_prim
/* 806084BC  7F C4 F3 78 */	mr r4, r30
/* 806084C0  38 7D 00 10 */	addi r3, r29, 0x10
/* 806084C4  4B D6 DA B9 */	bl Setpos_HiliteReflect_init
/* 806084C8  83 FE 00 00 */	lwz r31, 0(r30)
/* 806084CC  38 60 00 00 */	li r3, 0
/* 806084D0  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 806084D4  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 806084D8  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 806084DC  4B E0 3E 25 */	bl Matrix_translate
/* 806084E0  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 806084E4  38 80 00 01 */	li r4, 1
/* 806084E8  4B E0 3F D1 */	bl Matrix_RotateX
/* 806084EC  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 806084F0  38 80 00 01 */	li r4, 1
/* 806084F4  4B E0 41 69 */	bl Matrix_RotateY
/* 806084F8  A8 7D 00 52 */	lha r3, 0x52(r29)
/* 806084FC  38 80 00 01 */	li r4, 1
/* 80608500  4B E0 42 F1 */	bl Matrix_RotateZ
/* 80608504  3C 80 80 65 */	lis r4, lit_485@ha /* 0x8064BDA8@ha */
/* 80608508  38 60 00 01 */	li r3, 1
/* 8060850C  C0 24 BD A8 */	lfs f1, lit_485@l(r4)  /* 0x8064BDA8@l */
/* 80608510  FC 40 08 90 */	fmr f2, f1
/* 80608514  FC 60 08 90 */	fmr f3, f1
/* 80608518  4B E0 3E D5 */	bl Matrix_scale
/* 8060851C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80608520  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80608524  3C 80 80 6D */	lis r4, eCoin_pal_table@ha /* 0x806D2020@ha */
/* 80608528  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060852C  38 06 00 08 */	addi r0, r6, 8
/* 80608530  38 A5 00 20 */	addi r5, r5, 0x0020 /* 0xDB060020@l */
/* 80608534  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80608538  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060853C  38 84 20 20 */	addi r4, r4, eCoin_pal_table@l /* 0x806D2020@l */
/* 80608540  90 A6 00 00 */	stw r5, 0(r6)
/* 80608544  A8 7D 00 56 */	lha r3, 0x56(r29)
/* 80608548  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 8060854C  7C 64 18 2E */	lwzx r3, r4, r3
/* 80608550  90 66 00 04 */	stw r3, 4(r6)
/* 80608554  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80608558  38 7D 00 08 */	addi r3, r29, 8
/* 8060855C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80608560  90 1D 00 00 */	stw r0, 0(r29)
/* 80608564  80 7E 00 00 */	lwz r3, 0(r30)
/* 80608568  4B E0 4E 6D */	bl _Matrix_to_Mtx_new
/* 8060856C  90 7D 00 04 */	stw r3, 4(r29)
/* 80608570  3C 60 80 CB */	lis r3, ef_coin_model@ha /* 0x80CB0700@ha */
/* 80608574  3C 80 DE 00 */	lis r4, 0xde00
/* 80608578  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8060857C  38 03 07 00 */	addi r0, r3, ef_coin_model@l /* 0x80CB0700@l */
/* 80608580  38 65 00 08 */	addi r3, r5, 8
/* 80608584  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80608588  90 85 00 00 */	stw r4, 0(r5)
/* 8060858C  90 05 00 04 */	stw r0, 4(r5)
/* 80608590  48 00 01 5C */	b lbl_806086EC
lbl_80608594:
/* 80608594  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608598  A8 1D 00 00 */	lha r0, 0(r29)
/* 8060859C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806085A0  3C A0 80 65 */	lis r5, lit_486@ha /* 0x8064BDAC@ha */
/* 806085A4  3C 63 00 02 */	addis r3, r3, 2
/* 806085A8  3C 80 80 65 */	lis r4, lit_406@ha /* 0x8064BD88@ha */
/* 806085AC  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 806085B0  20 00 01 2C */	subfic r0, r0, 0x12c
/* 806085B4  38 C5 BD AC */	addi r6, r5, lit_486@l /* 0x8064BDAC@l */
/* 806085B8  38 A4 BD 88 */	addi r5, r4, lit_406@l /* 0x8064BD88@l */
/* 806085BC  81 83 00 14 */	lwz r12, 0x14(r3)
/* 806085C0  7C 03 07 34 */	extsh r3, r0
/* 806085C4  C0 26 00 00 */	lfs f1, 0(r6)
/* 806085C8  38 80 00 00 */	li r4, 0
/* 806085CC  C0 45 00 00 */	lfs f2, 0(r5)
/* 806085D0  38 A0 01 2C */	li r5, 0x12c
/* 806085D4  7D 89 03 A6 */	mtctr r12
/* 806085D8  4E 80 04 21 */	bctrl 
/* 806085DC  FC 00 08 1E */	fctiwz f0, f1
/* 806085E0  80 7E 00 00 */	lwz r3, 0(r30)
/* 806085E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 806085E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806085EC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 806085F0  4B DD CB 69 */	bl _texture_z_light_fog_prim_xlu
/* 806085F4  7F C4 F3 78 */	mr r4, r30
/* 806085F8  38 7D 00 10 */	addi r3, r29, 0x10
/* 806085FC  4B D6 DA 1D */	bl Setpos_HiliteReflect_xlu_init
/* 80608600  83 FE 00 00 */	lwz r31, 0(r30)
/* 80608604  38 60 00 00 */	li r3, 0
/* 80608608  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8060860C  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 80608610  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80608614  4B E0 3C ED */	bl Matrix_translate
/* 80608618  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 8060861C  38 80 00 01 */	li r4, 1
/* 80608620  4B E0 3E 99 */	bl Matrix_RotateX
/* 80608624  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 80608628  38 80 00 01 */	li r4, 1
/* 8060862C  4B E0 40 31 */	bl Matrix_RotateY
/* 80608630  A8 7D 00 52 */	lha r3, 0x52(r29)
/* 80608634  38 80 00 01 */	li r4, 1
/* 80608638  4B E0 41 B9 */	bl Matrix_RotateZ
/* 8060863C  3C 80 80 65 */	lis r4, lit_485@ha /* 0x8064BDA8@ha */
/* 80608640  38 60 00 01 */	li r3, 1
/* 80608644  C0 24 BD A8 */	lfs f1, lit_485@l(r4)  /* 0x8064BDA8@l */
/* 80608648  FC 40 08 90 */	fmr f2, f1
/* 8060864C  FC 60 08 90 */	fmr f3, f1
/* 80608650  4B E0 3D 9D */	bl Matrix_scale
/* 80608654  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80608658  67 86 FF FF */	oris r6, r28, 0xffff
/* 8060865C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80608660  3C 80 80 6D */	lis r4, eCoin_pal_table@ha /* 0x806D2020@ha */
/* 80608664  38 07 00 08 */	addi r0, r7, 8
/* 80608668  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 8060866C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80608670  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 80608674  60 C6 FF 00 */	ori r6, r6, 0xff00
/* 80608678  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060867C  90 07 00 00 */	stw r0, 0(r7)
/* 80608680  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80608684  38 A5 00 20 */	addi r5, r5, 0x0020 /* 0xDB060020@l */
/* 80608688  38 84 20 20 */	addi r4, r4, eCoin_pal_table@l /* 0x806D2020@l */
/* 8060868C  90 C7 00 04 */	stw r6, 4(r7)
/* 80608690  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80608694  38 66 00 08 */	addi r3, r6, 8
/* 80608698  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060869C  90 A6 00 00 */	stw r5, 0(r6)
/* 806086A0  A8 7D 00 56 */	lha r3, 0x56(r29)
/* 806086A4  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 806086A8  7C 64 18 2E */	lwzx r3, r4, r3
/* 806086AC  90 66 00 04 */	stw r3, 4(r6)
/* 806086B0  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 806086B4  38 7D 00 08 */	addi r3, r29, 8
/* 806086B8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806086BC  90 1D 00 00 */	stw r0, 0(r29)
/* 806086C0  80 7E 00 00 */	lwz r3, 0(r30)
/* 806086C4  4B E0 4D 11 */	bl _Matrix_to_Mtx_new
/* 806086C8  90 7D 00 04 */	stw r3, 4(r29)
/* 806086CC  3C 60 80 CB */	lis r3, ef_coin_modelT@ha /* 0x80CB07C0@ha */
/* 806086D0  3C 80 DE 00 */	lis r4, 0xde00
/* 806086D4  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 806086D8  38 03 07 C0 */	addi r0, r3, ef_coin_modelT@l /* 0x80CB07C0@l */
/* 806086DC  38 65 00 08 */	addi r3, r5, 8
/* 806086E0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806086E4  90 85 00 00 */	stw r4, 0(r5)
/* 806086E8  90 05 00 04 */	stw r0, 4(r5)
lbl_806086EC:
/* 806086EC  39 61 00 20 */	addi r11, r1, 0x20
/* 806086F0  4B A9 28 2D */	bl func_8009AF1C
/* 806086F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806086F8  7C 08 03 A6 */	mtlr r0
/* 806086FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80608700  4E 80 00 20 */	blr 
