lbl_804E5AC8:
/* 804E5AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5ACC  7C 08 02 A6 */	mflr r0
/* 804E5AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5AD4  4B FF 21 C5 */	bl Player_actor_BGcheck_common_type1
/* 804E5AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5ADC  7C 08 03 A6 */	mtlr r0
/* 804E5AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5AE4  4E 80 00 20 */	blr 
