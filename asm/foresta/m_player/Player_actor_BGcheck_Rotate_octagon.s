lbl_80500104:
/* 80500104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500108  7C 08 02 A6 */	mflr r0
/* 8050010C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500110  4B FD 7B 89 */	bl Player_actor_BGcheck_common_type1
/* 80500114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500118  7C 08 03 A6 */	mtlr r0
/* 8050011C  38 21 00 10 */	addi r1, r1, 0x10
/* 80500120  4E 80 00 20 */	blr 
