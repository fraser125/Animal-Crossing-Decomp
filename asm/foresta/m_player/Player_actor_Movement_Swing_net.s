lbl_804F33FC:
/* 804F33FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3400  7C 08 02 A6 */	mflr r0
/* 804F3404  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F3408  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F340C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F3410  4B FE 25 2D */	bl Player_actor_Movement_Base_Braking_common
/* 804F3414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3418  7C 08 03 A6 */	mtlr r0
/* 804F341C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3420  4E 80 00 20 */	blr 
