lbl_804E6998:
/* 804E6998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E699C  7C 08 02 A6 */	mflr r0
/* 804E69A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E69A4  4B FF 12 F5 */	bl Player_actor_BGcheck_common_type1
/* 804E69A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E69AC  7C 08 03 A6 */	mtlr r0
/* 804E69B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E69B4  4E 80 00 20 */	blr 
