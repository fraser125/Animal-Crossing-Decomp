lbl_804F2084:
/* 804F2084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2088  7C 08 02 A6 */	mflr r0
/* 804F208C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2090  4B FE 5C 09 */	bl Player_actor_BGcheck_common_type1
/* 804F2094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2098  7C 08 03 A6 */	mtlr r0
/* 804F209C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F20A0  4E 80 00 20 */	blr 
