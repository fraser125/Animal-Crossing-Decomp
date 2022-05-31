lbl_804DF97C:
/* 804DF97C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF980  7C 08 02 A6 */	mflr r0
/* 804DF984  38 80 01 60 */	li r4, 0x160
/* 804DF988  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF98C  4B FF F8 FD */	bl Player_actor_set_sound_common2
/* 804DF990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF994  7C 08 03 A6 */	mtlr r0
/* 804DF998  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF99C  4E 80 00 20 */	blr 
