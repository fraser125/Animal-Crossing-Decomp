lbl_80582C6C:
/* 80582C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582C70  7C 08 02 A6 */	mflr r0
/* 80582C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80582C7C  7C 7F 1B 78 */	mr r31, r3
/* 80582C80  4B FF FC 91 */	bl aNSC_get_start_call_msg_no
/* 80582C84  4B FF F1 05 */	bl aNSC_get_msg_no
/* 80582C88  4B E1 58 8D */	bl mDemo_Set_msg_num
/* 80582C8C  38 00 00 01 */	li r0, 1
/* 80582C90  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80582C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80582C9C  7C 08 03 A6 */	mtlr r0
/* 80582CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80582CA4  4E 80 00 20 */	blr 
