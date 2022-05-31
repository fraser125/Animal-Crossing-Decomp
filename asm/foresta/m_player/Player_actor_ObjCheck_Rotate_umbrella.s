lbl_80504D44:
/* 80504D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504D48  7C 08 02 A6 */	mflr r0
/* 80504D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504D50  4B FD 1D E5 */	bl Player_actor_Excute_Corect_forStand
/* 80504D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504D58  7C 08 03 A6 */	mtlr r0
/* 80504D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80504D60  4E 80 00 20 */	blr 
