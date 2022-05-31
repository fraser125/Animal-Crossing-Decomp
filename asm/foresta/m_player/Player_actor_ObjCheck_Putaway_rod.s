lbl_804F7094:
/* 804F7094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7098  7C 08 02 A6 */	mflr r0
/* 804F709C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F70A0  4B FD FA 95 */	bl Player_actor_Excute_Corect_forStand
/* 804F70A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F70A8  7C 08 03 A6 */	mtlr r0
/* 804F70AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F70B0  4E 80 00 20 */	blr 
