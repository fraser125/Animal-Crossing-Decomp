lbl_80506608:
/* 80506608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050660C  7C 08 02 A6 */	mflr r0
/* 80506610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506614  4B FD 16 85 */	bl Player_actor_BGcheck_common_type1
/* 80506618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050661C  7C 08 03 A6 */	mtlr r0
/* 80506620  38 21 00 10 */	addi r1, r1, 0x10
/* 80506624  4E 80 00 20 */	blr 
