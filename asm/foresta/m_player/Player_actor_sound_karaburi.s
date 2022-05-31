lbl_804DFAC4:
/* 804DFAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFAC8  7C 08 02 A6 */	mflr r0
/* 804DFACC  38 80 04 3A */	li r4, 0x43a
/* 804DFAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFAD4  4B FF F7 B5 */	bl Player_actor_set_sound_common2
/* 804DFAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFADC  7C 08 03 A6 */	mtlr r0
/* 804DFAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFAE4  4E 80 00 20 */	blr 
