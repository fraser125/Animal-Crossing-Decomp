lbl_8048C7BC:
/* 8048C7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C7C0  7C 08 02 A6 */	mflr r0
/* 8048C7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C7CC  7C 7F 1B 78 */	mr r31, r3
/* 8048C7D0  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C7D4  2C 00 00 00 */	cmpwi r0, 0
/* 8048C7D8  40 82 00 BC */	bne lbl_8048C894
/* 8048C7DC  38 00 00 01 */	li r0, 1
/* 8048C7E0  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C7E4  4B FF E5 5D */	bl aQMgr_actor_set_quest_info
/* 8048C7E8  7F E3 FB 78 */	mr r3, r31
/* 8048C7EC  4B FF E6 09 */	bl aQMgr_actor_clear_client_quest_info
/* 8048C7F0  80 9F 02 00 */	lwz r4, 0x200(r31)
/* 8048C7F4  88 04 00 00 */	lbz r0, 0(r4)
/* 8048C7F8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048C7FC  28 00 00 01 */	cmplwi r0, 1
/* 8048C800  40 82 00 14 */	bne lbl_8048C814
/* 8048C804  40 82 00 3C */	bne lbl_8048C840
/* 8048C808  88 04 00 01 */	lbz r0, 1(r4)
/* 8048C80C  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 8048C810  40 82 00 30 */	bne lbl_8048C840
lbl_8048C814:
/* 8048C814  38 60 00 14 */	li r3, 0x14
/* 8048C818  38 00 00 08 */	li r0, 8
/* 8048C81C  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048C820  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C824  88 04 00 00 */	lbz r0, 0(r4)
/* 8048C828  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048C82C  28 00 00 01 */	cmplwi r0, 1
/* 8048C830  41 82 00 40 */	beq lbl_8048C870
/* 8048C834  38 60 01 2E */	li r3, 0x12e
/* 8048C838  48 1A 14 CD */	bl sAdo_SysTrgStart
/* 8048C83C  48 00 00 34 */	b lbl_8048C870
lbl_8048C840:
/* 8048C840  38 60 00 1F */	li r3, 0x1f
/* 8048C844  38 00 00 00 */	li r0, 0
/* 8048C848  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048C84C  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C850  88 64 00 00 */	lbz r3, 0(r4)
/* 8048C854  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 8048C858  28 00 00 01 */	cmplwi r0, 1
/* 8048C85C  40 82 00 14 */	bne lbl_8048C870
/* 8048C860  54 60 06 BF */	clrlwi. r0, r3, 0x1a
/* 8048C864  40 82 00 0C */	bne lbl_8048C870
/* 8048C868  38 60 01 2E */	li r3, 0x12e
/* 8048C86C  48 1A 14 99 */	bl sAdo_SysTrgStart
lbl_8048C870:
/* 8048C870  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C874  7F E3 FB 78 */	mr r3, r31
/* 8048C878  38 80 00 02 */	li r4, 2
/* 8048C87C  7D 89 03 A6 */	mtctr r12
/* 8048C880  4E 80 04 21 */	bctrl 
/* 8048C884  4B F3 2E 25 */	bl func_803BF6A8
/* 8048C888  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C88C  4B F3 37 39 */	bl mMsg_Set_continue_msg_num
/* 8048C890  48 00 00 AC */	b lbl_8048C93C
lbl_8048C894:
/* 8048C894  2C 00 00 01 */	cmpwi r0, 1
/* 8048C898  40 82 00 54 */	bne lbl_8048C8EC
/* 8048C89C  4B FF D6 1D */	bl aQMgr_actor_set_client_quest_info
/* 8048C8A0  38 60 00 03 */	li r3, 3
/* 8048C8A4  38 00 00 00 */	li r0, 0
/* 8048C8A8  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 8048C8AC  7F E3 FB 78 */	mr r3, r31
/* 8048C8B0  38 80 00 02 */	li r4, 2
/* 8048C8B4  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C8B8  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C8BC  7D 89 03 A6 */	mtctr r12
/* 8048C8C0  4E 80 04 21 */	bctrl 
/* 8048C8C4  4B F3 2D E5 */	bl func_803BF6A8
/* 8048C8C8  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C8CC  4B F3 36 F9 */	bl mMsg_Set_continue_msg_num
/* 8048C8D0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8048C8D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8048C8D8  28 03 00 00 */	cmplwi r3, 0
/* 8048C8DC  41 82 00 60 */	beq lbl_8048C93C
/* 8048C8E0  38 80 FF FD */	li r4, -3
/* 8048C8E4  4B F3 EF 49 */	bl mNpc_AddFriendship
/* 8048C8E8  48 00 00 54 */	b lbl_8048C93C
lbl_8048C8EC:
/* 8048C8EC  2C 00 00 02 */	cmpwi r0, 2
/* 8048C8F0  40 82 00 10 */	bne lbl_8048C900
/* 8048C8F4  38 80 25 4A */	li r4, 0x254a
/* 8048C8F8  4B FF F1 69 */	bl aQMgr_talk_quest_set_cancel_msg_com
/* 8048C8FC  48 00 00 40 */	b lbl_8048C93C
lbl_8048C900:
/* 8048C900  38 00 00 01 */	li r0, 1
/* 8048C904  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C908  4B FF E4 39 */	bl aQMgr_actor_set_quest_info
/* 8048C90C  7F E3 FB 78 */	mr r3, r31
/* 8048C910  4B FF E4 E5 */	bl aQMgr_actor_clear_client_quest_info
/* 8048C914  38 00 00 00 */	li r0, 0
/* 8048C918  7F E3 FB 78 */	mr r3, r31
/* 8048C91C  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C920  38 80 00 02 */	li r4, 2
/* 8048C924  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C928  7D 89 03 A6 */	mtctr r12
/* 8048C92C  4E 80 04 21 */	bctrl 
/* 8048C930  4B F3 2D 79 */	bl func_803BF6A8
/* 8048C934  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C938  4B F3 36 8D */	bl mMsg_Set_continue_msg_num
lbl_8048C93C:
/* 8048C93C  4B F3 2D 6D */	bl func_803BF6A8
/* 8048C940  4B F3 43 E9 */	bl mMsg_Set_ForceNext
/* 8048C944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C94C  7C 08 03 A6 */	mtlr r0
/* 8048C950  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C954  4E 80 00 20 */	blr 
