lbl_80503098:
/* 80503098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050309C  7C 08 02 A6 */	mflr r0
/* 805030A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805030A4  4B FD 3A 91 */	bl Player_actor_Excute_Corect_forStand
/* 805030A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805030AC  7C 08 03 A6 */	mtlr r0
/* 805030B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805030B4  4E 80 00 20 */	blr 
