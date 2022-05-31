lbl_8050876C:
/* 8050876C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508770  7C 08 02 A6 */	mflr r0
/* 80508774  2C 04 00 00 */	cmpwi r4, 0
/* 80508778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050877C  41 82 00 0C */	beq lbl_80508788
/* 80508780  4B FC CC 99 */	bl Player_actor_set_eye_pattern_normal
/* 80508784  48 00 00 08 */	b lbl_8050878C
lbl_80508788:
/* 80508788  4B FC CD BD */	bl Player_actor_set_tex_anime_pattern
lbl_8050878C:
/* 8050878C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508790  7C 08 03 A6 */	mtlr r0
/* 80508794  38 21 00 10 */	addi r1, r1, 0x10
/* 80508798  4E 80 00 20 */	blr 
