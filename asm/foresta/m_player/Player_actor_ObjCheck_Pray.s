lbl_80500968:
/* 80500968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050096C  7C 08 02 A6 */	mflr r0
/* 80500970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500974  4B FD 61 C1 */	bl Player_actor_Excute_Corect_forStand
/* 80500978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050097C  7C 08 03 A6 */	mtlr r0
/* 80500980  38 21 00 10 */	addi r1, r1, 0x10
/* 80500984  4E 80 00 20 */	blr 
