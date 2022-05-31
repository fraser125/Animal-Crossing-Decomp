lbl_804FA320:
/* 804FA320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA324  7C 08 02 A6 */	mflr r0
/* 804FA328  2C 04 00 00 */	cmpwi r4, 0
/* 804FA32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA330  41 82 00 0C */	beq lbl_804FA33C
/* 804FA334  4B FD B0 E5 */	bl Player_actor_set_eye_pattern_normal
/* 804FA338  48 00 00 08 */	b lbl_804FA340
lbl_804FA33C:
/* 804FA33C  4B FD B2 09 */	bl Player_actor_set_tex_anime_pattern
lbl_804FA340:
/* 804FA340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA344  7C 08 03 A6 */	mtlr r0
/* 804FA348  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA34C  4E 80 00 20 */	blr 
