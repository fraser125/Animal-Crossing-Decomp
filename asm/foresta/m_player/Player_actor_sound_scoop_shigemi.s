lbl_804DF7C4:
/* 804DF7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF7C8  7C 08 02 A6 */	mflr r0
/* 804DF7CC  38 80 04 01 */	li r4, 0x401
/* 804DF7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF7D4  4B FF FA B5 */	bl Player_actor_set_sound_common2
/* 804DF7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF7DC  7C 08 03 A6 */	mtlr r0
/* 804DF7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF7E4  4E 80 00 20 */	blr 
