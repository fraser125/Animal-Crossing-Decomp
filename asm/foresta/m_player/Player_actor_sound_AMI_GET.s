lbl_804DF45C:
/* 804DF45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF460  7C 08 02 A6 */	mflr r0
/* 804DF464  38 80 00 5D */	li r4, 0x5d
/* 804DF468  38 63 0E 38 */	addi r3, r3, 0xe38
/* 804DF46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF470  4B FF FD ED */	bl Player_actor_set_sound_common1
/* 804DF474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF478  7C 08 03 A6 */	mtlr r0
/* 804DF47C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF480  4E 80 00 20 */	blr 
