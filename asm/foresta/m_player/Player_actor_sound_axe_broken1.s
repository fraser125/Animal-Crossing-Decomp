lbl_804DFB54:
/* 804DFB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB58  7C 08 02 A6 */	mflr r0
/* 804DFB5C  38 80 00 74 */	li r4, 0x74
/* 804DFB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB64  4B FF F7 25 */	bl Player_actor_set_sound_common2
/* 804DFB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB6C  7C 08 03 A6 */	mtlr r0
/* 804DFB70  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB74  4E 80 00 20 */	blr 
