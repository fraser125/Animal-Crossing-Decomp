lbl_8050281C:
/* 8050281C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502820  7C 08 02 A6 */	mflr r0
/* 80502824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502828  4B FD 2D 1D */	bl Player_actor_set_tex_anime_pattern
/* 8050282C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502830  7C 08 03 A6 */	mtlr r0
/* 80502834  38 21 00 10 */	addi r1, r1, 0x10
/* 80502838  4E 80 00 20 */	blr 
