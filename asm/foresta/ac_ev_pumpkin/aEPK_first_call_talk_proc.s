lbl_80522A58:
/* 80522A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522A5C  7C 08 02 A6 */	mflr r0
/* 80522A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522A68  7C 7F 1B 78 */	mr r31, r3
/* 80522A6C  4B E9 CC 3D */	bl func_803BF6A8
/* 80522A70  38 80 09 B5 */	li r4, 0x9b5
/* 80522A74  4B E9 D5 51 */	bl mMsg_Set_continue_msg_num
/* 80522A78  7F E3 FB 78 */	mr r3, r31
/* 80522A7C  38 80 00 01 */	li r4, 1
/* 80522A80  48 00 07 61 */	bl aEPK_change_talk_proc
/* 80522A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522A8C  7C 08 03 A6 */	mtlr r0
/* 80522A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80522A94  4E 80 00 20 */	blr 
