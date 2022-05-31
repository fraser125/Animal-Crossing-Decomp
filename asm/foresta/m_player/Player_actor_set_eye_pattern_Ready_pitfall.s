lbl_80501C7C:
/* 80501C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501C80  7C 08 02 A6 */	mflr r0
/* 80501C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501C88  4B FD 38 BD */	bl Player_actor_set_tex_anime_pattern
/* 80501C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501C90  7C 08 03 A6 */	mtlr r0
/* 80501C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80501C98  4E 80 00 20 */	blr 
