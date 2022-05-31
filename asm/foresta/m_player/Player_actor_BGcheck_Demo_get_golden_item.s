lbl_805087BC:
/* 805087BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805087C0  7C 08 02 A6 */	mflr r0
/* 805087C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805087C8  4B FC F5 29 */	bl Player_actor_BGcheck_common_type2
/* 805087CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805087D0  7C 08 03 A6 */	mtlr r0
/* 805087D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805087D8  4E 80 00 20 */	blr 
