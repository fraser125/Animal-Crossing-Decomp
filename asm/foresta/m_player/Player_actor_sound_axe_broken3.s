lbl_804DFB9C:
/* 804DFB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFBA0  7C 08 02 A6 */	mflr r0
/* 804DFBA4  38 80 00 76 */	li r4, 0x76
/* 804DFBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFBAC  4B FF F6 DD */	bl Player_actor_set_sound_common2
/* 804DFBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFBB4  7C 08 03 A6 */	mtlr r0
/* 804DFBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFBBC  4E 80 00 20 */	blr 
