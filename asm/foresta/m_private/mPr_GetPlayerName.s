lbl_803DFF88:
/* 803DFF88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DFF8C  7C 08 02 A6 */	mflr r0
/* 803DFF90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DFF94  39 61 00 20 */	addi r11, r1, 0x20
/* 803DFF98  4B CB AF 3D */	bl func_8009AED4
/* 803DFF9C  7C 9F 23 78 */	mr r31, r4
/* 803DFFA0  7C 7D 1B 78 */	mr r29, r3
/* 803DFFA4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 803DFFA8  3B C0 00 00 */	li r30, 0
/* 803DFFAC  4B FD 3B 45 */	bl mLd_PlayerManKindCheckNo
/* 803DFFB0  2C 03 00 00 */	cmpwi r3, 0
/* 803DFFB4  40 82 00 3C */	bne lbl_803DFFF0
/* 803DFFB8  1C 9F 24 40 */	mulli r4, r31, 0x2440
/* 803DFFBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFFC0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DFFC4  7C 60 22 14 */	add r3, r0, r4
/* 803DFFC8  3B E3 00 20 */	addi r31, r3, 0x20
/* 803DFFCC  7F E3 FB 78 */	mr r3, r31
/* 803DFFD0  48 00 00 75 */	bl mPr_NullCheckPersonalID
/* 803DFFD4  2C 03 00 00 */	cmpwi r3, 0
/* 803DFFD8  40 82 00 50 */	bne lbl_803E0028
/* 803DFFDC  7F A3 EB 78 */	mr r3, r29
/* 803DFFE0  7F E4 FB 78 */	mr r4, r31
/* 803DFFE4  4B FF FE D9 */	bl mPr_CopyPlayerName
/* 803DFFE8  3B C0 00 01 */	li r30, 1
/* 803DFFEC  48 00 00 3C */	b lbl_803E0028
lbl_803DFFF0:
/* 803DFFF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFFF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFFF8  3C 63 00 02 */	addis r3, r3, 2
/* 803DFFFC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803E0000  4B FD 3A F1 */	bl mLd_PlayerManKindCheckNo
/* 803E0004  2C 03 00 01 */	cmpwi r3, 1
/* 803E0008  40 82 00 20 */	bne lbl_803E0028
/* 803E000C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E0010  7F A3 EB 78 */	mr r3, r29
/* 803E0014  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E0018  3C 84 00 02 */	addis r4, r4, 2
/* 803E001C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E0020  4B FF FE 9D */	bl mPr_CopyPlayerName
/* 803E0024  3B C0 00 01 */	li r30, 1
lbl_803E0028:
/* 803E0028  7F C3 F3 78 */	mr r3, r30
/* 803E002C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E0030  4B CB AE F1 */	bl func_8009AF20
/* 803E0034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E0038  7C 08 03 A6 */	mtlr r0
/* 803E003C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0040  4E 80 00 20 */	blr 
