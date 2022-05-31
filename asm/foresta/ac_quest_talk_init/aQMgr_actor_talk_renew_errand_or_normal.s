lbl_8048C558:
/* 8048C558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C55C  7C 08 02 A6 */	mflr r0
/* 8048C560  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C568  7C 7F 1B 78 */	mr r31, r3
/* 8048C56C  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C570  2C 00 00 00 */	cmpwi r0, 0
/* 8048C574  40 82 00 A4 */	bne lbl_8048C618
/* 8048C578  38 00 00 00 */	li r0, 0
/* 8048C57C  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C580  4B FF E7 C1 */	bl aQMgr_actor_set_quest_info
/* 8048C584  7F E3 FB 78 */	mr r3, r31
/* 8048C588  4B FF E8 6D */	bl aQMgr_actor_clear_client_quest_info
/* 8048C58C  81 9F 09 4C */	lwz r12, 0x94c(r31)
/* 8048C590  38 7F 02 14 */	addi r3, r31, 0x214
/* 8048C594  38 80 00 23 */	li r4, 0x23
/* 8048C598  7D 89 03 A6 */	mtctr r12
/* 8048C59C  4E 80 04 21 */	bctrl 
/* 8048C5A0  38 00 FF FF */	li r0, -1
/* 8048C5A4  7F E3 FB 78 */	mr r3, r31
/* 8048C5A8  90 1F 09 30 */	stw r0, 0x930(r31)
/* 8048C5AC  4B FF F3 9D */	bl aQMgr_talk_quest_start_choice
/* 8048C5B0  4B EF 6F 91 */	bl func_80383540
/* 8048C5B4  4B EF 7F 29 */	bl mChoice_no_b_set
/* 8048C5B8  4B F3 30 F1 */	bl func_803BF6A8
/* 8048C5BC  4B F3 47 6D */	bl mMsg_Set_ForceNext
/* 8048C5C0  80 7F 02 00 */	lwz r3, 0x200(r31)
/* 8048C5C4  88 03 00 00 */	lbz r0, 0(r3)
/* 8048C5C8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048C5CC  28 00 00 01 */	cmplwi r0, 1
/* 8048C5D0  40 82 00 1C */	bne lbl_8048C5EC
/* 8048C5D4  88 03 00 01 */	lbz r0, 1(r3)
/* 8048C5D8  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 8048C5DC  40 82 00 10 */	bne lbl_8048C5EC
/* 8048C5E0  38 00 00 1A */	li r0, 0x1a
/* 8048C5E4  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048C5E8  48 00 00 0C */	b lbl_8048C5F4
lbl_8048C5EC:
/* 8048C5EC  38 00 00 19 */	li r0, 0x19
/* 8048C5F0  98 1F 01 86 */	stb r0, 0x186(r31)
lbl_8048C5F4:
/* 8048C5F4  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C5F8  7F E3 FB 78 */	mr r3, r31
/* 8048C5FC  38 80 00 02 */	li r4, 2
/* 8048C600  7D 89 03 A6 */	mtctr r12
/* 8048C604  4E 80 04 21 */	bctrl 
/* 8048C608  4B F3 30 A1 */	bl func_803BF6A8
/* 8048C60C  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C610  4B F3 39 B5 */	bl mMsg_Set_continue_msg_num
/* 8048C614  48 00 00 08 */	b lbl_8048C61C
lbl_8048C618:
/* 8048C618  4B FF F4 A9 */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C61C:
/* 8048C61C  38 00 00 00 */	li r0, 0
/* 8048C620  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C62C  7C 08 03 A6 */	mtlr r0
/* 8048C630  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C634  4E 80 00 20 */	blr 
