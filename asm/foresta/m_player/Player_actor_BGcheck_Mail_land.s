lbl_8050181C:
/* 8050181C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501820  7C 08 02 A6 */	mflr r0
/* 80501824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501828  4B FD 64 71 */	bl Player_actor_BGcheck_common_type1
/* 8050182C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501830  7C 08 03 A6 */	mtlr r0
/* 80501834  38 21 00 10 */	addi r1, r1, 0x10
/* 80501838  4E 80 00 20 */	blr 
