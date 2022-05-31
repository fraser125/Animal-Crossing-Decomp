lbl_804EB800:
/* 804EB800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB804  7C 08 02 A6 */	mflr r0
/* 804EB808  38 80 00 00 */	li r4, 0
/* 804EB80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB810  4B FE A2 AD */	bl Player_actor_Movement_Base_Stop
/* 804EB814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB818  7C 08 03 A6 */	mtlr r0
/* 804EB81C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB820  4E 80 00 20 */	blr 
