lbl_8055DAEC:
/* 8055DAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055DAF0  7C 08 02 A6 */	mflr r0
/* 8055DAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055DAFC  7C 9F 23 78 */	mr r31, r4
/* 8055DB00  38 80 00 09 */	li r4, 9
/* 8055DB04  93 C1 00 08 */	stw r30, 8(r1)
/* 8055DB08  7C 7E 1B 78 */	mr r30, r3
/* 8055DB0C  38 60 00 04 */	li r3, 4
/* 8055DB10  4B E3 A9 6D */	bl mDemo_Get_OrderValue
/* 8055DB14  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055DB18  41 82 00 34 */	beq lbl_8055DB4C
/* 8055DB1C  4B E6 1B 8D */	bl func_803BF6A8
/* 8055DB20  4B E6 31 79 */	bl mMsg_Check_MainNormalContinue
/* 8055DB24  2C 03 00 01 */	cmpwi r3, 1
/* 8055DB28  40 82 00 24 */	bne lbl_8055DB4C
/* 8055DB2C  38 60 00 04 */	li r3, 4
/* 8055DB30  38 80 00 09 */	li r4, 9
/* 8055DB34  38 A0 00 00 */	li r5, 0
/* 8055DB38  4B E3 A9 01 */	bl mDemo_Set_OrderValue
/* 8055DB3C  7F C3 F3 78 */	mr r3, r30
/* 8055DB40  7F E4 FB 78 */	mr r4, r31
/* 8055DB44  38 A0 00 2F */	li r5, 0x2f
/* 8055DB48  48 00 12 89 */	bl aNSC_setupAction
lbl_8055DB4C:
/* 8055DB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055DB54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055DB58  7C 08 03 A6 */	mtlr r0
/* 8055DB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055DB60  4E 80 00 20 */	blr 
