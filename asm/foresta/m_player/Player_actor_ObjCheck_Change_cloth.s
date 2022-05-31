lbl_8050478C:
/* 8050478C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504790  7C 08 02 A6 */	mflr r0
/* 80504794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504798  4B FD 23 9D */	bl Player_actor_Excute_Corect_forStand
/* 8050479C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805047A0  7C 08 03 A6 */	mtlr r0
/* 805047A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805047A8  4E 80 00 20 */	blr 
