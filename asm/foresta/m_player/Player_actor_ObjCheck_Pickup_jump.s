lbl_804EDD54:
/* 804EDD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EDD58  7C 08 02 A6 */	mflr r0
/* 804EDD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EDD60  4B FE 8D D5 */	bl Player_actor_Excute_Corect_forStand
/* 804EDD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EDD68  7C 08 03 A6 */	mtlr r0
/* 804EDD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EDD70  4E 80 00 20 */	blr 
