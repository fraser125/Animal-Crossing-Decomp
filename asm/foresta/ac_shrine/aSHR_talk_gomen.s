lbl_805BACD8:
/* 805BACD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BACDC  7C 08 02 A6 */	mflr r0
/* 805BACE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BACE4  39 61 00 30 */	addi r11, r1, 0x30
/* 805BACE8  4B AE 01 E5 */	bl func_8009AECC
/* 805BACEC  7C 7B 1B 78 */	mr r27, r3
/* 805BACF0  7C 9C 23 78 */	mr r28, r4
/* 805BACF4  4B E0 49 B5 */	bl func_803BF6A8
/* 805BACF8  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805BACFC  7C 7F 1B 78 */	mr r31, r3
/* 805BAD00  3B DC 1D EC */	addi r30, r28, 0x1dec
/* 805BAD04  3B A0 FF FF */	li r29, -1
/* 805BAD08  2C 00 00 01 */	cmpwi r0, 1
/* 805BAD0C  41 82 00 40 */	beq lbl_805BAD4C
/* 805BAD10  40 80 00 10 */	bge lbl_805BAD20
/* 805BAD14  2C 00 00 00 */	cmpwi r0, 0
/* 805BAD18  40 80 00 14 */	bge lbl_805BAD2C
/* 805BAD1C  48 00 01 64 */	b lbl_805BAE80
lbl_805BAD20:
/* 805BAD20  2C 00 00 03 */	cmpwi r0, 3
/* 805BAD24  40 80 01 5C */	bge lbl_805BAE80
/* 805BAD28  48 00 00 50 */	b lbl_805BAD78
lbl_805BAD2C:
/* 805BAD2C  4B E0 5F 6D */	bl mMsg_Check_MainNormalContinue
/* 805BAD30  2C 03 00 01 */	cmpwi r3, 1
/* 805BAD34  40 82 01 4C */	bne lbl_805BAE80
/* 805BAD38  7F E3 FB 78 */	mr r3, r31
/* 805BAD3C  4B E0 4D 09 */	bl mMsg_request_main_disappear_wait_type1
/* 805BAD40  38 00 00 01 */	li r0, 1
/* 805BAD44  90 1B 02 B8 */	stw r0, 0x2b8(r27)
/* 805BAD48  48 00 01 38 */	b lbl_805BAE80
lbl_805BAD4C:
/* 805BAD4C  4B E0 49 F5 */	bl mMsg_Check_main_wait
/* 805BAD50  2C 03 00 01 */	cmpwi r3, 1
/* 805BAD54  40 82 01 2C */	bne lbl_805BAE80
/* 805BAD58  7F C3 F3 78 */	mr r3, r30
/* 805BAD5C  38 80 00 01 */	li r4, 1
/* 805BAD60  38 A0 00 0B */	li r5, 0xb
/* 805BAD64  38 C0 00 00 */	li r6, 0
/* 805BAD68  4B E3 49 75 */	bl mSM_open_submenu
/* 805BAD6C  38 00 00 02 */	li r0, 2
/* 805BAD70  90 1B 02 B8 */	stw r0, 0x2b8(r27)
/* 805BAD74  48 00 01 0C */	b lbl_805BAE80
lbl_805BAD78:
/* 805BAD78  88 1E 01 62 */	lbz r0, 0x162(r30)
/* 805BAD7C  28 00 00 00 */	cmplwi r0, 0
/* 805BAD80  40 82 01 00 */	bne lbl_805BAE80
/* 805BAD84  83 DE 01 74 */	lwz r30, 0x174(r30)
/* 805BAD88  A0 1E 00 00 */	lhz r0, 0(r30)
/* 805BAD8C  28 00 00 00 */	cmplwi r0, 0
/* 805BAD90  40 82 00 0C */	bne lbl_805BAD9C
/* 805BAD94  4B E0 4B 41 */	bl mMsg_request_main_forceoff
/* 805BAD98  48 00 00 AC */	b lbl_805BAE44
lbl_805BAD9C:
/* 805BAD9C  88 7E 00 02 */	lbz r3, 2(r30)
/* 805BADA0  38 80 00 00 */	li r4, 0
/* 805BADA4  4B E2 85 A1 */	bl mQst_CheckNpcExistbyItemIdx
/* 805BADA8  2C 03 00 00 */	cmpwi r3, 0
/* 805BADAC  41 82 00 0C */	beq lbl_805BADB8
/* 805BADB0  3B A0 11 29 */	li r29, 0x1129
/* 805BADB4  48 00 00 90 */	b lbl_805BAE44
lbl_805BADB8:
/* 805BADB8  88 7E 00 02 */	lbz r3, 2(r30)
/* 805BADBC  38 80 00 01 */	li r4, 1
/* 805BADC0  4B E2 85 85 */	bl mQst_CheckNpcExistbyItemIdx
/* 805BADC4  2C 03 00 00 */	cmpwi r3, 0
/* 805BADC8  41 82 00 0C */	beq lbl_805BADD4
/* 805BADCC  3B A0 11 2A */	li r29, 0x112a
/* 805BADD0  48 00 00 74 */	b lbl_805BAE44
lbl_805BADD4:
/* 805BADD4  88 7E 00 02 */	lbz r3, 2(r30)
/* 805BADD8  4B E2 8E 91 */	bl mQst_CheckFirstJobQuestbyItemIdx
/* 805BADDC  2C 03 00 00 */	cmpwi r3, 0
/* 805BADE0  41 82 00 0C */	beq lbl_805BADEC
/* 805BADE4  3B A0 11 2A */	li r29, 0x112a
/* 805BADE8  48 00 00 5C */	b lbl_805BAE44
lbl_805BADEC:
/* 805BADEC  A0 9E 00 00 */	lhz r4, 0(r30)
/* 805BADF0  38 61 00 08 */	addi r3, r1, 8
/* 805BADF4  4B DF AB B1 */	bl mIN_copy_name_str
/* 805BADF8  A0 7E 00 00 */	lhz r3, 0(r30)
/* 805BADFC  4B DF AD 1D */	bl mIN_get_item_article
/* 805BAE00  7C 67 1B 78 */	mr r7, r3
/* 805BAE04  7F E3 FB 78 */	mr r3, r31
/* 805BAE08  38 A1 00 08 */	addi r5, r1, 8
/* 805BAE0C  38 80 00 00 */	li r4, 0
/* 805BAE10  38 C0 00 10 */	li r6, 0x10
/* 805BAE14  4B E0 4F 19 */	bl mMsg_Set_free_str_art
/* 805BAE18  88 7E 00 02 */	lbz r3, 2(r30)
/* 805BAE1C  3B A0 11 2B */	li r29, 0x112b
/* 805BAE20  4B E2 80 B5 */	bl mQst_ClearQuestbyPossessionIdx
/* 805BAE24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BAE28  88 9E 00 02 */	lbz r4, 2(r30)
/* 805BAE2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BAE30  38 A0 00 00 */	li r5, 0
/* 805BAE34  3C 63 00 02 */	addis r3, r3, 2
/* 805BAE38  38 C0 00 00 */	li r6, 0
/* 805BAE3C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805BAE40  4B E2 5F E9 */	bl mPr_SetPossessionItem
lbl_805BAE44:
/* 805BAE44  2C 1D FF FF */	cmpwi r29, -1
/* 805BAE48  41 82 00 20 */	beq lbl_805BAE68
/* 805BAE4C  7F E3 FB 78 */	mr r3, r31
/* 805BAE50  4B E0 5E D9 */	bl mMsg_Set_ForceNext
/* 805BAE54  7F E3 FB 78 */	mr r3, r31
/* 805BAE58  4B E0 4D 31 */	bl mMsg_request_main_appear_wait_type1
/* 805BAE5C  7F E3 FB 78 */	mr r3, r31
/* 805BAE60  7F A4 EB 78 */	mr r4, r29
/* 805BAE64  4B E0 51 61 */	bl mMsg_Set_continue_msg_num
lbl_805BAE68:
/* 805BAE68  7F 63 DB 78 */	mr r3, r27
/* 805BAE6C  7F 84 E3 78 */	mr r4, r28
/* 805BAE70  38 A0 00 04 */	li r5, 4
/* 805BAE74  48 00 02 5D */	bl aSHR_setup_action
/* 805BAE78  38 00 00 00 */	li r0, 0
/* 805BAE7C  90 1B 02 B8 */	stw r0, 0x2b8(r27)
lbl_805BAE80:
/* 805BAE80  39 61 00 30 */	addi r11, r1, 0x30
/* 805BAE84  4B AE 00 95 */	bl func_8009AF18
/* 805BAE88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BAE8C  7C 08 03 A6 */	mtlr r0
/* 805BAE90  38 21 00 30 */	addi r1, r1, 0x30
/* 805BAE94  4E 80 00 20 */	blr 
