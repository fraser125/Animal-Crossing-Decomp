lbl_804F60A4:
/* 804F60A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F60A8  7C 08 02 A6 */	mflr r0
/* 804F60AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F60B0  4B FE 0A 85 */	bl Player_actor_Excute_Corect_forStand
/* 804F60B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F60B8  7C 08 03 A6 */	mtlr r0
/* 804F60BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F60C0  4E 80 00 20 */	blr 
