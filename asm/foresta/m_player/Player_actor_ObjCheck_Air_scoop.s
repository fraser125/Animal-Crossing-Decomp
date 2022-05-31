lbl_804F9558:
/* 804F9558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F955C  7C 08 02 A6 */	mflr r0
/* 804F9560  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9564  4B FD D5 D1 */	bl Player_actor_Excute_Corect_forStand
/* 804F9568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F956C  7C 08 03 A6 */	mtlr r0
/* 804F9570  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9574  4E 80 00 20 */	blr 
