lbl_80491E08:
/* 80491E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80491E0C  7C 08 02 A6 */	mflr r0
/* 80491E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80491E18  4B C0 90 BD */	bl func_8009AED4
/* 80491E1C  7C 7D 1B 78 */	mr r29, r3
/* 80491E20  7C 83 23 78 */	mr r3, r4
/* 80491E24  7F A4 EB 78 */	mr r4, r29
/* 80491E28  3B DD 00 1C */	addi r30, r29, 0x1c
/* 80491E2C  4B FF FC 01 */	bl aQMgr_check_not_player_memory
/* 80491E30  2C 03 00 01 */	cmpwi r3, 1
/* 80491E34  40 82 00 90 */	bne lbl_80491EC4
/* 80491E38  7F C3 F3 78 */	mr r3, r30
/* 80491E3C  4B F2 19 7D */	bl mLd_NullCheckLandName
/* 80491E40  2C 03 00 00 */	cmpwi r3, 0
/* 80491E44  40 82 00 80 */	bne lbl_80491EC4
/* 80491E48  A0 7E 00 08 */	lhz r3, 8(r30)
/* 80491E4C  4B F2 19 A9 */	bl mLd_CheckId
/* 80491E50  2C 03 00 01 */	cmpwi r3, 1
/* 80491E54  40 82 00 70 */	bne lbl_80491EC4
/* 80491E58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491E5C  7F C4 F3 78 */	mr r4, r30
/* 80491E60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491E64  3F E3 00 01 */	addis r31, r3, 1
/* 80491E68  3B FF 91 20 */	addi r31, r31, -28384
/* 80491E6C  7F E3 FB 78 */	mr r3, r31
/* 80491E70  4B F2 19 9D */	bl mLd_CheckCmpLandName
/* 80491E74  2C 03 00 01 */	cmpwi r3, 1
/* 80491E78  40 82 00 4C */	bne lbl_80491EC4
/* 80491E7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491E80  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80491E84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491E88  3F C3 00 01 */	addis r30, r3, 1
/* 80491E8C  A0 7E 91 2A */	lhz r3, -0x6ed6(r30)
/* 80491E90  7C 03 00 40 */	cmplw r3, r0
/* 80491E94  40 82 00 30 */	bne lbl_80491EC4
/* 80491E98  7F E3 FB 78 */	mr r3, r31
/* 80491E9C  38 9D 00 08 */	addi r4, r29, 8
/* 80491EA0  4B F2 19 6D */	bl mLd_CheckCmpLandName
/* 80491EA4  2C 03 00 01 */	cmpwi r3, 1
/* 80491EA8  40 82 00 1C */	bne lbl_80491EC4
/* 80491EAC  A0 7E 91 2A */	lhz r3, -0x6ed6(r30)
/* 80491EB0  A0 1D 00 12 */	lhz r0, 0x12(r29)
/* 80491EB4  7C 03 00 40 */	cmplw r3, r0
/* 80491EB8  40 82 00 0C */	bne lbl_80491EC4
/* 80491EBC  38 60 00 01 */	li r3, 1
/* 80491EC0  48 00 00 08 */	b lbl_80491EC8
lbl_80491EC4:
/* 80491EC4  38 60 00 00 */	li r3, 0
lbl_80491EC8:
/* 80491EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80491ECC  4B C0 90 55 */	bl func_8009AF20
/* 80491ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491ED4  7C 08 03 A6 */	mtlr r0
/* 80491ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80491EDC  4E 80 00 20 */	blr 
