lbl_80522A98:
/* 80522A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522A9C  7C 08 02 A6 */	mflr r0
/* 80522AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522AA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80522AAC  7C 7E 1B 78 */	mr r30, r3
/* 80522AB0  4B E9 CB F9 */	bl func_803BF6A8
/* 80522AB4  7C 60 1B 78 */	mr r0, r3
/* 80522AB8  38 60 00 04 */	li r3, 4
/* 80522ABC  7C 1F 03 78 */	mr r31, r0
/* 80522AC0  38 80 00 09 */	li r4, 9
/* 80522AC4  4B E7 59 B9 */	bl mDemo_Get_OrderValue
/* 80522AC8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80522ACC  41 82 00 50 */	beq lbl_80522B1C
/* 80522AD0  7F E3 FB 78 */	mr r3, r31
/* 80522AD4  4B E9 E1 C5 */	bl mMsg_Check_MainNormalContinue
/* 80522AD8  2C 03 00 01 */	cmpwi r3, 1
/* 80522ADC  40 82 00 40 */	bne lbl_80522B1C
/* 80522AE0  4B E6 0A 61 */	bl func_80383540
/* 80522AE4  4B E6 10 89 */	bl mChoice_Get_ChoseNum
/* 80522AE8  2C 03 00 00 */	cmpwi r3, 0
/* 80522AEC  40 82 00 14 */	bne lbl_80522B00
/* 80522AF0  7F E3 FB 78 */	mr r3, r31
/* 80522AF4  4B E9 CF 51 */	bl mMsg_request_main_disappear_wait_type1
/* 80522AF8  38 80 00 02 */	li r4, 2
/* 80522AFC  48 00 00 08 */	b lbl_80522B04
lbl_80522B00:
/* 80522B00  38 80 00 07 */	li r4, 7
lbl_80522B04:
/* 80522B04  7F C3 F3 78 */	mr r3, r30
/* 80522B08  48 00 06 D9 */	bl aEPK_change_talk_proc
/* 80522B0C  38 60 00 04 */	li r3, 4
/* 80522B10  38 80 00 09 */	li r4, 9
/* 80522B14  38 A0 00 00 */	li r5, 0
/* 80522B18  4B E7 59 21 */	bl mDemo_Set_OrderValue
lbl_80522B1C:
/* 80522B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522B28  7C 08 03 A6 */	mtlr r0
/* 80522B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80522B30  4E 80 00 20 */	blr 
