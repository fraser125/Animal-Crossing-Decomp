lbl_80475E58:
/* 80475E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475E5C  7C 08 02 A6 */	mflr r0
/* 80475E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475E68  7C 7F 1B 78 */	mr r31, r3
/* 80475E6C  4B F4 98 3D */	bl func_803BF6A8
/* 80475E70  4B F4 A1 5D */	bl mMsg_Get_msg_num
/* 80475E74  2C 03 30 6A */	cmpwi r3, 0x306a
/* 80475E78  40 82 00 20 */	bne lbl_80475E98
/* 80475E7C  38 00 00 29 */	li r0, 0x29
/* 80475E80  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475E84  4B F4 98 25 */	bl func_803BF6A8
/* 80475E88  38 80 17 B5 */	li r4, 0x17b5
/* 80475E8C  4B F4 A1 39 */	bl mMsg_Set_continue_msg_num
/* 80475E90  4B F4 98 19 */	bl func_803BF6A8
/* 80475E94  4B F4 AE B9 */	bl mMsg_Unset_LockContinue
lbl_80475E98:
/* 80475E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475EA0  7C 08 03 A6 */	mtlr r0
/* 80475EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80475EA8  4E 80 00 20 */	blr 
