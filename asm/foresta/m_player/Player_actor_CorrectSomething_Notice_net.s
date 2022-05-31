lbl_804F42E0:
/* 804F42E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F42E4  7C 08 02 A6 */	mflr r0
/* 804F42E8  38 83 10 5C */	addi r4, r3, 0x105c
/* 804F42EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F42F0  4B FE CF 31 */	bl Player_actor_CorrectSomething_net
/* 804F42F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F42F8  7C 08 03 A6 */	mtlr r0
/* 804F42FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4300  4E 80 00 20 */	blr 
