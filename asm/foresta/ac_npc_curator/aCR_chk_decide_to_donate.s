lbl_8054C090:
/* 8054C090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C094  7C 08 02 A6 */	mflr r0
/* 8054C098  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C09C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C0A0  4B B4 EE 35 */	bl func_8009AED4
/* 8054C0A4  7C 7D 1B 78 */	mr r29, r3
/* 8054C0A8  7C 9E 23 78 */	mr r30, r4
/* 8054C0AC  4B E7 35 FD */	bl func_803BF6A8
/* 8054C0B0  7C 7F 1B 78 */	mr r31, r3
/* 8054C0B4  4B E7 3F 19 */	bl mMsg_Get_msg_num
/* 8054C0B8  2C 03 2F 5F */	cmpwi r3, 0x2f5f
/* 8054C0BC  40 82 00 5C */	bne lbl_8054C118
/* 8054C0C0  7F E3 FB 78 */	mr r3, r31
/* 8054C0C4  4B E7 4B D5 */	bl mMsg_Check_MainNormalContinue
/* 8054C0C8  2C 03 00 01 */	cmpwi r3, 1
/* 8054C0CC  40 82 00 4C */	bne lbl_8054C118
/* 8054C0D0  4B E3 74 71 */	bl func_80383540
/* 8054C0D4  4B E3 7A 99 */	bl mChoice_Get_ChoseNum
/* 8054C0D8  2C 03 00 01 */	cmpwi r3, 1
/* 8054C0DC  41 82 00 1C */	beq lbl_8054C0F8
/* 8054C0E0  40 80 00 20 */	bge lbl_8054C100
/* 8054C0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8054C0E8  40 80 00 08 */	bge lbl_8054C0F0
/* 8054C0EC  48 00 00 14 */	b lbl_8054C100
lbl_8054C0F0:
/* 8054C0F0  38 A0 00 04 */	li r5, 4
/* 8054C0F4  48 00 00 10 */	b lbl_8054C104
lbl_8054C0F8:
/* 8054C0F8  38 A0 00 00 */	li r5, 0
/* 8054C0FC  48 00 00 08 */	b lbl_8054C104
lbl_8054C100:
/* 8054C100  38 A0 00 00 */	li r5, 0
lbl_8054C104:
/* 8054C104  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054C108  7F A3 EB 78 */	mr r3, r29
/* 8054C10C  7F C4 F3 78 */	mr r4, r30
/* 8054C110  7D 89 03 A6 */	mtctr r12
/* 8054C114  4E 80 04 21 */	bctrl 
lbl_8054C118:
/* 8054C118  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C11C  4B B4 EE 05 */	bl func_8009AF20
/* 8054C120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C124  7C 08 03 A6 */	mtlr r0
/* 8054C128  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C12C  4E 80 00 20 */	blr 
