lbl_804DF614:
/* 804DF614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF618  7C 08 02 A6 */	mflr r0
/* 804DF61C  38 80 04 2A */	li r4, 0x42a
/* 804DF620  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF624  4B FF FC 65 */	bl Player_actor_set_sound_common2
/* 804DF628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF62C  7C 08 03 A6 */	mtlr r0
/* 804DF630  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF634  4E 80 00 20 */	blr 
