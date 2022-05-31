lbl_8048C3BC:
/* 8048C3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C3C0  7C 08 02 A6 */	mflr r0
/* 8048C3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C3CC  7C 7F 1B 78 */	mr r31, r3
/* 8048C3D0  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C3D4  2C 00 00 00 */	cmpwi r0, 0
/* 8048C3D8  40 82 00 4C */	bne lbl_8048C424
/* 8048C3DC  4B FF F5 C5 */	bl aQMgr_talk_quest_finish_firstjob_open_quest
/* 8048C3E0  38 00 00 00 */	li r0, 0
/* 8048C3E4  38 60 02 82 */	li r3, 0x282
/* 8048C3E8  90 1F 02 00 */	stw r0, 0x200(r31)
/* 8048C3EC  38 00 FF FF */	li r0, -1
/* 8048C3F0  90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 8048C3F4  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8048C3F8  4B F3 32 B1 */	bl func_803BF6A8
/* 8048C3FC  4B F3 49 2D */	bl mMsg_Set_ForceNext
/* 8048C400  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C404  7F E3 FB 78 */	mr r3, r31
/* 8048C408  38 80 00 02 */	li r4, 2
/* 8048C40C  7D 89 03 A6 */	mtctr r12
/* 8048C410  4E 80 04 21 */	bctrl 
/* 8048C414  4B F3 32 95 */	bl func_803BF6A8
/* 8048C418  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C41C  4B F3 3B A9 */	bl mMsg_Set_continue_msg_num
/* 8048C420  48 00 00 08 */	b lbl_8048C428
lbl_8048C424:
/* 8048C424  4B FF F6 9D */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C428:
/* 8048C428  38 00 00 00 */	li r0, 0
/* 8048C42C  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C438  7C 08 03 A6 */	mtlr r0
/* 8048C43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C440  4E 80 00 20 */	blr 
