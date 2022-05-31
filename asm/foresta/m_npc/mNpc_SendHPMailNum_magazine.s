lbl_803D6C3C:
/* 803D6C3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D6C40  7C 08 02 A6 */	mflr r0
/* 803D6C44  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D6C48  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6C4C  4B CC 42 7D */	bl func_8009AEC8
/* 803D6C50  3C C0 81 17 */	lis r6, l_npc_hp_mail@ha /* 0x8116EBB4@ha */
/* 803D6C54  7C 7B 1B 78 */	mr r27, r3
/* 803D6C58  38 06 EB B4 */	addi r0, r6, l_npc_hp_mail@l /* 0x8116EBB4@l */
/* 803D6C5C  7C 9C 23 78 */	mr r28, r4
/* 803D6C60  7C BA 2B 78 */	mr r26, r5
/* 803D6C64  3B A0 00 00 */	li r29, 0
/* 803D6C68  7C 1F 03 78 */	mr r31, r0
/* 803D6C6C  3B C0 00 00 */	li r30, 0
/* 803D6C70  48 00 81 F5 */	bl mPO_get_keep_mail_sum
/* 803D6C74  2C 03 00 05 */	cmpwi r3, 5
/* 803D6C78  40 80 01 84 */	bge lbl_803D6DFC
/* 803D6C7C  7F E3 FB 78 */	mr r3, r31
/* 803D6C80  4B FE 5A 81 */	bl mMl_clear_mail
/* 803D6C84  88 7A 00 05 */	lbz r3, 5(r26)
/* 803D6C88  38 80 00 03 */	li r4, 3
/* 803D6C8C  4B FF F7 51 */	bl mNpc_CheckHit_Rate
/* 803D6C90  2C 03 00 01 */	cmpwi r3, 1
/* 803D6C94  40 82 00 5C */	bne lbl_803D6CF0
/* 803D6C98  7F 43 D3 78 */	mr r3, r26
/* 803D6C9C  4B FE 76 05 */	bl mMpswd_password_zuru_check
/* 803D6CA0  2C 03 00 00 */	cmpwi r3, 0
/* 803D6CA4  40 82 00 4C */	bne lbl_803D6CF0
/* 803D6CA8  7F 43 D3 78 */	mr r3, r26
/* 803D6CAC  4B FE 7D C5 */	bl mMpswd_check_present
/* 803D6CB0  2C 03 00 01 */	cmpwi r3, 1
/* 803D6CB4  40 82 00 3C */	bne lbl_803D6CF0
/* 803D6CB8  88 7A 00 05 */	lbz r3, 5(r26)
/* 803D6CBC  4B FF F7 6D */	bl mNpc_GetHit
/* 803D6CC0  2C 03 00 01 */	cmpwi r3, 1
/* 803D6CC4  40 82 00 20 */	bne lbl_803D6CE4
/* 803D6CC8  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803D6CCC  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D6CD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D6CD4  3B C3 02 A0 */	addi r30, r3, 0x2a0
/* 803D6CD8  41 82 00 20 */	beq lbl_803D6CF8
/* 803D6CDC  7C 1D 03 78 */	mr r29, r0
/* 803D6CE0  48 00 00 18 */	b lbl_803D6CF8
lbl_803D6CE4:
/* 803D6CE4  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D6CE8  3B C3 02 A6 */	addi r30, r3, 0x2a6
/* 803D6CEC  48 00 00 0C */	b lbl_803D6CF8
lbl_803D6CF0:
/* 803D6CF0  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D6CF4  3B C3 02 AC */	addi r30, r3, 0x2ac
lbl_803D6CF8:
/* 803D6CF8  7F 64 DB 78 */	mr r4, r27
/* 803D6CFC  38 60 00 00 */	li r3, 0
/* 803D6D00  38 A0 00 08 */	li r5, 8
/* 803D6D04  4B FD AC 55 */	bl mHandbill_Set_free_str
/* 803D6D08  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D0C  38 80 00 08 */	li r4, 8
/* 803D6D10  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D14  4B FF 46 1D */	bl mNpc_ClearBufSpace1
/* 803D6D18  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D1C  7F 84 E3 78 */	mr r4, r28
/* 803D6D20  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D24  4B FF AC 2D */	bl mNpc_GetNpcWorldNameAnm
/* 803D6D28  3C 80 81 17 */	lis r4, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D2C  38 60 00 01 */	li r3, 1
/* 803D6D30  38 84 ED 54 */	addi r4, r4, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D34  38 A0 00 08 */	li r5, 8
/* 803D6D38  4B FD AC 21 */	bl mHandbill_Set_free_str
/* 803D6D3C  38 9A 00 0F */	addi r4, r26, 0xf
/* 803D6D40  38 60 00 02 */	li r3, 2
/* 803D6D44  38 A0 00 08 */	li r5, 8
/* 803D6D48  4B FD AC 11 */	bl mHandbill_Set_free_str
/* 803D6D4C  38 9A 00 07 */	addi r4, r26, 7
/* 803D6D50  38 60 00 03 */	li r3, 3
/* 803D6D54  38 A0 00 08 */	li r5, 8
/* 803D6D58  4B FD AC 01 */	bl mHandbill_Set_free_str
/* 803D6D5C  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 803D6D60  41 82 00 38 */	beq lbl_803D6D98
/* 803D6D64  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D68  38 80 00 10 */	li r4, 0x10
/* 803D6D6C  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D70  4B FF 45 C1 */	bl mNpc_ClearBufSpace1
/* 803D6D74  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D78  7F A4 EB 78 */	mr r4, r29
/* 803D6D7C  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D80  4B FD EC 25 */	bl mIN_copy_name_str
/* 803D6D84  3C 80 81 17 */	lis r4, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D88  38 60 00 04 */	li r3, 4
/* 803D6D8C  38 84 ED 54 */	addi r4, r4, name_str_4917@l /* 0x8116ED54@l */
/* 803D6D90  38 A0 00 10 */	li r5, 0x10
/* 803D6D94  4B FD AB C5 */	bl mHandbill_Set_free_str
lbl_803D6D98:
/* 803D6D98  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6D9C  38 80 00 08 */	li r4, 8
/* 803D6DA0  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6DA4  4B FF 45 8D */	bl mNpc_ClearBufSpace1
/* 803D6DA8  3C 60 81 17 */	lis r3, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6DAC  7F 84 E3 78 */	mr r4, r28
/* 803D6DB0  38 63 ED 54 */	addi r3, r3, name_str_4917@l /* 0x8116ED54@l */
/* 803D6DB4  4B FF AB 9D */	bl mNpc_GetNpcWorldNameAnm
/* 803D6DB8  3C 80 81 17 */	lis r4, name_str_4917@ha /* 0x8116ED54@ha */
/* 803D6DBC  38 60 00 06 */	li r3, 6
/* 803D6DC0  38 84 ED 54 */	addi r4, r4, name_str_4917@l /* 0x8116ED54@l */
/* 803D6DC4  38 A0 00 08 */	li r5, 8
/* 803D6DC8  4B FD AB 91 */	bl mHandbill_Set_free_str
/* 803D6DCC  4B FF 6E E5 */	bl mNpc_GetPaperType
/* 803D6DD0  7C 67 1B 78 */	mr r7, r3
/* 803D6DD4  7F E3 FB 78 */	mr r3, r31
/* 803D6DD8  7F 64 DB 78 */	mr r4, r27
/* 803D6DDC  7F 85 E3 78 */	mr r5, r28
/* 803D6DE0  7F A6 EB 78 */	mr r6, r29
/* 803D6DE4  7F C8 F3 78 */	mr r8, r30
/* 803D6DE8  4B FF 6F 29 */	bl mNpc_LoadMailDataCommon2
/* 803D6DEC  7F E3 FB 78 */	mr r3, r31
/* 803D6DF0  38 80 00 00 */	li r4, 0
/* 803D6DF4  48 00 82 6D */	bl mPO_receipt_proc
/* 803D6DF8  7C 7E 1B 78 */	mr r30, r3
lbl_803D6DFC:
/* 803D6DFC  7F C3 F3 78 */	mr r3, r30
/* 803D6E00  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6E04  4B CC 41 11 */	bl func_8009AF14
/* 803D6E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D6E0C  7C 08 03 A6 */	mtlr r0
/* 803D6E10  38 21 00 20 */	addi r1, r1, 0x20
/* 803D6E14  4E 80 00 20 */	blr 
