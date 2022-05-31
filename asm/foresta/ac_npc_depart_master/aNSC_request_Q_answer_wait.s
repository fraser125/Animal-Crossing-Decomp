lbl_8054FEC4:
/* 8054FEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054FEC8  7C 08 02 A6 */	mflr r0
/* 8054FECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054FED0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FED4  4B B4 AF FD */	bl func_8009AED0
/* 8054FED8  7C 7C 1B 78 */	mr r28, r3
/* 8054FEDC  7C 9D 23 78 */	mr r29, r4
/* 8054FEE0  38 60 00 04 */	li r3, 4
/* 8054FEE4  38 80 00 09 */	li r4, 9
/* 8054FEE8  4B E4 85 95 */	bl mDemo_Get_OrderValue
/* 8054FEEC  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8054FEF0  4B E6 F7 B9 */	bl func_803BF6A8
/* 8054FEF4  2C 1F 00 00 */	cmpwi r31, 0
/* 8054FEF8  7C 7E 1B 78 */	mr r30, r3
/* 8054FEFC  41 82 00 C4 */	beq lbl_8054FFC0
/* 8054FF00  4B E7 0D 99 */	bl mMsg_Check_MainNormalContinue
/* 8054FF04  2C 03 00 01 */	cmpwi r3, 1
/* 8054FF08  40 82 00 B8 */	bne lbl_8054FFC0
/* 8054FF0C  38 60 00 17 */	li r3, 0x17
/* 8054FF10  4B FF E6 ED */	bl aNSC_get_msg_no
/* 8054FF14  4B E4 86 01 */	bl mDemo_Set_msg_num
/* 8054FF18  4B E3 36 29 */	bl func_80383540
/* 8054FF1C  4B E3 3C 51 */	bl mChoice_Get_ChoseNum
/* 8054FF20  2C 03 00 01 */	cmpwi r3, 1
/* 8054FF24  41 82 00 28 */	beq lbl_8054FF4C
/* 8054FF28  40 80 00 10 */	bge lbl_8054FF38
/* 8054FF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8054FF30  40 80 00 14 */	bge lbl_8054FF44
/* 8054FF34  48 00 00 3C */	b lbl_8054FF70
lbl_8054FF38:
/* 8054FF38  2C 03 00 03 */	cmpwi r3, 3
/* 8054FF3C  40 80 00 34 */	bge lbl_8054FF70
/* 8054FF40  48 00 00 28 */	b lbl_8054FF68
lbl_8054FF44:
/* 8054FF44  3B E0 00 01 */	li r31, 1
/* 8054FF48  48 00 00 2C */	b lbl_8054FF74
lbl_8054FF4C:
/* 8054FF4C  4B FF D8 BD */	bl aNSC_getP_free_ftr_order
/* 8054FF50  28 03 00 00 */	cmplwi r3, 0
/* 8054FF54  40 82 00 0C */	bne lbl_8054FF60
/* 8054FF58  3B E0 00 02 */	li r31, 2
/* 8054FF5C  48 00 00 18 */	b lbl_8054FF74
lbl_8054FF60:
/* 8054FF60  3B E0 00 03 */	li r31, 3
/* 8054FF64  48 00 00 10 */	b lbl_8054FF74
lbl_8054FF68:
/* 8054FF68  3B E0 00 00 */	li r31, 0
/* 8054FF6C  48 00 00 08 */	b lbl_8054FF74
lbl_8054FF70:
/* 8054FF70  3B E0 00 04 */	li r31, 4
lbl_8054FF74:
/* 8054FF74  38 60 00 04 */	li r3, 4
/* 8054FF78  38 80 00 09 */	li r4, 9
/* 8054FF7C  38 A0 00 00 */	li r5, 0
/* 8054FF80  4B E4 84 B9 */	bl mDemo_Set_OrderValue
/* 8054FF84  3C 60 80 6A */	lis r3, msg_no_1453@ha /* 0x806A5CA4@ha */
/* 8054FF88  57 FF 10 3A */	slwi r31, r31, 2
/* 8054FF8C  38 63 5C A4 */	addi r3, r3, msg_no_1453@l /* 0x806A5CA4@l */
/* 8054FF90  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8054FF94  4B FF E6 69 */	bl aNSC_get_msg_no
/* 8054FF98  7C 65 1B 78 */	mr r5, r3
/* 8054FF9C  7F C3 F3 78 */	mr r3, r30
/* 8054FFA0  7F 84 E3 78 */	mr r4, r28
/* 8054FFA4  4B FF E6 A1 */	bl aNSC_Set_continue_msg_num
/* 8054FFA8  3C 80 80 6A */	lis r4, next_act_idx_1454@ha /* 0x806A5CB8@ha */
/* 8054FFAC  7F 83 E3 78 */	mr r3, r28
/* 8054FFB0  38 A4 5C B8 */	addi r5, r4, next_act_idx_1454@l /* 0x806A5CB8@l */
/* 8054FFB4  7F A4 EB 78 */	mr r4, r29
/* 8054FFB8  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8054FFBC  48 00 28 79 */	bl aNSC_setupAction
lbl_8054FFC0:
/* 8054FFC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FFC4  4B B4 AF 59 */	bl func_8009AF1C
/* 8054FFC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054FFCC  7C 08 03 A6 */	mtlr r0
/* 8054FFD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054FFD4  4E 80 00 20 */	blr 
