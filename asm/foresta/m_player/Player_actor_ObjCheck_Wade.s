lbl_804E8FA4:
/* 804E8FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8FA8  7C 08 02 A6 */	mflr r0
/* 804E8FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8FB0  4B FE DB 85 */	bl Player_actor_Excute_Corect_forStand
/* 804E8FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8FB8  7C 08 03 A6 */	mtlr r0
/* 804E8FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8FC0  4E 80 00 20 */	blr 
