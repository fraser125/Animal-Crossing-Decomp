lbl_8054A7C0:
/* 8054A7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A7C4  7C 08 02 A6 */	mflr r0
/* 8054A7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A7CC  4B E7 4E DD */	bl func_803BF6A8
/* 8054A7D0  4B E7 53 B9 */	bl mMsg_request_main_appear_wait_type1
/* 8054A7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A7D8  7C 08 03 A6 */	mtlr r0
/* 8054A7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A7E0  4E 80 00 20 */	blr 
