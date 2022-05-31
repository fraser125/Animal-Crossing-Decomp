lbl_804F3EBC:
/* 804F3EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3EC0  7C 08 02 A6 */	mflr r0
/* 804F3EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3EC8  4B FE 2C 6D */	bl Player_actor_Excute_Corect_forStand
/* 804F3ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3ED0  7C 08 03 A6 */	mtlr r0
/* 804F3ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3ED8  4E 80 00 20 */	blr 
