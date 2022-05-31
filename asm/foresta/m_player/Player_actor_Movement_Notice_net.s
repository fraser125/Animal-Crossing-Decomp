lbl_804F42B8:
/* 804F42B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F42BC  7C 08 02 A6 */	mflr r0
/* 804F42C0  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F42C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F42C8  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F42CC  4B FE 16 71 */	bl Player_actor_Movement_Base_Braking_common
/* 804F42D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F42D4  7C 08 03 A6 */	mtlr r0
/* 804F42D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F42DC  4E 80 00 20 */	blr 
