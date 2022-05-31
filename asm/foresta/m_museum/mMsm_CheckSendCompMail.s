lbl_803C71CC:
/* 803C71CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C71D0  7C 08 02 A6 */	mflr r0
/* 803C71D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C71D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C71DC  4B CD 3C F9 */	bl func_8009AED4
/* 803C71E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C71E4  3B C0 00 00 */	li r30, 0
/* 803C71E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C71EC  3B A0 00 00 */	li r29, 0
/* 803C71F0  3B E3 00 20 */	addi r31, r3, 0x20
lbl_803C71F4:
/* 803C71F4  7F E3 FB 78 */	mr r3, r31
/* 803C71F8  48 01 8E 4D */	bl mPr_NullCheckPersonalID
/* 803C71FC  2C 03 00 00 */	cmpwi r3, 0
/* 803C7200  40 82 00 18 */	bne lbl_803C7218
/* 803C7204  80 1F 23 48 */	lwz r0, 0x2348(r31)
/* 803C7208  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 803C720C  41 82 00 0C */	beq lbl_803C7218
/* 803C7210  3B C0 00 01 */	li r30, 1
/* 803C7214  48 00 00 14 */	b lbl_803C7228
lbl_803C7218:
/* 803C7218  3B BD 00 01 */	addi r29, r29, 1
/* 803C721C  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803C7220  2C 1D 00 04 */	cmpwi r29, 4
/* 803C7224  41 80 FF D0 */	blt lbl_803C71F4
lbl_803C7228:
/* 803C7228  7F C3 F3 78 */	mr r3, r30
/* 803C722C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C7230  4B CD 3C F1 */	bl func_8009AF20
/* 803C7234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C7238  7C 08 03 A6 */	mtlr r0
/* 803C723C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C7240  4E 80 00 20 */	blr 
