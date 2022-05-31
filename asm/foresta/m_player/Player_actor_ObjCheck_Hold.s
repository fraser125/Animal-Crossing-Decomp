lbl_804EA274:
/* 804EA274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA278  7C 08 02 A6 */	mflr r0
/* 804EA27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA280  4B FE C8 B5 */	bl Player_actor_Excute_Corect_forStand
/* 804EA284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA288  7C 08 03 A6 */	mtlr r0
/* 804EA28C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA290  4E 80 00 20 */	blr 
