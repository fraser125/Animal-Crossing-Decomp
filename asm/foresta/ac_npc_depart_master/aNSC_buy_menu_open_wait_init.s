lbl_80552070:
/* 80552070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552074  7C 08 02 A6 */	mflr r0
/* 80552078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055207C  4B E6 D6 2D */	bl func_803BF6A8
/* 80552080  4B E6 D9 C5 */	bl mMsg_request_main_disappear_wait_type1
/* 80552084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552088  7C 08 03 A6 */	mtlr r0
/* 8055208C  38 21 00 10 */	addi r1, r1, 0x10
/* 80552090  4E 80 00 20 */	blr 
