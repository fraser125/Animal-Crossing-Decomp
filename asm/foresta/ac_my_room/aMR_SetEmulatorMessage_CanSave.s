lbl_804742B8:
/* 804742B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804742BC  7C 08 02 A6 */	mflr r0
/* 804742C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804742C4  4B F4 B3 E5 */	bl func_803BF6A8
/* 804742C8  38 80 17 B5 */	li r4, 0x17b5
/* 804742CC  4B F4 BC F9 */	bl mMsg_Set_continue_msg_num
/* 804742D0  4B F4 B3 D9 */	bl func_803BF6A8
/* 804742D4  4B F4 CA 79 */	bl mMsg_Unset_LockContinue
/* 804742D8  4B F4 B3 D1 */	bl func_803BF6A8
/* 804742DC  4B F4 CA 4D */	bl mMsg_Set_ForceNext
/* 804742E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804742E4  7C 08 03 A6 */	mtlr r0
/* 804742E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804742EC  4E 80 00 20 */	blr 
