lbl_804DF7A0:
/* 804DF7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF7A4  7C 08 02 A6 */	mflr r0
/* 804DF7A8  38 80 01 21 */	li r4, 0x121
/* 804DF7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF7B0  4B FF FA D9 */	bl Player_actor_set_sound_common2
/* 804DF7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF7B8  7C 08 03 A6 */	mtlr r0
/* 804DF7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF7C0  4E 80 00 20 */	blr 
