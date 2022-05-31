lbl_804E5224:
/* 804E5224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5228  7C 08 02 A6 */	mflr r0
/* 804E522C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5230  38 81 00 08 */	addi r4, r1, 8
/* 804E5234  4B FF 13 55 */	bl Player_actor_CulcAnimation_Base2
/* 804E5238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E523C  7C 08 03 A6 */	mtlr r0
/* 804E5240  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5244  4E 80 00 20 */	blr 
