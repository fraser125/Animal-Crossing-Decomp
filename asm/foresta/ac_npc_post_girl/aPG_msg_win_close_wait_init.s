lbl_8056D5C0:
/* 8056D5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D5C4  7C 08 02 A6 */	mflr r0
/* 8056D5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D5CC  4B E5 20 DD */	bl func_803BF6A8
/* 8056D5D0  4B E5 24 99 */	bl mMsg_request_main_disappear_wait_type2
/* 8056D5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D5D8  7C 08 03 A6 */	mtlr r0
/* 8056D5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D5E0  4E 80 00 20 */	blr 
