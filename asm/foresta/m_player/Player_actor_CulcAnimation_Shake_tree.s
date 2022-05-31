lbl_80500C3C:
/* 80500C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500C40  7C 08 02 A6 */	mflr r0
/* 80500C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500C48  4B FD 59 41 */	bl Player_actor_CulcAnimation_Base2
/* 80500C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500C50  7C 08 03 A6 */	mtlr r0
/* 80500C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80500C58  4E 80 00 20 */	blr 
