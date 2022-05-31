lbl_804FEA5C:
/* 804FEA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEA60  7C 08 02 A6 */	mflr r0
/* 804FEA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEA68  4B FD 7A E5 */	bl Player_actor_CulcAnimation_Base
/* 804FEA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEA70  7C 08 03 A6 */	mtlr r0
/* 804FEA74  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEA78  4E 80 00 20 */	blr 
