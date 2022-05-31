lbl_804F045C:
/* 804F045C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0460  7C 08 02 A6 */	mflr r0
/* 804F0464  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0468  4B FE 78 31 */	bl Player_actor_BGcheck_common_type1
/* 804F046C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0470  7C 08 03 A6 */	mtlr r0
/* 804F0474  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0478  4E 80 00 20 */	blr 
