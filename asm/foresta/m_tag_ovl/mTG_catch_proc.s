lbl_805F5EAC:
/* 805F5EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F5EB0  7C 08 02 A6 */	mflr r0
/* 805F5EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F5EB8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F5EBC  4B AA 50 05 */	bl func_8009AEC0
/* 805F5EC0  7C 78 1B 78 */	mr r24, r3
/* 805F5EC4  7C 99 23 78 */	mr r25, r4
/* 805F5EC8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F5ECC  3B C0 00 00 */	li r30, 0
/* 805F5ED0  3B A0 00 00 */	li r29, 0
/* 805F5ED4  3B 80 00 00 */	li r28, 0
/* 805F5ED8  80 C5 09 7C */	lwz r6, 0x97c(r5)
/* 805F5EDC  3B 60 00 00 */	li r27, 0
/* 805F5EE0  80 06 00 00 */	lwz r0, 0(r6)
/* 805F5EE4  38 E6 00 08 */	addi r7, r6, 8
/* 805F5EE8  1C A0 00 B4 */	mulli r5, r0, 0xb4
/* 805F5EEC  3B E5 00 08 */	addi r31, r5, 8
/* 805F5EF0  7F E6 FA 14 */	add r31, r6, r31
/* 805F5EF4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805F5EF8  2C 00 00 00 */	cmpwi r0, 0
/* 805F5EFC  40 82 00 50 */	bne lbl_805F5F4C
/* 805F5F00  7C E3 3B 78 */	mr r3, r7
/* 805F5F04  4B FF 9C 5D */	bl mTG_get_table_idx
/* 805F5F08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F5F0C  7C 7E 1B 78 */	mr r30, r3
/* 805F5F10  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F5F14  3C 64 00 02 */	addis r3, r4, 2
/* 805F5F18  57 C4 08 3C */	slwi r4, r30, 1
/* 805F5F1C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F5F20  3B 84 00 68 */	addi r28, r4, 0x68
/* 805F5F24  7F 83 E2 14 */	add r28, r3, r28
/* 805F5F28  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805F5F2C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 805F5F30  7C 00 24 30 */	srw r0, r0, r4
/* 805F5F34  28 03 00 00 */	cmplwi r3, 0
/* 805F5F38  54 1D 07 BE */	clrlwi r29, r0, 0x1e
/* 805F5F3C  41 82 01 C4 */	beq lbl_805F6100
/* 805F5F40  7F C4 F3 78 */	mr r4, r30
/* 805F5F44  4B DE D1 B5 */	bl mQst_CheckGrabItem
/* 805F5F48  48 00 01 B8 */	b lbl_805F6100
lbl_805F5F4C:
/* 805F5F4C  2C 00 00 01 */	cmpwi r0, 1
/* 805F5F50  41 82 00 14 */	beq lbl_805F5F64
/* 805F5F54  2C 00 00 05 */	cmpwi r0, 5
/* 805F5F58  41 82 00 0C */	beq lbl_805F5F64
/* 805F5F5C  2C 00 00 09 */	cmpwi r0, 9
/* 805F5F60  40 82 00 C0 */	bne lbl_805F6020
lbl_805F5F64:
/* 805F5F64  7C E3 3B 78 */	mr r3, r7
/* 805F5F68  4B FF 9B F9 */	bl mTG_get_table_idx
/* 805F5F6C  7C 60 1B 78 */	mr r0, r3
/* 805F5F70  7F 03 C3 78 */	mr r3, r24
/* 805F5F74  7C 1E 03 78 */	mr r30, r0
/* 805F5F78  38 80 00 00 */	li r4, 0
/* 805F5F7C  4B FF A0 45 */	bl mTG_get_mail_pointer
/* 805F5F80  7C 7B 1B 78 */	mr r27, r3
/* 805F5F84  4B DC 68 1D */	bl mMl_check_not_used_mail
/* 805F5F88  2C 03 00 01 */	cmpwi r3, 1
/* 805F5F8C  41 82 02 30 */	beq lbl_805F61BC
/* 805F5F90  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 805F5F94  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F5F98  80 03 00 00 */	lwz r0, 0(r3)
/* 805F5F9C  2C 00 00 00 */	cmpwi r0, 0
/* 805F5FA0  40 82 01 60 */	bne lbl_805F6100
/* 805F5FA4  80 19 00 00 */	lwz r0, 0(r25)
/* 805F5FA8  2C 00 00 0B */	cmpwi r0, 0xb
/* 805F5FAC  41 82 01 54 */	beq lbl_805F6100
/* 805F5FB0  2C 00 00 11 */	cmpwi r0, 0x11
/* 805F5FB4  41 82 01 4C */	beq lbl_805F6100
/* 805F5FB8  3B 9B 00 2C */	addi r28, r27, 0x2c
/* 805F5FBC  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 805F5FC0  28 00 00 00 */	cmplwi r0, 0
/* 805F5FC4  41 82 00 54 */	beq lbl_805F6018
/* 805F5FC8  7F 63 DB 78 */	mr r3, r27
/* 805F5FCC  4B DC 6B B9 */	bl mMl_check_set_present_myself
/* 805F5FD0  2C 03 00 00 */	cmpwi r3, 0
/* 805F5FD4  41 82 00 10 */	beq lbl_805F5FE4
/* 805F5FD8  3B A0 00 00 */	li r29, 0
/* 805F5FDC  3B 60 00 00 */	li r27, 0
/* 805F5FE0  48 00 01 20 */	b lbl_805F6100
lbl_805F5FE4:
/* 805F5FE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F5FE8  38 80 00 00 */	li r4, 0
/* 805F5FEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F5FF0  3C 63 00 02 */	addis r3, r3, 2
/* 805F5FF4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F5FF8  4B DE A7 31 */	bl mPr_GetPossessionItemIdx
/* 805F5FFC  2C 03 FF FF */	cmpwi r3, -1
/* 805F6000  41 82 00 10 */	beq lbl_805F6010
/* 805F6004  3B A0 00 01 */	li r29, 1
/* 805F6008  3B 60 00 00 */	li r27, 0
/* 805F600C  48 00 00 F4 */	b lbl_805F6100
lbl_805F6010:
/* 805F6010  3B 80 00 00 */	li r28, 0
/* 805F6014  48 00 00 EC */	b lbl_805F6100
lbl_805F6018:
/* 805F6018  3B 80 00 00 */	li r28, 0
/* 805F601C  48 00 00 E4 */	b lbl_805F6100
lbl_805F6020:
/* 805F6020  28 00 00 19 */	cmplwi r0, 0x19
/* 805F6024  41 81 00 DC */	bgt lbl_805F6100
/* 805F6028  3C A0 80 6D */	lis r5, lit_2457@ha /* 0x806D0B58@ha */
/* 805F602C  54 00 10 3A */	slwi r0, r0, 2
/* 805F6030  38 A5 0B 58 */	addi r5, r5, lit_2457@l /* 0x806D0B58@l */
/* 805F6034  7C 05 00 2E */	lwzx r0, r5, r0
/* 805F6038  7C 09 03 A6 */	mtctr r0
/* 805F603C  4E 80 04 20 */	bctr 
lbl_805F6040:
/* 805F6040  80 19 00 3C */	lwz r0, 0x3c(r25)
/* 805F6044  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F6048  83 C7 00 3C */	lwz r30, 0x3c(r7)
/* 805F604C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F6050  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 805F6054  57 C0 18 38 */	slwi r0, r30, 3
/* 805F6058  7C 63 22 14 */	add r3, r3, r4
/* 805F605C  7C 63 02 14 */	add r3, r3, r0
/* 805F6060  3F 83 00 01 */	addis r28, r3, 1
/* 805F6064  3B 9C C2 BC */	addi r28, r28, -15684
/* 805F6068  48 00 00 98 */	b lbl_805F6100
lbl_805F606C:
/* 805F606C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F6070  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F6074  3C 63 00 02 */	addis r3, r3, 2
/* 805F6078  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F607C  3B 83 04 A4 */	addi r28, r3, 0x4a4
/* 805F6080  48 00 00 80 */	b lbl_805F6100
lbl_805F6084:
/* 805F6084  38 A0 21 03 */	li r5, 0x2103
/* 805F6088  4B FF D2 E1 */	bl mTG_make_money_sack
/* 805F608C  48 00 01 30 */	b lbl_805F61BC
lbl_805F6090:
/* 805F6090  7C E3 3B 78 */	mr r3, r7
/* 805F6094  4B FF 9A CD */	bl mTG_get_table_idx
/* 805F6098  7C 7E 1B 78 */	mr r30, r3
/* 805F609C  3B 81 00 08 */	addi r28, r1, 8
/* 805F60A0  3C 7E 00 01 */	addis r3, r30, 1
/* 805F60A4  38 03 FE 31 */	addi r0, r3, -463
/* 805F60A8  B0 01 00 08 */	sth r0, 8(r1)
/* 805F60AC  48 00 00 54 */	b lbl_805F6100
lbl_805F60B0:
/* 805F60B0  7C E3 3B 78 */	mr r3, r7
/* 805F60B4  4B FF 9A AD */	bl mTG_get_table_idx
/* 805F60B8  7C 60 1B 78 */	mr r0, r3
/* 805F60BC  7F 03 C3 78 */	mr r3, r24
/* 805F60C0  7C 1E 03 78 */	mr r30, r0
/* 805F60C4  4B FD 71 85 */	bl mCO_top_folder
/* 805F60C8  1C 63 00 0C */	mulli r3, r3, 0xc
/* 805F60CC  3B 81 00 08 */	addi r28, r1, 8
/* 805F60D0  3C 03 00 01 */	addis r0, r3, 1
/* 805F60D4  7C 60 F2 14 */	add r3, r0, r30
/* 805F60D8  38 03 FE 39 */	addi r0, r3, -455
/* 805F60DC  B0 01 00 08 */	sth r0, 8(r1)
/* 805F60E0  48 00 00 20 */	b lbl_805F6100
lbl_805F60E4:
/* 805F60E4  7C E3 3B 78 */	mr r3, r7
/* 805F60E8  4B FF 9A 79 */	bl mTG_get_table_idx
/* 805F60EC  7C 7E 1B 78 */	mr r30, r3
/* 805F60F0  3B 81 00 08 */	addi r28, r1, 8
/* 805F60F4  3C 7E 00 01 */	addis r3, r30, 1
/* 805F60F8  38 03 FE 99 */	addi r0, r3, -359
/* 805F60FC  B0 01 00 08 */	sth r0, 8(r1)
lbl_805F6100:
/* 805F6100  28 1B 00 00 */	cmplwi r27, 0
/* 805F6104  40 82 00 18 */	bne lbl_805F611C
/* 805F6108  28 1C 00 00 */	cmplwi r28, 0
/* 805F610C  41 82 00 B0 */	beq lbl_805F61BC
/* 805F6110  A0 1C 00 00 */	lhz r0, 0(r28)
/* 805F6114  28 00 00 00 */	cmplwi r0, 0
/* 805F6118  41 82 00 A4 */	beq lbl_805F61BC
lbl_805F611C:
/* 805F611C  80 B8 00 2C */	lwz r5, 0x2c(r24)
/* 805F6120  7F 03 C3 78 */	mr r3, r24
/* 805F6124  7F 24 CB 78 */	mr r4, r25
/* 805F6128  83 45 09 80 */	lwz r26, 0x980(r5)
/* 805F612C  48 00 0B 31 */	bl mTG_mark_main_CLR
/* 805F6130  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805F6134  2C 00 00 06 */	cmpwi r0, 6
/* 805F6138  40 82 00 48 */	bne lbl_805F6180
/* 805F613C  80 19 00 3C */	lwz r0, 0x3c(r25)
/* 805F6140  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F6144  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F6148  57 C5 18 38 */	slwi r5, r30, 3
/* 805F614C  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805F6150  3C 83 00 01 */	addis r4, r3, 1
/* 805F6154  7C 04 02 14 */	add r0, r4, r0
/* 805F6158  7C 60 2A 14 */	add r3, r0, r5
/* 805F615C  A8 03 C2 BE */	lha r0, -0x3d42(r3)
/* 805F6160  B0 1A 03 68 */	sth r0, 0x368(r26)
/* 805F6164  80 19 00 3C */	lwz r0, 0x3c(r25)
/* 805F6168  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805F616C  7C 04 02 14 */	add r0, r4, r0
/* 805F6170  7C 60 2A 14 */	add r3, r0, r5
/* 805F6174  80 03 C2 C0 */	lwz r0, -0x3d40(r3)
/* 805F6178  90 1A 03 6C */	stw r0, 0x36c(r26)
/* 805F617C  48 00 00 14 */	b lbl_805F6190
lbl_805F6180:
/* 805F6180  38 60 00 01 */	li r3, 1
/* 805F6184  38 00 00 00 */	li r0, 0
/* 805F6188  B0 7A 03 68 */	sth r3, 0x368(r26)
/* 805F618C  90 1A 03 6C */	stw r0, 0x36c(r26)
lbl_805F6190:
/* 805F6190  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 805F6194  7F 03 C3 78 */	mr r3, r24
/* 805F6198  7F 64 DB 78 */	mr r4, r27
/* 805F619C  7F 85 E3 78 */	mr r5, r28
/* 805F61A0  7F A6 EB 78 */	mr r6, r29
/* 805F61A4  7F C8 F3 78 */	mr r8, r30
/* 805F61A8  4B FF CF C9 */	bl mTG_catch_item_from_table
/* 805F61AC  7F 03 C3 78 */	mr r3, r24
/* 805F61B0  38 80 00 00 */	li r4, 0
/* 805F61B4  38 A0 00 00 */	li r5, 0
/* 805F61B8  4B FF 95 FD */	bl mTG_return_tag_init
lbl_805F61BC:
/* 805F61BC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F61C0  4B AA 4D 4D */	bl func_8009AF0C
/* 805F61C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F61C8  7C 08 03 A6 */	mtlr r0
/* 805F61CC  38 21 00 30 */	addi r1, r1, 0x30
/* 805F61D0  4E 80 00 20 */	blr 
