lbl_80526B48:
/* 80526B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526B4C  7C 08 02 A6 */	mflr r0
/* 80526B50  38 80 00 09 */	li r4, 9
/* 80526B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526B5C  7C 7F 1B 78 */	mr r31, r3
/* 80526B60  38 60 00 04 */	li r3, 4
/* 80526B64  4B E7 19 19 */	bl mDemo_Get_OrderValue
/* 80526B68  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80526B6C  2C 00 00 01 */	cmpwi r0, 1
/* 80526B70  40 82 00 64 */	bne lbl_80526BD4
/* 80526B74  38 60 00 04 */	li r3, 4
/* 80526B78  38 80 00 09 */	li r4, 9
/* 80526B7C  38 A0 00 00 */	li r5, 0
/* 80526B80  4B E7 18 B9 */	bl mDemo_Set_OrderValue
/* 80526B84  4B E5 C9 BD */	bl func_80383540
/* 80526B88  4B E5 CF E5 */	bl mChoice_Get_ChoseNum
/* 80526B8C  2C 03 00 01 */	cmpwi r3, 1
/* 80526B90  41 82 00 38 */	beq lbl_80526BC8
/* 80526B94  40 80 00 40 */	bge lbl_80526BD4
/* 80526B98  2C 03 00 00 */	cmpwi r3, 0
/* 80526B9C  40 80 00 08 */	bge lbl_80526BA4
/* 80526BA0  48 00 00 34 */	b lbl_80526BD4
lbl_80526BA4:
/* 80526BA4  80 7F 09 A8 */	lwz r3, 0x9a8(r31)
/* 80526BA8  38 80 00 00 */	li r4, 0
/* 80526BAC  4B FF FA 8D */	bl aNSM_set_item_value_str
/* 80526BB0  7F E3 FB 78 */	mr r3, r31
/* 80526BB4  4B FF FB 55 */	bl aEYMS_to_talk_buy
/* 80526BB8  7F E3 FB 78 */	mr r3, r31
/* 80526BBC  38 80 00 03 */	li r4, 3
/* 80526BC0  48 00 02 85 */	bl aEYMS_setupAction
/* 80526BC4  48 00 00 10 */	b lbl_80526BD4
lbl_80526BC8:
/* 80526BC8  7F E3 FB 78 */	mr r3, r31
/* 80526BCC  38 80 00 04 */	li r4, 4
/* 80526BD0  48 00 02 75 */	bl aEYMS_setupAction
lbl_80526BD4:
/* 80526BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526BDC  7C 08 03 A6 */	mtlr r0
/* 80526BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80526BE4  4E 80 00 20 */	blr 
