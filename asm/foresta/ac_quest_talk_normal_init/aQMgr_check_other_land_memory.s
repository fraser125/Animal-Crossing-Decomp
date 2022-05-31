lbl_80491A90:
/* 80491A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80491A94  7C 08 02 A6 */	mflr r0
/* 80491A98  7C 65 1B 78 */	mr r5, r3
/* 80491A9C  7C 83 23 78 */	mr r3, r4
/* 80491AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491AA4  7C A4 2B 78 */	mr r4, r5
/* 80491AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80491AAC  3B E5 00 1C */	addi r31, r5, 0x1c
/* 80491AB0  4B FF FF 7D */	bl aQMgr_check_not_player_memory
/* 80491AB4  2C 03 00 01 */	cmpwi r3, 1
/* 80491AB8  40 82 00 68 */	bne lbl_80491B20
/* 80491ABC  7F E3 FB 78 */	mr r3, r31
/* 80491AC0  4B F2 1C F9 */	bl mLd_NullCheckLandName
/* 80491AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80491AC8  40 82 00 58 */	bne lbl_80491B20
/* 80491ACC  A0 7F 00 08 */	lhz r3, 8(r31)
/* 80491AD0  4B F2 1D 25 */	bl mLd_CheckId
/* 80491AD4  2C 03 00 01 */	cmpwi r3, 1
/* 80491AD8  40 82 00 48 */	bne lbl_80491B20
/* 80491ADC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491AE0  7F E4 FB 78 */	mr r4, r31
/* 80491AE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491AE8  3C 63 00 01 */	addis r3, r3, 1
/* 80491AEC  38 63 91 20 */	addi r3, r3, -28384
/* 80491AF0  4B F2 1D 1D */	bl mLd_CheckCmpLandName
/* 80491AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80491AF8  41 82 00 20 */	beq lbl_80491B18
/* 80491AFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491B00  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80491B04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491B08  3C 63 00 01 */	addis r3, r3, 1
/* 80491B0C  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 80491B10  7C 03 00 40 */	cmplw r3, r0
/* 80491B14  41 82 00 0C */	beq lbl_80491B20
lbl_80491B18:
/* 80491B18  38 60 00 01 */	li r3, 1
/* 80491B1C  48 00 00 08 */	b lbl_80491B24
lbl_80491B20:
/* 80491B20  38 60 00 00 */	li r3, 0
lbl_80491B24:
/* 80491B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491B2C  7C 08 03 A6 */	mtlr r0
/* 80491B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80491B34  4E 80 00 20 */	blr 
