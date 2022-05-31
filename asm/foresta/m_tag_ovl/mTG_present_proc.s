lbl_805F6F10:
/* 805F6F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F6F14  7C 08 02 A6 */	mflr r0
/* 805F6F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F6F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6F20  4B AA 3F A9 */	bl func_8009AEC8
/* 805F6F24  7C 7A 1B 78 */	mr r26, r3
/* 805F6F28  7C 9B 23 78 */	mr r27, r4
/* 805F6F2C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F6F30  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F6F34  38 63 00 08 */	addi r3, r3, 8
/* 805F6F38  4B FF 8C 29 */	bl mTG_get_table_idx
/* 805F6F3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F6F40  7C 7D 1B 78 */	mr r29, r3
/* 805F6F44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F6F48  1C 7D 01 2A */	mulli r3, r29, 0x12a
/* 805F6F4C  3F C4 00 02 */	addis r30, r4, 2
/* 805F6F50  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F6F54  3B 83 04 E0 */	addi r28, r3, 0x4e0
/* 805F6F58  7F 80 E2 14 */	add r28, r0, r28
/* 805F6F5C  7F 83 E3 78 */	mr r3, r28
/* 805F6F60  4B DC 5C 25 */	bl mMl_check_set_present_myself
/* 805F6F64  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F6F68  40 82 00 2C */	bne lbl_805F6F94
/* 805F6F6C  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F6F70  38 80 00 00 */	li r4, 0
/* 805F6F74  4B DE 97 B5 */	bl mPr_GetPossessionItemIdx
/* 805F6F78  2C 03 FF FF */	cmpwi r3, -1
/* 805F6F7C  40 82 00 18 */	bne lbl_805F6F94
/* 805F6F80  7F 43 D3 78 */	mr r3, r26
/* 805F6F84  7F 64 DB 78 */	mr r4, r27
/* 805F6F88  38 A0 00 01 */	li r5, 1
/* 805F6F8C  4B FF BE 95 */	bl mTG_open_warning_window
/* 805F6F90  48 00 00 24 */	b lbl_805F6FB4
lbl_805F6F94:
/* 805F6F94  7F E0 00 34 */	cntlzw r0, r31
/* 805F6F98  7F 43 D3 78 */	mr r3, r26
/* 805F6F9C  7F A8 EB 78 */	mr r8, r29
/* 805F6FA0  38 BC 00 2C */	addi r5, r28, 0x2c
/* 805F6FA4  54 06 D9 7E */	srwi r6, r0, 5
/* 805F6FA8  38 80 00 00 */	li r4, 0
/* 805F6FAC  38 E0 00 01 */	li r7, 1
/* 805F6FB0  4B FF C1 C1 */	bl mTG_catch_item_from_table
lbl_805F6FB4:
/* 805F6FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6FB8  4B AA 3F 5D */	bl func_8009AF14
/* 805F6FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F6FC0  7C 08 03 A6 */	mtlr r0
/* 805F6FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F6FC8  4E 80 00 20 */	blr 
