lbl_8056D7D0:
/* 8056D7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D7D4  7C 08 02 A6 */	mflr r0
/* 8056D7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D7DC  38 00 00 1C */	li r0, 0x1c
/* 8056D7E0  90 03 09 98 */	stw r0, 0x998(r3)
/* 8056D7E4  4B FF FC BD */	bl aPG_msg_win_open_wait_init
/* 8056D7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D7EC  7C 08 03 A6 */	mtlr r0
/* 8056D7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D7F4  4E 80 00 20 */	blr 
