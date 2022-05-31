lbl_803A4938:
/* 803A4938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A493C  7C 08 02 A6 */	mflr r0
/* 803A4940  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4944  48 04 EA 89 */	bl mTM_set_season
/* 803A4948  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A494C  80 03 7A 58 */	lwz r0, g_fdinfo@l(r3)  /* 0x81167A58@l */
/* 803A4950  28 00 00 00 */	cmplwi r0, 0
/* 803A4954  41 82 00 30 */	beq lbl_803A4984
/* 803A4958  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A495C  38 60 00 00 */	li r3, 0
/* 803A4960  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A4964  3C 84 00 02 */	addis r4, r4, 2
/* 803A4968  88 84 41 84 */	lbz r4, 0x4184(r4)
/* 803A496C  4B FF EF 4D */	bl mFM_LoadBGCommonTex
/* 803A4970  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4974  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A4978  80 63 00 00 */	lwz r3, 0(r3)
/* 803A497C  38 63 00 48 */	addi r3, r3, 0x48
/* 803A4980  4B FF E7 99 */	bl mFM_SetFieldPal
lbl_803A4984:
/* 803A4984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4988  7C 08 03 A6 */	mtlr r0
/* 803A498C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4990  4E 80 00 20 */	blr 
