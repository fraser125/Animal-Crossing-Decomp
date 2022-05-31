lbl_803BFB88:
/* 803BFB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFB8C  7C 08 02 A6 */	mflr r0
/* 803BFB90  38 80 00 01 */	li r4, 1
/* 803BFB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFB98  4B FF FF A9 */	bl mMsg_request_main_appear_wait_type2
/* 803BFB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFBA0  7C 08 03 A6 */	mtlr r0
/* 803BFBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFBA8  4E 80 00 20 */	blr 
