lbl_803BFA68:
/* 803BFA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFA6C  7C 08 02 A6 */	mflr r0
/* 803BFA70  38 80 00 02 */	li r4, 2
/* 803BFA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFA78  4B FF FF 71 */	bl mMsg_request_main_disappear_wait_sub
/* 803BFA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFA80  7C 08 03 A6 */	mtlr r0
/* 803BFA84  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFA88  4E 80 00 20 */	blr 
