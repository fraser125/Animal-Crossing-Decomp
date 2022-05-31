lbl_80563AE0:
/* 80563AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563AE4  7C 08 02 A6 */	mflr r0
/* 80563AE8  38 80 00 09 */	li r4, 9
/* 80563AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563AF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80563AF8  7C 7E 1B 78 */	mr r30, r3
/* 80563AFC  38 60 00 04 */	li r3, 4
/* 80563B00  4B E3 49 7D */	bl mDemo_Get_OrderValue
/* 80563B04  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563B08  4B E5 BB A1 */	bl func_803BF6A8
/* 80563B0C  2C 1F 00 00 */	cmpwi r31, 0
/* 80563B10  41 82 00 78 */	beq lbl_80563B88
/* 80563B14  4B E5 D1 85 */	bl mMsg_Check_MainNormalContinue
/* 80563B18  2C 03 00 01 */	cmpwi r3, 1
/* 80563B1C  40 82 00 6C */	bne lbl_80563B88
/* 80563B20  38 60 00 04 */	li r3, 4
/* 80563B24  38 80 00 09 */	li r4, 9
/* 80563B28  38 A0 00 00 */	li r5, 0
/* 80563B2C  4B E3 49 0D */	bl mDemo_Set_OrderValue
/* 80563B30  4B E1 FA 11 */	bl func_80383540
/* 80563B34  4B E2 00 39 */	bl mChoice_Get_ChoseNum
/* 80563B38  2C 03 00 01 */	cmpwi r3, 1
/* 80563B3C  41 82 00 30 */	beq lbl_80563B6C
/* 80563B40  40 80 00 10 */	bge lbl_80563B50
/* 80563B44  2C 03 00 00 */	cmpwi r3, 0
/* 80563B48  40 80 00 14 */	bge lbl_80563B5C
/* 80563B4C  48 00 00 3C */	b lbl_80563B88
lbl_80563B50:
/* 80563B50  2C 03 00 03 */	cmpwi r3, 3
/* 80563B54  40 80 00 34 */	bge lbl_80563B88
/* 80563B58  48 00 00 24 */	b lbl_80563B7C
lbl_80563B5C:
/* 80563B5C  7F C3 F3 78 */	mr r3, r30
/* 80563B60  38 80 00 43 */	li r4, 0x43
/* 80563B64  48 00 09 25 */	bl aNNW_change_talk_proc
/* 80563B68  48 00 00 20 */	b lbl_80563B88
lbl_80563B6C:
/* 80563B6C  7F C3 F3 78 */	mr r3, r30
/* 80563B70  38 80 00 02 */	li r4, 2
/* 80563B74  48 00 09 15 */	bl aNNW_change_talk_proc
/* 80563B78  48 00 00 10 */	b lbl_80563B88
lbl_80563B7C:
/* 80563B7C  7F C3 F3 78 */	mr r3, r30
/* 80563B80  38 80 00 41 */	li r4, 0x41
/* 80563B84  48 00 09 05 */	bl aNNW_change_talk_proc
lbl_80563B88:
/* 80563B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563B90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563B94  7C 08 03 A6 */	mtlr r0
/* 80563B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80563B9C  4E 80 00 20 */	blr 
