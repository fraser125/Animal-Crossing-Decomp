lbl_80503C60:
/* 80503C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503C64  7C 08 02 A6 */	mflr r0
/* 80503C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503C6C  4B FD 40 2D */	bl Player_actor_BGcheck_common_type1
/* 80503C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503C74  7C 08 03 A6 */	mtlr r0
/* 80503C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80503C7C  4E 80 00 20 */	blr 
