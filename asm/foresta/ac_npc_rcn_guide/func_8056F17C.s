lbl_8056F17C:
/* 8056F17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F180  7C 08 02 A6 */	mflr r0
/* 8056F184  38 80 00 09 */	li r4, 9
/* 8056F188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F18C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F190  7C 7F 1B 78 */	mr r31, r3
/* 8056F194  38 60 00 04 */	li r3, 4
/* 8056F198  4B E2 92 E5 */	bl mDemo_Get_OrderValue
/* 8056F19C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8056F1A0  41 82 00 28 */	beq lbl_8056F1C8
/* 8056F1A4  38 60 00 04 */	li r3, 4
/* 8056F1A8  38 80 00 09 */	li r4, 9
/* 8056F1AC  38 A0 00 00 */	li r5, 0
/* 8056F1B0  4B E2 92 89 */	bl mDemo_Set_OrderValue
/* 8056F1B4  4B E5 04 F5 */	bl func_803BF6A8
/* 8056F1B8  4B E5 08 8D */	bl mMsg_request_main_disappear_wait_type1
/* 8056F1BC  7F E3 FB 78 */	mr r3, r31
/* 8056F1C0  38 80 00 01 */	li r4, 1
/* 8056F1C4  48 00 02 15 */	bl aNRG_demand_payment_change_talk_proc
lbl_8056F1C8:
/* 8056F1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F1D0  7C 08 03 A6 */	mtlr r0
/* 8056F1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F1D8  4E 80 00 20 */	blr 
