lbl_80488230:
/* 80488230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80488234  7C 08 02 A6 */	mflr r0
/* 80488238  38 80 00 00 */	li r4, 0
/* 8048823C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80488244  7C 7F 1B 78 */	mr r31, r3
/* 80488248  80 03 09 30 */	lwz r0, 0x930(r3)
/* 8048824C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80488250  7C BF 02 14 */	add r5, r31, r0
/* 80488254  80 65 02 1C */	lwz r3, 0x21c(r5)
/* 80488258  88 03 00 01 */	lbz r0, 1(r3)
/* 8048825C  50 80 1E 78 */	rlwimi r0, r4, 3, 0x19, 0x1c
/* 80488260  98 03 00 01 */	stb r0, 1(r3)
/* 80488264  80 65 02 1C */	lwz r3, 0x21c(r5)
/* 80488268  38 63 00 0C */	addi r3, r3, 0xc
/* 8048826C  4B F4 31 19 */	bl mNpc_ClearAnimalPersonalID
/* 80488270  38 60 00 05 */	li r3, 5
/* 80488274  38 00 00 0C */	li r0, 0xc
/* 80488278  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 8048827C  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80488280  4B F3 74 29 */	bl func_803BF6A8
/* 80488284  4B F3 79 05 */	bl mMsg_request_main_appear_wait_type1
/* 80488288  7F E3 FB 78 */	mr r3, r31
/* 8048828C  4B FF F7 25 */	bl aQMgr_fj_set_msg_no
/* 80488290  4B F3 74 19 */	bl func_803BF6A8
/* 80488294  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80488298  4B F3 87 01 */	bl mMsg_ChangeMsgData
/* 8048829C  4B F3 74 0D */	bl func_803BF6A8
/* 804882A0  4B F3 8A 89 */	bl mMsg_Set_ForceNext
/* 804882A4  4B F3 74 05 */	bl func_803BF6A8
/* 804882A8  4B F3 8A A5 */	bl mMsg_Unset_LockContinue
/* 804882AC  38 00 00 00 */	li r0, 0
/* 804882B0  98 1F 01 85 */	stb r0, 0x185(r31)
/* 804882B4  4B F3 73 F5 */	bl func_803BF6A8
/* 804882B8  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 804882BC  4B F3 7D 09 */	bl mMsg_Set_continue_msg_num
/* 804882C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804882C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804882C8  7C 08 03 A6 */	mtlr r0
/* 804882CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804882D0  4E 80 00 20 */	blr 
