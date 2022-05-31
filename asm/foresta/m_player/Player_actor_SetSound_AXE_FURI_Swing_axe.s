lbl_804F019C:
/* 804F019C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F01A0  7C 08 02 A6 */	mflr r0
/* 804F01A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F01A8  4B FF FF AD */	bl Player_actor_SetSound_AXE_FURI_axe_common
/* 804F01AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F01B0  7C 08 03 A6 */	mtlr r0
/* 804F01B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F01B8  4E 80 00 20 */	blr 
