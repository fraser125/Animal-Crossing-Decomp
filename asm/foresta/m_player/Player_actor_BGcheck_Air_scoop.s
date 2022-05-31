lbl_804F9578:
/* 804F9578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F957C  7C 08 02 A6 */	mflr r0
/* 804F9580  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9584  4B FD E7 15 */	bl Player_actor_BGcheck_common_type1
/* 804F9588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F958C  7C 08 03 A6 */	mtlr r0
/* 804F9590  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9594  4E 80 00 20 */	blr 
