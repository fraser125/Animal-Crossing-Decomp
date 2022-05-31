lbl_80475A64:
/* 80475A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475A68  7C 08 02 A6 */	mflr r0
/* 80475A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475A74  7C 7F 1B 78 */	mr r31, r3
/* 80475A78  4B F0 DA C9 */	bl func_80383540
/* 80475A7C  4B F0 E0 F1 */	bl mChoice_Get_ChoseNum
/* 80475A80  2C 03 FF FF */	cmpwi r3, -1
/* 80475A84  41 82 00 4C */	beq lbl_80475AD0
/* 80475A88  2C 03 00 00 */	cmpwi r3, 0
/* 80475A8C  41 82 00 08 */	beq lbl_80475A94
/* 80475A90  48 00 00 24 */	b lbl_80475AB4
lbl_80475A94:
/* 80475A94  38 00 00 40 */	li r0, 0x40
/* 80475A98  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475A9C  4B F4 9C 0D */	bl func_803BF6A8
/* 80475AA0  38 80 3D D2 */	li r4, 0x3dd2
/* 80475AA4  4B F4 A5 21 */	bl mMsg_Set_continue_msg_num
/* 80475AA8  4B F4 9C 01 */	bl func_803BF6A8
/* 80475AAC  4B F4 B2 A1 */	bl mMsg_Unset_LockContinue
/* 80475AB0  48 00 00 20 */	b lbl_80475AD0
lbl_80475AB4:
/* 80475AB4  38 00 00 3C */	li r0, 0x3c
/* 80475AB8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475ABC  4B F4 9B ED */	bl func_803BF6A8
/* 80475AC0  38 80 3D D1 */	li r4, 0x3dd1
/* 80475AC4  4B F4 A5 01 */	bl mMsg_Set_continue_msg_num
/* 80475AC8  4B F4 9B E1 */	bl func_803BF6A8
/* 80475ACC  4B F4 B2 81 */	bl mMsg_Unset_LockContinue
lbl_80475AD0:
/* 80475AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475AD8  7C 08 03 A6 */	mtlr r0
/* 80475ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80475AE0  4E 80 00 20 */	blr 
