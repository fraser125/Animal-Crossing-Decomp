lbl_80507E94:
/* 80507E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507E98  7C 08 02 A6 */	mflr r0
/* 80507E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507EA0  4B FC EC 95 */	bl Player_actor_Excute_Corect_forStand
/* 80507EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507EA8  7C 08 03 A6 */	mtlr r0
/* 80507EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80507EB0  4E 80 00 20 */	blr 
