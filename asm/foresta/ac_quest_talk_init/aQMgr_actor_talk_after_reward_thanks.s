lbl_8048D32C:
/* 8048D32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D330  7C 08 02 A6 */	mflr r0
/* 8048D334  38 80 00 07 */	li r4, 7
/* 8048D338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D33C  38 00 00 0A */	li r0, 0xa
/* 8048D340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D344  7C 7F 1B 78 */	mr r31, r3
/* 8048D348  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8048D34C  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048D350  7D 89 03 A6 */	mtctr r12
/* 8048D354  4E 80 04 21 */	bctrl 
/* 8048D358  38 00 00 00 */	li r0, 0
/* 8048D35C  7F E3 FB 78 */	mr r3, r31
/* 8048D360  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048D364  4B FF E2 79 */	bl aQMgr_actor_talk_finish
/* 8048D368  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048D36C  7F E3 FB 78 */	mr r3, r31
/* 8048D370  38 80 00 02 */	li r4, 2
/* 8048D374  7D 89 03 A6 */	mtctr r12
/* 8048D378  4E 80 04 21 */	bctrl 
/* 8048D37C  4B F3 23 2D */	bl func_803BF6A8
/* 8048D380  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048D384  4B F3 2C 41 */	bl mMsg_Set_continue_msg_num
/* 8048D388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D38C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D390  7C 08 03 A6 */	mtlr r0
/* 8048D394  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D398  4E 80 00 20 */	blr 
