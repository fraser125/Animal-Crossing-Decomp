lbl_8057857C:
/* 8057857C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578580  7C 08 02 A6 */	mflr r0
/* 80578584  38 60 00 17 */	li r3, 0x17
/* 80578588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057858C  4B FF FC F1 */	bl aNSC_get_msg_no
/* 80578590  4B E1 FF 85 */	bl mDemo_Set_msg_num
/* 80578594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578598  7C 08 03 A6 */	mtlr r0
/* 8057859C  38 21 00 10 */	addi r1, r1, 0x10
/* 805785A0  4E 80 00 20 */	blr 