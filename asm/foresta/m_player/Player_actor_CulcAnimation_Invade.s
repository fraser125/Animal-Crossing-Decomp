lbl_804E9D84:
/* 804E9D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9D88  7C 08 02 A6 */	mflr r0
/* 804E9D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9D90  38 81 00 08 */	addi r4, r1, 8
/* 804E9D94  4B FE C7 F5 */	bl Player_actor_CulcAnimation_Base2
/* 804E9D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9D9C  7C 08 03 A6 */	mtlr r0
/* 804E9DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9DA4  4E 80 00 20 */	blr 
