lbl_804E7640:
/* 804E7640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7644  7C 08 02 A6 */	mflr r0
/* 804E7648  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E764C  4B FF 06 4D */	bl Player_actor_BGcheck_common_type1
/* 804E7650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7654  7C 08 03 A6 */	mtlr r0
/* 804E7658  38 21 00 10 */	addi r1, r1, 0x10
/* 804E765C  4E 80 00 20 */	blr 
