lbl_8048C958:
/* 8048C958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C95C  7C 08 02 A6 */	mflr r0
/* 8048C960  38 80 00 06 */	li r4, 6
/* 8048C964  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C96C  7C 7F 1B 78 */	mr r31, r3
/* 8048C970  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048C974  7D 89 03 A6 */	mtctr r12
/* 8048C978  4E 80 04 21 */	bctrl 
/* 8048C97C  38 00 00 0B */	li r0, 0xb
/* 8048C980  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C984  4B F3 2D 25 */	bl func_803BF6A8
/* 8048C988  4B F3 43 B9 */	bl mMsg_Set_LockContinue
/* 8048C98C  38 00 00 01 */	li r0, 1
/* 8048C990  7F E3 FB 78 */	mr r3, r31
/* 8048C994  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048C998  4B FF EC 45 */	bl aQMgr_actor_talk_finish
/* 8048C99C  38 00 00 18 */	li r0, 0x18
/* 8048C9A0  7F E3 FB 78 */	mr r3, r31
/* 8048C9A4  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048C9A8  38 80 00 02 */	li r4, 2
/* 8048C9AC  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C9B0  7D 89 03 A6 */	mtctr r12
/* 8048C9B4  4E 80 04 21 */	bctrl 
/* 8048C9B8  4B F3 2C F1 */	bl func_803BF6A8
/* 8048C9BC  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C9C0  4B F3 36 05 */	bl mMsg_Set_continue_msg_num
/* 8048C9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C9CC  7C 08 03 A6 */	mtlr r0
/* 8048C9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C9D4  4E 80 00 20 */	blr 
