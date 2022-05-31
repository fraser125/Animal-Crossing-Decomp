lbl_80502CD8:
/* 80502CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502CDC  7C 08 02 A6 */	mflr r0
/* 80502CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502CE4  4B FD 28 61 */	bl Player_actor_set_tex_anime_pattern
/* 80502CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502CEC  7C 08 03 A6 */	mtlr r0
/* 80502CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80502CF4  4E 80 00 20 */	blr 
