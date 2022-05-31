lbl_804FEA9C:
/* 804FEA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEAA0  7C 08 02 A6 */	mflr r0
/* 804FEAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEAA8  4B FD 91 F1 */	bl Player_actor_BGcheck_common_type1
/* 804FEAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEAB0  7C 08 03 A6 */	mtlr r0
/* 804FEAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEAB8  4E 80 00 20 */	blr 
