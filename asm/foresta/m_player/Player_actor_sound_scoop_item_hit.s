lbl_804DFB0C:
/* 804DFB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB10  7C 08 02 A6 */	mflr r0
/* 804DFB14  38 80 04 49 */	li r4, 0x449
/* 804DFB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB1C  4B FF F7 6D */	bl Player_actor_set_sound_common2
/* 804DFB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB24  7C 08 03 A6 */	mtlr r0
/* 804DFB28  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB2C  4E 80 00 20 */	blr 
