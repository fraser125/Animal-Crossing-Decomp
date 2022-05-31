lbl_804290B0:
/* 804290B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804290B4  7C 08 02 A6 */	mflr r0
/* 804290B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804290BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804290C0  7C 7F 1B 78 */	mr r31, r3
/* 804290C4  38 60 00 08 */	li r3, 8
/* 804290C8  7F E4 FB 78 */	mr r4, r31
/* 804290CC  4B F7 11 99 */	bl mDemo_Check
/* 804290D0  2C 03 00 01 */	cmpwi r3, 1
/* 804290D4  40 82 00 44 */	bne lbl_80429118
/* 804290D8  38 60 00 32 */	li r3, 0x32
/* 804290DC  4B FC 1E B5 */	bl mSP_money_check
/* 804290E0  2C 03 00 00 */	cmpwi r3, 0
/* 804290E4  41 82 00 1C */	beq lbl_80429100
/* 804290E8  7F E3 FB 78 */	mr r3, r31
/* 804290EC  38 80 00 03 */	li r4, 3
/* 804290F0  48 00 03 8D */	bl aHTC_setup_move_proc
/* 804290F4  38 60 11 2C */	li r3, 0x112c
/* 804290F8  4B F6 F4 1D */	bl mDemo_Set_msg_num
/* 804290FC  48 00 00 3C */	b lbl_80429138
lbl_80429100:
/* 80429100  7F E3 FB 78 */	mr r3, r31
/* 80429104  38 80 00 04 */	li r4, 4
/* 80429108  48 00 03 75 */	bl aHTC_setup_move_proc
/* 8042910C  38 60 11 2E */	li r3, 0x112e
/* 80429110  4B F6 F4 05 */	bl mDemo_Set_msg_num
/* 80429114  48 00 00 24 */	b lbl_80429138
lbl_80429118:
/* 80429118  4B F6 F2 E1 */	bl mDemo_Get_talk_actor
/* 8042911C  28 03 00 00 */	cmplwi r3, 0
/* 80429120  40 82 00 18 */	bne lbl_80429138
/* 80429124  3C 60 80 43 */	lis r3, aHTC_set_talk_info_local@ha /* 0x8042905C@ha */
/* 80429128  7F E4 FB 78 */	mr r4, r31
/* 8042912C  38 A3 90 5C */	addi r5, r3, aHTC_set_talk_info_local@l /* 0x8042905C@l */
/* 80429130  38 60 00 08 */	li r3, 8
/* 80429134  4B F7 10 29 */	bl mDemo_Request
lbl_80429138:
/* 80429138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042913C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429140  7C 08 03 A6 */	mtlr r0
/* 80429144  38 21 00 10 */	addi r1, r1, 0x10
/* 80429148  4E 80 00 20 */	blr 
