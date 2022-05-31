lbl_80555B20:
/* 80555B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80555B24  7C 08 02 A6 */	mflr r0
/* 80555B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80555B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80555B30  4B B4 53 A5 */	bl func_8009AED4
/* 80555B34  7C 7D 1B 78 */	mr r29, r3
/* 80555B38  7C 9E 23 78 */	mr r30, r4
/* 80555B3C  4B E6 9B 6D */	bl func_803BF6A8
/* 80555B40  7C 60 1B 78 */	mr r0, r3
/* 80555B44  38 60 00 04 */	li r3, 4
/* 80555B48  7C 1F 03 78 */	mr r31, r0
/* 80555B4C  38 80 00 09 */	li r4, 9
/* 80555B50  4B E4 29 2D */	bl mDemo_Get_OrderValue
/* 80555B54  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80555B58  41 82 00 40 */	beq lbl_80555B98
/* 80555B5C  7F E3 FB 78 */	mr r3, r31
/* 80555B60  4B E6 B1 39 */	bl mMsg_Check_MainNormalContinue
/* 80555B64  2C 03 00 00 */	cmpwi r3, 0
/* 80555B68  41 82 00 30 */	beq lbl_80555B98
/* 80555B6C  7F A3 EB 78 */	mr r3, r29
/* 80555B70  7F C4 F3 78 */	mr r4, r30
/* 80555B74  38 A0 00 0D */	li r5, 0xd
/* 80555B78  48 00 09 A5 */	bl aNG2_setupAction
/* 80555B7C  7F E3 FB 78 */	mr r3, r31
/* 80555B80  38 80 2A D9 */	li r4, 0x2ad9
/* 80555B84  4B E6 A4 41 */	bl mMsg_Set_continue_msg_num
/* 80555B88  38 60 00 04 */	li r3, 4
/* 80555B8C  38 80 00 09 */	li r4, 9
/* 80555B90  38 A0 00 00 */	li r5, 0
/* 80555B94  4B E4 28 A5 */	bl mDemo_Set_OrderValue
lbl_80555B98:
/* 80555B98  39 61 00 20 */	addi r11, r1, 0x20
/* 80555B9C  4B B4 53 85 */	bl func_8009AF20
/* 80555BA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80555BA4  7C 08 03 A6 */	mtlr r0
/* 80555BA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80555BAC  4E 80 00 20 */	blr 
