lbl_80505144:
/* 80505144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505148  7C 08 02 A6 */	mflr r0
/* 8050514C  2C 04 00 00 */	cmpwi r4, 0
/* 80505150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505154  41 82 00 0C */	beq lbl_80505160
/* 80505158  4B FD 02 C1 */	bl Player_actor_set_eye_pattern_normal
/* 8050515C  48 00 00 08 */	b lbl_80505164
lbl_80505160:
/* 80505160  4B FD 03 E5 */	bl Player_actor_set_tex_anime_pattern
lbl_80505164:
/* 80505164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505168  7C 08 03 A6 */	mtlr r0
/* 8050516C  38 21 00 10 */	addi r1, r1, 0x10
/* 80505170  4E 80 00 20 */	blr 
