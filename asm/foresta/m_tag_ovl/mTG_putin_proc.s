lbl_805F4C50:
/* 805F4C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F4C54  7C 08 02 A6 */	mflr r0
/* 805F4C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F4C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4C60  4B AA 62 69 */	bl func_8009AEC8
/* 805F4C64  7C 7A 1B 78 */	mr r26, r3
/* 805F4C68  7C 9B 23 78 */	mr r27, r4
/* 805F4C6C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4C70  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F4C74  38 63 00 08 */	addi r3, r3, 8
/* 805F4C78  4B FF AE E9 */	bl mTG_get_table_idx
/* 805F4C7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4C80  7C 7D 1B 78 */	mr r29, r3
/* 805F4C84  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 805F4C88  54 63 08 3C */	slwi r3, r3, 1
/* 805F4C8C  3F DF 00 02 */	addis r30, r31, 2
/* 805F4C90  83 9A 01 74 */	lwz r28, 0x174(r26)
/* 805F4C94  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 805F4C98  38 00 00 01 */	li r0, 1
/* 805F4C9C  7C 64 1A 14 */	add r3, r4, r3
/* 805F4CA0  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 805F4CA4  B0 7C 00 00 */	sth r3, 0(r28)
/* 805F4CA8  9B BC 00 02 */	stb r29, 2(r28)
/* 805F4CAC  B0 1A 01 7A */	sth r0, 0x17a(r26)
/* 805F4CB0  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 805F4CB4  2C 00 00 0A */	cmpwi r0, 0xa
/* 805F4CB8  40 82 01 0C */	bne lbl_805F4DC4
/* 805F4CBC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805F4CC0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805F4CC4  40 82 00 0C */	bne lbl_805F4CD0
/* 805F4CC8  38 9E 32 14 */	addi r4, r30, 0x3214
/* 805F4CCC  48 00 00 24 */	b lbl_805F4CF0
lbl_805F4CD0:
/* 805F4CD0  88 7E 60 03 */	lbz r3, 0x6003(r30)
/* 805F4CD4  4B DB E8 E5 */	bl mHS_get_arrange_idx
/* 805F4CD8  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805F4CDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4CE0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805F4CE4  7C 60 22 14 */	add r3, r0, r4
/* 805F4CE8  3C 83 00 01 */	addis r4, r3, 1
/* 805F4CEC  38 84 C3 6C */	addi r4, r4, -15508
lbl_805F4CF0:
/* 805F4CF0  A0 7C 00 00 */	lhz r3, 0(r28)
/* 805F4CF4  38 A3 D6 00 */	addi r5, r3, -10752
/* 805F4CF8  54 A0 EF 7A */	rlwinm r0, r5, 0x1d, 0x1d, 0x1d
/* 805F4CFC  7C 64 00 2E */	lwzx r3, r4, r0
/* 805F4D00  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 805F4D04  7C 60 04 30 */	srw r0, r3, r0
/* 805F4D08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F4D0C  41 82 00 20 */	beq lbl_805F4D2C
/* 805F4D10  38 00 00 00 */	li r0, 0
/* 805F4D14  7F 43 D3 78 */	mr r3, r26
/* 805F4D18  B0 1C 00 00 */	sth r0, 0(r28)
/* 805F4D1C  7F 64 DB 78 */	mr r4, r27
/* 805F4D20  38 A0 00 11 */	li r5, 0x11
/* 805F4D24  4B FF E0 FD */	bl mTG_open_warning_window
/* 805F4D28  48 00 00 C8 */	b lbl_805F4DF0
lbl_805F4D2C:
/* 805F4D2C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805F4D30  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805F4D34  40 82 00 18 */	bne lbl_805F4D4C
/* 805F4D38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4D3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F4D40  3D 23 00 02 */	addis r9, r3, 2
/* 805F4D44  39 29 32 14 */	addi r9, r9, 0x3214
/* 805F4D48  48 00 00 30 */	b lbl_805F4D78
lbl_805F4D4C:
/* 805F4D4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4D50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F4D54  3C 63 00 02 */	addis r3, r3, 2
/* 805F4D58  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805F4D5C  4B DB E8 5D */	bl mHS_get_arrange_idx
/* 805F4D60  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805F4D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4D68  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805F4D6C  7C 60 22 14 */	add r3, r0, r4
/* 805F4D70  3D 23 00 01 */	addis r9, r3, 1
/* 805F4D74  39 29 C3 6C */	addi r9, r9, -15508
lbl_805F4D78:
/* 805F4D78  A0 DC 00 00 */	lhz r6, 0(r28)
/* 805F4D7C  38 60 00 01 */	li r3, 1
/* 805F4D80  7F A4 EB 78 */	mr r4, r29
/* 805F4D84  38 A0 00 00 */	li r5, 0
/* 805F4D88  38 06 D6 00 */	addi r0, r6, -10752
/* 805F4D8C  38 C0 00 00 */	li r6, 0
/* 805F4D90  54 08 EF 7A */	rlwinm r8, r0, 0x1d, 0x1d, 0x1d
/* 805F4D94  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805F4D98  7C E9 40 2E */	lwzx r7, r9, r8
/* 805F4D9C  7C 60 00 30 */	slw r0, r3, r0
/* 805F4DA0  7C E0 03 78 */	or r0, r7, r0
/* 805F4DA4  7C 09 41 2E */	stwx r0, r9, r8
/* 805F4DA8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F4DAC  4B DE C0 7D */	bl mPr_SetPossessionItem
/* 805F4DB0  7F 43 D3 78 */	mr r3, r26
/* 805F4DB4  7F 64 DB 78 */	mr r4, r27
/* 805F4DB8  38 A0 00 01 */	li r5, 1
/* 805F4DBC  4B FF E2 59 */	bl mTG_close_window
/* 805F4DC0  48 00 00 30 */	b lbl_805F4DF0
lbl_805F4DC4:
/* 805F4DC4  2C 00 00 0B */	cmpwi r0, 0xb
/* 805F4DC8  41 82 00 18 */	beq lbl_805F4DE0
/* 805F4DCC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F4DD0  7F A4 EB 78 */	mr r4, r29
/* 805F4DD4  38 A0 00 00 */	li r5, 0
/* 805F4DD8  38 C0 00 00 */	li r6, 0
/* 805F4DDC  4B DE C0 4D */	bl mPr_SetPossessionItem
lbl_805F4DE0:
/* 805F4DE0  7F 43 D3 78 */	mr r3, r26
/* 805F4DE4  7F 64 DB 78 */	mr r4, r27
/* 805F4DE8  38 A0 00 01 */	li r5, 1
/* 805F4DEC  4B FF E2 29 */	bl mTG_close_window
lbl_805F4DF0:
/* 805F4DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4DF4  4B AA 61 21 */	bl func_8009AF14
/* 805F4DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F4DFC  7C 08 03 A6 */	mtlr r0
/* 805F4E00  38 21 00 20 */	addi r1, r1, 0x20
/* 805F4E04  4E 80 00 20 */	blr 
