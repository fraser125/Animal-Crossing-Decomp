lbl_80508328:
/* 80508328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050832C  7C 08 02 A6 */	mflr r0
/* 80508330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508334  4B FC E8 01 */	bl Player_actor_Excute_Corect_forStand
/* 80508338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050833C  7C 08 03 A6 */	mtlr r0
/* 80508340  38 21 00 10 */	addi r1, r1, 0x10
/* 80508344  4E 80 00 20 */	blr 
