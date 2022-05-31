lbl_804F5DF0:
/* 804F5DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5DF4  7C 08 02 A6 */	mflr r0
/* 804F5DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5DFC  4B FE 1E 9D */	bl Player_actor_BGcheck_common_type1
/* 804F5E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5E04  7C 08 03 A6 */	mtlr r0
/* 804F5E08  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5E0C  4E 80 00 20 */	blr 
