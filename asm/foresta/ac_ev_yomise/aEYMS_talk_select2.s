lbl_80526AA4:
/* 80526AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526AA8  7C 08 02 A6 */	mflr r0
/* 80526AAC  38 80 00 09 */	li r4, 9
/* 80526AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526AB8  7C 7F 1B 78 */	mr r31, r3
/* 80526ABC  38 60 00 04 */	li r3, 4
/* 80526AC0  4B E7 19 BD */	bl mDemo_Get_OrderValue
/* 80526AC4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80526AC8  2C 00 00 01 */	cmpwi r0, 1
/* 80526ACC  40 82 00 68 */	bne lbl_80526B34
/* 80526AD0  38 60 00 04 */	li r3, 4
/* 80526AD4  38 80 00 09 */	li r4, 9
/* 80526AD8  38 A0 00 00 */	li r5, 0
/* 80526ADC  4B E7 19 5D */	bl mDemo_Set_OrderValue
/* 80526AE0  4B E5 CA 61 */	bl func_80383540
/* 80526AE4  4B E5 D0 89 */	bl mChoice_Get_ChoseNum
/* 80526AE8  2C 03 00 01 */	cmpwi r3, 1
/* 80526AEC  41 82 00 3C */	beq lbl_80526B28
/* 80526AF0  40 80 00 44 */	bge lbl_80526B34
/* 80526AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80526AF8  40 80 00 08 */	bge lbl_80526B00
/* 80526AFC  48 00 00 38 */	b lbl_80526B34
lbl_80526B00:
/* 80526B00  4B E9 8B A9 */	bl func_803BF6A8
/* 80526B04  38 80 17 5C */	li r4, 0x175c
/* 80526B08  4B E9 94 BD */	bl mMsg_Set_continue_msg_num
/* 80526B0C  7F E3 FB 78 */	mr r3, r31
/* 80526B10  38 80 00 03 */	li r4, 3
/* 80526B14  48 00 03 31 */	bl aEYMS_setupAction
/* 80526B18  38 60 00 00 */	li r3, 0
/* 80526B1C  38 80 00 04 */	li r4, 4
/* 80526B20  4B FF F9 75 */	bl aEYMS_set_choise_data
/* 80526B24  48 00 00 10 */	b lbl_80526B34
lbl_80526B28:
/* 80526B28  7F E3 FB 78 */	mr r3, r31
/* 80526B2C  38 80 00 04 */	li r4, 4
/* 80526B30  48 00 03 15 */	bl aEYMS_setupAction
lbl_80526B34:
/* 80526B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526B3C  7C 08 03 A6 */	mtlr r0
/* 80526B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80526B44  4E 80 00 20 */	blr 
