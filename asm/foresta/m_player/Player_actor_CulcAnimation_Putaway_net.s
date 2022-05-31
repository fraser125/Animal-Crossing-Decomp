lbl_804F4910:
/* 804F4910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4914  7C 08 02 A6 */	mflr r0
/* 804F4918  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F491C  4B FE 1C 6D */	bl Player_actor_CulcAnimation_Base2
/* 804F4920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4924  7C 08 03 A6 */	mtlr r0
/* 804F4928  38 21 00 10 */	addi r1, r1, 0x10
/* 804F492C  4E 80 00 20 */	blr 
