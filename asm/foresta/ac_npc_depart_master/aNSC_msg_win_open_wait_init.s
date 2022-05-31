lbl_805520D8:
/* 805520D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805520DC  7C 08 02 A6 */	mflr r0
/* 805520E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805520E4  4B E6 D5 C5 */	bl func_803BF6A8
/* 805520E8  4B E6 DA A1 */	bl mMsg_request_main_appear_wait_type1
/* 805520EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805520F0  7C 08 03 A6 */	mtlr r0
/* 805520F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805520F8  4E 80 00 20 */	blr 
