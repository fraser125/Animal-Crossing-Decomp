lbl_80549C04:
/* 80549C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549C08  7C 08 02 A6 */	mflr r0
/* 80549C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80549C14  4B B5 12 BD */	bl func_8009AED0
/* 80549C18  7C 7C 1B 78 */	mr r28, r3
/* 80549C1C  7C 9D 23 78 */	mr r29, r4
/* 80549C20  4B E7 5A 89 */	bl func_803BF6A8
/* 80549C24  7C 60 1B 78 */	mr r0, r3
/* 80549C28  38 60 01 32 */	li r3, 0x132
/* 80549C2C  7C 1E 03 78 */	mr r30, r0
/* 80549C30  4B FF D0 B5 */	bl aNSC_get_msg_no
/* 80549C34  7C 7F 1B 78 */	mr r31, r3
/* 80549C38  7F C3 F3 78 */	mr r3, r30
/* 80549C3C  4B E7 63 91 */	bl mMsg_Get_msg_num
/* 80549C40  7C 03 F8 00 */	cmpw r3, r31
/* 80549C44  40 82 00 D4 */	bne lbl_80549D18
/* 80549C48  7F C3 F3 78 */	mr r3, r30
/* 80549C4C  4B E7 70 4D */	bl mMsg_Check_MainNormalContinue
/* 80549C50  2C 03 00 00 */	cmpwi r3, 0
/* 80549C54  41 82 00 C4 */	beq lbl_80549D18
/* 80549C58  3B E0 FF FF */	li r31, -1
/* 80549C5C  4B E3 98 E5 */	bl func_80383540
/* 80549C60  4B E3 9F 0D */	bl mChoice_Get_ChoseNum
/* 80549C64  2C 03 00 01 */	cmpwi r3, 1
/* 80549C68  41 82 00 78 */	beq lbl_80549CE0
/* 80549C6C  40 80 00 10 */	bge lbl_80549C7C
/* 80549C70  2C 03 00 00 */	cmpwi r3, 0
/* 80549C74  40 80 00 14 */	bge lbl_80549C88
/* 80549C78  48 00 00 74 */	b lbl_80549CEC
lbl_80549C7C:
/* 80549C7C  2C 03 00 03 */	cmpwi r3, 3
/* 80549C80  40 80 00 6C */	bge lbl_80549CEC
/* 80549C84  48 00 00 64 */	b lbl_80549CE8
lbl_80549C88:
/* 80549C88  83 FD 1F 60 */	lwz r31, 0x1f60(r29)
/* 80549C8C  38 7C 09 D8 */	addi r3, r28, 0x9d8
/* 80549C90  A1 1C 09 F4 */	lhz r8, 0x9f4(r28)
/* 80549C94  38 DC 09 D0 */	addi r6, r28, 0x9d0
/* 80549C98  38 FC 09 C8 */	addi r7, r28, 0x9c8
/* 80549C9C  38 80 00 04 */	li r4, 4
/* 80549CA0  38 A0 00 01 */	li r5, 1
/* 80549CA4  39 20 00 00 */	li r9, 0
/* 80549CA8  39 40 00 00 */	li r10, 0
/* 80549CAC  4B E7 42 D9 */	bl mMpswd_make_password
/* 80549CB0  7F 83 E3 78 */	mr r3, r28
/* 80549CB4  4B FF C4 89 */	bl aNSC_set_pw_password_str
/* 80549CB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80549CBC  88 9F 00 02 */	lbz r4, 2(r31)
/* 80549CC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80549CC4  38 A0 00 00 */	li r5, 0
/* 80549CC8  3C 63 00 02 */	addis r3, r3, 2
/* 80549CCC  38 C0 00 00 */	li r6, 0
/* 80549CD0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80549CD4  4B E9 71 55 */	bl mPr_SetPossessionItem
/* 80549CD8  3B E0 00 00 */	li r31, 0
/* 80549CDC  48 00 00 10 */	b lbl_80549CEC
lbl_80549CE0:
/* 80549CE0  3B E0 00 01 */	li r31, 1
/* 80549CE4  48 00 00 08 */	b lbl_80549CEC
lbl_80549CE8:
/* 80549CE8  3B E0 00 02 */	li r31, 2
lbl_80549CEC:
/* 80549CEC  2C 1F FF FF */	cmpwi r31, -1
/* 80549CF0  41 82 00 28 */	beq lbl_80549D18
/* 80549CF4  7F C3 F3 78 */	mr r3, r30
/* 80549CF8  4B E7 70 31 */	bl mMsg_Set_ForceNext
/* 80549CFC  3C 60 80 6A */	lis r3, next_act_idx_1818@ha /* 0x806A4C04@ha */
/* 80549D00  57 E0 10 3A */	slwi r0, r31, 2
/* 80549D04  38 83 4C 04 */	addi r4, r3, next_act_idx_1818@l /* 0x806A4C04@l */
/* 80549D08  7F 83 E3 78 */	mr r3, r28
/* 80549D0C  7C A4 00 2E */	lwzx r5, r4, r0
/* 80549D10  7F A4 EB 78 */	mr r4, r29
/* 80549D14  48 00 12 09 */	bl aNSC_setupAction
lbl_80549D18:
/* 80549D18  39 61 00 20 */	addi r11, r1, 0x20
/* 80549D1C  4B B5 12 01 */	bl func_8009AF1C
/* 80549D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549D24  7C 08 03 A6 */	mtlr r0
/* 80549D28  38 21 00 20 */	addi r1, r1, 0x20
/* 80549D2C  4E 80 00 20 */	blr 
