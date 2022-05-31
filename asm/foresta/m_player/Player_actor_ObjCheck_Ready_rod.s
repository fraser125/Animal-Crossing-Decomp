lbl_804F4D48:
/* 804F4D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4D4C  7C 08 02 A6 */	mflr r0
/* 804F4D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4D54  4B FE 1D E1 */	bl Player_actor_Excute_Corect_forStand
/* 804F4D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4D5C  7C 08 03 A6 */	mtlr r0
/* 804F4D60  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4D64  4E 80 00 20 */	blr 
