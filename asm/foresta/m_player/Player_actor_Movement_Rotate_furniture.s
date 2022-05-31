lbl_804EB05C:
/* 804EB05C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB060  7C 08 02 A6 */	mflr r0
/* 804EB064  38 80 00 00 */	li r4, 0
/* 804EB068  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB06C  4B FE AA 51 */	bl Player_actor_Movement_Base_Stop
/* 804EB070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB074  7C 08 03 A6 */	mtlr r0
/* 804EB078  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB07C  4E 80 00 20 */	blr 
