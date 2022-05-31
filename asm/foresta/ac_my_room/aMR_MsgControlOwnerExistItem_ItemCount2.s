lbl_80474B24:
/* 80474B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80474B28  7C 08 02 A6 */	mflr r0
/* 80474B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474B30  39 61 00 20 */	addi r11, r1, 0x20
/* 80474B34  4B C2 63 A1 */	bl func_8009AED4
/* 80474B38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80474B3C  7C 7D 1B 78 */	mr r29, r3
/* 80474B40  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80474B44  38 80 00 00 */	li r4, 0
/* 80474B48  3C 63 00 02 */	addis r3, r3, 2
/* 80474B4C  38 A0 00 00 */	li r5, 0
/* 80474B50  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80474B54  4B F6 BC 1D */	bl mPr_GetPossessionItemIdxWithCond
/* 80474B58  7C 7E 1B 78 */	mr r30, r3
/* 80474B5C  4B F0 E9 E5 */	bl func_80383540
/* 80474B60  4B F0 F0 0D */	bl mChoice_Get_ChoseNum
/* 80474B64  7C 7F 1B 78 */	mr r31, r3
/* 80474B68  4B F0 E9 D9 */	bl func_80383540
/* 80474B6C  4B F0 F0 09 */	bl mChoice_Clear_ChoseNum
/* 80474B70  2C 1F FF FF */	cmpwi r31, -1
/* 80474B74  41 82 00 C4 */	beq lbl_80474C38
/* 80474B78  2C 1F 00 00 */	cmpwi r31, 0
/* 80474B7C  40 82 00 54 */	bne lbl_80474BD0
/* 80474B80  38 60 00 09 */	li r3, 9
/* 80474B84  38 80 00 00 */	li r4, 0
/* 80474B88  4B F7 B7 99 */	bl mSM_check_open_inventory_itemlist
/* 80474B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80474B90  40 82 00 24 */	bne lbl_80474BB4
/* 80474B94  38 00 00 11 */	li r0, 0x11
/* 80474B98  B0 1D 03 EE */	sth r0, 0x3ee(r29)
/* 80474B9C  4B F4 AB 0D */	bl func_803BF6A8
/* 80474BA0  38 80 0A 10 */	li r4, 0xa10
/* 80474BA4  4B F4 B4 21 */	bl mMsg_Set_continue_msg_num
/* 80474BA8  4B F4 AB 01 */	bl func_803BF6A8
/* 80474BAC  4B F4 C1 A1 */	bl mMsg_Unset_LockContinue
/* 80474BB0  48 00 00 88 */	b lbl_80474C38
lbl_80474BB4:
/* 80474BB4  38 00 00 15 */	li r0, 0x15
/* 80474BB8  B0 1D 03 EE */	sth r0, 0x3ee(r29)
/* 80474BBC  4B F4 AA ED */	bl func_803BF6A8
/* 80474BC0  4B F4 C1 51 */	bl mMsg_Set_CancelNormalContinue
/* 80474BC4  4B F4 AA E5 */	bl func_803BF6A8
/* 80474BC8  4B F4 C1 85 */	bl mMsg_Unset_LockContinue
/* 80474BCC  48 00 00 6C */	b lbl_80474C38
lbl_80474BD0:
/* 80474BD0  2C 1F 00 01 */	cmpwi r31, 1
/* 80474BD4  40 82 00 4C */	bne lbl_80474C20
/* 80474BD8  2C 1E FF FF */	cmpwi r30, -1
/* 80474BDC  41 82 00 24 */	beq lbl_80474C00
/* 80474BE0  38 00 00 08 */	li r0, 8
/* 80474BE4  B0 1D 03 EE */	sth r0, 0x3ee(r29)
/* 80474BE8  4B F4 AA C1 */	bl func_803BF6A8
/* 80474BEC  38 80 2F 1E */	li r4, 0x2f1e
/* 80474BF0  4B F4 B3 D5 */	bl mMsg_Set_continue_msg_num
/* 80474BF4  4B F4 AA B5 */	bl func_803BF6A8
/* 80474BF8  4B F4 C1 55 */	bl mMsg_Unset_LockContinue
/* 80474BFC  48 00 00 3C */	b lbl_80474C38
lbl_80474C00:
/* 80474C00  38 00 00 11 */	li r0, 0x11
/* 80474C04  B0 1D 03 EE */	sth r0, 0x3ee(r29)
/* 80474C08  4B F4 AA A1 */	bl func_803BF6A8
/* 80474C0C  38 80 0A 0E */	li r4, 0xa0e
/* 80474C10  4B F4 B3 B5 */	bl mMsg_Set_continue_msg_num
/* 80474C14  4B F4 AA 95 */	bl func_803BF6A8
/* 80474C18  4B F4 C1 35 */	bl mMsg_Unset_LockContinue
/* 80474C1C  48 00 00 1C */	b lbl_80474C38
lbl_80474C20:
/* 80474C20  38 00 00 11 */	li r0, 0x11
/* 80474C24  B0 1D 03 EE */	sth r0, 0x3ee(r29)
/* 80474C28  4B F4 AA 81 */	bl func_803BF6A8
/* 80474C2C  4B F4 C0 E5 */	bl mMsg_Set_CancelNormalContinue
/* 80474C30  4B F4 AA 79 */	bl func_803BF6A8
/* 80474C34  4B F4 C1 19 */	bl mMsg_Unset_LockContinue
lbl_80474C38:
/* 80474C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80474C3C  4B C2 62 E5 */	bl func_8009AF20
/* 80474C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474C44  7C 08 03 A6 */	mtlr r0
/* 80474C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80474C4C  4E 80 00 20 */	blr 
