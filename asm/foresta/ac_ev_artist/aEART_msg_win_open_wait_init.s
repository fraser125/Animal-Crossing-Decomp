lbl_80519990:
/* 80519990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519994  7C 08 02 A6 */	mflr r0
/* 80519998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051999C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805199A0  4B EA 5D 09 */	bl func_803BF6A8
/* 805199A4  7C 7F 1B 78 */	mr r31, r3
/* 805199A8  4B EA 61 E1 */	bl mMsg_request_main_appear_wait_type1
/* 805199AC  7F E3 FB 78 */	mr r3, r31
/* 805199B0  4B EA 73 9D */	bl mMsg_Unset_LockContinue
/* 805199B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805199B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805199BC  7C 08 03 A6 */	mtlr r0
/* 805199C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805199C4  4E 80 00 20 */	blr 
