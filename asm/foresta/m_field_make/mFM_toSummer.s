lbl_803A48D8:
/* 803A48D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A48DC  7C 08 02 A6 */	mflr r0
/* 803A48E0  38 60 00 07 */	li r3, 7
/* 803A48E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A48E8  48 04 EA A9 */	bl mTM_set_season_com
/* 803A48EC  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A48F0  80 03 7A 58 */	lwz r0, g_fdinfo@l(r3)  /* 0x81167A58@l */
/* 803A48F4  28 00 00 00 */	cmplwi r0, 0
/* 803A48F8  41 82 00 30 */	beq lbl_803A4928
/* 803A48FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A4900  38 60 00 00 */	li r3, 0
/* 803A4904  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A4908  3C 84 00 02 */	addis r4, r4, 2
/* 803A490C  88 84 3E 20 */	lbz r4, 0x3e20(r4)
/* 803A4910  4B FF EF A9 */	bl mFM_LoadBGCommonTex
/* 803A4914  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4918  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A491C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A4920  38 63 00 48 */	addi r3, r3, 0x48
/* 803A4924  4B FF E7 F5 */	bl mFM_SetFieldPal
lbl_803A4928:
/* 803A4928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A492C  7C 08 03 A6 */	mtlr r0
/* 803A4930  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4934  4E 80 00 20 */	blr 
