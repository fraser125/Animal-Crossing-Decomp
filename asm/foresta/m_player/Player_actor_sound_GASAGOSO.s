lbl_804DF484:
/* 804DF484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF488  7C 08 02 A6 */	mflr r0
/* 804DF48C  38 80 00 69 */	li r4, 0x69
/* 804DF490  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF494  4B FF FD F5 */	bl Player_actor_set_sound_common2
/* 804DF498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF49C  7C 08 03 A6 */	mtlr r0
/* 804DF4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF4A4  4E 80 00 20 */	blr 
