lbl_8055442C:
/* 8055442C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554430  7C 08 02 A6 */	mflr r0
/* 80554434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554438  4B E6 B2 71 */	bl func_803BF6A8
/* 8055443C  4B E6 B7 4D */	bl mMsg_request_main_appear_wait_type1
/* 80554440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554444  7C 08 03 A6 */	mtlr r0
/* 80554448  38 21 00 10 */	addi r1, r1, 0x10
/* 8055444C  4E 80 00 20 */	blr 
