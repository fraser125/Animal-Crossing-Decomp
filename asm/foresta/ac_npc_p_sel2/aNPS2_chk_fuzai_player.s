lbl_805696C0:
/* 805696C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805696C4  7C 08 02 A6 */	mflr r0
/* 805696C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805696CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805696D0  7C 9F 23 78 */	mr r31, r4
/* 805696D4  38 80 00 09 */	li r4, 9
/* 805696D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805696DC  7C 7E 1B 78 */	mr r30, r3
/* 805696E0  38 60 00 04 */	li r3, 4
/* 805696E4  4B E2 ED 99 */	bl mDemo_Get_OrderValue
/* 805696E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805696EC  2C 00 00 07 */	cmpwi r0, 7
/* 805696F0  40 82 00 68 */	bne lbl_80569758
/* 805696F4  4B E5 5F B5 */	bl func_803BF6A8
/* 805696F8  4B E5 75 A1 */	bl mMsg_Check_MainNormalContinue
/* 805696FC  2C 03 00 01 */	cmpwi r3, 1
/* 80569700  40 82 00 58 */	bne lbl_80569758
/* 80569704  38 60 00 04 */	li r3, 4
/* 80569708  38 80 00 09 */	li r4, 9
/* 8056970C  38 A0 00 00 */	li r5, 0
/* 80569710  4B E2 ED 29 */	bl mDemo_Set_OrderValue
/* 80569714  4B E1 9E 2D */	bl func_80383540
/* 80569718  4B E1 A4 55 */	bl mChoice_Get_ChoseNum
/* 8056971C  2C 03 00 01 */	cmpwi r3, 1
/* 80569720  41 82 00 28 */	beq lbl_80569748
/* 80569724  40 80 00 34 */	bge lbl_80569758
/* 80569728  2C 03 00 00 */	cmpwi r3, 0
/* 8056972C  40 80 00 08 */	bge lbl_80569734
/* 80569730  48 00 00 28 */	b lbl_80569758
lbl_80569734:
/* 80569734  7F C3 F3 78 */	mr r3, r30
/* 80569738  7F E4 FB 78 */	mr r4, r31
/* 8056973C  38 A0 00 17 */	li r5, 0x17
/* 80569740  48 00 06 89 */	bl aNPS2_change_talk_proc
/* 80569744  48 00 00 14 */	b lbl_80569758
lbl_80569748:
/* 80569748  7F C3 F3 78 */	mr r3, r30
/* 8056974C  7F E4 FB 78 */	mr r4, r31
/* 80569750  38 A0 00 13 */	li r5, 0x13
/* 80569754  48 00 06 75 */	bl aNPS2_change_talk_proc
lbl_80569758:
/* 80569758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056975C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80569760  83 C1 00 08 */	lwz r30, 8(r1)
/* 80569764  7C 08 03 A6 */	mtlr r0
/* 80569768  38 21 00 10 */	addi r1, r1, 0x10
/* 8056976C  4E 80 00 20 */	blr 
