lbl_804E07C4:
/* 804E07C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E07C8  7C 08 02 A6 */	mflr r0
/* 804E07CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E07D0  4B FF 64 E5 */	bl Player_actor_SetPosition_OBJtoLine_forItem
/* 804E07D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E07D8  7C 08 03 A6 */	mtlr r0
/* 804E07DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E07E0  4E 80 00 20 */	blr 
