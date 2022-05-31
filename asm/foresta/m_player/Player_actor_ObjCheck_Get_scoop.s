lbl_804FA350:
/* 804FA350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA354  7C 08 02 A6 */	mflr r0
/* 804FA358  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA35C  4B FD C7 D9 */	bl Player_actor_Excute_Corect_forStand
/* 804FA360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA364  7C 08 03 A6 */	mtlr r0
/* 804FA368  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA36C  4E 80 00 20 */	blr 
