lbl_8048C1E8:
/* 8048C1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C1EC  7C 08 02 A6 */	mflr r0
/* 8048C1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C1F4  38 00 35 67 */	li r0, 0x3567
/* 8048C1F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C1FC  7C 7F 1B 78 */	mr r31, r3
/* 8048C200  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 8048C204  4B EF 73 3D */	bl func_80383540
/* 8048C208  4B EF 82 D5 */	bl mChoice_no_b_set
/* 8048C20C  7F E3 FB 78 */	mr r3, r31
/* 8048C210  4B FF F6 E1 */	bl aQMgr_talk_quest_select_get_choice_island
/* 8048C214  38 00 00 0D */	li r0, 0xd
/* 8048C218  7F E3 FB 78 */	mr r3, r31
/* 8048C21C  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C220  38 80 00 02 */	li r4, 2
/* 8048C224  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C228  7D 89 03 A6 */	mtctr r12
/* 8048C22C  4E 80 04 21 */	bctrl 
/* 8048C230  4B F3 34 79 */	bl func_803BF6A8
/* 8048C234  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C238  4B F3 3D 8D */	bl mMsg_Set_continue_msg_num
/* 8048C23C  38 60 00 00 */	li r3, 0
/* 8048C240  38 00 00 1E */	li r0, 0x1e
/* 8048C244  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048C248  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048C24C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C254  7C 08 03 A6 */	mtlr r0
/* 8048C258  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C25C  4E 80 00 20 */	blr 
