lbl_8055F92C:
/* 8055F92C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F930  7C 08 02 A6 */	mflr r0
/* 8055F934  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F938  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F93C  4B B3 B5 95 */	bl func_8009AED0
/* 8055F940  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055F944  7C 7C 1B 78 */	mr r28, r3
/* 8055F948  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8055F94C  3B A0 00 00 */	li r29, 0
/* 8055F950  3B E3 00 20 */	addi r31, r3, 0x20
/* 8055F954  3B C0 00 00 */	li r30, 0
lbl_8055F958:
/* 8055F958  7F E3 FB 78 */	mr r3, r31
/* 8055F95C  4B E8 06 E9 */	bl mPr_NullCheckPersonalID
/* 8055F960  2C 03 00 00 */	cmpwi r3, 0
/* 8055F964  40 82 00 1C */	bne lbl_8055F980
/* 8055F968  7F E3 FB 78 */	mr r3, r31
/* 8055F96C  7F 84 E3 78 */	mr r4, r28
/* 8055F970  38 A0 00 08 */	li r5, 8
/* 8055F974  4B AF D6 A9 */	bl func_8005D01C
/* 8055F978  3B 9C 00 08 */	addi r28, r28, 8
/* 8055F97C  3B BD 00 01 */	addi r29, r29, 1
lbl_8055F980:
/* 8055F980  3B DE 00 01 */	addi r30, r30, 1
/* 8055F984  3B FF 24 40 */	addi r31, r31, 0x2440
/* 8055F988  2C 1E 00 04 */	cmpwi r30, 4
/* 8055F98C  41 80 FF CC */	blt lbl_8055F958
/* 8055F990  7F A3 EB 78 */	mr r3, r29
/* 8055F994  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F998  4B B3 B5 85 */	bl func_8009AF1C
/* 8055F99C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055F9A0  7C 08 03 A6 */	mtlr r0
/* 8055F9A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055F9A8  4E 80 00 20 */	blr 
