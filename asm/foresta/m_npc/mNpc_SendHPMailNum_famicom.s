lbl_803D5F44:
/* 803D5F44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D5F48  7C 08 02 A6 */	mflr r0
/* 803D5F4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D5F50  39 61 00 20 */	addi r11, r1, 0x20
/* 803D5F54  4B CC 4F 75 */	bl func_8009AEC8
/* 803D5F58  3C C0 81 17 */	lis r6, l_npc_hp_mail@ha /* 0x8116EBB4@ha */
/* 803D5F5C  7C 7B 1B 78 */	mr r27, r3
/* 803D5F60  38 06 EB B4 */	addi r0, r6, l_npc_hp_mail@l /* 0x8116EBB4@l */
/* 803D5F64  7C 9C 23 78 */	mr r28, r4
/* 803D5F68  7C BA 2B 78 */	mr r26, r5
/* 803D5F6C  3B A0 00 00 */	li r29, 0
/* 803D5F70  7C 1F 03 78 */	mr r31, r0
/* 803D5F74  3B C0 00 00 */	li r30, 0
/* 803D5F78  48 00 8E ED */	bl mPO_get_keep_mail_sum
/* 803D5F7C  2C 03 00 05 */	cmpwi r3, 5
/* 803D5F80  40 80 01 64 */	bge lbl_803D60E4
/* 803D5F84  7F E3 FB 78 */	mr r3, r31
/* 803D5F88  4B FE 67 79 */	bl mMl_clear_mail
/* 803D5F8C  88 1A 00 05 */	lbz r0, 5(r26)
/* 803D5F90  28 00 00 01 */	cmplwi r0, 1
/* 803D5F94  40 82 00 44 */	bne lbl_803D5FD8
/* 803D5F98  7F 43 D3 78 */	mr r3, r26
/* 803D5F9C  4B FE 83 05 */	bl mMpswd_password_zuru_check
/* 803D5FA0  2C 03 00 00 */	cmpwi r3, 0
/* 803D5FA4  40 82 00 34 */	bne lbl_803D5FD8
/* 803D5FA8  7F 43 D3 78 */	mr r3, r26
/* 803D5FAC  4B FE 8A C5 */	bl mMpswd_check_present
/* 803D5FB0  2C 03 00 01 */	cmpwi r3, 1
/* 803D5FB4  40 82 00 24 */	bne lbl_803D5FD8
/* 803D5FB8  7F 43 D3 78 */	mr r3, r26
/* 803D5FBC  4B FE 8B 85 */	bl mMpswd_check_name
/* 803D5FC0  2C 03 00 01 */	cmpwi r3, 1
/* 803D5FC4  40 82 00 14 */	bne lbl_803D5FD8
/* 803D5FC8  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D5FCC  A3 BA 00 00 */	lhz r29, 0(r26)
/* 803D5FD0  3B C3 02 4A */	addi r30, r3, 0x24a
/* 803D5FD4  48 00 00 0C */	b lbl_803D5FE0
lbl_803D5FD8:
/* 803D5FD8  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D5FDC  3B C3 02 50 */	addi r30, r3, 0x250
lbl_803D5FE0:
/* 803D5FE0  7F 64 DB 78 */	mr r4, r27
/* 803D5FE4  38 60 00 00 */	li r3, 0
/* 803D5FE8  38 A0 00 08 */	li r5, 8
/* 803D5FEC  4B FD B9 6D */	bl mHandbill_Set_free_str
/* 803D5FF0  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D5FF4  38 80 00 08 */	li r4, 8
/* 803D5FF8  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D5FFC  4B FF 53 35 */	bl mNpc_ClearBufSpace1
/* 803D6000  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6004  7F 84 E3 78 */	mr r4, r28
/* 803D6008  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D600C  4B FF B9 45 */	bl mNpc_GetNpcWorldNameAnm
/* 803D6010  3C 80 81 17 */	lis r4, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6014  38 60 00 01 */	li r3, 1
/* 803D6018  38 84 EC E0 */	addi r4, r4, name_str_4732@l /* 0x8116ECE0@l */
/* 803D601C  38 A0 00 08 */	li r5, 8
/* 803D6020  4B FD B9 39 */	bl mHandbill_Set_free_str
/* 803D6024  38 9A 00 0F */	addi r4, r26, 0xf
/* 803D6028  38 60 00 02 */	li r3, 2
/* 803D602C  38 A0 00 08 */	li r5, 8
/* 803D6030  4B FD B9 29 */	bl mHandbill_Set_free_str
/* 803D6034  38 9A 00 07 */	addi r4, r26, 7
/* 803D6038  38 60 00 03 */	li r3, 3
/* 803D603C  38 A0 00 08 */	li r5, 8
/* 803D6040  4B FD B9 19 */	bl mHandbill_Set_free_str
/* 803D6044  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 803D6048  41 82 00 38 */	beq lbl_803D6080
/* 803D604C  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6050  38 80 00 10 */	li r4, 0x10
/* 803D6054  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D6058  4B FF 52 D9 */	bl mNpc_ClearBufSpace1
/* 803D605C  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6060  7F A4 EB 78 */	mr r4, r29
/* 803D6064  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D6068  4B FD F9 3D */	bl mIN_copy_name_str
/* 803D606C  3C 80 81 17 */	lis r4, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6070  38 60 00 04 */	li r3, 4
/* 803D6074  38 84 EC E0 */	addi r4, r4, name_str_4732@l /* 0x8116ECE0@l */
/* 803D6078  38 A0 00 10 */	li r5, 0x10
/* 803D607C  4B FD B8 DD */	bl mHandbill_Set_free_str
lbl_803D6080:
/* 803D6080  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6084  38 80 00 08 */	li r4, 8
/* 803D6088  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D608C  4B FF 52 A5 */	bl mNpc_ClearBufSpace1
/* 803D6090  3C 60 81 17 */	lis r3, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D6094  7F 84 E3 78 */	mr r4, r28
/* 803D6098  38 63 EC E0 */	addi r3, r3, name_str_4732@l /* 0x8116ECE0@l */
/* 803D609C  4B FF B8 B5 */	bl mNpc_GetNpcWorldNameAnm
/* 803D60A0  3C 80 81 17 */	lis r4, name_str_4732@ha /* 0x8116ECE0@ha */
/* 803D60A4  38 60 00 06 */	li r3, 6
/* 803D60A8  38 84 EC E0 */	addi r4, r4, name_str_4732@l /* 0x8116ECE0@l */
/* 803D60AC  38 A0 00 08 */	li r5, 8
/* 803D60B0  4B FD B8 A9 */	bl mHandbill_Set_free_str
/* 803D60B4  4B FF 7B FD */	bl mNpc_GetPaperType
/* 803D60B8  7C 67 1B 78 */	mr r7, r3
/* 803D60BC  7F E3 FB 78 */	mr r3, r31
/* 803D60C0  7F 64 DB 78 */	mr r4, r27
/* 803D60C4  7F 85 E3 78 */	mr r5, r28
/* 803D60C8  7F A6 EB 78 */	mr r6, r29
/* 803D60CC  7F C8 F3 78 */	mr r8, r30
/* 803D60D0  4B FF 7C 41 */	bl mNpc_LoadMailDataCommon2
/* 803D60D4  7F E3 FB 78 */	mr r3, r31
/* 803D60D8  38 80 00 00 */	li r4, 0
/* 803D60DC  48 00 8F 85 */	bl mPO_receipt_proc
/* 803D60E0  7C 7E 1B 78 */	mr r30, r3
lbl_803D60E4:
/* 803D60E4  7F C3 F3 78 */	mr r3, r30
/* 803D60E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D60EC  4B CC 4E 29 */	bl func_8009AF14
/* 803D60F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D60F4  7C 08 03 A6 */	mtlr r0
/* 803D60F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D60FC  4E 80 00 20 */	blr 
