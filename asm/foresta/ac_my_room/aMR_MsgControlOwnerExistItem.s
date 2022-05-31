lbl_804749D0:
/* 804749D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804749D4  7C 08 02 A6 */	mflr r0
/* 804749D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804749DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804749E0  4B C2 64 F1 */	bl func_8009AED0
/* 804749E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804749E8  7C 7C 1B 78 */	mr r28, r3
/* 804749EC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804749F0  38 80 00 00 */	li r4, 0
/* 804749F4  3F C3 00 02 */	addis r30, r3, 2
/* 804749F8  38 A0 00 00 */	li r5, 0
/* 804749FC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80474A00  4B F6 BD 71 */	bl mPr_GetPossessionItemIdxWithCond
/* 80474A04  7C 7D 1B 78 */	mr r29, r3
/* 80474A08  4B F0 EB 39 */	bl func_80383540
/* 80474A0C  4B F0 F1 61 */	bl mChoice_Get_ChoseNum
/* 80474A10  7C 7F 1B 78 */	mr r31, r3
/* 80474A14  4B F0 EB 2D */	bl func_80383540
/* 80474A18  4B F0 F1 5D */	bl mChoice_Clear_ChoseNum
/* 80474A1C  2C 1F FF FF */	cmpwi r31, -1
/* 80474A20  41 82 00 EC */	beq lbl_80474B0C
/* 80474A24  2C 1F 00 00 */	cmpwi r31, 0
/* 80474A28  40 82 00 54 */	bne lbl_80474A7C
/* 80474A2C  38 60 00 09 */	li r3, 9
/* 80474A30  38 80 00 00 */	li r4, 0
/* 80474A34  4B F7 B8 ED */	bl mSM_check_open_inventory_itemlist
/* 80474A38  2C 03 00 00 */	cmpwi r3, 0
/* 80474A3C  40 82 00 24 */	bne lbl_80474A60
/* 80474A40  38 00 00 11 */	li r0, 0x11
/* 80474A44  B0 1C 03 EE */	sth r0, 0x3ee(r28)
/* 80474A48  4B F4 AC 61 */	bl func_803BF6A8
/* 80474A4C  38 80 0A 10 */	li r4, 0xa10
/* 80474A50  4B F4 B5 75 */	bl mMsg_Set_continue_msg_num
/* 80474A54  4B F4 AC 55 */	bl func_803BF6A8
/* 80474A58  4B F4 C2 F5 */	bl mMsg_Unset_LockContinue
/* 80474A5C  48 00 00 B0 */	b lbl_80474B0C
lbl_80474A60:
/* 80474A60  38 00 00 15 */	li r0, 0x15
/* 80474A64  B0 1C 03 EE */	sth r0, 0x3ee(r28)
/* 80474A68  4B F4 AC 41 */	bl func_803BF6A8
/* 80474A6C  4B F4 C2 A5 */	bl mMsg_Set_CancelNormalContinue
/* 80474A70  4B F4 AC 39 */	bl func_803BF6A8
/* 80474A74  4B F4 C2 D9 */	bl mMsg_Unset_LockContinue
/* 80474A78  48 00 00 94 */	b lbl_80474B0C
lbl_80474A7C:
/* 80474A7C  2C 1F 00 01 */	cmpwi r31, 1
/* 80474A80  40 82 00 74 */	bne lbl_80474AF4
/* 80474A84  7F 83 E3 78 */	mr r3, r28
/* 80474A88  4B FF F6 A5 */	bl aMR_GetNowDemoFtr
/* 80474A8C  2C 1D FF FF */	cmpwi r29, -1
/* 80474A90  41 82 00 44 */	beq lbl_80474AD4
/* 80474A94  A3 E3 08 44 */	lhz r31, 0x844(r3)
/* 80474A98  38 00 00 00 */	li r0, 0
/* 80474A9C  B0 03 08 44 */	sth r0, 0x844(r3)
/* 80474AA0  4B FF B7 71 */	bl aMR_TidyItemInFurniture
/* 80474AA4  38 00 00 11 */	li r0, 0x11
/* 80474AA8  7F A4 EB 78 */	mr r4, r29
/* 80474AAC  B0 1C 03 EE */	sth r0, 0x3ee(r28)
/* 80474AB0  7F E5 FB 78 */	mr r5, r31
/* 80474AB4  38 C0 00 00 */	li r6, 0
/* 80474AB8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80474ABC  4B F6 C3 6D */	bl mPr_SetPossessionItem
/* 80474AC0  4B F4 AB E9 */	bl func_803BF6A8
/* 80474AC4  4B F4 C2 4D */	bl mMsg_Set_CancelNormalContinue
/* 80474AC8  4B F4 AB E1 */	bl func_803BF6A8
/* 80474ACC  4B F4 C2 81 */	bl mMsg_Unset_LockContinue
/* 80474AD0  48 00 00 3C */	b lbl_80474B0C
lbl_80474AD4:
/* 80474AD4  38 00 00 11 */	li r0, 0x11
/* 80474AD8  B0 1C 03 EE */	sth r0, 0x3ee(r28)
/* 80474ADC  4B F4 AB CD */	bl func_803BF6A8
/* 80474AE0  38 80 0A 0E */	li r4, 0xa0e
/* 80474AE4  4B F4 B4 E1 */	bl mMsg_Set_continue_msg_num
/* 80474AE8  4B F4 AB C1 */	bl func_803BF6A8
/* 80474AEC  4B F4 C2 61 */	bl mMsg_Unset_LockContinue
/* 80474AF0  48 00 00 1C */	b lbl_80474B0C
lbl_80474AF4:
/* 80474AF4  38 00 00 11 */	li r0, 0x11
/* 80474AF8  B0 1C 03 EE */	sth r0, 0x3ee(r28)
/* 80474AFC  4B F4 AB AD */	bl func_803BF6A8
/* 80474B00  4B F4 C2 11 */	bl mMsg_Set_CancelNormalContinue
/* 80474B04  4B F4 AB A5 */	bl func_803BF6A8
/* 80474B08  4B F4 C2 45 */	bl mMsg_Unset_LockContinue
lbl_80474B0C:
/* 80474B0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80474B10  4B C2 64 0D */	bl func_8009AF1C
/* 80474B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474B18  7C 08 03 A6 */	mtlr r0
/* 80474B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80474B20  4E 80 00 20 */	blr 
