lbl_804DF680:
/* 804DF680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF684  7C 08 02 A6 */	mflr r0
/* 804DF688  38 80 04 15 */	li r4, 0x415
/* 804DF68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF690  4B FF FB F9 */	bl Player_actor_set_sound_common2
/* 804DF694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF698  7C 08 03 A6 */	mtlr r0
/* 804DF69C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF6A0  4E 80 00 20 */	blr 
