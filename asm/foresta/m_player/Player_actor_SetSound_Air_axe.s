lbl_804F080C:
/* 804F080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0810  7C 08 02 A6 */	mflr r0
/* 804F0814  38 80 00 00 */	li r4, 0
/* 804F0818  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F081C  4B FF F9 81 */	bl Player_actor_SetSound_AXE_FURI_Swing_axe
/* 804F0820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0824  7C 08 03 A6 */	mtlr r0
/* 804F0828  38 21 00 10 */	addi r1, r1, 0x10
/* 804F082C  4E 80 00 20 */	blr 
