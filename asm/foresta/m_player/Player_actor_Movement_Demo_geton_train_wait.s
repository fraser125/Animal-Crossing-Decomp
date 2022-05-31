lbl_804FDE20:
/* 804FDE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDE24  7C 08 02 A6 */	mflr r0
/* 804FDE28  38 80 00 00 */	li r4, 0
/* 804FDE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDE30  4B FD 7C 8D */	bl Player_actor_Movement_Base_Stop
/* 804FDE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDE38  7C 08 03 A6 */	mtlr r0
/* 804FDE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDE40  4E 80 00 20 */	blr 
