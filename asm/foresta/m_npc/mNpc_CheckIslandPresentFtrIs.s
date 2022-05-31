lbl_803D5490:
/* 803D5490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5494  7C 08 02 A6 */	mflr r0
/* 803D5498  3C 60 81 17 */	lis r3, l_mnpc_island_present_ftr@ha /* 0x8116EB84@ha */
/* 803D549C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D54A0  38 63 EB 84 */	addi r3, r3, l_mnpc_island_present_ftr@l /* 0x8116EB84@l */
/* 803D54A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D54A8  3B E0 00 00 */	li r31, 0
/* 803D54AC  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 803D54B0  28 00 00 00 */	cmplwi r0, 0
/* 803D54B4  41 82 00 14 */	beq lbl_803D54C8
/* 803D54B8  48 00 AB 8D */	bl mPr_NullCheckPersonalID
/* 803D54BC  2C 03 00 00 */	cmpwi r3, 0
/* 803D54C0  40 82 00 08 */	bne lbl_803D54C8
/* 803D54C4  3B E0 00 01 */	li r31, 1
lbl_803D54C8:
/* 803D54C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D54CC  7F E3 FB 78 */	mr r3, r31
/* 803D54D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D54D4  7C 08 03 A6 */	mtlr r0
/* 803D54D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D54DC  4E 80 00 20 */	blr 
