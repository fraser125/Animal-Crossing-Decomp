lbl_804912C8:
/* 804912C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804912CC  7C 08 02 A6 */	mflr r0
/* 804912D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804912D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804912D8  7C 7F 1B 78 */	mr r31, r3
/* 804912DC  4B F2 E3 CD */	bl func_803BF6A8
/* 804912E0  4B F2 FA 6D */	bl mMsg_Unset_LockContinue
/* 804912E4  4B F2 E3 C5 */	bl func_803BF6A8
/* 804912E8  4B F2 FA 41 */	bl mMsg_Set_ForceNext
/* 804912EC  4B F2 E3 BD */	bl func_803BF6A8
/* 804912F0  4B F2 E8 99 */	bl mMsg_request_main_appear_wait_type1
/* 804912F4  38 60 00 07 */	li r3, 7
/* 804912F8  38 00 00 01 */	li r0, 1
/* 804912FC  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80491300  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80491304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049130C  7C 08 03 A6 */	mtlr r0
/* 80491310  38 21 00 10 */	addi r1, r1, 0x10
/* 80491314  4E 80 00 20 */	blr 
