lbl_80500498:
/* 80500498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050049C  7C 08 02 A6 */	mflr r0
/* 805004A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805004A4  4B FD 77 F5 */	bl Player_actor_BGcheck_common_type1
/* 805004A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805004AC  7C 08 03 A6 */	mtlr r0
/* 805004B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805004B4  4E 80 00 20 */	blr 
