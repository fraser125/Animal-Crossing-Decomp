lbl_80500988:
/* 80500988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050098C  7C 08 02 A6 */	mflr r0
/* 80500990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500994  4B FD 73 05 */	bl Player_actor_BGcheck_common_type1
/* 80500998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050099C  7C 08 03 A6 */	mtlr r0
/* 805009A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805009A4  4E 80 00 20 */	blr 
