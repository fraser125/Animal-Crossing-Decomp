lbl_804DFBC0:
/* 804DFBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFBC4  7C 08 02 A6 */	mflr r0
/* 804DFBC8  38 80 01 67 */	li r4, 0x167
/* 804DFBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFBD0  4B FF F6 B9 */	bl Player_actor_set_sound_common2
/* 804DFBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFBD8  7C 08 03 A6 */	mtlr r0
/* 804DFBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFBE0  4E 80 00 20 */	blr 
