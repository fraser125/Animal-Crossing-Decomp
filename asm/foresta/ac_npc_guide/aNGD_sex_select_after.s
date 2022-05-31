lbl_80553C68:
/* 80553C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80553C6C  7C 08 02 A6 */	mflr r0
/* 80553C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80553C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80553C78  4B B4 72 5D */	bl func_8009AED4
/* 80553C7C  7C 7D 1B 78 */	mr r29, r3
/* 80553C80  7C 9E 23 78 */	mr r30, r4
/* 80553C84  4B E6 BA 25 */	bl func_803BF6A8
/* 80553C88  7C 60 1B 78 */	mr r0, r3
/* 80553C8C  38 60 00 04 */	li r3, 4
/* 80553C90  7C 1F 03 78 */	mr r31, r0
/* 80553C94  38 80 00 09 */	li r4, 9
/* 80553C98  4B E4 47 E5 */	bl mDemo_Get_OrderValue
/* 80553C9C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80553CA0  41 82 00 50 */	beq lbl_80553CF0
/* 80553CA4  7F E3 FB 78 */	mr r3, r31
/* 80553CA8  4B E6 CF F1 */	bl mMsg_Check_MainNormalContinue
/* 80553CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80553CB0  41 82 00 40 */	beq lbl_80553CF0
/* 80553CB4  7F E3 FB 78 */	mr r3, r31
/* 80553CB8  38 80 2A D8 */	li r4, 0x2ad8
/* 80553CBC  4B E6 C3 09 */	bl mMsg_Set_continue_msg_num
/* 80553CC0  7F E3 FB 78 */	mr r3, r31
/* 80553CC4  4B E6 D0 65 */	bl mMsg_Set_ForceNext
/* 80553CC8  38 00 00 10 */	li r0, 0x10
/* 80553CCC  7F A3 EB 78 */	mr r3, r29
/* 80553CD0  90 1D 09 98 */	stw r0, 0x998(r29)
/* 80553CD4  7F C4 F3 78 */	mr r4, r30
/* 80553CD8  38 A0 00 04 */	li r5, 4
/* 80553CDC  48 00 0C 2D */	bl aNGD_setupAction
/* 80553CE0  38 60 00 04 */	li r3, 4
/* 80553CE4  38 80 00 09 */	li r4, 9
/* 80553CE8  38 A0 00 00 */	li r5, 0
/* 80553CEC  4B E4 47 4D */	bl mDemo_Set_OrderValue
lbl_80553CF0:
/* 80553CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80553CF4  4B B4 72 2D */	bl func_8009AF20
/* 80553CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80553CFC  7C 08 03 A6 */	mtlr r0
/* 80553D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80553D04  4E 80 00 20 */	blr 
