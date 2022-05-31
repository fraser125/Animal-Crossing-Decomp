lbl_804E9A58:
/* 804E9A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9A5C  7C 08 02 A6 */	mflr r0
/* 804E9A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9A68  7C 9F 23 78 */	mr r31, r4
/* 804E9A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9A70  7C 7E 1B 78 */	mr r30, r3
/* 804E9A74  4B FE B6 E9 */	bl Player_actor_Set_force_shadow_position_fromAnimePosition
/* 804E9A78  7F C3 F3 78 */	mr r3, r30
/* 804E9A7C  38 80 00 00 */	li r4, 0
/* 804E9A80  4B FE C0 3D */	bl Player_actor_Movement_Base_Stop
/* 804E9A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9A88  7F E3 FB 78 */	mr r3, r31
/* 804E9A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9A90  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9A94  7C 08 03 A6 */	mtlr r0
/* 804E9A98  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9A9C  4E 80 00 20 */	blr 
