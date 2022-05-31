lbl_80491C30:
/* 80491C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80491C34  7C 08 02 A6 */	mflr r0
/* 80491C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80491C40  4B C0 92 95 */	bl func_8009AED4
/* 80491C44  7C 7D 1B 78 */	mr r29, r3
/* 80491C48  7C 83 23 78 */	mr r3, r4
/* 80491C4C  7F A4 EB 78 */	mr r4, r29
/* 80491C50  3B DD 00 1C */	addi r30, r29, 0x1c
/* 80491C54  4B FF FD D9 */	bl aQMgr_check_not_player_memory
/* 80491C58  2C 03 00 01 */	cmpwi r3, 1
/* 80491C5C  40 82 00 90 */	bne lbl_80491CEC
/* 80491C60  7F C3 F3 78 */	mr r3, r30
/* 80491C64  4B F2 1B 55 */	bl mLd_NullCheckLandName
/* 80491C68  2C 03 00 00 */	cmpwi r3, 0
/* 80491C6C  40 82 00 80 */	bne lbl_80491CEC
/* 80491C70  A0 7E 00 08 */	lhz r3, 8(r30)
/* 80491C74  4B F2 1B 81 */	bl mLd_CheckId
/* 80491C78  2C 03 00 01 */	cmpwi r3, 1
/* 80491C7C  40 82 00 70 */	bne lbl_80491CEC
/* 80491C80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491C84  7F C4 F3 78 */	mr r4, r30
/* 80491C88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491C8C  3F E3 00 01 */	addis r31, r3, 1
/* 80491C90  3B FF 91 20 */	addi r31, r31, -28384
/* 80491C94  7F E3 FB 78 */	mr r3, r31
/* 80491C98  4B F2 1B 75 */	bl mLd_CheckCmpLandName
/* 80491C9C  2C 03 00 01 */	cmpwi r3, 1
/* 80491CA0  40 82 00 4C */	bne lbl_80491CEC
/* 80491CA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491CA8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80491CAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491CB0  3F C3 00 01 */	addis r30, r3, 1
/* 80491CB4  A0 7E 91 2A */	lhz r3, -0x6ed6(r30)
/* 80491CB8  7C 03 00 40 */	cmplw r3, r0
/* 80491CBC  40 82 00 30 */	bne lbl_80491CEC
/* 80491CC0  7F E3 FB 78 */	mr r3, r31
/* 80491CC4  38 9D 00 08 */	addi r4, r29, 8
/* 80491CC8  4B F2 1B 45 */	bl mLd_CheckCmpLandName
/* 80491CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80491CD0  41 82 00 14 */	beq lbl_80491CE4
/* 80491CD4  A0 7E 91 2A */	lhz r3, -0x6ed6(r30)
/* 80491CD8  A0 1D 00 12 */	lhz r0, 0x12(r29)
/* 80491CDC  7C 03 00 40 */	cmplw r3, r0
/* 80491CE0  41 82 00 0C */	beq lbl_80491CEC
lbl_80491CE4:
/* 80491CE4  38 60 00 01 */	li r3, 1
/* 80491CE8  48 00 00 08 */	b lbl_80491CF0
lbl_80491CEC:
/* 80491CEC  38 60 00 00 */	li r3, 0
lbl_80491CF0:
/* 80491CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80491CF4  4B C0 92 2D */	bl func_8009AF20
/* 80491CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491CFC  7C 08 03 A6 */	mtlr r0
/* 80491D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80491D04  4E 80 00 20 */	blr 
