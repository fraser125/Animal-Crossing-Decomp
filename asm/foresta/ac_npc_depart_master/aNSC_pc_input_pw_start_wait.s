lbl_80551710:
/* 80551710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551714  7C 08 02 A6 */	mflr r0
/* 80551718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055171C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551720  7C 9F 23 78 */	mr r31, r4
/* 80551724  38 80 00 09 */	li r4, 9
/* 80551728  93 C1 00 08 */	stw r30, 8(r1)
/* 8055172C  7C 7E 1B 78 */	mr r30, r3
/* 80551730  38 60 00 04 */	li r3, 4
/* 80551734  4B E4 6D 49 */	bl mDemo_Get_OrderValue
/* 80551738  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055173C  41 82 00 34 */	beq lbl_80551770
/* 80551740  4B E6 DF 69 */	bl func_803BF6A8
/* 80551744  4B E6 F5 55 */	bl mMsg_Check_MainNormalContinue
/* 80551748  2C 03 00 01 */	cmpwi r3, 1
/* 8055174C  40 82 00 24 */	bne lbl_80551770
/* 80551750  38 60 00 04 */	li r3, 4
/* 80551754  38 80 00 09 */	li r4, 9
/* 80551758  38 A0 00 00 */	li r5, 0
/* 8055175C  4B E4 6C DD */	bl mDemo_Set_OrderValue
/* 80551760  7F C3 F3 78 */	mr r3, r30
/* 80551764  7F E4 FB 78 */	mr r4, r31
/* 80551768  38 A0 00 35 */	li r5, 0x35
/* 8055176C  48 00 10 C9 */	bl aNSC_setupAction
lbl_80551770:
/* 80551770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551778  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055177C  7C 08 03 A6 */	mtlr r0
/* 80551780  38 21 00 10 */	addi r1, r1, 0x10
/* 80551784  4E 80 00 20 */	blr 