lbl_804F704C:
/* 804F704C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7050  7C 08 02 A6 */	mflr r0
/* 804F7054  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F7058  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F705C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F7060  4B FD E8 DD */	bl Player_actor_Movement_Base_Braking_common
/* 804F7064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7068  7C 08 03 A6 */	mtlr r0
/* 804F706C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7070  4E 80 00 20 */	blr 
