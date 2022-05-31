lbl_80500478:
/* 80500478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050047C  7C 08 02 A6 */	mflr r0
/* 80500480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500484  4B FD 66 B1 */	bl Player_actor_Excute_Corect_forStand
/* 80500488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050048C  7C 08 03 A6 */	mtlr r0
/* 80500490  38 21 00 10 */	addi r1, r1, 0x10
/* 80500494  4E 80 00 20 */	blr 
