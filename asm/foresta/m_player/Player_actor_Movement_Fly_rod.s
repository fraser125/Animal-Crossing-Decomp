lbl_804F62E0:
/* 804F62E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F62E4  7C 08 02 A6 */	mflr r0
/* 804F62E8  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F62EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F62F0  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F62F4  4B FD F6 49 */	bl Player_actor_Movement_Base_Braking_common
/* 804F62F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F62FC  7C 08 03 A6 */	mtlr r0
/* 804F6300  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6304  4E 80 00 20 */	blr 
