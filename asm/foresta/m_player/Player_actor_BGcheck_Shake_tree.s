lbl_8050118C:
/* 8050118C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501190  7C 08 02 A6 */	mflr r0
/* 80501194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501198  4B FD 6B 01 */	bl Player_actor_BGcheck_common_type1
/* 8050119C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805011A0  7C 08 03 A6 */	mtlr r0
/* 805011A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805011A8  4E 80 00 20 */	blr 
