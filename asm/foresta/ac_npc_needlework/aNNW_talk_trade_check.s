lbl_80562AE8:
/* 80562AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562AEC  7C 08 02 A6 */	mflr r0
/* 80562AF0  38 80 00 09 */	li r4, 9
/* 80562AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562AFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80562B00  7C 7E 1B 78 */	mr r30, r3
/* 80562B04  38 60 00 04 */	li r3, 4
/* 80562B08  4B E3 59 75 */	bl mDemo_Get_OrderValue
/* 80562B0C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562B10  4B E5 CB 99 */	bl func_803BF6A8
/* 80562B14  2C 1F 00 00 */	cmpwi r31, 0
/* 80562B18  41 82 00 8C */	beq lbl_80562BA4
/* 80562B1C  4B E5 E1 7D */	bl mMsg_Check_MainNormalContinue
/* 80562B20  2C 03 00 01 */	cmpwi r3, 1
/* 80562B24  40 82 00 80 */	bne lbl_80562BA4
/* 80562B28  38 60 00 04 */	li r3, 4
/* 80562B2C  38 80 00 09 */	li r4, 9
/* 80562B30  38 A0 00 00 */	li r5, 0
/* 80562B34  4B E3 59 05 */	bl mDemo_Set_OrderValue
/* 80562B38  4B E2 0A 09 */	bl func_80383540
/* 80562B3C  4B E2 10 31 */	bl mChoice_Get_ChoseNum
/* 80562B40  2C 03 00 02 */	cmpwi r3, 2
/* 80562B44  41 82 00 44 */	beq lbl_80562B88
/* 80562B48  40 80 00 14 */	bge lbl_80562B5C
/* 80562B4C  2C 03 00 00 */	cmpwi r3, 0
/* 80562B50  41 82 00 18 */	beq lbl_80562B68
/* 80562B54  40 80 00 24 */	bge lbl_80562B78
/* 80562B58  48 00 00 4C */	b lbl_80562BA4
lbl_80562B5C:
/* 80562B5C  2C 03 00 04 */	cmpwi r3, 4
/* 80562B60  40 80 00 44 */	bge lbl_80562BA4
/* 80562B64  48 00 00 34 */	b lbl_80562B98
lbl_80562B68:
/* 80562B68  7F C3 F3 78 */	mr r3, r30
/* 80562B6C  38 80 00 19 */	li r4, 0x19
/* 80562B70  48 00 19 19 */	bl aNNW_change_talk_proc
/* 80562B74  48 00 00 30 */	b lbl_80562BA4
lbl_80562B78:
/* 80562B78  7F C3 F3 78 */	mr r3, r30
/* 80562B7C  38 80 00 1D */	li r4, 0x1d
/* 80562B80  48 00 19 09 */	bl aNNW_change_talk_proc
/* 80562B84  48 00 00 20 */	b lbl_80562BA4
lbl_80562B88:
/* 80562B88  7F C3 F3 78 */	mr r3, r30
/* 80562B8C  38 80 00 16 */	li r4, 0x16
/* 80562B90  48 00 18 F9 */	bl aNNW_change_talk_proc
/* 80562B94  48 00 00 10 */	b lbl_80562BA4
lbl_80562B98:
/* 80562B98  7F C3 F3 78 */	mr r3, r30
/* 80562B9C  38 80 00 41 */	li r4, 0x41
/* 80562BA0  48 00 18 E9 */	bl aNNW_change_talk_proc
lbl_80562BA4:
/* 80562BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562BB0  7C 08 03 A6 */	mtlr r0
/* 80562BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80562BB8  4E 80 00 20 */	blr 
