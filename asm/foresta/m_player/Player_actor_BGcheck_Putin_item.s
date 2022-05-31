lbl_804FCB1C:
/* 804FCB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCB20  7C 08 02 A6 */	mflr r0
/* 804FCB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCB28  4B FD B1 71 */	bl Player_actor_BGcheck_common_type1
/* 804FCB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCB30  7C 08 03 A6 */	mtlr r0
/* 804FCB34  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCB38  4E 80 00 20 */	blr 
