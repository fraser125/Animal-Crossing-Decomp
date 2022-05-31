lbl_804F8224:
/* 804F8224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8228  7C 08 02 A6 */	mflr r0
/* 804F822C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8230  4B FD FA 69 */	bl Player_actor_BGcheck_common_type1
/* 804F8234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8238  7C 08 03 A6 */	mtlr r0
/* 804F823C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8240  4E 80 00 20 */	blr 
