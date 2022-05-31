lbl_804DFAE8:
/* 804DFAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFAEC  7C 08 02 A6 */	mflr r0
/* 804DFAF0  38 80 04 48 */	li r4, 0x448
/* 804DFAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFAF8  4B FF F7 91 */	bl Player_actor_set_sound_common2
/* 804DFAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB00  7C 08 03 A6 */	mtlr r0
/* 804DFB04  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB08  4E 80 00 20 */	blr 
