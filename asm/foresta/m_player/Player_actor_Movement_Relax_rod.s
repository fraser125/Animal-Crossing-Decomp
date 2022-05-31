lbl_804F592C:
/* 804F592C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5930  7C 08 02 A6 */	mflr r0
/* 804F5934  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F593C  7C 7F 1B 78 */	mr r31, r3
/* 804F5940  4B FE 00 89 */	bl Player_actor_SetPlayerAngle_forUki
/* 804F5944  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F5948  7F E3 FB 78 */	mr r3, r31
/* 804F594C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F5950  4B FD FF ED */	bl Player_actor_Movement_Base_Braking_common
/* 804F5954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F595C  7C 08 03 A6 */	mtlr r0
/* 804F5960  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5964  4E 80 00 20 */	blr 
