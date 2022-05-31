lbl_8050476C:
/* 8050476C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504770  7C 08 02 A6 */	mflr r0
/* 80504774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504778  4B FD 0D CD */	bl Player_actor_set_tex_anime_pattern
/* 8050477C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504780  7C 08 03 A6 */	mtlr r0
/* 80504784  38 21 00 10 */	addi r1, r1, 0x10
/* 80504788  4E 80 00 20 */	blr 
