lbl_8052764C:
/* 8052764C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527650  7C 08 02 A6 */	mflr r0
/* 80527654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052765C  93 C1 00 08 */	stw r30, 8(r1)
/* 80527660  7C 7E 1B 78 */	mr r30, r3
/* 80527664  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80527668  A0 63 00 04 */	lhz r3, 4(r3)
/* 8052766C  4B EA 77 F1 */	bl mNpc_GetLooks
/* 80527670  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80527674  4B E9 80 35 */	bl func_803BF6A8
/* 80527678  1C 9F 00 06 */	mulli r4, r31, 6
/* 8052767C  38 84 09 8B */	addi r4, r4, 0x98b
/* 80527680  4B E9 89 45 */	bl mMsg_Set_continue_msg_num
/* 80527684  7F C3 F3 78 */	mr r3, r30
/* 80527688  38 80 00 01 */	li r4, 1
/* 8052768C  48 00 06 69 */	bl aHWN_change_talk_proc
/* 80527690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527698  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052769C  7C 08 03 A6 */	mtlr r0
/* 805276A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805276A4  4E 80 00 20 */	blr 
