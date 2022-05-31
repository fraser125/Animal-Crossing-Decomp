lbl_804F678C:
/* 804F678C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6790  7C 08 02 A6 */	mflr r0
/* 804F6794  2C 04 00 00 */	cmpwi r4, 0
/* 804F6798  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F679C  41 82 00 0C */	beq lbl_804F67A8
/* 804F67A0  4B FD EC 79 */	bl Player_actor_set_eye_pattern_normal
/* 804F67A4  48 00 00 08 */	b lbl_804F67AC
lbl_804F67A8:
/* 804F67A8  4B FD ED 9D */	bl Player_actor_set_tex_anime_pattern
lbl_804F67AC:
/* 804F67AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F67B0  7C 08 03 A6 */	mtlr r0
/* 804F67B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F67B8  4E 80 00 20 */	blr 
