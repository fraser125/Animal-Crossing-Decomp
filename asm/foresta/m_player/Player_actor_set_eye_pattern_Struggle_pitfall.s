lbl_80502418:
/* 80502418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050241C  7C 08 02 A6 */	mflr r0
/* 80502420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80502428  7C 7F 1B 78 */	mr r31, r3
/* 8050242C  4B FD 31 19 */	bl Player_actor_set_tex_anime_pattern
/* 80502430  7F E3 FB 78 */	mr r3, r31
/* 80502434  38 80 00 06 */	li r4, 6
/* 80502438  4B FD 2F D9 */	bl Player_actor_set_eye_pattern
/* 8050243C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80502444  7C 08 03 A6 */	mtlr r0
/* 80502448  38 21 00 10 */	addi r1, r1, 0x10
/* 8050244C  4E 80 00 20 */	blr 
