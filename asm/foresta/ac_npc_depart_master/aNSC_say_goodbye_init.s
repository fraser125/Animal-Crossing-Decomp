lbl_805527DC:
/* 805527DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805527E0  7C 08 02 A6 */	mflr r0
/* 805527E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805527E8  4B E6 CE C1 */	bl func_803BF6A8
/* 805527EC  4B E6 E5 6D */	bl mMsg_Set_idling_req
/* 805527F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805527F4  7C 08 03 A6 */	mtlr r0
/* 805527F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805527FC  4E 80 00 20 */	blr 
