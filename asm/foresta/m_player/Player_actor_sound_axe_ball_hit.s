lbl_804DFB30:
/* 804DFB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB34  7C 08 02 A6 */	mflr r0
/* 804DFB38  38 80 04 49 */	li r4, 0x449
/* 804DFB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB40  4B FF F7 49 */	bl Player_actor_set_sound_common2
/* 804DFB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB48  7C 08 03 A6 */	mtlr r0
/* 804DFB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB50  4E 80 00 20 */	blr 
