lbl_80501FB0:
/* 80501FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501FB4  7C 08 02 A6 */	mflr r0
/* 80501FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501FBC  4B FD 35 89 */	bl Player_actor_set_tex_anime_pattern
/* 80501FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501FC4  7C 08 03 A6 */	mtlr r0
/* 80501FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80501FCC  4E 80 00 20 */	blr 
