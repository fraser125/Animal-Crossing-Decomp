lbl_805737C8:
/* 805737C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805737CC  7C 08 02 A6 */	mflr r0
/* 805737D0  38 80 00 09 */	li r4, 9
/* 805737D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805737D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805737DC  7C 7F 1B 78 */	mr r31, r3
/* 805737E0  38 60 00 04 */	li r3, 4
/* 805737E4  4B E2 4C 99 */	bl mDemo_Get_OrderValue
/* 805737E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805737EC  2C 00 00 01 */	cmpwi r0, 1
/* 805737F0  40 82 00 38 */	bne lbl_80573828
/* 805737F4  4B E4 BE B5 */	bl func_803BF6A8
/* 805737F8  4B E4 D4 A1 */	bl mMsg_Check_MainNormalContinue
/* 805737FC  2C 03 00 01 */	cmpwi r3, 1
/* 80573800  40 82 00 28 */	bne lbl_80573828
/* 80573804  38 60 00 04 */	li r3, 4
/* 80573808  38 80 00 09 */	li r4, 9
/* 8057380C  38 A0 00 00 */	li r5, 0
/* 80573810  4B E2 4C 29 */	bl mDemo_Set_OrderValue
/* 80573814  7F E3 FB 78 */	mr r3, r31
/* 80573818  38 80 00 04 */	li r4, 4
/* 8057381C  48 00 05 2D */	bl aNRTC_change_talk_proc
/* 80573820  4B E4 BE 89 */	bl func_803BF6A8
/* 80573824  4B E4 C2 21 */	bl mMsg_request_main_disappear_wait_type1
lbl_80573828:
/* 80573828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057382C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573830  7C 08 03 A6 */	mtlr r0
/* 80573834  38 21 00 10 */	addi r1, r1, 0x10
/* 80573838  4E 80 00 20 */	blr 
