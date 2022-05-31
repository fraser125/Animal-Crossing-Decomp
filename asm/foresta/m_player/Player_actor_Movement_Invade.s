lbl_804E9D64:
/* 804E9D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9D68  7C 08 02 A6 */	mflr r0
/* 804E9D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9D70  4B FE BC 31 */	bl Player_actor_Movement_Base_Braking
/* 804E9D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9D78  7C 08 03 A6 */	mtlr r0
/* 804E9D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9D80  4E 80 00 20 */	blr 
