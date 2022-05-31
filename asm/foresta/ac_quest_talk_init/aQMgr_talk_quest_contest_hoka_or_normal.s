lbl_8048D39C:
/* 8048D39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D3A0  7C 08 02 A6 */	mflr r0
/* 8048D3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D3AC  7C 7F 1B 78 */	mr r31, r3
/* 8048D3B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8048D3B4  80 83 09 30 */	lwz r4, 0x930(r3)
/* 8048D3B8  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048D3BC  1C 84 00 34 */	mulli r4, r4, 0x34
/* 8048D3C0  2C 00 00 00 */	cmpwi r0, 0
/* 8048D3C4  3B C4 02 14 */	addi r30, r4, 0x214
/* 8048D3C8  7F DF F2 14 */	add r30, r31, r30
/* 8048D3CC  40 82 00 E8 */	bne lbl_8048D4B4
/* 8048D3D0  4B FF E5 D1 */	bl aQMgr_talk_quest_finish_firstjob_open_quest
/* 8048D3D4  38 00 00 00 */	li r0, 0
/* 8048D3D8  90 1F 02 00 */	stw r0, 0x200(r31)
/* 8048D3DC  4B F3 22 CD */	bl func_803BF6A8
/* 8048D3E0  80 BE 00 08 */	lwz r5, 8(r30)
/* 8048D3E4  38 80 00 0C */	li r4, 0xc
/* 8048D3E8  38 C0 00 08 */	li r6, 8
/* 8048D3EC  38 A5 00 0E */	addi r5, r5, 0xe
/* 8048D3F0  4B F3 28 65 */	bl mMsg_Set_free_str
/* 8048D3F4  80 7E 00 08 */	lwz r3, 8(r30)
/* 8048D3F8  88 83 00 00 */	lbz r4, 0(r3)
/* 8048D3FC  54 80 D7 BE */	rlwinm r0, r4, 0x1a, 0x1e, 0x1f
/* 8048D400  28 00 00 02 */	cmplwi r0, 2
/* 8048D404  40 82 00 58 */	bne lbl_8048D45C
/* 8048D408  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8048D40C  28 00 00 06 */	cmplwi r0, 6
/* 8048D410  40 82 00 4C */	bne lbl_8048D45C
/* 8048D414  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048D418  38 63 00 0E */	addi r3, r3, 0xe
/* 8048D41C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048D420  3C 84 00 02 */	addis r4, r4, 2
/* 8048D424  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048D428  4B F5 2D 1D */	bl mPr_CheckCmpPersonalID
/* 8048D42C  2C 03 00 00 */	cmpwi r3, 0
/* 8048D430  40 82 00 20 */	bne lbl_8048D450
/* 8048D434  80 9F 01 78 */	lwz r4, 0x178(r31)
/* 8048D438  80 7E 00 08 */	lwz r3, 8(r30)
/* 8048D43C  80 84 00 00 */	lwz r4, 0(r4)
/* 8048D440  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 8048D444  4B FF E6 F5 */	bl aQMgr_talk_quest_get_contest_hoka_msg_no
/* 8048D448  90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 8048D44C  48 00 00 34 */	b lbl_8048D480
lbl_8048D450:
/* 8048D450  38 00 1B 05 */	li r0, 0x1b05
/* 8048D454  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 8048D458  48 00 00 28 */	b lbl_8048D480
lbl_8048D45C:
/* 8048D45C  80 9F 01 78 */	lwz r4, 0x178(r31)
/* 8048D460  80 84 00 00 */	lwz r4, 0(r4)
/* 8048D464  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 8048D468  4B FF E6 D1 */	bl aQMgr_talk_quest_get_contest_hoka_msg_no
/* 8048D46C  90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 8048D470  38 00 00 00 */	li r0, 0
/* 8048D474  7F E3 FB 78 */	mr r3, r31
/* 8048D478  90 1F 02 00 */	stw r0, 0x200(r31)
/* 8048D47C  4B FF E1 61 */	bl aQMgr_actor_talk_finish
lbl_8048D480:
/* 8048D480  38 00 FF FF */	li r0, -1
/* 8048D484  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8048D488  4B F3 22 21 */	bl func_803BF6A8
/* 8048D48C  4B F3 38 9D */	bl mMsg_Set_ForceNext
/* 8048D490  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048D494  7F E3 FB 78 */	mr r3, r31
/* 8048D498  38 80 00 02 */	li r4, 2
/* 8048D49C  7D 89 03 A6 */	mtctr r12
/* 8048D4A0  4E 80 04 21 */	bctrl 
/* 8048D4A4  4B F3 22 05 */	bl func_803BF6A8
/* 8048D4A8  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048D4AC  4B F3 2B 19 */	bl mMsg_Set_continue_msg_num
/* 8048D4B0  48 00 00 08 */	b lbl_8048D4B8
lbl_8048D4B4:
/* 8048D4B4  4B FF E6 0D */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048D4B8:
/* 8048D4B8  38 00 00 00 */	li r0, 0
/* 8048D4BC  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048D4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D4C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D4CC  7C 08 03 A6 */	mtlr r0
/* 8048D4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D4D4  4E 80 00 20 */	blr 
