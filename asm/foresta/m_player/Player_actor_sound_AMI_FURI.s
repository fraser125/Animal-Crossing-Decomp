lbl_804DF40C:
/* 804DF40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF410  7C 08 02 A6 */	mflr r0
/* 804DF414  38 80 00 5A */	li r4, 0x5a
/* 804DF418  38 63 0E 38 */	addi r3, r3, 0xe38
/* 804DF41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF420  4B FF FE 3D */	bl Player_actor_set_sound_common1
/* 804DF424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF428  7C 08 03 A6 */	mtlr r0
/* 804DF42C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF430  4E 80 00 20 */	blr 
