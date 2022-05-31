lbl_804F043C:
/* 804F043C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0440  7C 08 02 A6 */	mflr r0
/* 804F0444  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0448  4B FE 66 ED */	bl Player_actor_Excute_Corect_forStand
/* 804F044C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0450  7C 08 03 A6 */	mtlr r0
/* 804F0454  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0458  4E 80 00 20 */	blr 
