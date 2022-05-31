lbl_8048C6B0:
/* 8048C6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C6B4  7C 08 02 A6 */	mflr r0
/* 8048C6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C6BC  38 00 00 00 */	li r0, 0
/* 8048C6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C6C4  7C 7F 1B 78 */	mr r31, r3
/* 8048C6C8  98 03 01 85 */	stb r0, 0x185(r3)
/* 8048C6CC  38 00 00 01 */	li r0, 1
/* 8048C6D0  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8048C6D4  4B FF EF 09 */	bl aQMgr_actor_talk_finish
/* 8048C6D8  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C6DC  7F E3 FB 78 */	mr r3, r31
/* 8048C6E0  38 80 00 02 */	li r4, 2
/* 8048C6E4  7D 89 03 A6 */	mtctr r12
/* 8048C6E8  4E 80 04 21 */	bctrl 
/* 8048C6EC  4B F3 2F BD */	bl func_803BF6A8
/* 8048C6F0  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C6F4  4B F3 38 D1 */	bl mMsg_Set_continue_msg_num
/* 8048C6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C700  7C 08 03 A6 */	mtlr r0
/* 8048C704  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C708  4E 80 00 20 */	blr 
