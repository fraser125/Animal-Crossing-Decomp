lbl_804DFB78:
/* 804DFB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB7C  7C 08 02 A6 */	mflr r0
/* 804DFB80  38 80 00 75 */	li r4, 0x75
/* 804DFB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB88  4B FF F7 01 */	bl Player_actor_set_sound_common2
/* 804DFB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB90  7C 08 03 A6 */	mtlr r0
/* 804DFB94  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB98  4E 80 00 20 */	blr 
