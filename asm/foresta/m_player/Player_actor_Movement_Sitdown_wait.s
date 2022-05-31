lbl_804EF44C:
/* 804EF44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF450  7C 08 02 A6 */	mflr r0
/* 804EF454  38 80 00 00 */	li r4, 0
/* 804EF458  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF45C  4B FE 66 61 */	bl Player_actor_Movement_Base_Stop
/* 804EF460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF464  7C 08 03 A6 */	mtlr r0
/* 804EF468  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF46C  4E 80 00 20 */	blr 
