lbl_804EC57C:
/* 804EC57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC580  7C 08 02 A6 */	mflr r0
/* 804EC584  38 80 00 00 */	li r4, 0
/* 804EC588  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC58C  4B FE 95 31 */	bl Player_actor_Movement_Base_Stop
/* 804EC590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC594  7C 08 03 A6 */	mtlr r0
/* 804EC598  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC59C  4E 80 00 20 */	blr 
