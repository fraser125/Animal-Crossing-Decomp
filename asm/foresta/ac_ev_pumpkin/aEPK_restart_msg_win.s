lbl_80522960:
/* 80522960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522964  7C 08 02 A6 */	mflr r0
/* 80522968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052296C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522970  93 C1 00 08 */	stw r30, 8(r1)
/* 80522974  7C 7E 1B 78 */	mr r30, r3
/* 80522978  4B E9 CD 31 */	bl func_803BF6A8
/* 8052297C  7C 7F 1B 78 */	mr r31, r3
/* 80522980  4B E9 D2 09 */	bl mMsg_request_main_appear_wait_type1
/* 80522984  7F E3 FB 78 */	mr r3, r31
/* 80522988  7F C4 F3 78 */	mr r4, r30
/* 8052298C  4B E9 E0 0D */	bl mMsg_ChangeMsgData
/* 80522990  7F E3 FB 78 */	mr r3, r31
/* 80522994  4B E9 E3 95 */	bl mMsg_Set_ForceNext
/* 80522998  7F E3 FB 78 */	mr r3, r31
/* 8052299C  4B E9 E3 B1 */	bl mMsg_Unset_LockContinue
/* 805229A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805229A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805229A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805229AC  7C 08 03 A6 */	mtlr r0
/* 805229B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805229B4  4E 80 00 20 */	blr 
