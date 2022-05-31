lbl_80503C40:
/* 80503C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503C44  7C 08 02 A6 */	mflr r0
/* 80503C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503C4C  4B FD 2E E9 */	bl Player_actor_Excute_Corect_forStand
/* 80503C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503C54  7C 08 03 A6 */	mtlr r0
/* 80503C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80503C5C  4E 80 00 20 */	blr 
