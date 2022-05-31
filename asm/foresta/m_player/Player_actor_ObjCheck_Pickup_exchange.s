lbl_804EEC6C:
/* 804EEC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEC70  7C 08 02 A6 */	mflr r0
/* 804EEC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEC78  4B FE 7E BD */	bl Player_actor_Excute_Corect_forStand
/* 804EEC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EEC80  7C 08 03 A6 */	mtlr r0
/* 804EEC84  38 21 00 10 */	addi r1, r1, 0x10
/* 804EEC88  4E 80 00 20 */	blr 
