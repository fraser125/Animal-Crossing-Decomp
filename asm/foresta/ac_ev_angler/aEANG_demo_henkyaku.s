lbl_80518A8C:
/* 80518A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80518A90  7C 08 02 A6 */	mflr r0
/* 80518A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80518A98  39 61 00 20 */	addi r11, r1, 0x20
/* 80518A9C  4B B8 24 39 */	bl func_8009AED4
/* 80518AA0  7C 7D 1B 78 */	mr r29, r3
/* 80518AA4  7C 9E 23 78 */	mr r30, r4
/* 80518AA8  4B EA 6C 01 */	bl func_803BF6A8
/* 80518AAC  7C 7F 1B 78 */	mr r31, r3
/* 80518AB0  4B EA 75 1D */	bl mMsg_Get_msg_num
/* 80518AB4  2C 03 11 10 */	cmpwi r3, 0x1110
/* 80518AB8  41 82 00 14 */	beq lbl_80518ACC
/* 80518ABC  40 80 00 58 */	bge lbl_80518B14
/* 80518AC0  2C 03 10 F4 */	cmpwi r3, 0x10f4
/* 80518AC4  41 82 00 08 */	beq lbl_80518ACC
/* 80518AC8  48 00 00 4C */	b lbl_80518B14
lbl_80518ACC:
/* 80518ACC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80518AD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80518AD4  3C 63 00 02 */	addis r3, r3, 2
/* 80518AD8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80518ADC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80518AE0  28 00 00 00 */	cmplwi r0, 0
/* 80518AE4  40 82 00 28 */	bne lbl_80518B0C
/* 80518AE8  4B EA 6B C1 */	bl func_803BF6A8
/* 80518AEC  4B EA 82 61 */	bl mMsg_Unset_LockContinue
/* 80518AF0  81 9D 09 9C */	lwz r12, 0x99c(r29)
/* 80518AF4  7F A3 EB 78 */	mr r3, r29
/* 80518AF8  7F C4 F3 78 */	mr r4, r30
/* 80518AFC  38 A0 00 00 */	li r5, 0
/* 80518B00  7D 89 03 A6 */	mtctr r12
/* 80518B04  4E 80 04 21 */	bctrl 
/* 80518B08  48 00 00 0C */	b lbl_80518B14
lbl_80518B0C:
/* 80518B0C  7F E3 FB 78 */	mr r3, r31
/* 80518B10  4B EA 82 31 */	bl mMsg_Set_LockContinue
lbl_80518B14:
/* 80518B14  39 61 00 20 */	addi r11, r1, 0x20
/* 80518B18  4B B8 24 09 */	bl func_8009AF20
/* 80518B1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80518B20  7C 08 03 A6 */	mtlr r0
/* 80518B24  38 21 00 20 */	addi r1, r1, 0x20
/* 80518B28  4E 80 00 20 */	blr 
