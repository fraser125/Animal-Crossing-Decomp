lbl_80573908:
/* 80573908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057390C  7C 08 02 A6 */	mflr r0
/* 80573910  38 80 00 09 */	li r4, 9
/* 80573914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057391C  93 C1 00 08 */	stw r30, 8(r1)
/* 80573920  7C 7E 1B 78 */	mr r30, r3
/* 80573924  38 60 00 04 */	li r3, 4
/* 80573928  4B E2 4B 55 */	bl mDemo_Get_OrderValue
/* 8057392C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80573930  4B E4 BD 79 */	bl func_803BF6A8
/* 80573934  4B E4 D3 65 */	bl mMsg_Check_MainNormalContinue
/* 80573938  2C 03 00 01 */	cmpwi r3, 1
/* 8057393C  40 82 00 20 */	bne lbl_8057395C
/* 80573940  2C 1F 00 00 */	cmpwi r31, 0
/* 80573944  41 82 00 18 */	beq lbl_8057395C
/* 80573948  4B E4 BD 61 */	bl func_803BF6A8
/* 8057394C  4B E4 D3 F5 */	bl mMsg_Set_LockContinue
/* 80573950  7F C3 F3 78 */	mr r3, r30
/* 80573954  38 80 00 07 */	li r4, 7
/* 80573958  48 00 03 F1 */	bl aNRTC_change_talk_proc
lbl_8057395C:
/* 8057395C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80573968  7C 08 03 A6 */	mtlr r0
/* 8057396C  38 21 00 10 */	addi r1, r1, 0x10
/* 80573970  4E 80 00 20 */	blr 
