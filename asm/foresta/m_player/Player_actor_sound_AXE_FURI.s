lbl_804DF4A8:
/* 804DF4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF4AC  7C 08 02 A6 */	mflr r0
/* 804DF4B0  38 80 00 5A */	li r4, 0x5a
/* 804DF4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF4B8  4B FF FD D1 */	bl Player_actor_set_sound_common2
/* 804DF4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF4C0  7C 08 03 A6 */	mtlr r0
/* 804DF4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF4C8  4E 80 00 20 */	blr 
