lbl_80584AA4:
/* 80584AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584AA8  7C 08 02 A6 */	mflr r0
/* 80584AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80584AB4  4B B1 64 1D */	bl func_8009AED0
/* 80584AB8  7C 7C 1B 78 */	mr r28, r3
/* 80584ABC  7C 9D 23 78 */	mr r29, r4
/* 80584AC0  4B E3 AB E9 */	bl func_803BF6A8
/* 80584AC4  7C 60 1B 78 */	mr r0, r3
/* 80584AC8  38 60 01 2F */	li r3, 0x12f
/* 80584ACC  7C 1E 03 78 */	mr r30, r0
/* 80584AD0  4B FF D2 B9 */	bl aNSC_get_msg_no
/* 80584AD4  7C 7F 1B 78 */	mr r31, r3
/* 80584AD8  7F C3 F3 78 */	mr r3, r30
/* 80584ADC  4B E3 B4 F1 */	bl mMsg_Get_msg_num
/* 80584AE0  7C 03 F8 00 */	cmpw r3, r31
/* 80584AE4  40 82 00 84 */	bne lbl_80584B68
/* 80584AE8  7F C3 F3 78 */	mr r3, r30
/* 80584AEC  4B E3 C1 AD */	bl mMsg_Check_MainNormalContinue
/* 80584AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80584AF4  41 82 00 74 */	beq lbl_80584B68
/* 80584AF8  3B E0 FF FF */	li r31, -1
/* 80584AFC  4B DF EA 45 */	bl func_80383540
/* 80584B00  4B DF F0 6D */	bl mChoice_Get_ChoseNum
/* 80584B04  2C 03 00 01 */	cmpwi r3, 1
/* 80584B08  41 82 00 28 */	beq lbl_80584B30
/* 80584B0C  40 80 00 10 */	bge lbl_80584B1C
/* 80584B10  2C 03 00 00 */	cmpwi r3, 0
/* 80584B14  40 80 00 14 */	bge lbl_80584B28
/* 80584B18  48 00 00 24 */	b lbl_80584B3C
lbl_80584B1C:
/* 80584B1C  2C 03 00 03 */	cmpwi r3, 3
/* 80584B20  40 80 00 1C */	bge lbl_80584B3C
/* 80584B24  48 00 00 14 */	b lbl_80584B38
lbl_80584B28:
/* 80584B28  3B E0 00 00 */	li r31, 0
/* 80584B2C  48 00 00 10 */	b lbl_80584B3C
lbl_80584B30:
/* 80584B30  3B E0 00 01 */	li r31, 1
/* 80584B34  48 00 00 08 */	b lbl_80584B3C
lbl_80584B38:
/* 80584B38  3B E0 00 02 */	li r31, 2
lbl_80584B3C:
/* 80584B3C  2C 1F FF FF */	cmpwi r31, -1
/* 80584B40  41 82 00 28 */	beq lbl_80584B68
/* 80584B44  7F C3 F3 78 */	mr r3, r30
/* 80584B48  4B E3 C1 E1 */	bl mMsg_Set_ForceNext
/* 80584B4C  3C 60 80 6C */	lis r3, next_act_idx_1812@ha /* 0x806C1904@ha */
/* 80584B50  57 E0 10 3A */	slwi r0, r31, 2
/* 80584B54  38 83 19 04 */	addi r4, r3, next_act_idx_1812@l /* 0x806C1904@l */
/* 80584B58  7F 83 E3 78 */	mr r3, r28
/* 80584B5C  7C A4 00 2E */	lwzx r5, r4, r0
/* 80584B60  7F A4 EB 78 */	mr r4, r29
/* 80584B64  48 00 14 5D */	bl aNSC_setupAction
lbl_80584B68:
/* 80584B68  39 61 00 20 */	addi r11, r1, 0x20
/* 80584B6C  4B B1 63 B1 */	bl func_8009AF1C
/* 80584B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584B74  7C 08 03 A6 */	mtlr r0
/* 80584B78  38 21 00 20 */	addi r1, r1, 0x20
/* 80584B7C  4E 80 00 20 */	blr 
