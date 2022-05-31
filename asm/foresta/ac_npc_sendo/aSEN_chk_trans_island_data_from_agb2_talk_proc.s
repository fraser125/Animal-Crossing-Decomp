lbl_80575A7C:
/* 80575A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575A80  7C 08 02 A6 */	mflr r0
/* 80575A84  38 80 00 09 */	li r4, 9
/* 80575A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575A90  7C 7F 1B 78 */	mr r31, r3
/* 80575A94  38 60 00 04 */	li r3, 4
/* 80575A98  4B E2 29 E5 */	bl mDemo_Get_OrderValue
/* 80575A9C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80575AA0  41 82 00 78 */	beq lbl_80575B18
/* 80575AA4  4B E4 9C 05 */	bl func_803BF6A8
/* 80575AA8  4B E4 B1 F1 */	bl mMsg_Check_MainNormalContinue
/* 80575AAC  2C 03 00 01 */	cmpwi r3, 1
/* 80575AB0  40 82 00 68 */	bne lbl_80575B18
/* 80575AB4  4B E0 DA 8D */	bl func_80383540
/* 80575AB8  4B E0 E0 B5 */	bl mChoice_Get_ChoseNum
/* 80575ABC  2C 03 00 01 */	cmpwi r3, 1
/* 80575AC0  41 82 00 3C */	beq lbl_80575AFC
/* 80575AC4  40 80 00 54 */	bge lbl_80575B18
/* 80575AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80575ACC  40 80 00 08 */	bge lbl_80575AD4
/* 80575AD0  48 00 00 48 */	b lbl_80575B18
lbl_80575AD4:
/* 80575AD4  38 60 00 04 */	li r3, 4
/* 80575AD8  38 80 00 09 */	li r4, 9
/* 80575ADC  38 A0 00 00 */	li r5, 0
/* 80575AE0  4B E2 29 59 */	bl mDemo_Set_OrderValue
/* 80575AE4  7F E3 FB 78 */	mr r3, r31
/* 80575AE8  4B FF F0 29 */	bl aSEN_setup_pl_ride_on
/* 80575AEC  7F E3 FB 78 */	mr r3, r31
/* 80575AF0  38 80 00 00 */	li r4, 0
/* 80575AF4  48 00 04 79 */	bl aSEN_change_talk_proc
/* 80575AF8  48 00 00 20 */	b lbl_80575B18
lbl_80575AFC:
/* 80575AFC  38 60 00 04 */	li r3, 4
/* 80575B00  38 80 00 09 */	li r4, 9
/* 80575B04  38 A0 00 00 */	li r5, 0
/* 80575B08  4B E2 29 31 */	bl mDemo_Set_OrderValue
/* 80575B0C  7F E3 FB 78 */	mr r3, r31
/* 80575B10  38 80 00 00 */	li r4, 0
/* 80575B14  48 00 04 59 */	bl aSEN_change_talk_proc
lbl_80575B18:
/* 80575B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575B20  7C 08 03 A6 */	mtlr r0
/* 80575B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80575B28  4E 80 00 20 */	blr 
