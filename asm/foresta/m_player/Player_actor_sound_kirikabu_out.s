lbl_804DF8A4:
/* 804DF8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF8A8  7C 08 02 A6 */	mflr r0
/* 804DF8AC  38 80 01 49 */	li r4, 0x149
/* 804DF8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF8B4  4B FF F9 D5 */	bl Player_actor_set_sound_common2
/* 804DF8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF8BC  7C 08 03 A6 */	mtlr r0
/* 804DF8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF8C4  4E 80 00 20 */	blr 
