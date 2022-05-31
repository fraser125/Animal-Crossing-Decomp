lbl_804DF8C8:
/* 804DF8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF8CC  7C 08 02 A6 */	mflr r0
/* 804DF8D0  38 80 01 4A */	li r4, 0x14a
/* 804DF8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF8D8  4B FF F9 B1 */	bl Player_actor_set_sound_common2
/* 804DF8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF8E0  7C 08 03 A6 */	mtlr r0
/* 804DF8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF8E8  4E 80 00 20 */	blr 
