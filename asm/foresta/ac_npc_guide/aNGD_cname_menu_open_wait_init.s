lbl_805544C0:
/* 805544C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805544C4  7C 08 02 A6 */	mflr r0
/* 805544C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805544CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805544D0  93 C1 00 08 */	stw r30, 8(r1)
/* 805544D4  7C 7E 1B 78 */	mr r30, r3
/* 805544D8  4B E6 B1 D1 */	bl func_803BF6A8
/* 805544DC  7C 7F 1B 78 */	mr r31, r3
/* 805544E0  4B E6 C8 61 */	bl mMsg_Set_LockContinue
/* 805544E4  7F E3 FB 78 */	mr r3, r31
/* 805544E8  4B E6 B5 5D */	bl mMsg_request_main_disappear_wait_type1
/* 805544EC  38 00 00 11 */	li r0, 0x11
/* 805544F0  90 1E 09 98 */	stw r0, 0x998(r30)
/* 805544F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805544F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805544FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80554500  7C 08 03 A6 */	mtlr r0
/* 80554504  38 21 00 10 */	addi r1, r1, 0x10
/* 80554508  4E 80 00 20 */	blr 
