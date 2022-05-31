lbl_8048C70C:
/* 8048C70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C710  7C 08 02 A6 */	mflr r0
/* 8048C714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C71C  7C 7F 1B 78 */	mr r31, r3
/* 8048C720  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C724  2C 00 00 00 */	cmpwi r0, 0
/* 8048C728  40 82 00 74 */	bne lbl_8048C79C
/* 8048C72C  4B FF F2 75 */	bl aQMgr_talk_quest_finish_firstjob_open_quest
/* 8048C730  38 60 00 08 */	li r3, 8
/* 8048C734  38 00 00 00 */	li r0, 0
/* 8048C738  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048C73C  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C740  88 1F 01 C8 */	lbz r0, 0x1c8(r31)
/* 8048C744  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048C748  28 00 00 02 */	cmplwi r0, 2
/* 8048C74C  40 82 00 14 */	bne lbl_8048C760
/* 8048C750  7F E3 FB 78 */	mr r3, r31
/* 8048C754  4B FF E5 ED */	bl aQMgr_actor_set_quest_info
/* 8048C758  7F E3 FB 78 */	mr r3, r31
/* 8048C75C  4B FF E6 99 */	bl aQMgr_actor_clear_client_quest_info
lbl_8048C760:
/* 8048C760  7F E3 FB 78 */	mr r3, r31
/* 8048C764  4B FF F1 E5 */	bl aQMgr_talk_quest_start_choice
/* 8048C768  4B EF 6D D9 */	bl func_80383540
/* 8048C76C  4B EF 7D 71 */	bl mChoice_no_b_set
/* 8048C770  4B F3 2F 39 */	bl func_803BF6A8
/* 8048C774  4B F3 45 B5 */	bl mMsg_Set_ForceNext
/* 8048C778  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C77C  7F E3 FB 78 */	mr r3, r31
/* 8048C780  38 80 00 02 */	li r4, 2
/* 8048C784  7D 89 03 A6 */	mtctr r12
/* 8048C788  4E 80 04 21 */	bctrl 
/* 8048C78C  4B F3 2F 1D */	bl func_803BF6A8
/* 8048C790  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C794  4B F3 38 31 */	bl mMsg_Set_continue_msg_num
/* 8048C798  48 00 00 08 */	b lbl_8048C7A0
lbl_8048C79C:
/* 8048C79C  4B FF F3 25 */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C7A0:
/* 8048C7A0  38 00 00 00 */	li r0, 0
/* 8048C7A4  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C7B0  7C 08 03 A6 */	mtlr r0
/* 8048C7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C7B8  4E 80 00 20 */	blr 
