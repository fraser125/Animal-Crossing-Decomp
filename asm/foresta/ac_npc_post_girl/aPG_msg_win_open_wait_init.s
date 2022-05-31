lbl_8056D4A0:
/* 8056D4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D4A4  7C 08 02 A6 */	mflr r0
/* 8056D4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D4AC  4B E5 21 FD */	bl func_803BF6A8
/* 8056D4B0  38 80 00 01 */	li r4, 1
/* 8056D4B4  4B E5 26 8D */	bl mMsg_request_main_appear_wait_type2
/* 8056D4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D4BC  7C 08 03 A6 */	mtlr r0
/* 8056D4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D4C4  4E 80 00 20 */	blr 
