lbl_804EB138:
/* 804EB138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB13C  7C 08 02 A6 */	mflr r0
/* 804EB140  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB144  4B FE CB F1 */	bl Player_actor_BGcheck_common_type3
/* 804EB148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB14C  7C 08 03 A6 */	mtlr r0
/* 804EB150  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB154  4E 80 00 20 */	blr 
