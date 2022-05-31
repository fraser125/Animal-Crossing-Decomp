lbl_804D51CC:
/* 804D51CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D51D0  7C 08 02 A6 */	mflr r0
/* 804D51D4  38 83 00 28 */	addi r4, r3, 0x28
/* 804D51D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D51DC  4B FF FF 61 */	bl Player_actor_Set_force_shadow_position
/* 804D51E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D51E4  7C 08 03 A6 */	mtlr r0
/* 804D51E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D51EC  4E 80 00 20 */	blr 
