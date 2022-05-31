lbl_804F436C:
/* 804F436C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4370  7C 08 02 A6 */	mflr r0
/* 804F4374  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4378  4B FE 27 BD */	bl Player_actor_Excute_Corect_forStand
/* 804F437C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4380  7C 08 03 A6 */	mtlr r0
/* 804F4384  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4388  4E 80 00 20 */	blr 
