lbl_80508C64:
/* 80508C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508C68  7C 08 02 A6 */	mflr r0
/* 80508C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508C70  4B FC DE C5 */	bl Player_actor_Excute_Corect_forStand
/* 80508C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508C78  7C 08 03 A6 */	mtlr r0
/* 80508C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80508C80  4E 80 00 20 */	blr 
