lbl_8055FB84:
/* 8055FB84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055FB88  7C 08 02 A6 */	mflr r0
/* 8055FB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055FB90  39 61 00 20 */	addi r11, r1, 0x20
/* 8055FB94  4B B3 B3 3D */	bl func_8009AED0
/* 8055FB98  7C 7C 1B 78 */	mr r28, r3
/* 8055FB9C  3B E0 FF FF */	li r31, -1
/* 8055FBA0  4B E8 04 A5 */	bl mPr_NullCheckPersonalID
/* 8055FBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8055FBA8  40 82 00 44 */	bne lbl_8055FBEC
/* 8055FBAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FBB0  3B A0 00 00 */	li r29, 0
/* 8055FBB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FBB8  3F C3 00 03 */	addis r30, r3, 3
/* 8055FBBC  3B DE DB 52 */	addi r30, r30, -9390
lbl_8055FBC0:
/* 8055FBC0  7F 83 E3 78 */	mr r3, r28
/* 8055FBC4  7F C4 F3 78 */	mr r4, r30
/* 8055FBC8  4B E8 05 7D */	bl mPr_CheckCmpPersonalID
/* 8055FBCC  2C 03 00 01 */	cmpwi r3, 1
/* 8055FBD0  40 82 00 0C */	bne lbl_8055FBDC
/* 8055FBD4  7F BF EB 78 */	mr r31, r29
/* 8055FBD8  48 00 00 14 */	b lbl_8055FBEC
lbl_8055FBDC:
/* 8055FBDC  3B BD 00 01 */	addi r29, r29, 1
/* 8055FBE0  3B DE 00 14 */	addi r30, r30, 0x14
/* 8055FBE4  2C 1D 00 04 */	cmpwi r29, 4
/* 8055FBE8  41 80 FF D8 */	blt lbl_8055FBC0
lbl_8055FBEC:
/* 8055FBEC  7F E3 FB 78 */	mr r3, r31
/* 8055FBF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055FBF4  4B B3 B3 29 */	bl func_8009AF1C
/* 8055FBF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055FBFC  7C 08 03 A6 */	mtlr r0
/* 8055FC00  38 21 00 20 */	addi r1, r1, 0x20
/* 8055FC04  4E 80 00 20 */	blr 
