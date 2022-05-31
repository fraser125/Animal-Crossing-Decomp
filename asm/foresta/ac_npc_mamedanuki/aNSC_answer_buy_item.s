lbl_8055C8D4:
/* 8055C8D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C8D8  7C 08 02 A6 */	mflr r0
/* 8055C8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C8E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C8E4  7C 9F 23 78 */	mr r31, r4
/* 8055C8E8  38 80 00 09 */	li r4, 9
/* 8055C8EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C8F0  7C 7E 1B 78 */	mr r30, r3
/* 8055C8F4  38 60 00 04 */	li r3, 4
/* 8055C8F8  4B E3 BB 85 */	bl mDemo_Get_OrderValue
/* 8055C8FC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055C900  41 82 00 38 */	beq lbl_8055C938
/* 8055C904  4B E6 2D A5 */	bl func_803BF6A8
/* 8055C908  4B E6 43 91 */	bl mMsg_Check_MainNormalContinue
/* 8055C90C  2C 03 00 00 */	cmpwi r3, 0
/* 8055C910  41 82 00 28 */	beq lbl_8055C938
/* 8055C914  38 60 00 04 */	li r3, 4
/* 8055C918  38 80 00 09 */	li r4, 9
/* 8055C91C  38 A0 00 00 */	li r5, 0
/* 8055C920  4B E3 BB 19 */	bl mDemo_Set_OrderValue
/* 8055C924  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 8055C928  7F C3 F3 78 */	mr r3, r30
/* 8055C92C  7F E4 FB 78 */	mr r4, r31
/* 8055C930  38 A5 00 01 */	addi r5, r5, 1
/* 8055C934  48 00 24 9D */	bl aNSC_setupAction
lbl_8055C938:
/* 8055C938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C93C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C940  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C944  7C 08 03 A6 */	mtlr r0
/* 8055C948  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C94C  4E 80 00 20 */	blr 
