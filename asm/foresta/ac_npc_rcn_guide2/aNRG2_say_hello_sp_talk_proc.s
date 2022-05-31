lbl_80570A60:
/* 80570A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570A64  7C 08 02 A6 */	mflr r0
/* 80570A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570A70  7C 7F 1B 78 */	mr r31, r3
/* 80570A74  4B E4 EC 35 */	bl func_803BF6A8
/* 80570A78  38 80 08 37 */	li r4, 0x837
/* 80570A7C  4B E4 F5 49 */	bl mMsg_Set_continue_msg_num
/* 80570A80  7F E3 FB 78 */	mr r3, r31
/* 80570A84  38 80 00 02 */	li r4, 2
/* 80570A88  48 00 08 2D */	bl aNRG2_change_talk_proc
/* 80570A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570A94  7C 08 03 A6 */	mtlr r0
/* 80570A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80570A9C  4E 80 00 20 */	blr 
