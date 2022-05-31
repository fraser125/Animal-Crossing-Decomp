lbl_804F637C:
/* 804F637C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6380  7C 08 02 A6 */	mflr r0
/* 804F6384  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6388  4B FE 07 AD */	bl Player_actor_Excute_Corect_forStand
/* 804F638C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6390  7C 08 03 A6 */	mtlr r0
/* 804F6394  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6398  4E 80 00 20 */	blr 
