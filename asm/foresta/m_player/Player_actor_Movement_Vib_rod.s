lbl_804F6044:
/* 804F6044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6048  7C 08 02 A6 */	mflr r0
/* 804F604C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F6054  7C 7F 1B 78 */	mr r31, r3
/* 804F6058  4B FD F9 71 */	bl Player_actor_SetPlayerAngle_forUki
/* 804F605C  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F6060  7F E3 FB 78 */	mr r3, r31
/* 804F6064  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F6068  4B FD F8 D5 */	bl Player_actor_Movement_Base_Braking_common
/* 804F606C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F6074  7C 08 03 A6 */	mtlr r0
/* 804F6078  38 21 00 10 */	addi r1, r1, 0x10
/* 804F607C  4E 80 00 20 */	blr 
