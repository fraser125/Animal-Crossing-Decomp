lbl_804E8B30:
/* 804E8B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8B34  7C 08 02 A6 */	mflr r0
/* 804E8B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8B3C  4B FE DF F9 */	bl Player_actor_Excute_Corect_forStand
/* 804E8B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8B44  7C 08 03 A6 */	mtlr r0
/* 804E8B48  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8B4C  4E 80 00 20 */	blr 
