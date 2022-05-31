lbl_80573B04:
/* 80573B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573B08  7C 08 02 A6 */	mflr r0
/* 80573B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80573B18  7C 7E 1B 78 */	mr r30, r3
/* 80573B1C  4B E4 BB 8D */	bl func_803BF6A8
/* 80573B20  7C 60 1B 78 */	mr r0, r3
/* 80573B24  38 60 00 04 */	li r3, 4
/* 80573B28  7C 1F 03 78 */	mr r31, r0
/* 80573B2C  38 80 00 09 */	li r4, 9
/* 80573B30  4B E2 49 4D */	bl mDemo_Get_OrderValue
/* 80573B34  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80573B38  2C 00 00 02 */	cmpwi r0, 2
/* 80573B3C  41 82 00 30 */	beq lbl_80573B6C
/* 80573B40  40 80 00 D4 */	bge lbl_80573C14
/* 80573B44  2C 00 00 01 */	cmpwi r0, 1
/* 80573B48  40 80 00 08 */	bge lbl_80573B50
/* 80573B4C  48 00 00 C8 */	b lbl_80573C14
lbl_80573B50:
/* 80573B50  38 60 00 04 */	li r3, 4
/* 80573B54  38 80 00 09 */	li r4, 9
/* 80573B58  38 A0 00 02 */	li r5, 2
/* 80573B5C  4B E2 48 DD */	bl mDemo_Set_OrderValue
/* 80573B60  7F E3 FB 78 */	mr r3, r31
/* 80573B64  4B E4 D1 DD */	bl mMsg_Set_LockContinue
/* 80573B68  48 00 00 AC */	b lbl_80573C14
lbl_80573B6C:
/* 80573B6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80573B70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80573B74  3C 63 00 03 */	addis r3, r3, 3
/* 80573B78  88 63 DB A8 */	lbz r3, -0x2458(r3)
/* 80573B7C  4B E8 7B 19 */	bl mCD_card_format_bg
/* 80573B80  2C 03 00 00 */	cmpwi r3, 0
/* 80573B84  41 82 00 90 */	beq lbl_80573C14
/* 80573B88  40 80 00 10 */	bge lbl_80573B98
/* 80573B8C  2C 03 FF FF */	cmpwi r3, -1
/* 80573B90  40 80 00 4C */	bge lbl_80573BDC
/* 80573B94  48 00 00 80 */	b lbl_80573C14
lbl_80573B98:
/* 80573B98  2C 03 00 02 */	cmpwi r3, 2
/* 80573B9C  40 80 00 78 */	bge lbl_80573C14
/* 80573BA0  7F E3 FB 78 */	mr r3, r31
/* 80573BA4  38 80 09 E9 */	li r4, 0x9e9
/* 80573BA8  4B E4 C4 1D */	bl mMsg_Set_continue_msg_num
/* 80573BAC  7F E3 FB 78 */	mr r3, r31
/* 80573BB0  4B E4 D1 9D */	bl mMsg_Unset_LockContinue
/* 80573BB4  7F C3 F3 78 */	mr r3, r30
/* 80573BB8  38 80 00 0A */	li r4, 0xa
/* 80573BBC  48 00 01 8D */	bl aNRTC_change_talk_proc
/* 80573BC0  38 00 00 03 */	li r0, 3
/* 80573BC4  38 60 00 04 */	li r3, 4
/* 80573BC8  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80573BCC  38 80 00 09 */	li r4, 9
/* 80573BD0  38 A0 00 00 */	li r5, 0
/* 80573BD4  4B E2 48 65 */	bl mDemo_Set_OrderValue
/* 80573BD8  48 00 00 3C */	b lbl_80573C14
lbl_80573BDC:
/* 80573BDC  7F E3 FB 78 */	mr r3, r31
/* 80573BE0  4B E4 D1 6D */	bl mMsg_Unset_LockContinue
/* 80573BE4  7F C3 F3 78 */	mr r3, r30
/* 80573BE8  38 80 00 0A */	li r4, 0xa
/* 80573BEC  48 00 01 5D */	bl aNRTC_change_talk_proc
/* 80573BF0  38 00 00 01 */	li r0, 1
/* 80573BF4  7F E3 FB 78 */	mr r3, r31
/* 80573BF8  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80573BFC  38 80 09 E7 */	li r4, 0x9e7
/* 80573C00  4B E4 C3 C5 */	bl mMsg_Set_continue_msg_num
/* 80573C04  38 60 00 04 */	li r3, 4
/* 80573C08  38 80 00 09 */	li r4, 9
/* 80573C0C  38 A0 00 00 */	li r5, 0
/* 80573C10  4B E2 48 29 */	bl mDemo_Set_OrderValue
lbl_80573C14:
/* 80573C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80573C20  7C 08 03 A6 */	mtlr r0
/* 80573C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80573C28  4E 80 00 20 */	blr 
