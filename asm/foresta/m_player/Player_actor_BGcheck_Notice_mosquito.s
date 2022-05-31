lbl_80505D60:
/* 80505D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505D64  7C 08 02 A6 */	mflr r0
/* 80505D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505D6C  4B FD 1F 2D */	bl Player_actor_BGcheck_common_type1
/* 80505D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505D74  7C 08 03 A6 */	mtlr r0
/* 80505D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80505D7C  4E 80 00 20 */	blr 
