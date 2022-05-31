lbl_804E8824:
/* 804E8824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8828  7C 08 02 A6 */	mflr r0
/* 804E882C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8830  4B FE DD 1D */	bl Player_actor_CulcAnimation_Base
/* 804E8834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8838  7C 08 03 A6 */	mtlr r0
/* 804E883C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8840  4E 80 00 20 */	blr 
