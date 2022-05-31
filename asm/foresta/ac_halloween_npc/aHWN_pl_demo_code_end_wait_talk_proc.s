lbl_80527C6C:
/* 80527C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527C70  7C 08 02 A6 */	mflr r0
/* 80527C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80527C7C  4B B7 32 59 */	bl func_8009AED4
/* 80527C80  7C 7D 1B 78 */	mr r29, r3
/* 80527C84  38 60 00 00 */	li r3, 0
/* 80527C88  38 80 00 00 */	li r4, 0
/* 80527C8C  4B E7 07 F1 */	bl mDemo_Get_OrderValue
/* 80527C90  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80527C94  40 82 00 48 */	bne lbl_80527CDC
/* 80527C98  4B E9 7A 11 */	bl func_803BF6A8
/* 80527C9C  80 9D 01 88 */	lwz r4, 0x188(r29)
/* 80527CA0  7C 7F 1B 78 */	mr r31, r3
/* 80527CA4  A0 64 00 04 */	lhz r3, 4(r4)
/* 80527CA8  4B EA 71 B5 */	bl mNpc_GetLooks
/* 80527CAC  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80527CB0  7F E3 FB 78 */	mr r3, r31
/* 80527CB4  4B E9 90 99 */	bl mMsg_Unset_LockContinue
/* 80527CB8  7F E3 FB 78 */	mr r3, r31
/* 80527CBC  4B E9 90 6D */	bl mMsg_Set_ForceNext
/* 80527CC0  1C 9E 00 06 */	mulli r4, r30, 6
/* 80527CC4  7F E3 FB 78 */	mr r3, r31
/* 80527CC8  38 84 09 8D */	addi r4, r4, 0x98d
/* 80527CCC  4B E9 8C CD */	bl mMsg_ChangeMsgData
/* 80527CD0  7F A3 EB 78 */	mr r3, r29
/* 80527CD4  38 80 00 0D */	li r4, 0xd
/* 80527CD8  48 00 00 1D */	bl aHWN_change_talk_proc
lbl_80527CDC:
/* 80527CDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80527CE0  4B B7 32 41 */	bl func_8009AF20
/* 80527CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80527CE8  7C 08 03 A6 */	mtlr r0
/* 80527CEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80527CF0  4E 80 00 20 */	blr 
