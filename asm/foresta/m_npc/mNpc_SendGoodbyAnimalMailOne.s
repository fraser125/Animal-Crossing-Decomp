lbl_803D0F64:
/* 803D0F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0F68  7C 08 02 A6 */	mflr r0
/* 803D0F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0F70  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0F74  4B CC 9F 55 */	bl func_8009AEC8
/* 803D0F78  7C 7A 1B 78 */	mr r26, r3
/* 803D0F7C  7C 9B 23 78 */	mr r27, r4
/* 803D0F80  7C DC 33 78 */	mr r28, r6
/* 803D0F84  7C A3 2B 78 */	mr r3, r5
/* 803D0F88  3B A0 00 00 */	li r29, 0
/* 803D0F8C  4B FE 26 2D */	bl mHS_get_arrange_idx
/* 803D0F90  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803D0F94  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D0F98  7F 63 DB 78 */	mr r3, r27
/* 803D0F9C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803D0FA0  7C 80 2A 14 */	add r4, r0, r5
/* 803D0FA4  3F C4 00 01 */	addis r30, r4, 1
/* 803D0FA8  3B DE 9C E8 */	addi r30, r30, -25368
/* 803D0FAC  48 00 F0 99 */	bl mPr_NullCheckPersonalID
/* 803D0FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803D0FB4  40 82 00 98 */	bne lbl_803D104C
/* 803D0FB8  7F 63 DB 78 */	mr r3, r27
/* 803D0FBC  7F C4 F3 78 */	mr r4, r30
/* 803D0FC0  48 00 F1 85 */	bl mPr_CheckCmpPersonalID
/* 803D0FC4  2C 03 00 01 */	cmpwi r3, 1
/* 803D0FC8  40 82 00 84 */	bne lbl_803D104C
/* 803D0FCC  38 7E 1A 30 */	addi r3, r30, 0x1a30
/* 803D0FD0  38 80 00 0A */	li r4, 0xa
/* 803D0FD4  4B FE B8 D1 */	bl mMl_chk_mail_free_space
/* 803D0FD8  7C 7F 1B 78 */	mr r31, r3
/* 803D0FDC  2C 1F FF FF */	cmpwi r31, -1
/* 803D0FE0  41 82 00 38 */	beq lbl_803D1018
/* 803D0FE4  7F 43 D3 78 */	mr r3, r26
/* 803D0FE8  7F 64 DB 78 */	mr r4, r27
/* 803D0FEC  7F 85 E3 78 */	mr r5, r28
/* 803D0FF0  4B FF FE A1 */	bl mNpc_SetGoodbyMailData
/* 803D0FF4  2C 03 00 01 */	cmpwi r3, 1
/* 803D0FF8  40 82 00 54 */	bne lbl_803D104C
/* 803D0FFC  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803D1000  7F 44 D3 78 */	mr r4, r26
/* 803D1004  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803D1008  7C 7E 1A 14 */	add r3, r30, r3
/* 803D100C  4B FE B9 69 */	bl mMl_copy_mail
/* 803D1010  3B A0 00 01 */	li r29, 1
/* 803D1014  48 00 00 38 */	b lbl_803D104C
lbl_803D1018:
/* 803D1018  48 00 DE 4D */	bl mPO_get_keep_mail_sum
/* 803D101C  2C 03 00 05 */	cmpwi r3, 5
/* 803D1020  40 80 00 2C */	bge lbl_803D104C
/* 803D1024  7F 43 D3 78 */	mr r3, r26
/* 803D1028  7F 64 DB 78 */	mr r4, r27
/* 803D102C  7F 85 E3 78 */	mr r5, r28
/* 803D1030  4B FF FE 61 */	bl mNpc_SetGoodbyMailData
/* 803D1034  2C 03 00 01 */	cmpwi r3, 1
/* 803D1038  40 82 00 14 */	bne lbl_803D104C
/* 803D103C  7F 43 D3 78 */	mr r3, r26
/* 803D1040  38 80 00 00 */	li r4, 0
/* 803D1044  48 00 E0 1D */	bl mPO_receipt_proc
/* 803D1048  7C 7D 1B 78 */	mr r29, r3
lbl_803D104C:
/* 803D104C  7F A3 EB 78 */	mr r3, r29
/* 803D1050  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1054  4B CC 9E C1 */	bl func_8009AF14
/* 803D1058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D105C  7C 08 03 A6 */	mtlr r0
/* 803D1060  38 21 00 20 */	addi r1, r1, 0x20
/* 803D1064  4E 80 00 20 */	blr 
