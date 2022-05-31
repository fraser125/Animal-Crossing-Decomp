lbl_804E8B10:
/* 804E8B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8B14  7C 08 02 A6 */	mflr r0
/* 804E8B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8B1C  4B FE CE 85 */	bl Player_actor_Movement_Base_Braking
/* 804E8B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8B24  7C 08 03 A6 */	mtlr r0
/* 804E8B28  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8B2C  4E 80 00 20 */	blr 
